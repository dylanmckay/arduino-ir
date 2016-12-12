; ModuleID = 'Arduino/Stream.cpp'
source_filename = "Arduino/Stream.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i16 }
%"struct.Stream::MultiTarget" = type { i8*, i16, i16 }
%class.String = type { i8*, i16, i16 }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define i16 @_ZN6Stream9timedReadEv(%class.Stream* %this) local_unnamed_addr #0 align 2 !dbg !14 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !22, metadata !25), !dbg !26
  %call = tail call i32 @millis(), !dbg !27
  %_startMillis = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !28
  store i32 %call, i32* %_startMillis, align 1, !dbg !29, !tbaa !30
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !35
  %_timeout = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !37
  br label %do.body, !dbg !39, !llvm.loop !40

do.body:                                          ; preds = %do.cond, %entry
  %vtable = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !35, !tbaa !42
  %vfn = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable, i16 3, !dbg !35
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn, align 1, !dbg !35
  %call2 = tail call i16 %1(%class.Stream* nonnull %this), !dbg !35
  tail call void @llvm.dbg.value(metadata i16 %call2, i64 0, metadata !24, metadata !25), !dbg !44
  %cmp = icmp sgt i16 %call2, -1, !dbg !45
  br i1 %cmp, label %cleanup, label %do.cond, !dbg !47

do.cond:                                          ; preds = %do.body
  %call3 = tail call i32 @millis(), !dbg !48
  %2 = load i32, i32* %_startMillis, align 1, !dbg !49, !tbaa !30
  %sub = sub i32 %call3, %2, !dbg !50
  %3 = load i32, i32* %_timeout, align 1, !dbg !37, !tbaa !51
  %cmp5 = icmp ult i32 %sub, %3, !dbg !52
  br i1 %cmp5, label %do.body, label %cleanup, !dbg !53, !llvm.loop !40

cleanup:                                          ; preds = %do.cond, %do.body
  %retval.0 = phi i16 [ %call2, %do.body ], [ -1, %do.cond ]
  ret i16 %retval.0, !dbg !55
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @millis() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

define i16 @_ZN6Stream9timedPeekEv(%class.Stream* %this) local_unnamed_addr #0 align 2 !dbg !56 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !59, metadata !25), !dbg !61
  %call = tail call i32 @millis(), !dbg !62
  %_startMillis = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !63
  store i32 %call, i32* %_startMillis, align 1, !dbg !64, !tbaa !30
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !65
  %_timeout = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !67
  br label %do.body, !dbg !69, !llvm.loop !70

do.body:                                          ; preds = %do.cond, %entry
  %vtable = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !65, !tbaa !42
  %vfn = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable, i16 4, !dbg !65
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn, align 1, !dbg !65
  %call2 = tail call i16 %1(%class.Stream* nonnull %this), !dbg !65
  tail call void @llvm.dbg.value(metadata i16 %call2, i64 0, metadata !60, metadata !25), !dbg !72
  %cmp = icmp sgt i16 %call2, -1, !dbg !73
  br i1 %cmp, label %cleanup, label %do.cond, !dbg !75

do.cond:                                          ; preds = %do.body
  %call3 = tail call i32 @millis(), !dbg !76
  %2 = load i32, i32* %_startMillis, align 1, !dbg !77, !tbaa !30
  %sub = sub i32 %call3, %2, !dbg !78
  %3 = load i32, i32* %_timeout, align 1, !dbg !67, !tbaa !51
  %cmp5 = icmp ult i32 %sub, %3, !dbg !79
  br i1 %cmp5, label %do.body, label %cleanup, !dbg !80, !llvm.loop !70

cleanup:                                          ; preds = %do.cond, %do.body
  %retval.0 = phi i16 [ %call2, %do.body ], [ -1, %do.cond ]
  ret i16 %retval.0, !dbg !82
}

define i16 @_ZN6Stream13peekNextDigitE13LookaheadModeb(%class.Stream* %this, i16 %lookahead, i1 zeroext %detectDecimal) local_unnamed_addr #0 align 2 !dbg !83 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !89, metadata !25), !dbg !93
  tail call void @llvm.dbg.value(metadata i16 %lookahead, i64 0, metadata !90, metadata !25), !dbg !94
  tail call void @llvm.dbg.value(metadata i1 %detectDecimal, i64 0, metadata !91, metadata !95), !dbg !96
  %_startMillis.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !97
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !100
  %_timeout.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !101
  br label %while.cond, !dbg !102

while.cond:                                       ; preds = %sw.epilog11, %entry
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !59, metadata !25), !dbg !103
  %call.i = tail call i32 @millis(), !dbg !104
  store i32 %call.i, i32* %_startMillis.i, align 1, !dbg !105, !tbaa !30
  br label %do.body.i, !dbg !106, !llvm.loop !70

do.body.i:                                        ; preds = %do.cond.i, %while.cond
  %vtable.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !100, !tbaa !42
  %vfn.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i, i16 4, !dbg !100
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i, align 1, !dbg !100
  %call2.i = tail call i16 %1(%class.Stream* nonnull %this), !dbg !100
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !60, metadata !25), !dbg !107
  %cmp.i = icmp sgt i16 %call2.i, -1, !dbg !108
  br i1 %cmp.i, label %_ZN6Stream9timedPeekEv.exit, label %do.cond.i, !dbg !109

do.cond.i:                                        ; preds = %do.body.i
  %call3.i = tail call i32 @millis(), !dbg !110
  %2 = load i32, i32* %_startMillis.i, align 1, !dbg !111, !tbaa !30
  %sub.i = sub i32 %call3.i, %2, !dbg !112
  %3 = load i32, i32* %_timeout.i, align 1, !dbg !101, !tbaa !51
  %cmp5.i = icmp ult i32 %sub.i, %3, !dbg !113
  br i1 %cmp5.i, label %do.body.i, label %_ZN6Stream9timedPeekEv.exit, !dbg !114, !llvm.loop !70

_ZN6Stream9timedPeekEv.exit:                      ; preds = %do.body.i, %do.cond.i
  %retval.0.i = phi i16 [ %call2.i, %do.body.i ], [ -1, %do.cond.i ]
  tail call void @llvm.dbg.value(metadata i16 %retval.0.i, i64 0, metadata !92, metadata !25), !dbg !115
  %cmp = icmp slt i16 %retval.0.i, 0, !dbg !116
  %cmp2 = icmp eq i16 %retval.0.i, 45, !dbg !118
  %or.cond = or i1 %cmp, %cmp2, !dbg !119
  %call.off = add i16 %retval.0.i, -48, !dbg !120
  %4 = icmp ult i16 %call.off, 10, !dbg !120
  %or.cond23 = or i1 %or.cond, %4, !dbg !119
  %cmp8 = icmp eq i16 %retval.0.i, 46, !dbg !121
  %or.cond14 = and i1 %cmp8, %detectDecimal, !dbg !123
  %or.cond24 = or i1 %or.cond14, %or.cond23, !dbg !119
  br i1 %or.cond24, label %cleanup, label %if.end, !dbg !119

if.end:                                           ; preds = %_ZN6Stream9timedPeekEv.exit
  switch i16 %lookahead, label %sw.epilog11 [
    i16 1, label %cleanup
    i16 2, label %sw.bb9
  ], !dbg !124

sw.bb9:                                           ; preds = %if.end
  switch i16 %retval.0.i, label %cleanup [
    i16 32, label %sw.epilog11
    i16 9, label %sw.epilog11
    i16 13, label %sw.epilog11
    i16 10, label %sw.epilog11
  ], !dbg !125

sw.epilog11:                                      ; preds = %sw.bb9, %sw.bb9, %sw.bb9, %sw.bb9, %if.end
  %vtable = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !127, !tbaa !42
  %vfn = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable, i16 3, !dbg !127
  %5 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn, align 1, !dbg !127
  %call12 = tail call i16 %5(%class.Stream* nonnull %this), !dbg !127
  br label %while.cond, !dbg !128, !llvm.loop !130

cleanup:                                          ; preds = %sw.bb9, %if.end, %_ZN6Stream9timedPeekEv.exit
  %retval.0 = phi i16 [ %retval.0.i, %_ZN6Stream9timedPeekEv.exit ], [ -1, %if.end ], [ -1, %sw.bb9 ]
  ret i16 %retval.0, !dbg !132
}

; Function Attrs: nounwind
define void @_ZN6Stream10setTimeoutEm(%class.Stream* nocapture %this, i32 %timeout) local_unnamed_addr #4 align 2 !dbg !133 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !139, metadata !25), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 %timeout, i64 0, metadata !140, metadata !25), !dbg !142
  %_timeout = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !143
  store i32 %timeout, i32* %_timeout, align 1, !dbg !144, !tbaa !51
  ret void, !dbg !145
}

define zeroext i1 @_ZN6Stream4findEPc(%class.Stream* %this, i8* %target) local_unnamed_addr #0 align 2 !dbg !146 {
entry:
  %t.i = alloca [1 x %"struct.Stream::MultiTarget"], align 2
  tail call void @llvm.dbg.declare(metadata [1 x %"struct.Stream::MultiTarget"]* %t.i, metadata !154, metadata !25), !dbg !185
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !152, metadata !25), !dbg !188
  tail call void @llvm.dbg.value(metadata i8* %target, i64 0, metadata !153, metadata !25), !dbg !189
  %call = tail call i16 @strlen(i8* %target) #7, !dbg !190
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !165, metadata !25), !dbg !191
  tail call void @llvm.dbg.value(metadata i8* %target, i64 0, metadata !166, metadata !25), !dbg !192
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !167, metadata !25), !dbg !193
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !168, metadata !25), !dbg !194
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !169, metadata !25), !dbg !195
  %0 = bitcast [1 x %"struct.Stream::MultiTarget"]* %t.i to i8*, !dbg !196
  call void @llvm.lifetime.start(i64 6, i8* nonnull %0) #8, !dbg !196
  %str.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 0, !dbg !197
  store i8* %target, i8** %str.i, align 2, !dbg !197, !tbaa !198
  %len.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 1, !dbg !197
  store i16 %call, i16* %len.i, align 2, !dbg !197, !tbaa !202
  %index.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 2, !dbg !197
  store i16 0, i16* %index.i, align 2, !dbg !197, !tbaa !203
  %arraydecay.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, !dbg !204
  %call.i = call i16 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this, %"struct.Stream::MultiTarget"* nonnull %arraydecay.i, i16 1), !dbg !205
  call void @llvm.lifetime.end(i64 6, i8* nonnull %0) #8, !dbg !206
  %retval.0.i = icmp eq i16 %call.i, 0, !dbg !207
  ret i1 %retval.0.i, !dbg !208
}

define zeroext i1 @_ZN6Stream9findUntilEPcjS0_j(%class.Stream* %this, i8* %target, i16 %targetLen, i8* %terminator, i16 %termLen) local_unnamed_addr #0 align 2 !dbg !157 {
entry:
  %t = alloca [1 x %"struct.Stream::MultiTarget"], align 2
  %t3 = alloca [2 x %"struct.Stream::MultiTarget"], align 2
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !165, metadata !25), !dbg !209
  tail call void @llvm.dbg.value(metadata i8* %target, i64 0, metadata !166, metadata !25), !dbg !210
  tail call void @llvm.dbg.value(metadata i16 %targetLen, i64 0, metadata !167, metadata !25), !dbg !211
  tail call void @llvm.dbg.value(metadata i8* %terminator, i64 0, metadata !168, metadata !25), !dbg !212
  tail call void @llvm.dbg.value(metadata i16 %termLen, i64 0, metadata !169, metadata !25), !dbg !213
  %cmp = icmp eq i8* %terminator, null, !dbg !214
  br i1 %cmp, label %if.then, label %if.else, !dbg !215

if.then:                                          ; preds = %entry
  %0 = bitcast [1 x %"struct.Stream::MultiTarget"]* %t to i8*, !dbg !216
  call void @llvm.lifetime.start(i64 6, i8* nonnull %0) #8, !dbg !216
  tail call void @llvm.dbg.declare(metadata [1 x %"struct.Stream::MultiTarget"]* %t, metadata !154, metadata !25), !dbg !217
  %str = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t, i16 0, i16 0, i32 0, !dbg !218
  store i8* %target, i8** %str, align 2, !dbg !218, !tbaa !198
  %len = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t, i16 0, i16 0, i32 1, !dbg !218
  store i16 %targetLen, i16* %len, align 2, !dbg !218, !tbaa !202
  %index = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t, i16 0, i16 0, i32 2, !dbg !218
  store i16 0, i16* %index, align 2, !dbg !218, !tbaa !203
  %arraydecay = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t, i16 0, i16 0, !dbg !219
  %call = call i16 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this, %"struct.Stream::MultiTarget"* nonnull %arraydecay, i16 1), !dbg !220
  call void @llvm.lifetime.end(i64 6, i8* nonnull %0) #8, !dbg !221
  br label %return

if.else:                                          ; preds = %entry
  %1 = bitcast [2 x %"struct.Stream::MultiTarget"]* %t3 to i8*, !dbg !222
  call void @llvm.lifetime.start(i64 12, i8* nonnull %1) #8, !dbg !222
  tail call void @llvm.dbg.declare(metadata [2 x %"struct.Stream::MultiTarget"]* %t3, metadata !170, metadata !25), !dbg !223
  %str5 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i16 0, i16 0, i32 0, !dbg !224
  store i8* %target, i8** %str5, align 2, !dbg !224, !tbaa !198
  %len6 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i16 0, i16 0, i32 1, !dbg !224
  store i16 %targetLen, i16* %len6, align 2, !dbg !224, !tbaa !202
  %index7 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i16 0, i16 0, i32 2, !dbg !224
  store i16 0, i16* %index7, align 2, !dbg !224, !tbaa !203
  %str8 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i16 0, i16 1, i32 0, !dbg !225
  store i8* %terminator, i8** %str8, align 2, !dbg !225, !tbaa !198
  %len9 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i16 0, i16 1, i32 1, !dbg !225
  store i16 %termLen, i16* %len9, align 2, !dbg !225, !tbaa !202
  %index10 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i16 0, i16 1, i32 2, !dbg !225
  store i16 0, i16* %index10, align 2, !dbg !225, !tbaa !203
  %arraydecay11 = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3, i16 0, i16 0, !dbg !226
  %call12 = call i16 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this, %"struct.Stream::MultiTarget"* nonnull %arraydecay11, i16 2), !dbg !227
  call void @llvm.lifetime.end(i64 12, i8* nonnull %1) #8, !dbg !228
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi i16 [ %call, %if.then ], [ %call12, %if.else ]
  %retval.0 = icmp eq i16 %retval.0.in, 0, !dbg !229
  ret i1 %retval.0, !dbg !230
}

; Function Attrs: nounwind readonly
declare i16 @strlen(i8* nocapture) local_unnamed_addr #5

define zeroext i1 @_ZN6Stream4findEPcj(%class.Stream* %this, i8* %target, i16 %length) local_unnamed_addr #0 align 2 !dbg !231 {
entry:
  %t.i = alloca [1 x %"struct.Stream::MultiTarget"], align 2
  tail call void @llvm.dbg.declare(metadata [1 x %"struct.Stream::MultiTarget"]* %t.i, metadata !154, metadata !25), !dbg !239
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !236, metadata !25), !dbg !241
  tail call void @llvm.dbg.value(metadata i8* %target, i64 0, metadata !237, metadata !25), !dbg !242
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !238, metadata !25), !dbg !243
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !165, metadata !25), !dbg !244
  tail call void @llvm.dbg.value(metadata i8* %target, i64 0, metadata !166, metadata !25), !dbg !245
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !167, metadata !25), !dbg !246
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !168, metadata !25), !dbg !247
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !169, metadata !25), !dbg !248
  %0 = bitcast [1 x %"struct.Stream::MultiTarget"]* %t.i to i8*, !dbg !249
  call void @llvm.lifetime.start(i64 6, i8* nonnull %0) #8, !dbg !249
  %str.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 0, !dbg !250
  store i8* %target, i8** %str.i, align 2, !dbg !250, !tbaa !198
  %len.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 1, !dbg !250
  store i16 %length, i16* %len.i, align 2, !dbg !250, !tbaa !202
  %index.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 2, !dbg !250
  store i16 0, i16* %index.i, align 2, !dbg !250, !tbaa !203
  %arraydecay.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, !dbg !251
  %call.i = call i16 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this, %"struct.Stream::MultiTarget"* nonnull %arraydecay.i, i16 1), !dbg !252
  call void @llvm.lifetime.end(i64 6, i8* nonnull %0) #8, !dbg !253
  %retval.0.i = icmp eq i16 %call.i, 0, !dbg !254
  ret i1 %retval.0.i, !dbg !255
}

define zeroext i1 @_ZN6Stream9findUntilEPcS0_(%class.Stream* %this, i8* %target, i8* %terminator) local_unnamed_addr #0 align 2 !dbg !256 {
entry:
  %t.i = alloca [1 x %"struct.Stream::MultiTarget"], align 2
  tail call void @llvm.dbg.declare(metadata [1 x %"struct.Stream::MultiTarget"]* %t.i, metadata !154, metadata !25), !dbg !264
  %t3.i = alloca [2 x %"struct.Stream::MultiTarget"], align 2
  tail call void @llvm.dbg.declare(metadata [2 x %"struct.Stream::MultiTarget"]* %t3.i, metadata !170, metadata !25), !dbg !267
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !261, metadata !25), !dbg !268
  tail call void @llvm.dbg.value(metadata i8* %target, i64 0, metadata !262, metadata !25), !dbg !269
  tail call void @llvm.dbg.value(metadata i8* %terminator, i64 0, metadata !263, metadata !25), !dbg !270
  %call = tail call i16 @strlen(i8* %target) #7, !dbg !271
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !165, metadata !25), !dbg !272
  tail call void @llvm.dbg.value(metadata i8* %target, i64 0, metadata !166, metadata !25), !dbg !273
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !167, metadata !25), !dbg !274
  tail call void @llvm.dbg.value(metadata i8* %terminator, i64 0, metadata !168, metadata !25), !dbg !275
  tail call void @llvm.dbg.value(metadata i16 %call2, i64 0, metadata !169, metadata !25), !dbg !276
  %cmp.i = icmp eq i8* %terminator, null, !dbg !277
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !278

if.then.i:                                        ; preds = %entry
  %0 = bitcast [1 x %"struct.Stream::MultiTarget"]* %t.i to i8*, !dbg !279
  call void @llvm.lifetime.start(i64 6, i8* nonnull %0) #8, !dbg !279
  %str.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 0, !dbg !280
  store i8* %target, i8** %str.i, align 2, !dbg !280, !tbaa !198
  %len.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 1, !dbg !280
  store i16 %call, i16* %len.i, align 2, !dbg !280, !tbaa !202
  %index.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, i32 2, !dbg !280
  store i16 0, i16* %index.i, align 2, !dbg !280, !tbaa !203
  %arraydecay.i = getelementptr inbounds [1 x %"struct.Stream::MultiTarget"], [1 x %"struct.Stream::MultiTarget"]* %t.i, i16 0, i16 0, !dbg !281
  %call.i = call i16 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this, %"struct.Stream::MultiTarget"* nonnull %arraydecay.i, i16 1), !dbg !282
  call void @llvm.lifetime.end(i64 6, i8* nonnull %0) #8, !dbg !283
  br label %_ZN6Stream9findUntilEPcjS0_j.exit

if.else.i:                                        ; preds = %entry
  %call2 = tail call i16 @strlen(i8* nonnull %terminator) #7, !dbg !284
  %1 = bitcast [2 x %"struct.Stream::MultiTarget"]* %t3.i to i8*, !dbg !286
  call void @llvm.lifetime.start(i64 12, i8* nonnull %1) #8, !dbg !286
  %str5.i = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3.i, i16 0, i16 0, i32 0, !dbg !287
  store i8* %target, i8** %str5.i, align 2, !dbg !287, !tbaa !198
  %len6.i = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3.i, i16 0, i16 0, i32 1, !dbg !287
  store i16 %call, i16* %len6.i, align 2, !dbg !287, !tbaa !202
  %index7.i = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3.i, i16 0, i16 0, i32 2, !dbg !287
  store i16 0, i16* %index7.i, align 2, !dbg !287, !tbaa !203
  %str8.i = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3.i, i16 0, i16 1, i32 0, !dbg !288
  store i8* %terminator, i8** %str8.i, align 2, !dbg !288, !tbaa !198
  %len9.i = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3.i, i16 0, i16 1, i32 1, !dbg !288
  store i16 %call2, i16* %len9.i, align 2, !dbg !288, !tbaa !202
  %index10.i = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3.i, i16 0, i16 1, i32 2, !dbg !288
  store i16 0, i16* %index10.i, align 2, !dbg !288, !tbaa !203
  %arraydecay11.i = getelementptr inbounds [2 x %"struct.Stream::MultiTarget"], [2 x %"struct.Stream::MultiTarget"]* %t3.i, i16 0, i16 0, !dbg !289
  %call12.i = call i16 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this, %"struct.Stream::MultiTarget"* nonnull %arraydecay11.i, i16 2), !dbg !290
  call void @llvm.lifetime.end(i64 12, i8* nonnull %1) #8, !dbg !291
  br label %_ZN6Stream9findUntilEPcjS0_j.exit

_ZN6Stream9findUntilEPcjS0_j.exit:                ; preds = %if.then.i, %if.else.i
  %retval.0.in.i = phi i16 [ %call.i, %if.then.i ], [ %call12.i, %if.else.i ]
  %retval.0.i = icmp eq i16 %retval.0.in.i, 0, !dbg !292
  ret i1 %retval.0.i, !dbg !293
}

define i16 @_ZN6Stream9findMultiEPNS_11MultiTargetEi(%class.Stream* %this, %"struct.Stream::MultiTarget"* %targets, i16 %tCount) local_unnamed_addr #0 align 2 !dbg !294 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !300, metadata !25), !dbg !315
  tail call void @llvm.dbg.value(metadata %"struct.Stream::MultiTarget"* %targets, i64 0, metadata !301, metadata !25), !dbg !316
  tail call void @llvm.dbg.value(metadata i16 %tCount, i64 0, metadata !302, metadata !25), !dbg !317
  tail call void @llvm.dbg.value(metadata %"struct.Stream::MultiTarget"* %targets, i64 0, metadata !303, metadata !25), !dbg !318
  tail call void @llvm.dbg.value(metadata %"struct.Stream::MultiTarget"* %targets, i64 0, metadata !303, metadata !25), !dbg !318
  %add.ptr = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %targets, i16 %tCount, !dbg !319
  %cmp138 = icmp sgt i16 %tCount, 0, !dbg !322
  br i1 %cmp138, label %for.body.preheader, label %while.body.preheader, !dbg !323

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !325

while.body.preheader.loopexit:                    ; preds = %for.inc
  br label %while.body.preheader, !dbg !328

while.body.preheader:                             ; preds = %while.body.preheader.loopexit, %entry
  %_startMillis.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !328
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !330
  %_timeout.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !331
  br label %while.body, !dbg !332

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %t.0139 = phi %"struct.Stream::MultiTarget"* [ %incdec.ptr, %for.inc ], [ %targets, %for.body.preheader ]
  %len = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %t.0139, i16 0, i32 1, !dbg !325
  %1 = load i16, i16* %len, align 1, !dbg !325, !tbaa !202
  %cmp2 = icmp eq i16 %1, 0, !dbg !333
  br i1 %cmp2, label %cleanup, label %for.inc, !dbg !334

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %t.0139, i16 1, !dbg !335
  tail call void @llvm.dbg.value(metadata %"struct.Stream::MultiTarget"* %incdec.ptr, i64 0, metadata !303, metadata !25), !dbg !318
  tail call void @llvm.dbg.value(metadata %"struct.Stream::MultiTarget"* %incdec.ptr, i64 0, metadata !303, metadata !25), !dbg !318
  %cmp = icmp ult %"struct.Stream::MultiTarget"* %incdec.ptr, %add.ptr, !dbg !322
  br i1 %cmp, label %for.body, label %while.body.preheader.loopexit, !dbg !323, !llvm.loop !337

cleanup:                                          ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint %"struct.Stream::MultiTarget"* %t.0139 to i16, !dbg !340
  %sub.ptr.rhs.cast = ptrtoint %"struct.Stream::MultiTarget"* %targets to i16, !dbg !340
  %sub.ptr.sub = sub i16 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !340
  %sub.ptr.div = sdiv exact i16 %sub.ptr.sub, 6, !dbg !340
  br label %return

while.body.loopexit:                              ; preds = %for.inc69
  br label %while.body.backedge, !dbg !332

while.body:                                       ; preds = %while.body.backedge, %while.body.preheader
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !22, metadata !25), !dbg !332
  %call.i = tail call i32 @millis(), !dbg !341
  store i32 %call.i, i32* %_startMillis.i, align 1, !dbg !342, !tbaa !30
  br label %do.body.i, !dbg !343, !llvm.loop !40

do.body.i:                                        ; preds = %do.cond.i, %while.body
  %vtable.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !330, !tbaa !42
  %vfn.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i, i16 3, !dbg !330
  %2 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i, align 1, !dbg !330
  %call2.i = tail call i16 %2(%class.Stream* nonnull %this), !dbg !330
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !24, metadata !25), !dbg !344
  %cmp.i = icmp sgt i16 %call2.i, -1, !dbg !345
  br i1 %cmp.i, label %for.cond7.preheader, label %do.cond.i, !dbg !346

for.cond7.preheader:                              ; preds = %do.body.i
  tail call void @llvm.dbg.value(metadata %"struct.Stream::MultiTarget"* %targets, i64 0, metadata !307, metadata !25), !dbg !347
  br i1 %cmp138, label %for.body11.preheader, label %while.body.backedge, !dbg !348

while.body.backedge:                              ; preds = %for.cond7.preheader, %while.body.loopexit
  br label %while.body, !dbg !332

for.body11.preheader:                             ; preds = %for.cond7.preheader
  br label %for.body11, !dbg !350

do.cond.i:                                        ; preds = %do.body.i
  %call3.i = tail call i32 @millis(), !dbg !352
  %3 = load i32, i32* %_startMillis.i, align 1, !dbg !353, !tbaa !30
  %sub.i = sub i32 %call3.i, %3, !dbg !354
  %4 = load i32, i32* %_timeout.i, align 1, !dbg !331, !tbaa !51
  %cmp5.i = icmp ult i32 %sub.i, %4, !dbg !355
  br i1 %cmp5.i, label %do.body.i, label %return.loopexit, !dbg !356, !llvm.loop !40

for.body11:                                       ; preds = %for.body11.preheader, %for.inc69
  %t6.0137 = phi %"struct.Stream::MultiTarget"* [ %incdec.ptr70, %for.inc69 ], [ %targets, %for.body11.preheader ]
  %str = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %t6.0137, i16 0, i32 0, !dbg !350
  %5 = load i8*, i8** %str, align 1, !dbg !350, !tbaa !198
  %index = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %t6.0137, i16 0, i32 2, !dbg !357
  %6 = load i16, i16* %index, align 1, !dbg !357, !tbaa !203
  %arrayidx = getelementptr inbounds i8, i8* %5, i16 %6, !dbg !358
  %7 = load i8, i8* %arrayidx, align 1, !dbg !358, !tbaa !359
  %conv = sext i8 %7 to i16, !dbg !358
  %cmp12 = icmp eq i16 %call2.i, %conv, !dbg !360
  br i1 %cmp12, label %if.then13, label %if.end22, !dbg !361

if.then13:                                        ; preds = %for.body11
  %inc = add i16 %6, 1, !dbg !362
  store i16 %inc, i16* %index, align 1, !dbg !362, !tbaa !203
  %len15 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %t6.0137, i16 0, i32 1, !dbg !365
  %8 = load i16, i16* %len15, align 1, !dbg !365, !tbaa !202
  %cmp16 = icmp eq i16 %inc, %8, !dbg !366
  br i1 %cmp16, label %cleanup71, label %for.inc69, !dbg !367

if.end22:                                         ; preds = %for.body11
  %cmp24 = icmp eq i16 %6, 0, !dbg !368
  br i1 %cmp24, label %for.inc69, label %do.body.preheader, !dbg !370, !llvm.loop !371

do.body.preheader:                                ; preds = %if.end22
  br label %do.body, !dbg !374

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %9 = phi i16 [ %dec, %do.cond ], [ %6, %do.body.preheader ], !dbg !374
  %dec = add i16 %9, -1, !dbg !374
  store i16 %dec, i16* %index, align 1, !dbg !374, !tbaa !203
  %arrayidx31 = getelementptr inbounds i8, i8* %5, i16 %dec, !dbg !375
  %10 = load i8, i8* %arrayidx31, align 1, !dbg !375, !tbaa !359
  %conv32 = sext i8 %10 to i16, !dbg !375
  %cmp33 = icmp eq i16 %call2.i, %conv32, !dbg !377
  br i1 %cmp33, label %if.end35, label %do.cond, !dbg !378

if.end35:                                         ; preds = %do.body
  %cmp37 = icmp eq i16 %dec, 0, !dbg !379
  br i1 %cmp37, label %if.then38, label %for.body46.lr.ph, !dbg !381

if.then38:                                        ; preds = %if.end35
  store i16 %9, i16* %index, align 1, !dbg !382, !tbaa !203
  br label %for.inc69, !dbg !384

for.body46.lr.ph:                                 ; preds = %if.end35
  %dec.neg = sub i16 1, %9
  %sub = add i16 %dec.neg, %6, !dbg !385
  tail call void @llvm.dbg.value(metadata i16 %sub, i64 0, metadata !312, metadata !25), !dbg !386
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !314, metadata !25), !dbg !387
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !314, metadata !25), !dbg !387
  br label %for.body46, !dbg !388

for.body46:                                       ; preds = %for.body46.lr.ph, %for.inc56
  %i.0132 = phi i16 [ 0, %for.body46.lr.ph ], [ %inc57, %for.inc56 ]
  %arrayidx48 = getelementptr inbounds i8, i8* %5, i16 %i.0132, !dbg !391
  %11 = load i8, i8* %arrayidx48, align 1, !dbg !391, !tbaa !359
  %add = add i16 %sub, %i.0132, !dbg !395
  %arrayidx51 = getelementptr inbounds i8, i8* %5, i16 %add, !dbg !396
  %12 = load i8, i8* %arrayidx51, align 1, !dbg !396, !tbaa !359
  %cmp53 = icmp eq i8 %11, %12, !dbg !397
  br i1 %cmp53, label %for.inc56, label %for.end58, !dbg !398

for.inc56:                                        ; preds = %for.body46
  %inc57 = add nuw i16 %i.0132, 1, !dbg !399
  tail call void @llvm.dbg.value(metadata i16 %inc57, i64 0, metadata !314, metadata !25), !dbg !387
  tail call void @llvm.dbg.value(metadata i16 %inc57, i64 0, metadata !314, metadata !25), !dbg !387
  %cmp45 = icmp ult i16 %inc57, %dec, !dbg !401
  br i1 %cmp45, label %for.body46, label %for.end58, !dbg !388, !llvm.loop !403

for.end58:                                        ; preds = %for.inc56, %for.body46
  %i.0.lcssa.ph = phi i16 [ %inc57, %for.inc56 ], [ %i.0132, %for.body46 ]
  %cmp60 = icmp eq i16 %i.0.lcssa.ph, %dec, !dbg !406
  br i1 %cmp60, label %if.then61, label %do.cond, !dbg !408

if.then61:                                        ; preds = %for.end58
  store i16 %9, i16* %index, align 1, !dbg !409, !tbaa !203
  br label %for.inc69

do.cond:                                          ; preds = %for.end58, %do.body
  %tobool = icmp eq i16 %dec, 0, !dbg !411
  br i1 %tobool, label %for.inc69.loopexit, label %do.body, !dbg !413, !llvm.loop !371

for.inc69.loopexit:                               ; preds = %do.cond
  br label %for.inc69, !dbg !415

for.inc69:                                        ; preds = %for.inc69.loopexit, %if.then38, %if.then61, %if.end22, %if.then13
  %incdec.ptr70 = getelementptr inbounds %"struct.Stream::MultiTarget", %"struct.Stream::MultiTarget"* %t6.0137, i16 1, !dbg !415
  tail call void @llvm.dbg.value(metadata %"struct.Stream::MultiTarget"* %incdec.ptr70, i64 0, metadata !307, metadata !25), !dbg !347
  tail call void @llvm.dbg.value(metadata %"struct.Stream::MultiTarget"* %incdec.ptr70, i64 0, metadata !307, metadata !25), !dbg !347
  %cmp9 = icmp ult %"struct.Stream::MultiTarget"* %incdec.ptr70, %add.ptr, !dbg !417
  br i1 %cmp9, label %for.body11, label %while.body.loopexit, !dbg !348, !llvm.loop !419

cleanup71:                                        ; preds = %if.then13
  %sub.ptr.lhs.cast18 = ptrtoint %"struct.Stream::MultiTarget"* %t6.0137 to i16, !dbg !422
  %sub.ptr.rhs.cast19 = ptrtoint %"struct.Stream::MultiTarget"* %targets to i16, !dbg !422
  %sub.ptr.sub20 = sub i16 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19, !dbg !422
  %sub.ptr.div21 = sdiv exact i16 %sub.ptr.sub20, 6, !dbg !422
  br label %return

return.loopexit:                                  ; preds = %do.cond.i
  br label %return, !dbg !423

return:                                           ; preds = %return.loopexit, %cleanup71, %cleanup
  %retval.4 = phi i16 [ %sub.ptr.div, %cleanup ], [ %sub.ptr.div21, %cleanup71 ], [ -1, %return.loopexit ]
  ret i16 %retval.4, !dbg !423
}

define i32 @_ZN6Stream8parseIntE13LookaheadModec(%class.Stream* %this, i16 %lookahead, i8 signext %ignore) local_unnamed_addr #0 align 2 !dbg !424 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !430, metadata !25), !dbg !436
  tail call void @llvm.dbg.value(metadata i16 %lookahead, i64 0, metadata !431, metadata !25), !dbg !437
  tail call void @llvm.dbg.value(metadata i8 %ignore, i64 0, metadata !432, metadata !25), !dbg !438
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !433, metadata !25), !dbg !439
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !434, metadata !25), !dbg !440
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !89, metadata !25), !dbg !441
  tail call void @llvm.dbg.value(metadata i16 %lookahead, i64 0, metadata !90, metadata !25), !dbg !443
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !91, metadata !95), !dbg !444
  %_startMillis.i.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !445
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !447
  %_timeout.i.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !448
  br label %while.cond.i, !dbg !449

while.cond.i:                                     ; preds = %sw.epilog11.i, %entry
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !59, metadata !25), !dbg !450
  %call.i.i = tail call i32 @millis(), !dbg !451
  store i32 %call.i.i, i32* %_startMillis.i.i, align 1, !dbg !452, !tbaa !30
  br label %do.body.i.i, !dbg !453, !llvm.loop !70

do.body.i.i:                                      ; preds = %do.cond.i.i, %while.cond.i
  %vtable.i.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !447, !tbaa !42
  %vfn.i.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i.i, i16 4, !dbg !447
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i.i, align 1, !dbg !447
  %call2.i.i = tail call i16 %1(%class.Stream* nonnull %this), !dbg !447
  tail call void @llvm.dbg.value(metadata i16 %call2.i.i, i64 0, metadata !60, metadata !25), !dbg !454
  %cmp.i.i = icmp sgt i16 %call2.i.i, -1, !dbg !455
  br i1 %cmp.i.i, label %_ZN6Stream9timedPeekEv.exit.i, label %do.cond.i.i, !dbg !456

do.cond.i.i:                                      ; preds = %do.body.i.i
  %call3.i.i = tail call i32 @millis(), !dbg !457
  %2 = load i32, i32* %_startMillis.i.i, align 1, !dbg !458, !tbaa !30
  %sub.i.i = sub i32 %call3.i.i, %2, !dbg !459
  %3 = load i32, i32* %_timeout.i.i, align 1, !dbg !448, !tbaa !51
  %cmp5.i.i = icmp ult i32 %sub.i.i, %3, !dbg !460
  br i1 %cmp5.i.i, label %do.body.i.i, label %cleanup.loopexit, !dbg !461, !llvm.loop !70

_ZN6Stream9timedPeekEv.exit.i:                    ; preds = %do.body.i.i
  tail call void @llvm.dbg.value(metadata i16 %call2.i.i, i64 0, metadata !92, metadata !25), !dbg !462
  %cmp2.i = icmp eq i16 %call2.i.i, 45, !dbg !463
  %call.off.i = add nsw i16 %call2.i.i, -48, !dbg !464
  %4 = icmp ult i16 %call.off.i, 10, !dbg !464
  %or.cond23.i = or i1 %cmp2.i, %4, !dbg !465
  br i1 %or.cond23.i, label %do.body.preheader, label %if.end.i, !dbg !465

do.body.preheader:                                ; preds = %_ZN6Stream9timedPeekEv.exit.i
  %conv = sext i8 %ignore to i16, !dbg !466
  br label %do.body, !dbg !469

if.end.i:                                         ; preds = %_ZN6Stream9timedPeekEv.exit.i
  switch i16 %lookahead, label %sw.epilog11.i [
    i16 1, label %cleanup.loopexit62
    i16 2, label %sw.bb9.i
  ], !dbg !470

sw.bb9.i:                                         ; preds = %if.end.i
  switch i16 %call2.i.i, label %cleanup.loopexit62 [
    i16 32, label %sw.epilog11.i
    i16 9, label %sw.epilog11.i
    i16 13, label %sw.epilog11.i
    i16 10, label %sw.epilog11.i
  ], !dbg !471

sw.epilog11.i:                                    ; preds = %sw.bb9.i, %sw.bb9.i, %sw.bb9.i, %sw.bb9.i, %if.end.i
  %vtable.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !472, !tbaa !42
  %vfn.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i, i16 3, !dbg !472
  %5 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i, align 1, !dbg !472
  %call12.i = tail call i16 %5(%class.Stream* nonnull %this), !dbg !472
  br label %while.cond.i, !dbg !473, !llvm.loop !130

do.body:                                          ; preds = %do.body.preheader, %_ZN6Stream9timedPeekEv.exit
  %isNegative.0 = phi i8 [ %isNegative.1, %_ZN6Stream9timedPeekEv.exit ], [ 0, %do.body.preheader ]
  %value.0 = phi i32 [ %value.1, %_ZN6Stream9timedPeekEv.exit ], [ 0, %do.body.preheader ]
  %c.0 = phi i16 [ %retval.0.i43, %_ZN6Stream9timedPeekEv.exit ], [ %call2.i.i, %do.body.preheader ]
  tail call void @llvm.dbg.value(metadata i16 %c.0, i64 0, metadata !435, metadata !25), !dbg !469
  tail call void @llvm.dbg.value(metadata i32 %value.0, i64 0, metadata !434, metadata !25), !dbg !440
  tail call void @llvm.dbg.value(metadata i8 %isNegative.0, i64 0, metadata !433, metadata !25), !dbg !439
  %cmp2 = icmp eq i16 %c.0, %conv, !dbg !474
  br i1 %cmp2, label %if.end13, label %if.else, !dbg !475

if.else:                                          ; preds = %do.body
  %cmp4 = icmp eq i16 %c.0, 45, !dbg !476
  br i1 %cmp4, label %if.end13, label %if.else6, !dbg !478

if.else6:                                         ; preds = %if.else
  %c.0.off = add nsw i16 %c.0, -48, !dbg !479
  %6 = icmp ult i16 %c.0.off, 10, !dbg !479
  br i1 %6, label %if.then9, label %if.end13, !dbg !479

if.then9:                                         ; preds = %if.else6
  %mul = mul nsw i32 %value.0, 10, !dbg !481
  %conv10 = sext i16 %c.0 to i32, !dbg !482
  %add = add i32 %mul, -48, !dbg !483
  %sub = add i32 %add, %conv10, !dbg !484
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !434, metadata !25), !dbg !440
  br label %if.end13, !dbg !485

if.end13:                                         ; preds = %if.else, %if.then9, %if.else6, %do.body
  %isNegative.1 = phi i8 [ %isNegative.0, %do.body ], [ %isNegative.0, %if.then9 ], [ %isNegative.0, %if.else6 ], [ 1, %if.else ]
  %value.1 = phi i32 [ %value.0, %do.body ], [ %sub, %if.then9 ], [ %value.0, %if.else6 ], [ %value.0, %if.else ]
  tail call void @llvm.dbg.value(metadata i32 %value.1, i64 0, metadata !434, metadata !25), !dbg !440
  tail call void @llvm.dbg.value(metadata i8 %isNegative.1, i64 0, metadata !433, metadata !25), !dbg !439
  %vtable = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !486, !tbaa !42
  %vfn = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable, i16 3, !dbg !486
  %7 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn, align 1, !dbg !486
  %call14 = tail call i16 %7(%class.Stream* nonnull %this), !dbg !486
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !59, metadata !25), !dbg !487
  %call.i = tail call i32 @millis(), !dbg !489
  store i32 %call.i, i32* %_startMillis.i.i, align 1, !dbg !490, !tbaa !30
  br label %do.body.i, !dbg !491, !llvm.loop !70

do.body.i:                                        ; preds = %do.cond.i, %if.end13
  %vtable.i40 = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !492, !tbaa !42
  %vfn.i41 = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i40, i16 4, !dbg !492
  %8 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i41, align 1, !dbg !492
  %call2.i = tail call i16 %8(%class.Stream* nonnull %this), !dbg !492
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !60, metadata !25), !dbg !493
  %cmp.i42 = icmp sgt i16 %call2.i, -1, !dbg !494
  br i1 %cmp.i42, label %_ZN6Stream9timedPeekEv.exit, label %do.cond.i, !dbg !495

do.cond.i:                                        ; preds = %do.body.i
  %call3.i = tail call i32 @millis(), !dbg !496
  %9 = load i32, i32* %_startMillis.i.i, align 1, !dbg !497, !tbaa !30
  %sub.i = sub i32 %call3.i, %9, !dbg !498
  %10 = load i32, i32* %_timeout.i.i, align 1, !dbg !499, !tbaa !51
  %cmp5.i = icmp ult i32 %sub.i, %10, !dbg !500
  br i1 %cmp5.i, label %do.body.i, label %_ZN6Stream9timedPeekEv.exit, !dbg !501, !llvm.loop !70

_ZN6Stream9timedPeekEv.exit:                      ; preds = %do.body.i, %do.cond.i
  %retval.0.i43 = phi i16 [ %call2.i, %do.body.i ], [ -1, %do.cond.i ]
  tail call void @llvm.dbg.value(metadata i16 %retval.0.i43, i64 0, metadata !435, metadata !25), !dbg !469
  %call15.off = add i16 %retval.0.i43, -48, !dbg !502
  %11 = icmp ult i16 %call15.off, 10, !dbg !502
  %cmp20 = icmp eq i16 %retval.0.i43, %conv, !dbg !503
  %or.cond = or i1 %cmp20, %11, !dbg !502
  br i1 %or.cond, label %do.body, label %do.end, !dbg !502

do.end:                                           ; preds = %_ZN6Stream9timedPeekEv.exit
  %12 = and i8 %isNegative.1, 1, !dbg !505
  %tobool = icmp eq i8 %12, 0, !dbg !505
  %sub22 = sub nsw i32 0, %value.1, !dbg !507
  tail call void @llvm.dbg.value(metadata i32 %sub22, i64 0, metadata !434, metadata !25), !dbg !440
  %value.1.sub22 = select i1 %tobool, i32 %value.1, i32 %sub22, !dbg !508
  tail call void @llvm.dbg.value(metadata i32 %value.1.sub22, i64 0, metadata !434, metadata !25), !dbg !440
  br label %cleanup, !dbg !509

cleanup.loopexit:                                 ; preds = %do.cond.i.i
  br label %cleanup, !dbg !510

cleanup.loopexit62:                               ; preds = %if.end.i, %sw.bb9.i
  br label %cleanup, !dbg !510

cleanup:                                          ; preds = %cleanup.loopexit62, %cleanup.loopexit, %do.end
  %retval.0 = phi i32 [ %value.1.sub22, %do.end ], [ 0, %cleanup.loopexit ], [ 0, %cleanup.loopexit62 ]
  ret i32 %retval.0, !dbg !510
}

define float @_ZN6Stream10parseFloatE13LookaheadModec(%class.Stream* %this, i16 %lookahead, i8 signext %ignore) local_unnamed_addr #0 align 2 !dbg !511 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !517, metadata !25), !dbg !525
  tail call void @llvm.dbg.value(metadata i16 %lookahead, i64 0, metadata !518, metadata !25), !dbg !526
  tail call void @llvm.dbg.value(metadata i8 %ignore, i64 0, metadata !519, metadata !25), !dbg !527
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !520, metadata !25), !dbg !528
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !521, metadata !25), !dbg !529
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !522, metadata !25), !dbg !530
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, i64 0, metadata !524, metadata !25), !dbg !531
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !89, metadata !25), !dbg !532
  tail call void @llvm.dbg.value(metadata i16 %lookahead, i64 0, metadata !90, metadata !25), !dbg !534
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !91, metadata !95), !dbg !535
  %_startMillis.i.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !536
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !538
  %_timeout.i.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !539
  br label %while.cond.i, !dbg !540

while.cond.i:                                     ; preds = %sw.epilog11.i, %entry
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !59, metadata !25), !dbg !541
  %call.i.i = tail call i32 @millis(), !dbg !542
  store i32 %call.i.i, i32* %_startMillis.i.i, align 1, !dbg !543, !tbaa !30
  br label %do.body.i.i, !dbg !544, !llvm.loop !70

do.body.i.i:                                      ; preds = %do.cond.i.i, %while.cond.i
  %vtable.i.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !538, !tbaa !42
  %vfn.i.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i.i, i16 4, !dbg !538
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i.i, align 1, !dbg !538
  %call2.i.i = tail call i16 %1(%class.Stream* nonnull %this), !dbg !538
  tail call void @llvm.dbg.value(metadata i16 %call2.i.i, i64 0, metadata !60, metadata !25), !dbg !545
  %cmp.i.i = icmp sgt i16 %call2.i.i, -1, !dbg !546
  br i1 %cmp.i.i, label %_ZN6Stream9timedPeekEv.exit.i, label %do.cond.i.i, !dbg !547

do.cond.i.i:                                      ; preds = %do.body.i.i
  %call3.i.i = tail call i32 @millis(), !dbg !548
  %2 = load i32, i32* %_startMillis.i.i, align 1, !dbg !549, !tbaa !30
  %sub.i.i = sub i32 %call3.i.i, %2, !dbg !550
  %3 = load i32, i32* %_timeout.i.i, align 1, !dbg !539, !tbaa !51
  %cmp5.i.i = icmp ult i32 %sub.i.i, %3, !dbg !551
  br i1 %cmp5.i.i, label %do.body.i.i, label %_ZN6Stream9timedPeekEv.exit.i, !dbg !552, !llvm.loop !70

_ZN6Stream9timedPeekEv.exit.i:                    ; preds = %do.cond.i.i, %do.body.i.i
  %retval.0.i.i = phi i16 [ %call2.i.i, %do.body.i.i ], [ -1, %do.cond.i.i ]
  tail call void @llvm.dbg.value(metadata i16 %retval.0.i.i, i64 0, metadata !92, metadata !25), !dbg !553
  %cmp.i = icmp slt i16 %retval.0.i.i, 0, !dbg !554
  %cmp2.i = icmp eq i16 %retval.0.i.i, 45, !dbg !555
  %or.cond.i = or i1 %cmp.i, %cmp2.i, !dbg !556
  %call.off.i = add i16 %retval.0.i.i, -48, !dbg !557
  %4 = icmp ult i16 %call.off.i, 10, !dbg !557
  %or.cond23.i = or i1 %or.cond.i, %4, !dbg !556
  %cmp8.i = icmp eq i16 %retval.0.i.i, 46, !dbg !558
  %or.cond24.i = or i1 %cmp8.i, %or.cond23.i, !dbg !556
  br i1 %or.cond24.i, label %_ZN6Stream13peekNextDigitE13LookaheadModeb.exit, label %if.end.i, !dbg !556

if.end.i:                                         ; preds = %_ZN6Stream9timedPeekEv.exit.i
  switch i16 %lookahead, label %sw.epilog11.i [
    i16 1, label %cleanup.loopexit
    i16 2, label %sw.bb9.i
  ], !dbg !559

sw.bb9.i:                                         ; preds = %if.end.i
  switch i16 %retval.0.i.i, label %cleanup.loopexit [
    i16 32, label %sw.epilog11.i
    i16 9, label %sw.epilog11.i
    i16 13, label %sw.epilog11.i
    i16 10, label %sw.epilog11.i
  ], !dbg !560

sw.epilog11.i:                                    ; preds = %sw.bb9.i, %sw.bb9.i, %sw.bb9.i, %sw.bb9.i, %if.end.i
  %vtable.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !561, !tbaa !42
  %vfn.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i, i16 3, !dbg !561
  %5 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i, align 1, !dbg !561
  %call12.i = tail call i16 %5(%class.Stream* nonnull %this), !dbg !561
  br label %while.cond.i, !dbg !562, !llvm.loop !130

_ZN6Stream13peekNextDigitE13LookaheadModeb.exit:  ; preds = %_ZN6Stream9timedPeekEv.exit.i
  tail call void @llvm.dbg.value(metadata i16 %retval.0.i.i, i64 0, metadata !523, metadata !25), !dbg !563
  br i1 %cmp.i, label %cleanup, label %do.body.preheader, !dbg !564, !llvm.loop !565

do.body.preheader:                                ; preds = %_ZN6Stream13peekNextDigitE13LookaheadModeb.exit
  %conv = sext i8 %ignore to i16, !dbg !568
  br label %do.body, !dbg !531

do.body:                                          ; preds = %do.body.backedge, %do.body.preheader
  %isNegative.0 = phi i8 [ 0, %do.body.preheader ], [ %isNegative.1, %do.body.backedge ]
  %isFraction.0 = phi i8 [ 0, %do.body.preheader ], [ %isFraction.1, %do.body.backedge ]
  %value.0 = phi i32 [ 0, %do.body.preheader ], [ %value.1, %do.body.backedge ]
  %c.0 = phi i16 [ %retval.0.i.i, %do.body.preheader ], [ %c.0.be, %do.body.backedge ]
  %fraction.0 = phi float [ 1.000000e+00, %do.body.preheader ], [ %fraction.1, %do.body.backedge ]
  tail call void @llvm.dbg.value(metadata float %fraction.0, i64 0, metadata !524, metadata !25), !dbg !531
  tail call void @llvm.dbg.value(metadata i16 %c.0, i64 0, metadata !523, metadata !25), !dbg !563
  tail call void @llvm.dbg.value(metadata i32 %value.0, i64 0, metadata !522, metadata !25), !dbg !530
  tail call void @llvm.dbg.value(metadata i8 %isFraction.0, i64 0, metadata !521, metadata !25), !dbg !529
  tail call void @llvm.dbg.value(metadata i8 %isNegative.0, i64 0, metadata !520, metadata !25), !dbg !528
  %cmp2 = icmp eq i16 %c.0, %conv, !dbg !571
  br i1 %cmp2, label %if.end20, label %if.else, !dbg !572

if.else:                                          ; preds = %do.body
  switch i16 %c.0, label %if.else9 [
    i16 45, label %if.end20
    i16 46, label %if.then8
  ], !dbg !573

if.then8:                                         ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !521, metadata !25), !dbg !529
  br label %if.end20, !dbg !574

if.else9:                                         ; preds = %if.else
  %c.0.off = add i16 %c.0, -48, !dbg !577
  %6 = icmp ult i16 %c.0.off, 10, !dbg !577
  br i1 %6, label %if.then12, label %if.end20, !dbg !577

if.then12:                                        ; preds = %if.else9
  %mul = mul nsw i32 %value.0, 10, !dbg !579
  %conv13 = sext i16 %c.0 to i32, !dbg !581
  %add = add i32 %mul, -48, !dbg !582
  %sub = add i32 %add, %conv13, !dbg !583
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !522, metadata !25), !dbg !530
  %7 = and i8 %isFraction.0, 1, !dbg !584
  %tobool = icmp eq i8 %7, 0, !dbg !584
  %mul15 = fmul float %fraction.0, 0x3FB99999A0000000, !dbg !586
  tail call void @llvm.dbg.value(metadata float %mul15, i64 0, metadata !524, metadata !25), !dbg !531
  %fraction.0.mul15 = select i1 %tobool, float %fraction.0, float %mul15, !dbg !587
  br label %if.end20, !dbg !587

if.end20:                                         ; preds = %if.then12, %if.else, %if.else9, %if.then8, %do.body
  %isNegative.1 = phi i8 [ %isNegative.0, %do.body ], [ %isNegative.0, %if.then8 ], [ %isNegative.0, %if.else9 ], [ 1, %if.else ], [ %isNegative.0, %if.then12 ]
  %isFraction.1 = phi i8 [ %isFraction.0, %do.body ], [ 1, %if.then8 ], [ %isFraction.0, %if.else9 ], [ %isFraction.0, %if.else ], [ %isFraction.0, %if.then12 ]
  %value.1 = phi i32 [ %value.0, %do.body ], [ %value.0, %if.then8 ], [ %value.0, %if.else9 ], [ %value.0, %if.else ], [ %sub, %if.then12 ]
  %fraction.1 = phi float [ %fraction.0, %do.body ], [ %fraction.0, %if.then8 ], [ %fraction.0, %if.else9 ], [ %fraction.0, %if.else ], [ %fraction.0.mul15, %if.then12 ]
  tail call void @llvm.dbg.value(metadata float %fraction.1, i64 0, metadata !524, metadata !25), !dbg !531
  tail call void @llvm.dbg.value(metadata i32 %value.1, i64 0, metadata !522, metadata !25), !dbg !530
  tail call void @llvm.dbg.value(metadata i8 %isFraction.1, i64 0, metadata !521, metadata !25), !dbg !529
  tail call void @llvm.dbg.value(metadata i8 %isNegative.1, i64 0, metadata !520, metadata !25), !dbg !528
  %vtable = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !588, !tbaa !42
  %vfn = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable, i16 3, !dbg !588
  %8 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn, align 1, !dbg !588
  %call21 = tail call i16 %8(%class.Stream* nonnull %this), !dbg !588
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !59, metadata !25), !dbg !589
  %call.i = tail call i32 @millis(), !dbg !591
  store i32 %call.i, i32* %_startMillis.i.i, align 1, !dbg !592, !tbaa !30
  br label %do.body.i, !dbg !593, !llvm.loop !70

do.body.i:                                        ; preds = %do.cond.i, %if.end20
  %vtable.i67 = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !594, !tbaa !42
  %vfn.i68 = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i67, i16 4, !dbg !594
  %9 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i68, align 1, !dbg !594
  %call2.i = tail call i16 %9(%class.Stream* nonnull %this), !dbg !594
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !60, metadata !25), !dbg !595
  %cmp.i69 = icmp sgt i16 %call2.i, -1, !dbg !596
  br i1 %cmp.i69, label %_ZN6Stream9timedPeekEv.exit, label %do.cond.i, !dbg !597

do.cond.i:                                        ; preds = %do.body.i
  %call3.i = tail call i32 @millis(), !dbg !598
  %10 = load i32, i32* %_startMillis.i.i, align 1, !dbg !599, !tbaa !30
  %sub.i = sub i32 %call3.i, %10, !dbg !600
  %11 = load i32, i32* %_timeout.i.i, align 1, !dbg !601, !tbaa !51
  %cmp5.i = icmp ult i32 %sub.i, %11, !dbg !602
  br i1 %cmp5.i, label %do.body.i, label %lor.lhs.false.loopexit, !dbg !603, !llvm.loop !70

_ZN6Stream9timedPeekEv.exit:                      ; preds = %do.body.i
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !523, metadata !25), !dbg !563
  %call22.off = add nsw i16 %call2.i, -48, !dbg !604
  %12 = icmp ult i16 %call22.off, 10, !dbg !604
  br i1 %12, label %do.body.backedge, label %lor.lhs.false, !dbg !604

do.body.backedge:                                 ; preds = %_ZN6Stream9timedPeekEv.exit, %lor.lhs.false
  %c.0.be = phi i16 [ %call2.i, %_ZN6Stream9timedPeekEv.exit ], [ %retval.0.i7073, %lor.lhs.false ]
  br label %do.body, !dbg !531

lor.lhs.false.loopexit:                           ; preds = %do.cond.i
  br label %lor.lhs.false, !dbg !605

lor.lhs.false:                                    ; preds = %lor.lhs.false.loopexit, %_ZN6Stream9timedPeekEv.exit
  %retval.0.i7073 = phi i16 [ %call2.i, %_ZN6Stream9timedPeekEv.exit ], [ -1, %lor.lhs.false.loopexit ]
  %cmp26 = icmp eq i16 %retval.0.i7073, 46, !dbg !605
  %13 = and i8 %isFraction.1, 1, !dbg !607
  %tobool28 = icmp eq i8 %13, 0, !dbg !607
  %or.cond = and i1 %tobool28, %cmp26, !dbg !609
  %cmp30 = icmp eq i16 %retval.0.i7073, %conv, !dbg !610
  %or.cond66 = or i1 %cmp30, %or.cond, !dbg !609
  br i1 %or.cond66, label %do.body.backedge, label %do.end, !dbg !609

do.end:                                           ; preds = %lor.lhs.false
  %14 = and i8 %isNegative.1, 1, !dbg !612
  %tobool31 = icmp eq i8 %14, 0, !dbg !612
  %sub33 = sub nsw i32 0, %value.1, !dbg !614
  tail call void @llvm.dbg.value(metadata i32 %sub33, i64 0, metadata !522, metadata !25), !dbg !530
  %value.1.sub33 = select i1 %tobool31, i32 %value.1, i32 %sub33, !dbg !615
  tail call void @llvm.dbg.value(metadata i32 %value.1.sub33, i64 0, metadata !522, metadata !25), !dbg !530
  %conv37 = sitofp i32 %value.1.sub33 to float
  %mul38 = fmul float %fraction.1, %conv37, !dbg !616
  %conv37.mul38 = select i1 %tobool28, float %conv37, float %mul38, !dbg !618
  ret float %conv37.mul38, !dbg !618

cleanup.loopexit:                                 ; preds = %if.end.i, %sw.bb9.i
  br label %cleanup, !dbg !619

cleanup:                                          ; preds = %cleanup.loopexit, %_ZN6Stream13peekNextDigitE13LookaheadModeb.exit
  ret float 0.000000e+00, !dbg !619
}

define i16 @_ZN6Stream9readBytesEPcj(%class.Stream* %this, i8* nocapture %buffer, i16 %length) local_unnamed_addr #0 align 2 !dbg !620 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !625, metadata !25), !dbg !631
  tail call void @llvm.dbg.value(metadata i8* %buffer, i64 0, metadata !626, metadata !25), !dbg !632
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !627, metadata !25), !dbg !633
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !628, metadata !25), !dbg !634
  tail call void @llvm.dbg.value(metadata i8* %buffer, i64 0, metadata !626, metadata !25), !dbg !632
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !628, metadata !25), !dbg !634
  %cmp14 = icmp eq i16 %length, 0, !dbg !635
  br i1 %cmp14, label %while.end, label %while.body.lr.ph, !dbg !637

while.body.lr.ph:                                 ; preds = %entry
  %_startMillis.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !638
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !640
  %_timeout.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !641
  br label %while.body, !dbg !637

while.body:                                       ; preds = %while.body.lr.ph, %cleanup.thread
  %buffer.addr.016 = phi i8* [ %buffer, %while.body.lr.ph ], [ %incdec.ptr, %cleanup.thread ]
  %count.015 = phi i16 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.thread ]
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !22, metadata !25), !dbg !642
  %call.i = tail call i32 @millis(), !dbg !643
  store i32 %call.i, i32* %_startMillis.i, align 1, !dbg !644, !tbaa !30
  br label %do.body.i, !dbg !645, !llvm.loop !40

do.body.i:                                        ; preds = %do.cond.i, %while.body
  %vtable.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !640, !tbaa !42
  %vfn.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i, i16 3, !dbg !640
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i, align 1, !dbg !640
  %call2.i = tail call i16 %1(%class.Stream* nonnull %this), !dbg !640
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !24, metadata !25), !dbg !646
  %cmp.i = icmp sgt i16 %call2.i, -1, !dbg !647
  br i1 %cmp.i, label %cleanup.thread, label %do.cond.i, !dbg !648

do.cond.i:                                        ; preds = %do.body.i
  %call3.i = tail call i32 @millis(), !dbg !649
  %2 = load i32, i32* %_startMillis.i, align 1, !dbg !650, !tbaa !30
  %sub.i = sub i32 %call3.i, %2, !dbg !651
  %3 = load i32, i32* %_timeout.i, align 1, !dbg !641, !tbaa !51
  %cmp5.i = icmp ult i32 %sub.i, %3, !dbg !652
  br i1 %cmp5.i, label %do.body.i, label %while.end.loopexit, !dbg !653, !llvm.loop !40

cleanup.thread:                                   ; preds = %do.body.i
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !629, metadata !25), !dbg !654
  %conv = trunc i16 %call2.i to i8, !dbg !655
  %incdec.ptr = getelementptr inbounds i8, i8* %buffer.addr.016, i16 1, !dbg !656
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !626, metadata !25), !dbg !632
  store i8 %conv, i8* %buffer.addr.016, align 1, !dbg !657, !tbaa !359
  %inc = add nuw i16 %count.015, 1, !dbg !658
  tail call void @llvm.dbg.value(metadata i16 %inc, i64 0, metadata !628, metadata !25), !dbg !634
  tail call void @llvm.dbg.value(metadata i8* %buffer.addr.016, i64 0, metadata !626, metadata !25), !dbg !632
  tail call void @llvm.dbg.value(metadata i16 %count.015, i64 0, metadata !628, metadata !25), !dbg !634
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !626, metadata !25), !dbg !632
  tail call void @llvm.dbg.value(metadata i16 %inc, i64 0, metadata !628, metadata !25), !dbg !634
  %cmp = icmp ult i16 %inc, %length, !dbg !635
  br i1 %cmp, label %while.body, label %while.end.loopexit26, !dbg !637

while.end.loopexit:                               ; preds = %do.cond.i
  br label %while.end, !dbg !634

while.end.loopexit26:                             ; preds = %cleanup.thread
  br label %while.end, !dbg !634

while.end:                                        ; preds = %while.end.loopexit26, %while.end.loopexit, %entry
  %count.013 = phi i16 [ 0, %entry ], [ %count.015, %while.end.loopexit ], [ %inc, %while.end.loopexit26 ]
  tail call void @llvm.dbg.value(metadata i16 undef, i64 0, metadata !628, metadata !25), !dbg !634
  ret i16 %count.013, !dbg !659
}

define i16 @_ZN6Stream14readBytesUntilEcPcj(%class.Stream* %this, i8 signext %terminator, i8* nocapture %buffer, i16 %length) local_unnamed_addr #0 align 2 !dbg !660 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !665, metadata !25), !dbg !672
  tail call void @llvm.dbg.value(metadata i8 %terminator, i64 0, metadata !666, metadata !25), !dbg !673
  tail call void @llvm.dbg.value(metadata i8* %buffer, i64 0, metadata !667, metadata !25), !dbg !674
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !668, metadata !25), !dbg !675
  %cmp = icmp eq i16 %length, 0, !dbg !676
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !669, metadata !25), !dbg !678
  tail call void @llvm.dbg.value(metadata i8* %buffer, i64 0, metadata !667, metadata !25), !dbg !674
  br i1 %cmp, label %return, label %while.body.lr.ph, !dbg !679

while.body.lr.ph:                                 ; preds = %entry
  %_startMillis.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !680
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !682
  %_timeout.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !683
  %conv = sext i8 %terminator to i16, !dbg !684
  br label %while.body, !dbg !687

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %index.025 = phi i16 [ 0, %while.body.lr.ph ], [ %inc, %cleanup ]
  %buffer.addr.024 = phi i8* [ %buffer, %while.body.lr.ph ], [ %incdec.ptr, %cleanup ]
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !22, metadata !25), !dbg !689
  %call.i = tail call i32 @millis(), !dbg !690
  store i32 %call.i, i32* %_startMillis.i, align 1, !dbg !691, !tbaa !30
  br label %do.body.i, !dbg !692, !llvm.loop !40

do.body.i:                                        ; preds = %do.cond.i, %while.body
  %vtable.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !682, !tbaa !42
  %vfn.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i, i16 3, !dbg !682
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i, align 1, !dbg !682
  %call2.i = tail call i16 %1(%class.Stream* nonnull %this), !dbg !682
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !24, metadata !25), !dbg !693
  %cmp.i = icmp sgt i16 %call2.i, -1, !dbg !694
  br i1 %cmp.i, label %_ZN6Stream9timedReadEv.exit, label %do.cond.i, !dbg !695

do.cond.i:                                        ; preds = %do.body.i
  %call3.i = tail call i32 @millis(), !dbg !696
  %2 = load i32, i32* %_startMillis.i, align 1, !dbg !697, !tbaa !30
  %sub.i = sub i32 %call3.i, %2, !dbg !698
  %3 = load i32, i32* %_timeout.i, align 1, !dbg !683, !tbaa !51
  %cmp5.i = icmp ult i32 %sub.i, %3, !dbg !699
  br i1 %cmp5.i, label %do.body.i, label %return.loopexit, !dbg !700, !llvm.loop !40

_ZN6Stream9timedReadEv.exit:                      ; preds = %do.body.i
  tail call void @llvm.dbg.value(metadata i16 %call2.i, i64 0, metadata !670, metadata !25), !dbg !701
  %cmp4 = icmp eq i16 %call2.i, %conv, !dbg !702
  br i1 %cmp4, label %return.loopexit36, label %cleanup, !dbg !703

cleanup:                                          ; preds = %_ZN6Stream9timedReadEv.exit
  %conv7 = trunc i16 %call2.i to i8, !dbg !704
  %incdec.ptr = getelementptr inbounds i8, i8* %buffer.addr.024, i16 1, !dbg !705
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !667, metadata !25), !dbg !674
  store i8 %conv7, i8* %buffer.addr.024, align 1, !dbg !706, !tbaa !359
  %inc = add nuw i16 %index.025, 1, !dbg !707
  tail call void @llvm.dbg.value(metadata i16 %inc, i64 0, metadata !669, metadata !25), !dbg !678
  tail call void @llvm.dbg.value(metadata i16 %inc, i64 0, metadata !669, metadata !25), !dbg !678
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !667, metadata !25), !dbg !674
  tail call void @llvm.dbg.value(metadata i16 %inc, i64 0, metadata !669, metadata !25), !dbg !678
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !667, metadata !25), !dbg !674
  %cmp2 = icmp ult i16 %inc, %length, !dbg !708
  br i1 %cmp2, label %while.body, label %return.loopexit36, !dbg !687

return.loopexit:                                  ; preds = %do.cond.i
  br label %return, !dbg !709

return.loopexit36:                                ; preds = %_ZN6Stream9timedReadEv.exit, %cleanup
  %retval.0.ph = phi i16 [ %inc, %cleanup ], [ %index.025, %_ZN6Stream9timedReadEv.exit ]
  br label %return, !dbg !709

return:                                           ; preds = %return.loopexit36, %return.loopexit, %entry
  %retval.0 = phi i16 [ 0, %entry ], [ %index.025, %return.loopexit ], [ %retval.0.ph, %return.loopexit36 ]
  ret i16 %retval.0, !dbg !709
}

define void @_ZN6Stream10readStringEv(%class.String* noalias sret %agg.result, %class.Stream* %this) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !710 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !954, metadata !25), !dbg !957
  tail call void @llvm.dbg.declare(metadata %class.String* %agg.result, metadata !955, metadata !958), !dbg !959
  tail call void @_ZN6StringC1EPKc(%class.String* %agg.result, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i16 0, i16 0)), !dbg !959
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !22, metadata !25), !dbg !960
  %call.i13 = invoke i32 @millis()
          to label %call.i.noexc unwind label %lpad.loopexit.split-lp37, !dbg !962

call.i.noexc:                                     ; preds = %entry
  %_startMillis.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !963
  store i32 %call.i13, i32* %_startMillis.i, align 1, !dbg !964, !tbaa !30
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !965
  %_timeout.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !966
  br label %do.body.i, !dbg !967, !llvm.loop !40

do.body.i:                                        ; preds = %call3.i.noexc, %call.i.noexc
  %vtable.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !965, !tbaa !42
  %vfn.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i, i16 3, !dbg !965
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i, align 1, !dbg !965
  %call2.i14 = invoke i16 %1(%class.Stream* nonnull %this)
          to label %call2.i.noexc unwind label %lpad.loopexit36, !dbg !965

call2.i.noexc:                                    ; preds = %do.body.i
  tail call void @llvm.dbg.value(metadata i16 %call2.i14, i64 0, metadata !24, metadata !25), !dbg !968
  %cmp.i = icmp sgt i16 %call2.i14, -1, !dbg !969
  br i1 %cmp.i, label %while.body.preheader, label %do.cond.i, !dbg !970

while.body.preheader:                             ; preds = %call2.i.noexc
  %extract.t55 = trunc i16 %call2.i14 to i8, !dbg !970
  br label %while.body, !dbg !971

do.cond.i:                                        ; preds = %call2.i.noexc
  %call3.i15 = invoke i32 @millis()
          to label %call3.i.noexc unwind label %lpad.loopexit36, !dbg !979

call3.i.noexc:                                    ; preds = %do.cond.i
  %2 = load i32, i32* %_startMillis.i, align 1, !dbg !980, !tbaa !30
  %sub.i = sub i32 %call3.i15, %2, !dbg !981
  %3 = load i32, i32* %_timeout.i, align 1, !dbg !966, !tbaa !51
  %cmp5.i = icmp ult i32 %sub.i, %3, !dbg !982
  br i1 %cmp5.i, label %do.body.i, label %nrvo.skipdtor.loopexit56, !dbg !983, !llvm.loop !40

while.body.loopexit:                              ; preds = %call2.i.noexc30
  %extract.t = trunc i16 %call2.i31 to i8, !dbg !984
  br label %while.body, !dbg !971

while.body:                                       ; preds = %while.body.preheader, %while.body.loopexit
  %call2.i14.sink.off0 = phi i8 [ %extract.t, %while.body.loopexit ], [ %extract.t55, %while.body.preheader ]
  tail call void @llvm.dbg.value(metadata %class.String* %agg.result, i64 0, metadata !974, metadata !25), !dbg !971
  tail call void @llvm.dbg.value(metadata i8 %call2.i14.sink.off0, i64 0, metadata !976, metadata !25), !dbg !986
  %call.i17 = invoke zeroext i8 @_ZN6String6concatEc(%class.String* %agg.result, i8 signext %call2.i14.sink.off0)
          to label %invoke.cont3 unwind label %lpad2.loopexit.split-lp, !dbg !987

invoke.cont3:                                     ; preds = %while.body
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !22, metadata !25), !dbg !988
  %call.i29 = invoke i32 @millis()
          to label %call.i.noexc28 unwind label %lpad2.loopexit.split-lp, !dbg !989

call.i.noexc28:                                   ; preds = %invoke.cont3
  store i32 %call.i29, i32* %_startMillis.i, align 1, !dbg !990, !tbaa !30
  br label %do.body.i23, !dbg !991, !llvm.loop !40

do.body.i23:                                      ; preds = %call3.i.noexc32, %call.i.noexc28
  %vtable.i20 = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !992, !tbaa !42
  %vfn.i21 = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i20, i16 3, !dbg !992
  %4 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i21, align 1, !dbg !992
  %call2.i31 = invoke i16 %4(%class.Stream* nonnull %this)
          to label %call2.i.noexc30 unwind label %lpad2.loopexit, !dbg !992

call2.i.noexc30:                                  ; preds = %do.body.i23
  tail call void @llvm.dbg.value(metadata i16 %call2.i31, i64 0, metadata !24, metadata !25), !dbg !993
  %cmp.i22 = icmp sgt i16 %call2.i31, -1, !dbg !994
  br i1 %cmp.i22, label %while.body.loopexit, label %do.cond.i26, !dbg !984

do.cond.i26:                                      ; preds = %call2.i.noexc30
  %call3.i33 = invoke i32 @millis()
          to label %call3.i.noexc32 unwind label %lpad2.loopexit, !dbg !995

call3.i.noexc32:                                  ; preds = %do.cond.i26
  %5 = load i32, i32* %_startMillis.i, align 1, !dbg !996, !tbaa !30
  %sub.i24 = sub i32 %call3.i33, %5, !dbg !997
  %6 = load i32, i32* %_timeout.i, align 1, !dbg !998, !tbaa !51
  %cmp5.i25 = icmp ult i32 %sub.i24, %6, !dbg !999
  br i1 %cmp5.i25, label %do.body.i23, label %nrvo.skipdtor.loopexit, !dbg !1000, !llvm.loop !40

lpad.loopexit36:                                  ; preds = %do.body.i, %do.cond.i
  %lpad.loopexit38 = landingpad { i8*, i32 }
          cleanup, !dbg !1001
  br label %ehcleanup, !dbg !1001

lpad.loopexit.split-lp37:                         ; preds = %entry
  %lpad.loopexit.split-lp39 = landingpad { i8*, i32 }
          cleanup, !dbg !1001
  br label %ehcleanup, !dbg !1001

lpad2.loopexit:                                   ; preds = %do.body.i23, %do.cond.i26
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup, !dbg !1002
  br label %ehcleanup, !dbg !1002

lpad2.loopexit.split-lp:                          ; preds = %while.body, %invoke.cont3
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !dbg !1002
  br label %ehcleanup, !dbg !1002

nrvo.skipdtor.loopexit:                           ; preds = %call3.i.noexc32
  br label %nrvo.skipdtor, !dbg !1004

nrvo.skipdtor.loopexit56:                         ; preds = %call3.i.noexc
  br label %nrvo.skipdtor, !dbg !1004

nrvo.skipdtor:                                    ; preds = %nrvo.skipdtor.loopexit56, %nrvo.skipdtor.loopexit
  ret void, !dbg !1004

ehcleanup:                                        ; preds = %lpad2.loopexit, %lpad2.loopexit.split-lp, %lpad.loopexit36, %lpad.loopexit.split-lp37
  %.sink12 = phi { i8*, i32 } [ %lpad.loopexit38, %lpad.loopexit36 ], [ %lpad.loopexit.split-lp39, %lpad.loopexit.split-lp37 ], [ %lpad.loopexit, %lpad2.loopexit ], [ %lpad.loopexit.split-lp, %lpad2.loopexit.split-lp ]
  invoke void @_ZN6StringD1Ev(%class.String* %agg.result)
          to label %eh.resume unwind label %terminate.lpad, !dbg !1006

eh.resume:                                        ; preds = %ehcleanup
  resume { i8*, i32 } %.sink12, !dbg !1008

terminate.lpad:                                   ; preds = %ehcleanup
  %7 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1010
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1010
  tail call void @__clang_call_terminate(i8* %8) #9, !dbg !1010
  unreachable, !dbg !1010
}

declare void @_ZN6StringC1EPKc(%class.String*, i8*) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6StringD1Ev(%class.String*) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #6 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

define void @_ZN6Stream15readStringUntilEc(%class.String* noalias sret %agg.result, %class.Stream* %this, i8 signext %terminator) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1012 {
entry:
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !1017, metadata !25), !dbg !1021
  tail call void @llvm.dbg.value(metadata i8 %terminator, i64 0, metadata !1018, metadata !25), !dbg !1022
  tail call void @llvm.dbg.declare(metadata %class.String* %agg.result, metadata !1019, metadata !958), !dbg !1023
  tail call void @_ZN6StringC1EPKc(%class.String* %agg.result, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i16 0, i16 0)), !dbg !1023
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !22, metadata !25), !dbg !1024
  %call.i16 = invoke i32 @millis()
          to label %call.i.noexc unwind label %lpad.loopexit.split-lp40, !dbg !1026

call.i.noexc:                                     ; preds = %entry
  %_startMillis.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 2, !dbg !1027
  store i32 %call.i16, i32* %_startMillis.i, align 1, !dbg !1028, !tbaa !30
  %0 = bitcast %class.Stream* %this to i16 (%class.Stream*)***, !dbg !1029
  %_timeout.i = getelementptr inbounds %class.Stream, %class.Stream* %this, i16 0, i32 1, !dbg !1030
  br label %do.body.i, !dbg !1031, !llvm.loop !40

do.body.i:                                        ; preds = %call3.i.noexc, %call.i.noexc
  %vtable.i = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !1029, !tbaa !42
  %vfn.i = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i, i16 3, !dbg !1029
  %1 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i, align 1, !dbg !1029
  %call2.i17 = invoke i16 %1(%class.Stream* nonnull %this)
          to label %call2.i.noexc unwind label %lpad.loopexit39, !dbg !1029

call2.i.noexc:                                    ; preds = %do.body.i
  tail call void @llvm.dbg.value(metadata i16 %call2.i17, i64 0, metadata !24, metadata !25), !dbg !1032
  %cmp.i = icmp sgt i16 %call2.i17, -1, !dbg !1033
  br i1 %cmp.i, label %while.cond.preheader, label %do.cond.i, !dbg !1034

do.cond.i:                                        ; preds = %call2.i.noexc
  %call3.i18 = invoke i32 @millis()
          to label %call3.i.noexc unwind label %lpad.loopexit39, !dbg !1035

call3.i.noexc:                                    ; preds = %do.cond.i
  %2 = load i32, i32* %_startMillis.i, align 1, !dbg !1036, !tbaa !30
  %sub.i = sub i32 %call3.i18, %2, !dbg !1037
  %3 = load i32, i32* %_timeout.i, align 1, !dbg !1030, !tbaa !51
  %cmp5.i = icmp ult i32 %sub.i, %3, !dbg !1038
  br i1 %cmp5.i, label %do.body.i, label %nrvo.skipdtor.loopexit66, !dbg !1039, !llvm.loop !40

while.cond.preheader:                             ; preds = %call2.i.noexc
  tail call void @llvm.dbg.value(metadata i16 %call2.i17, i64 0, metadata !1020, metadata !25), !dbg !1040
  %conv = sext i8 %terminator to i16, !dbg !1041
  %cmp245 = icmp eq i16 %call2.i17, %conv, !dbg !1043
  br i1 %cmp245, label %nrvo.skipdtor, label %while.body.preheader, !dbg !1044

while.body.preheader:                             ; preds = %while.cond.preheader
  %extract.t48 = trunc i16 %call2.i17 to i8, !dbg !1044
  br label %while.body, !dbg !1046

while.cond.loopexit:                              ; preds = %call2.i.noexc33
  tail call void @llvm.dbg.value(metadata i16 %call2.i34, i64 0, metadata !1020, metadata !25), !dbg !1040
  %cmp2 = icmp eq i16 %call2.i34, %conv, !dbg !1043
  %extract.t = trunc i16 %call2.i34 to i8, !dbg !1044
  br i1 %cmp2, label %nrvo.skipdtor.loopexit65, label %while.body, !dbg !1044

while.body:                                       ; preds = %while.body.preheader, %while.cond.loopexit
  %c.047.off0 = phi i8 [ %extract.t, %while.cond.loopexit ], [ %extract.t48, %while.body.preheader ]
  tail call void @llvm.dbg.value(metadata %class.String* %agg.result, i64 0, metadata !974, metadata !25), !dbg !1046
  tail call void @llvm.dbg.value(metadata i8 %c.047.off0, i64 0, metadata !976, metadata !25), !dbg !1049
  %call.i20 = invoke zeroext i8 @_ZN6String6concatEc(%class.String* %agg.result, i8 signext %c.047.off0)
          to label %invoke.cont5 unwind label %lpad4.loopexit.split-lp, !dbg !1050

invoke.cont5:                                     ; preds = %while.body
  tail call void @llvm.dbg.value(metadata %class.Stream* %this, i64 0, metadata !22, metadata !25), !dbg !1051
  %call.i32 = invoke i32 @millis()
          to label %call.i.noexc31 unwind label %lpad4.loopexit.split-lp, !dbg !1053

call.i.noexc31:                                   ; preds = %invoke.cont5
  store i32 %call.i32, i32* %_startMillis.i, align 1, !dbg !1054, !tbaa !30
  br label %do.body.i26, !dbg !1055, !llvm.loop !40

do.body.i26:                                      ; preds = %call3.i.noexc35, %call.i.noexc31
  %vtable.i23 = load i16 (%class.Stream*)**, i16 (%class.Stream*)*** %0, align 1, !dbg !1056, !tbaa !42
  %vfn.i24 = getelementptr inbounds i16 (%class.Stream*)*, i16 (%class.Stream*)** %vtable.i23, i16 3, !dbg !1056
  %4 = load i16 (%class.Stream*)*, i16 (%class.Stream*)** %vfn.i24, align 1, !dbg !1056
  %call2.i34 = invoke i16 %4(%class.Stream* nonnull %this)
          to label %call2.i.noexc33 unwind label %lpad4.loopexit, !dbg !1056

call2.i.noexc33:                                  ; preds = %do.body.i26
  tail call void @llvm.dbg.value(metadata i16 %call2.i34, i64 0, metadata !24, metadata !25), !dbg !1057
  %cmp.i25 = icmp sgt i16 %call2.i34, -1, !dbg !1058
  br i1 %cmp.i25, label %while.cond.loopexit, label %do.cond.i29, !dbg !1059

do.cond.i29:                                      ; preds = %call2.i.noexc33
  %call3.i36 = invoke i32 @millis()
          to label %call3.i.noexc35 unwind label %lpad4.loopexit, !dbg !1060

call3.i.noexc35:                                  ; preds = %do.cond.i29
  %5 = load i32, i32* %_startMillis.i, align 1, !dbg !1061, !tbaa !30
  %sub.i27 = sub i32 %call3.i36, %5, !dbg !1062
  %6 = load i32, i32* %_timeout.i, align 1, !dbg !1063, !tbaa !51
  %cmp5.i28 = icmp ult i32 %sub.i27, %6, !dbg !1064
  br i1 %cmp5.i28, label %do.body.i26, label %nrvo.skipdtor.loopexit, !dbg !1065, !llvm.loop !40

lpad.loopexit39:                                  ; preds = %do.body.i, %do.cond.i
  %lpad.loopexit41 = landingpad { i8*, i32 }
          cleanup, !dbg !1066
  br label %ehcleanup, !dbg !1066

lpad.loopexit.split-lp40:                         ; preds = %entry
  %lpad.loopexit.split-lp42 = landingpad { i8*, i32 }
          cleanup, !dbg !1066
  br label %ehcleanup, !dbg !1066

lpad4.loopexit:                                   ; preds = %do.body.i26, %do.cond.i29
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup, !dbg !1067
  br label %ehcleanup, !dbg !1067

lpad4.loopexit.split-lp:                          ; preds = %while.body, %invoke.cont5
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup, !dbg !1067
  br label %ehcleanup, !dbg !1067

nrvo.skipdtor.loopexit:                           ; preds = %call3.i.noexc35
  br label %nrvo.skipdtor, !dbg !1069

nrvo.skipdtor.loopexit65:                         ; preds = %while.cond.loopexit
  br label %nrvo.skipdtor, !dbg !1069

nrvo.skipdtor.loopexit66:                         ; preds = %call3.i.noexc
  br label %nrvo.skipdtor, !dbg !1069

nrvo.skipdtor:                                    ; preds = %nrvo.skipdtor.loopexit66, %nrvo.skipdtor.loopexit65, %nrvo.skipdtor.loopexit, %while.cond.preheader
  ret void, !dbg !1069

ehcleanup:                                        ; preds = %lpad4.loopexit, %lpad4.loopexit.split-lp, %lpad.loopexit39, %lpad.loopexit.split-lp40
  %.sink15 = phi { i8*, i32 } [ %lpad.loopexit41, %lpad.loopexit39 ], [ %lpad.loopexit.split-lp42, %lpad.loopexit.split-lp40 ], [ %lpad.loopexit, %lpad4.loopexit ], [ %lpad.loopexit.split-lp, %lpad4.loopexit.split-lp ]
  invoke void @_ZN6StringD1Ev(%class.String* %agg.result)
          to label %eh.resume unwind label %terminate.lpad, !dbg !1071

eh.resume:                                        ; preds = %ehcleanup
  resume { i8*, i32 } %.sink15, !dbg !1073

terminate.lpad:                                   ; preds = %ehcleanup
  %7 = landingpad { i8*, i32 }
          catch i8* null, !dbg !1075
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !1075
  tail call void @__clang_call_terminate(i8* %8) #9, !dbg !1075
  unreachable, !dbg !1075
}

declare zeroext i8 @_ZN6String6concatEc(%class.String*, i8 signext) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "Arduino/Stream.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "LookaheadMode", file: !4, line: 41, size: 16, elements: !5, identifier: "_ZTS13LookaheadMode")
!4 = !DIFile(filename: "Arduino/Stream.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "SKIP_ALL", value: 0)
!7 = !DIEnumerator(name: "SKIP_NONE", value: 1)
!8 = !DIEnumerator(name: "SKIP_WHITESPACE", value: 2)
!9 = !{!10}
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!14 = distinct !DISubprogram(name: "timedRead", linkageName: "_ZN6Stream9timedReadEv", scope: !15, file: !1, line: 31, type: !16, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !20, variables: !21)
!15 = !DICompositeType(tag: DW_TAG_class_type, name: "Stream", file: !4, line: 49, size: 96, flags: DIFlagFwdDecl, identifier: "_ZTS6Stream")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19}
!18 = !DIBasicType(name: "int", size: 16, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!20 = !DISubprogram(name: "timedRead", linkageName: "_ZN6Stream9timedReadEv", scope: !15, file: !4, line: 54, type: !16, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!21 = !{!22, !24}
!22 = !DILocalVariable(name: "this", arg: 1, scope: !14, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 16)
!24 = !DILocalVariable(name: "c", scope: !14, file: !1, line: 33, type: !18)
!25 = !DIExpression()
!26 = !DILocation(line: 0, scope: !14)
!27 = !DILocation(line: 34, column: 18, scope: !14)
!28 = !DILocation(line: 34, column: 3, scope: !14)
!29 = !DILocation(line: 34, column: 16, scope: !14)
!30 = !{!31, !32, i64 8}
!31 = !{!"_ZTS6Stream", !32, i64 4, !32, i64 8}
!32 = !{!"long", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C++ TBAA"}
!35 = !DILocation(line: 36, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !14, file: !1, line: 35, column: 6)
!37 = !DILocation(line: 38, column: 37, scope: !38)
!38 = !DILexicalBlockFile(scope: !14, file: !1, discriminator: 1)
!39 = !DILocation(line: 35, column: 3, scope: !14)
!40 = distinct !{!40, !39, !41}
!41 = !DILocation(line: 38, column: 45, scope: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !34, i64 0}
!44 = !DILocation(line: 33, column: 7, scope: !14)
!45 = !DILocation(line: 37, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !36, file: !1, line: 37, column: 9)
!47 = !DILocation(line: 37, column: 9, scope: !36)
!48 = !DILocation(line: 38, column: 11, scope: !38)
!49 = !DILocation(line: 38, column: 22, scope: !38)
!50 = !DILocation(line: 38, column: 20, scope: !38)
!51 = !{!31, !32, i64 4}
!52 = !DILocation(line: 38, column: 35, scope: !38)
!53 = !DILocation(line: 38, column: 3, scope: !54)
!54 = !DILexicalBlockFile(scope: !36, file: !1, discriminator: 1)
!55 = !DILocation(line: 40, column: 1, scope: !14)
!56 = distinct !DISubprogram(name: "timedPeek", linkageName: "_ZN6Stream9timedPeekEv", scope: !15, file: !1, line: 43, type: !16, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !57, variables: !58)
!57 = !DISubprogram(name: "timedPeek", linkageName: "_ZN6Stream9timedPeekEv", scope: !15, file: !4, line: 55, type: !16, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!58 = !{!59, !60}
!59 = !DILocalVariable(name: "this", arg: 1, scope: !56, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!60 = !DILocalVariable(name: "c", scope: !56, file: !1, line: 45, type: !18)
!61 = !DILocation(line: 0, scope: !56)
!62 = !DILocation(line: 46, column: 18, scope: !56)
!63 = !DILocation(line: 46, column: 3, scope: !56)
!64 = !DILocation(line: 46, column: 16, scope: !56)
!65 = !DILocation(line: 48, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !56, file: !1, line: 47, column: 6)
!67 = !DILocation(line: 50, column: 37, scope: !68)
!68 = !DILexicalBlockFile(scope: !56, file: !1, discriminator: 1)
!69 = !DILocation(line: 47, column: 3, scope: !56)
!70 = distinct !{!70, !69, !71}
!71 = !DILocation(line: 50, column: 45, scope: !56)
!72 = !DILocation(line: 45, column: 7, scope: !56)
!73 = !DILocation(line: 49, column: 11, scope: !74)
!74 = distinct !DILexicalBlock(scope: !66, file: !1, line: 49, column: 9)
!75 = !DILocation(line: 49, column: 9, scope: !66)
!76 = !DILocation(line: 50, column: 11, scope: !68)
!77 = !DILocation(line: 50, column: 22, scope: !68)
!78 = !DILocation(line: 50, column: 20, scope: !68)
!79 = !DILocation(line: 50, column: 35, scope: !68)
!80 = !DILocation(line: 50, column: 3, scope: !81)
!81 = !DILexicalBlockFile(scope: !66, file: !1, discriminator: 1)
!82 = !DILocation(line: 52, column: 1, scope: !56)
!83 = distinct !DISubprogram(name: "peekNextDigit", linkageName: "_ZN6Stream13peekNextDigitE13LookaheadModeb", scope: !15, file: !1, line: 56, type: !84, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !87, variables: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{!18, !19, !3, !86}
!86 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!87 = !DISubprogram(name: "peekNextDigit", linkageName: "_ZN6Stream13peekNextDigitE13LookaheadModeb", scope: !15, file: !4, line: 56, type: !84, isLocal: false, isDefinition: false, scopeLine: 56, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!88 = !{!89, !90, !91, !92}
!89 = !DILocalVariable(name: "this", arg: 1, scope: !83, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!90 = !DILocalVariable(name: "lookahead", arg: 2, scope: !83, file: !1, line: 56, type: !3)
!91 = !DILocalVariable(name: "detectDecimal", arg: 3, scope: !83, file: !1, line: 56, type: !86)
!92 = !DILocalVariable(name: "c", scope: !83, file: !1, line: 58, type: !18)
!93 = !DILocation(line: 0, scope: !83)
!94 = !DILocation(line: 56, column: 41, scope: !83)
!95 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!96 = !DILocation(line: 56, column: 57, scope: !83)
!97 = !DILocation(line: 46, column: 3, scope: !56, inlinedAt: !98)
!98 = distinct !DILocation(line: 60, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !83, file: !1, line: 59, column: 13)
!100 = !DILocation(line: 48, column: 9, scope: !66, inlinedAt: !98)
!101 = !DILocation(line: 50, column: 37, scope: !68, inlinedAt: !98)
!102 = !DILocation(line: 59, column: 3, scope: !83)
!103 = !DILocation(line: 0, scope: !56, inlinedAt: !98)
!104 = !DILocation(line: 46, column: 18, scope: !56, inlinedAt: !98)
!105 = !DILocation(line: 46, column: 16, scope: !56, inlinedAt: !98)
!106 = !DILocation(line: 47, column: 3, scope: !56, inlinedAt: !98)
!107 = !DILocation(line: 45, column: 7, scope: !56, inlinedAt: !98)
!108 = !DILocation(line: 49, column: 11, scope: !74, inlinedAt: !98)
!109 = !DILocation(line: 49, column: 9, scope: !66, inlinedAt: !98)
!110 = !DILocation(line: 50, column: 11, scope: !68, inlinedAt: !98)
!111 = !DILocation(line: 50, column: 22, scope: !68, inlinedAt: !98)
!112 = !DILocation(line: 50, column: 20, scope: !68, inlinedAt: !98)
!113 = !DILocation(line: 50, column: 35, scope: !68, inlinedAt: !98)
!114 = !DILocation(line: 50, column: 3, scope: !81, inlinedAt: !98)
!115 = !DILocation(line: 58, column: 7, scope: !83)
!116 = !DILocation(line: 62, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !99, file: !1, line: 62, column: 9)
!118 = !DILocation(line: 63, column: 11, scope: !117)
!119 = !DILocation(line: 62, column: 15, scope: !117)
!120 = !DILocation(line: 64, column: 19, scope: !117)
!121 = !DILocation(line: 65, column: 29, scope: !122)
!122 = !DILexicalBlockFile(scope: !117, file: !1, discriminator: 1)
!123 = !DILocation(line: 65, column: 24, scope: !117)
!124 = !DILocation(line: 67, column: 5, scope: !99)
!125 = !DILocation(line: 70, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !99, file: !1, line: 67, column: 24)
!127 = !DILocation(line: 80, column: 5, scope: !99)
!128 = !DILocation(line: 59, column: 3, scope: !129)
!129 = !DILexicalBlockFile(scope: !83, file: !1, discriminator: 2)
!130 = distinct !{!130, !102, !131}
!131 = !DILocation(line: 81, column: 3, scope: !83)
!132 = !DILocation(line: 82, column: 1, scope: !83)
!133 = distinct !DISubprogram(name: "setTimeout", linkageName: "_ZN6Stream10setTimeoutEm", scope: !15, file: !1, line: 87, type: !134, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !137, variables: !138)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !19, !136}
!136 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!137 = !DISubprogram(name: "setTimeout", linkageName: "_ZN6Stream10setTimeoutEm", scope: !15, file: !4, line: 68, type: !134, isLocal: false, isDefinition: false, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "this", arg: 1, scope: !133, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!140 = !DILocalVariable(name: "timeout", arg: 2, scope: !133, file: !1, line: 87, type: !136)
!141 = !DILocation(line: 0, scope: !133)
!142 = !DILocation(line: 87, column: 39, scope: !133)
!143 = !DILocation(line: 89, column: 3, scope: !133)
!144 = !DILocation(line: 89, column: 12, scope: !133)
!145 = !DILocation(line: 90, column: 1, scope: !133)
!146 = distinct !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPc", scope: !15, file: !1, line: 93, type: !147, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !150, variables: !151)
!147 = !DISubroutineType(types: !148)
!148 = !{!86, !19, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 16)
!150 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPc", scope: !15, file: !4, line: 71, type: !147, isLocal: false, isDefinition: false, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!151 = !{!152, !153}
!152 = !DILocalVariable(name: "this", arg: 1, scope: !146, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!153 = !DILocalVariable(name: "target", arg: 2, scope: !146, file: !1, line: 93, type: !149)
!154 = !DILocalVariable(name: "t", scope: !155, file: !1, line: 117, type: !182)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 116, column: 27)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 116, column: 7)
!157 = distinct !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcjS0_j", scope: !15, file: !1, line: 114, type: !158, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !163, variables: !164)
!158 = !DISubroutineType(types: !159)
!159 = !{!86, !19, !149, !160, !149, !160}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !161, line: 62, baseType: !162)
!161 = !DIFile(filename: "/Users/dylan/projects/builds/llvm/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!162 = !DIBasicType(name: "unsigned int", size: 16, encoding: DW_ATE_unsigned)
!163 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcjS0_j", scope: !15, file: !4, line: 84, type: !158, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!164 = !{!165, !166, !167, !168, !169, !154, !170}
!165 = !DILocalVariable(name: "this", arg: 1, scope: !157, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!166 = !DILocalVariable(name: "target", arg: 2, scope: !157, file: !1, line: 114, type: !149)
!167 = !DILocalVariable(name: "targetLen", arg: 3, scope: !157, file: !1, line: 114, type: !160)
!168 = !DILocalVariable(name: "terminator", arg: 4, scope: !157, file: !1, line: 114, type: !149)
!169 = !DILocalVariable(name: "termLen", arg: 5, scope: !157, file: !1, line: 114, type: !160)
!170 = !DILocalVariable(name: "t", scope: !171, file: !1, line: 120, type: !172)
!171 = distinct !DILexicalBlock(scope: !156, file: !1, line: 119, column: 10)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 96, elements: !180)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MultiTarget", scope: !15, file: !4, line: 118, size: 48, elements: !174, identifier: "_ZTSN6Stream11MultiTargetE")
!174 = !{!175, !178, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !173, file: !4, line: 119, baseType: !176, size: 16)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 16)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !173, file: !4, line: 120, baseType: !160, size: 16, offset: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !173, file: !4, line: 121, baseType: !160, size: 16, offset: 32)
!180 = !{!181}
!181 = !DISubrange(count: 2)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 48, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 1)
!185 = !DILocation(line: 117, column: 17, scope: !155, inlinedAt: !186)
!186 = distinct !DILocation(line: 95, column: 10, scope: !187)
!187 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 1)
!188 = !DILocation(line: 0, scope: !146)
!189 = !DILocation(line: 93, column: 26, scope: !146)
!190 = !DILocation(line: 95, column: 28, scope: !146)
!191 = !DILocation(line: 0, scope: !157, inlinedAt: !186)
!192 = !DILocation(line: 114, column: 30, scope: !157, inlinedAt: !186)
!193 = !DILocation(line: 114, column: 45, scope: !157, inlinedAt: !186)
!194 = !DILocation(line: 114, column: 62, scope: !157, inlinedAt: !186)
!195 = !DILocation(line: 114, column: 81, scope: !157, inlinedAt: !186)
!196 = !DILocation(line: 117, column: 5, scope: !155, inlinedAt: !186)
!197 = !DILocation(line: 117, column: 25, scope: !155, inlinedAt: !186)
!198 = !{!199, !200, i64 0}
!199 = !{!"_ZTSN6Stream11MultiTargetE", !200, i64 0, !201, i64 2, !201, i64 4}
!200 = !{!"any pointer", !33, i64 0}
!201 = !{!"int", !33, i64 0}
!202 = !{!199, !201, i64 2}
!203 = !{!199, !201, i64 4}
!204 = !DILocation(line: 118, column: 22, scope: !155, inlinedAt: !186)
!205 = !DILocation(line: 118, column: 12, scope: !155, inlinedAt: !186)
!206 = !DILocation(line: 119, column: 3, scope: !156, inlinedAt: !186)
!207 = !DILocation(line: 118, column: 28, scope: !155, inlinedAt: !186)
!208 = !DILocation(line: 95, column: 3, scope: !146)
!209 = !DILocation(line: 0, scope: !157)
!210 = !DILocation(line: 114, column: 30, scope: !157)
!211 = !DILocation(line: 114, column: 45, scope: !157)
!212 = !DILocation(line: 114, column: 62, scope: !157)
!213 = !DILocation(line: 114, column: 81, scope: !157)
!214 = !DILocation(line: 116, column: 18, scope: !156)
!215 = !DILocation(line: 116, column: 7, scope: !157)
!216 = !DILocation(line: 117, column: 5, scope: !155)
!217 = !DILocation(line: 117, column: 17, scope: !155)
!218 = !DILocation(line: 117, column: 25, scope: !155)
!219 = !DILocation(line: 118, column: 22, scope: !155)
!220 = !DILocation(line: 118, column: 12, scope: !155)
!221 = !DILocation(line: 119, column: 3, scope: !156)
!222 = !DILocation(line: 120, column: 5, scope: !171)
!223 = !DILocation(line: 120, column: 17, scope: !171)
!224 = !DILocation(line: 120, column: 25, scope: !171)
!225 = !DILocation(line: 120, column: 49, scope: !171)
!226 = !DILocation(line: 121, column: 22, scope: !171)
!227 = !DILocation(line: 121, column: 12, scope: !171)
!228 = !DILocation(line: 122, column: 3, scope: !156)
!229 = !DILocation(line: 118, column: 28, scope: !155)
!230 = !DILocation(line: 123, column: 1, scope: !157)
!231 = distinct !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPcj", scope: !15, file: !1, line: 100, type: !232, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !234, variables: !235)
!232 = !DISubroutineType(types: !233)
!233 = !{!86, !19, !149, !160}
!234 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPcj", scope: !15, file: !4, line: 75, type: !232, isLocal: false, isDefinition: false, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!235 = !{!236, !237, !238}
!236 = !DILocalVariable(name: "this", arg: 1, scope: !231, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!237 = !DILocalVariable(name: "target", arg: 2, scope: !231, file: !1, line: 100, type: !149)
!238 = !DILocalVariable(name: "length", arg: 3, scope: !231, file: !1, line: 100, type: !160)
!239 = !DILocation(line: 117, column: 17, scope: !155, inlinedAt: !240)
!240 = distinct !DILocation(line: 102, column: 10, scope: !231)
!241 = !DILocation(line: 0, scope: !231)
!242 = !DILocation(line: 100, column: 25, scope: !231)
!243 = !DILocation(line: 100, column: 40, scope: !231)
!244 = !DILocation(line: 0, scope: !157, inlinedAt: !240)
!245 = !DILocation(line: 114, column: 30, scope: !157, inlinedAt: !240)
!246 = !DILocation(line: 114, column: 45, scope: !157, inlinedAt: !240)
!247 = !DILocation(line: 114, column: 62, scope: !157, inlinedAt: !240)
!248 = !DILocation(line: 114, column: 81, scope: !157, inlinedAt: !240)
!249 = !DILocation(line: 117, column: 5, scope: !155, inlinedAt: !240)
!250 = !DILocation(line: 117, column: 25, scope: !155, inlinedAt: !240)
!251 = !DILocation(line: 118, column: 22, scope: !155, inlinedAt: !240)
!252 = !DILocation(line: 118, column: 12, scope: !155, inlinedAt: !240)
!253 = !DILocation(line: 119, column: 3, scope: !156, inlinedAt: !240)
!254 = !DILocation(line: 118, column: 28, scope: !155, inlinedAt: !240)
!255 = !DILocation(line: 102, column: 3, scope: !231)
!256 = distinct !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcS0_", scope: !15, file: !1, line: 106, type: !257, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !259, variables: !260)
!257 = !DISubroutineType(types: !258)
!258 = !{!86, !19, !149, !149}
!259 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcS0_", scope: !15, file: !4, line: 81, type: !257, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!260 = !{!261, !262, !263}
!261 = !DILocalVariable(name: "this", arg: 1, scope: !256, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!262 = !DILocalVariable(name: "target", arg: 2, scope: !256, file: !1, line: 106, type: !149)
!263 = !DILocalVariable(name: "terminator", arg: 3, scope: !256, file: !1, line: 106, type: !149)
!264 = !DILocation(line: 117, column: 17, scope: !155, inlinedAt: !265)
!265 = distinct !DILocation(line: 108, column: 10, scope: !266)
!266 = !DILexicalBlockFile(scope: !256, file: !1, discriminator: 2)
!267 = !DILocation(line: 120, column: 17, scope: !171, inlinedAt: !265)
!268 = !DILocation(line: 0, scope: !256)
!269 = !DILocation(line: 106, column: 31, scope: !256)
!270 = !DILocation(line: 106, column: 45, scope: !256)
!271 = !DILocation(line: 108, column: 28, scope: !256)
!272 = !DILocation(line: 0, scope: !157, inlinedAt: !265)
!273 = !DILocation(line: 114, column: 30, scope: !157, inlinedAt: !265)
!274 = !DILocation(line: 114, column: 45, scope: !157, inlinedAt: !265)
!275 = !DILocation(line: 114, column: 62, scope: !157, inlinedAt: !265)
!276 = !DILocation(line: 114, column: 81, scope: !157, inlinedAt: !265)
!277 = !DILocation(line: 116, column: 18, scope: !156, inlinedAt: !265)
!278 = !DILocation(line: 116, column: 7, scope: !157, inlinedAt: !265)
!279 = !DILocation(line: 117, column: 5, scope: !155, inlinedAt: !265)
!280 = !DILocation(line: 117, column: 25, scope: !155, inlinedAt: !265)
!281 = !DILocation(line: 118, column: 22, scope: !155, inlinedAt: !265)
!282 = !DILocation(line: 118, column: 12, scope: !155, inlinedAt: !265)
!283 = !DILocation(line: 119, column: 3, scope: !156, inlinedAt: !265)
!284 = !DILocation(line: 108, column: 56, scope: !285)
!285 = !DILexicalBlockFile(scope: !256, file: !1, discriminator: 1)
!286 = !DILocation(line: 120, column: 5, scope: !171, inlinedAt: !265)
!287 = !DILocation(line: 120, column: 25, scope: !171, inlinedAt: !265)
!288 = !DILocation(line: 120, column: 49, scope: !171, inlinedAt: !265)
!289 = !DILocation(line: 121, column: 22, scope: !171, inlinedAt: !265)
!290 = !DILocation(line: 121, column: 12, scope: !171, inlinedAt: !265)
!291 = !DILocation(line: 122, column: 3, scope: !156, inlinedAt: !265)
!292 = !DILocation(line: 118, column: 28, scope: !155, inlinedAt: !265)
!293 = !DILocation(line: 108, column: 3, scope: !256)
!294 = distinct !DISubprogram(name: "findMulti", linkageName: "_ZN6Stream9findMultiEPNS_11MultiTargetEi", scope: !15, file: !1, line: 256, type: !295, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !298, variables: !299)
!295 = !DISubroutineType(types: !296)
!296 = !{!18, !19, !297, !18}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 16)
!298 = !DISubprogram(name: "findMulti", linkageName: "_ZN6Stream9findMultiEPNS_11MultiTargetEi", scope: !15, file: !4, line: 126, type: !295, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!299 = !{!300, !301, !302, !303, !305, !307, !309, !312, !314}
!300 = !DILocalVariable(name: "this", arg: 1, scope: !294, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!301 = !DILocalVariable(name: "targets", arg: 2, scope: !294, file: !1, line: 256, type: !297)
!302 = !DILocalVariable(name: "tCount", arg: 3, scope: !294, file: !1, line: 256, type: !18)
!303 = !DILocalVariable(name: "t", scope: !304, file: !1, line: 259, type: !297)
!304 = distinct !DILexicalBlock(scope: !294, file: !1, line: 259, column: 3)
!305 = !DILocalVariable(name: "c", scope: !306, file: !1, line: 265, type: !18)
!306 = distinct !DILexicalBlock(scope: !294, file: !1, line: 264, column: 13)
!307 = !DILocalVariable(name: "t", scope: !308, file: !1, line: 269, type: !297)
!308 = distinct !DILexicalBlock(scope: !306, file: !1, line: 269, column: 5)
!309 = !DILocalVariable(name: "origIndex", scope: !310, file: !1, line: 285, type: !18)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 269, column: 68)
!311 = distinct !DILexicalBlock(scope: !308, file: !1, line: 269, column: 5)
!312 = !DILocalVariable(name: "diff", scope: !313, file: !1, line: 299, type: !18)
!313 = distinct !DILexicalBlock(scope: !310, file: !1, line: 286, column: 10)
!314 = !DILocalVariable(name: "i", scope: !313, file: !1, line: 300, type: !160)
!315 = !DILocation(line: 0, scope: !294)
!316 = !DILocation(line: 256, column: 52, scope: !294)
!317 = !DILocation(line: 256, column: 65, scope: !294)
!318 = !DILocation(line: 259, column: 28, scope: !304)
!319 = !DILocation(line: 259, column: 52, scope: !320)
!320 = !DILexicalBlockFile(scope: !321, file: !1, discriminator: 1)
!321 = distinct !DILexicalBlock(scope: !304, file: !1, line: 259, column: 3)
!322 = !DILocation(line: 259, column: 43, scope: !320)
!323 = !DILocation(line: 259, column: 3, scope: !324)
!324 = !DILexicalBlockFile(scope: !304, file: !1, discriminator: 1)
!325 = !DILocation(line: 260, column: 12, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 260, column: 9)
!327 = distinct !DILexicalBlock(scope: !321, file: !1, line: 259, column: 66)
!328 = !DILocation(line: 34, column: 3, scope: !14, inlinedAt: !329)
!329 = distinct !DILocation(line: 265, column: 13, scope: !306)
!330 = !DILocation(line: 36, column: 9, scope: !36, inlinedAt: !329)
!331 = !DILocation(line: 38, column: 37, scope: !38, inlinedAt: !329)
!332 = !DILocation(line: 0, scope: !14, inlinedAt: !329)
!333 = !DILocation(line: 260, column: 16, scope: !326)
!334 = !DILocation(line: 260, column: 9, scope: !327)
!335 = !DILocation(line: 259, column: 61, scope: !336)
!336 = !DILexicalBlockFile(scope: !321, file: !1, discriminator: 3)
!337 = distinct !{!337, !338, !339}
!338 = !DILocation(line: 259, column: 3, scope: !304)
!339 = !DILocation(line: 262, column: 3, scope: !304)
!340 = !DILocation(line: 261, column: 16, scope: !326)
!341 = !DILocation(line: 34, column: 18, scope: !14, inlinedAt: !329)
!342 = !DILocation(line: 34, column: 16, scope: !14, inlinedAt: !329)
!343 = !DILocation(line: 35, column: 3, scope: !14, inlinedAt: !329)
!344 = !DILocation(line: 33, column: 7, scope: !14, inlinedAt: !329)
!345 = !DILocation(line: 37, column: 11, scope: !46, inlinedAt: !329)
!346 = !DILocation(line: 37, column: 9, scope: !36, inlinedAt: !329)
!347 = !DILocation(line: 269, column: 30, scope: !308)
!348 = !DILocation(line: 269, column: 5, scope: !349)
!349 = !DILexicalBlockFile(scope: !308, file: !1, discriminator: 1)
!350 = !DILocation(line: 271, column: 19, scope: !351)
!351 = distinct !DILexicalBlock(scope: !310, file: !1, line: 271, column: 11)
!352 = !DILocation(line: 38, column: 11, scope: !38, inlinedAt: !329)
!353 = !DILocation(line: 38, column: 22, scope: !38, inlinedAt: !329)
!354 = !DILocation(line: 38, column: 20, scope: !38, inlinedAt: !329)
!355 = !DILocation(line: 38, column: 35, scope: !38, inlinedAt: !329)
!356 = !DILocation(line: 38, column: 3, scope: !54, inlinedAt: !329)
!357 = !DILocation(line: 271, column: 26, scope: !351)
!358 = !DILocation(line: 271, column: 16, scope: !351)
!359 = !{!33, !33, i64 0}
!360 = !DILocation(line: 271, column: 13, scope: !351)
!361 = !DILocation(line: 271, column: 11, scope: !310)
!362 = !DILocation(line: 272, column: 13, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !1, line: 272, column: 13)
!364 = distinct !DILexicalBlock(scope: !351, file: !1, line: 271, column: 34)
!365 = !DILocation(line: 272, column: 30, scope: !363)
!366 = !DILocation(line: 272, column: 24, scope: !363)
!367 = !DILocation(line: 272, column: 13, scope: !364)
!368 = !DILocation(line: 282, column: 20, scope: !369)
!369 = distinct !DILexicalBlock(scope: !310, file: !1, line: 282, column: 11)
!370 = !DILocation(line: 282, column: 11, scope: !310)
!371 = distinct !{!371, !372, !373}
!372 = !DILocation(line: 286, column: 7, scope: !310)
!373 = !DILocation(line: 314, column: 24, scope: !310)
!374 = !DILocation(line: 287, column: 9, scope: !313)
!375 = !DILocation(line: 289, column: 18, scope: !376)
!376 = distinct !DILexicalBlock(scope: !313, file: !1, line: 289, column: 13)
!377 = !DILocation(line: 289, column: 15, scope: !376)
!378 = !DILocation(line: 289, column: 13, scope: !313)
!379 = !DILocation(line: 293, column: 22, scope: !380)
!380 = distinct !DILexicalBlock(scope: !313, file: !1, line: 293, column: 13)
!381 = !DILocation(line: 293, column: 13, scope: !313)
!382 = !DILocation(line: 294, column: 19, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !1, line: 293, column: 28)
!384 = !DILocation(line: 295, column: 11, scope: !383)
!385 = !DILocation(line: 299, column: 30, scope: !313)
!386 = !DILocation(line: 299, column: 13, scope: !313)
!387 = !DILocation(line: 300, column: 16, scope: !313)
!388 = !DILocation(line: 301, column: 9, scope: !389)
!389 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 1)
!390 = distinct !DILexicalBlock(scope: !313, file: !1, line: 301, column: 9)
!391 = !DILocation(line: 302, column: 15, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 302, column: 15)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 301, column: 40)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 301, column: 9)
!395 = !DILocation(line: 302, column: 37, scope: !392)
!396 = !DILocation(line: 302, column: 28, scope: !392)
!397 = !DILocation(line: 302, column: 25, scope: !392)
!398 = !DILocation(line: 302, column: 15, scope: !393)
!399 = !DILocation(line: 301, column: 35, scope: !400)
!400 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 2)
!401 = !DILocation(line: 301, column: 23, scope: !402)
!402 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 1)
!403 = distinct !{!403, !404, !405}
!404 = !DILocation(line: 301, column: 9, scope: !390)
!405 = !DILocation(line: 304, column: 9, scope: !390)
!406 = !DILocation(line: 308, column: 15, scope: !407)
!407 = distinct !DILexicalBlock(scope: !313, file: !1, line: 308, column: 13)
!408 = !DILocation(line: 308, column: 13, scope: !313)
!409 = !DILocation(line: 309, column: 19, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !1, line: 308, column: 28)
!411 = !DILocation(line: 314, column: 16, scope: !412)
!412 = !DILexicalBlockFile(scope: !310, file: !1, discriminator: 3)
!413 = !DILocation(line: 314, column: 7, scope: !414)
!414 = !DILexicalBlockFile(scope: !313, file: !1, discriminator: 3)
!415 = !DILocation(line: 269, column: 63, scope: !416)
!416 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 3)
!417 = !DILocation(line: 269, column: 45, scope: !418)
!418 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 1)
!419 = distinct !{!419, !420, !421}
!420 = !DILocation(line: 269, column: 5, scope: !308)
!421 = !DILocation(line: 315, column: 5, scope: !308)
!422 = !DILocation(line: 273, column: 20, scope: !363)
!423 = !DILocation(line: 319, column: 1, scope: !294)
!424 = distinct !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntE13LookaheadModec", scope: !15, file: !1, line: 130, type: !425, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !428, variables: !429)
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !19, !3, !10}
!427 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!428 = !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntE13LookaheadModec", scope: !15, file: !4, line: 87, type: !425, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!429 = !{!430, !431, !432, !433, !434, !435}
!430 = !DILocalVariable(name: "this", arg: 1, scope: !424, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!431 = !DILocalVariable(name: "lookahead", arg: 2, scope: !424, file: !1, line: 130, type: !3)
!432 = !DILocalVariable(name: "ignore", arg: 3, scope: !424, file: !1, line: 130, type: !10)
!433 = !DILocalVariable(name: "isNegative", scope: !424, file: !1, line: 132, type: !86)
!434 = !DILocalVariable(name: "value", scope: !424, file: !1, line: 133, type: !427)
!435 = !DILocalVariable(name: "c", scope: !424, file: !1, line: 134, type: !18)
!436 = !DILocation(line: 0, scope: !424)
!437 = !DILocation(line: 130, column: 37, scope: !424)
!438 = !DILocation(line: 130, column: 53, scope: !424)
!439 = !DILocation(line: 132, column: 8, scope: !424)
!440 = !DILocation(line: 133, column: 8, scope: !424)
!441 = !DILocation(line: 0, scope: !83, inlinedAt: !442)
!442 = distinct !DILocation(line: 136, column: 7, scope: !424)
!443 = !DILocation(line: 56, column: 41, scope: !83, inlinedAt: !442)
!444 = !DILocation(line: 56, column: 57, scope: !83, inlinedAt: !442)
!445 = !DILocation(line: 46, column: 3, scope: !56, inlinedAt: !446)
!446 = distinct !DILocation(line: 60, column: 9, scope: !99, inlinedAt: !442)
!447 = !DILocation(line: 48, column: 9, scope: !66, inlinedAt: !446)
!448 = !DILocation(line: 50, column: 37, scope: !68, inlinedAt: !446)
!449 = !DILocation(line: 59, column: 3, scope: !83, inlinedAt: !442)
!450 = !DILocation(line: 0, scope: !56, inlinedAt: !446)
!451 = !DILocation(line: 46, column: 18, scope: !56, inlinedAt: !446)
!452 = !DILocation(line: 46, column: 16, scope: !56, inlinedAt: !446)
!453 = !DILocation(line: 47, column: 3, scope: !56, inlinedAt: !446)
!454 = !DILocation(line: 45, column: 7, scope: !56, inlinedAt: !446)
!455 = !DILocation(line: 49, column: 11, scope: !74, inlinedAt: !446)
!456 = !DILocation(line: 49, column: 9, scope: !66, inlinedAt: !446)
!457 = !DILocation(line: 50, column: 11, scope: !68, inlinedAt: !446)
!458 = !DILocation(line: 50, column: 22, scope: !68, inlinedAt: !446)
!459 = !DILocation(line: 50, column: 20, scope: !68, inlinedAt: !446)
!460 = !DILocation(line: 50, column: 35, scope: !68, inlinedAt: !446)
!461 = !DILocation(line: 50, column: 3, scope: !81, inlinedAt: !446)
!462 = !DILocation(line: 58, column: 7, scope: !83, inlinedAt: !442)
!463 = !DILocation(line: 63, column: 11, scope: !117, inlinedAt: !442)
!464 = !DILocation(line: 64, column: 19, scope: !117, inlinedAt: !442)
!465 = !DILocation(line: 62, column: 15, scope: !117, inlinedAt: !442)
!466 = !DILocation(line: 142, column: 13, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 142, column: 8)
!468 = distinct !DILexicalBlock(scope: !424, file: !1, line: 141, column: 5)
!469 = !DILocation(line: 134, column: 7, scope: !424)
!470 = !DILocation(line: 67, column: 5, scope: !99, inlinedAt: !442)
!471 = !DILocation(line: 70, column: 13, scope: !126, inlinedAt: !442)
!472 = !DILocation(line: 80, column: 5, scope: !99, inlinedAt: !442)
!473 = !DILocation(line: 59, column: 3, scope: !129, inlinedAt: !442)
!474 = !DILocation(line: 142, column: 10, scope: !467)
!475 = !DILocation(line: 142, column: 8, scope: !468)
!476 = !DILocation(line: 144, column: 15, scope: !477)
!477 = distinct !DILexicalBlock(scope: !467, file: !1, line: 144, column: 13)
!478 = !DILocation(line: 144, column: 13, scope: !467)
!479 = !DILocation(line: 146, column: 22, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !1, line: 146, column: 13)
!481 = !DILocation(line: 147, column: 21, scope: !480)
!482 = !DILocation(line: 147, column: 28, scope: !480)
!483 = !DILocation(line: 147, column: 26, scope: !480)
!484 = !DILocation(line: 147, column: 30, scope: !480)
!485 = !DILocation(line: 147, column: 7, scope: !480)
!486 = !DILocation(line: 148, column: 5, scope: !468)
!487 = !DILocation(line: 0, scope: !56, inlinedAt: !488)
!488 = distinct !DILocation(line: 149, column: 9, scope: !468)
!489 = !DILocation(line: 46, column: 18, scope: !56, inlinedAt: !488)
!490 = !DILocation(line: 46, column: 16, scope: !56, inlinedAt: !488)
!491 = !DILocation(line: 47, column: 3, scope: !56, inlinedAt: !488)
!492 = !DILocation(line: 48, column: 9, scope: !66, inlinedAt: !488)
!493 = !DILocation(line: 45, column: 7, scope: !56, inlinedAt: !488)
!494 = !DILocation(line: 49, column: 11, scope: !74, inlinedAt: !488)
!495 = !DILocation(line: 49, column: 9, scope: !66, inlinedAt: !488)
!496 = !DILocation(line: 50, column: 11, scope: !68, inlinedAt: !488)
!497 = !DILocation(line: 50, column: 22, scope: !68, inlinedAt: !488)
!498 = !DILocation(line: 50, column: 20, scope: !68, inlinedAt: !488)
!499 = !DILocation(line: 50, column: 37, scope: !68, inlinedAt: !488)
!500 = !DILocation(line: 50, column: 35, scope: !68, inlinedAt: !488)
!501 = !DILocation(line: 50, column: 3, scope: !81, inlinedAt: !488)
!502 = !DILocation(line: 151, column: 20, scope: !424)
!503 = !DILocation(line: 151, column: 38, scope: !504)
!504 = !DILexicalBlockFile(scope: !424, file: !1, discriminator: 2)
!505 = !DILocation(line: 153, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !424, file: !1, line: 153, column: 6)
!507 = !DILocation(line: 154, column: 13, scope: !506)
!508 = !DILocation(line: 153, column: 6, scope: !424)
!509 = !DILocation(line: 155, column: 3, scope: !424)
!510 = !DILocation(line: 156, column: 1, scope: !424)
!511 = distinct !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatE13LookaheadModec", scope: !15, file: !1, line: 159, type: !512, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !515, variables: !516)
!512 = !DISubroutineType(types: !513)
!513 = !{!514, !19, !3, !10}
!514 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!515 = !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatE13LookaheadModec", scope: !15, file: !4, line: 94, type: !512, isLocal: false, isDefinition: false, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524}
!517 = !DILocalVariable(name: "this", arg: 1, scope: !511, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!518 = !DILocalVariable(name: "lookahead", arg: 2, scope: !511, file: !1, line: 159, type: !3)
!519 = !DILocalVariable(name: "ignore", arg: 3, scope: !511, file: !1, line: 159, type: !10)
!520 = !DILocalVariable(name: "isNegative", scope: !511, file: !1, line: 161, type: !86)
!521 = !DILocalVariable(name: "isFraction", scope: !511, file: !1, line: 162, type: !86)
!522 = !DILocalVariable(name: "value", scope: !511, file: !1, line: 163, type: !427)
!523 = !DILocalVariable(name: "c", scope: !511, file: !1, line: 164, type: !18)
!524 = !DILocalVariable(name: "fraction", scope: !511, file: !1, line: 165, type: !514)
!525 = !DILocation(line: 0, scope: !511)
!526 = !DILocation(line: 159, column: 40, scope: !511)
!527 = !DILocation(line: 159, column: 56, scope: !511)
!528 = !DILocation(line: 161, column: 8, scope: !511)
!529 = !DILocation(line: 162, column: 8, scope: !511)
!530 = !DILocation(line: 163, column: 8, scope: !511)
!531 = !DILocation(line: 165, column: 9, scope: !511)
!532 = !DILocation(line: 0, scope: !83, inlinedAt: !533)
!533 = distinct !DILocation(line: 167, column: 7, scope: !511)
!534 = !DILocation(line: 56, column: 41, scope: !83, inlinedAt: !533)
!535 = !DILocation(line: 56, column: 57, scope: !83, inlinedAt: !533)
!536 = !DILocation(line: 46, column: 3, scope: !56, inlinedAt: !537)
!537 = distinct !DILocation(line: 60, column: 9, scope: !99, inlinedAt: !533)
!538 = !DILocation(line: 48, column: 9, scope: !66, inlinedAt: !537)
!539 = !DILocation(line: 50, column: 37, scope: !68, inlinedAt: !537)
!540 = !DILocation(line: 59, column: 3, scope: !83, inlinedAt: !533)
!541 = !DILocation(line: 0, scope: !56, inlinedAt: !537)
!542 = !DILocation(line: 46, column: 18, scope: !56, inlinedAt: !537)
!543 = !DILocation(line: 46, column: 16, scope: !56, inlinedAt: !537)
!544 = !DILocation(line: 47, column: 3, scope: !56, inlinedAt: !537)
!545 = !DILocation(line: 45, column: 7, scope: !56, inlinedAt: !537)
!546 = !DILocation(line: 49, column: 11, scope: !74, inlinedAt: !537)
!547 = !DILocation(line: 49, column: 9, scope: !66, inlinedAt: !537)
!548 = !DILocation(line: 50, column: 11, scope: !68, inlinedAt: !537)
!549 = !DILocation(line: 50, column: 22, scope: !68, inlinedAt: !537)
!550 = !DILocation(line: 50, column: 20, scope: !68, inlinedAt: !537)
!551 = !DILocation(line: 50, column: 35, scope: !68, inlinedAt: !537)
!552 = !DILocation(line: 50, column: 3, scope: !81, inlinedAt: !537)
!553 = !DILocation(line: 58, column: 7, scope: !83, inlinedAt: !533)
!554 = !DILocation(line: 62, column: 11, scope: !117, inlinedAt: !533)
!555 = !DILocation(line: 63, column: 11, scope: !117, inlinedAt: !533)
!556 = !DILocation(line: 62, column: 15, scope: !117, inlinedAt: !533)
!557 = !DILocation(line: 64, column: 19, scope: !117, inlinedAt: !533)
!558 = !DILocation(line: 65, column: 29, scope: !122, inlinedAt: !533)
!559 = !DILocation(line: 67, column: 5, scope: !99, inlinedAt: !533)
!560 = !DILocation(line: 70, column: 13, scope: !126, inlinedAt: !533)
!561 = !DILocation(line: 80, column: 5, scope: !99, inlinedAt: !533)
!562 = !DILocation(line: 59, column: 3, scope: !129, inlinedAt: !533)
!563 = !DILocation(line: 164, column: 7, scope: !511)
!564 = !DILocation(line: 169, column: 6, scope: !511)
!565 = distinct !{!565, !566, !567}
!566 = !DILocation(line: 172, column: 3, scope: !511)
!567 = !DILocation(line: 187, column: 78, scope: !511)
!568 = !DILocation(line: 173, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 173, column: 8)
!570 = distinct !DILexicalBlock(scope: !511, file: !1, line: 172, column: 5)
!571 = !DILocation(line: 173, column: 10, scope: !569)
!572 = !DILocation(line: 173, column: 8, scope: !570)
!573 = !DILocation(line: 175, column: 13, scope: !569)
!574 = !DILocation(line: 178, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 177, column: 14)
!576 = distinct !DILexicalBlock(scope: !569, file: !1, line: 175, column: 13)
!577 = !DILocation(line: 179, column: 22, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !1, line: 179, column: 13)
!579 = !DILocation(line: 180, column: 21, scope: !580)
!580 = distinct !DILexicalBlock(scope: !578, file: !1, line: 179, column: 36)
!581 = !DILocation(line: 180, column: 28, scope: !580)
!582 = !DILocation(line: 180, column: 26, scope: !580)
!583 = !DILocation(line: 180, column: 30, scope: !580)
!584 = !DILocation(line: 181, column: 10, scope: !585)
!585 = distinct !DILexicalBlock(scope: !580, file: !1, line: 181, column: 10)
!586 = !DILocation(line: 182, column: 19, scope: !585)
!587 = !DILocation(line: 181, column: 10, scope: !580)
!588 = !DILocation(line: 184, column: 5, scope: !570)
!589 = !DILocation(line: 0, scope: !56, inlinedAt: !590)
!590 = distinct !DILocation(line: 185, column: 9, scope: !570)
!591 = !DILocation(line: 46, column: 18, scope: !56, inlinedAt: !590)
!592 = !DILocation(line: 46, column: 16, scope: !56, inlinedAt: !590)
!593 = !DILocation(line: 47, column: 3, scope: !56, inlinedAt: !590)
!594 = !DILocation(line: 48, column: 9, scope: !66, inlinedAt: !590)
!595 = !DILocation(line: 45, column: 7, scope: !56, inlinedAt: !590)
!596 = !DILocation(line: 49, column: 11, scope: !74, inlinedAt: !590)
!597 = !DILocation(line: 49, column: 9, scope: !66, inlinedAt: !590)
!598 = !DILocation(line: 50, column: 11, scope: !68, inlinedAt: !590)
!599 = !DILocation(line: 50, column: 22, scope: !68, inlinedAt: !590)
!600 = !DILocation(line: 50, column: 20, scope: !68, inlinedAt: !590)
!601 = !DILocation(line: 50, column: 37, scope: !68, inlinedAt: !590)
!602 = !DILocation(line: 50, column: 35, scope: !68, inlinedAt: !590)
!603 = !DILocation(line: 50, column: 3, scope: !81, inlinedAt: !590)
!604 = !DILocation(line: 187, column: 20, scope: !511)
!605 = !DILocation(line: 187, column: 40, scope: !606)
!606 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 2)
!607 = !DILocation(line: 187, column: 51, scope: !608)
!608 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 3)
!609 = !DILocation(line: 187, column: 47, scope: !606)
!610 = !DILocation(line: 187, column: 68, scope: !611)
!611 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 4)
!612 = !DILocation(line: 189, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !511, file: !1, line: 189, column: 6)
!614 = !DILocation(line: 190, column: 13, scope: !613)
!615 = !DILocation(line: 189, column: 6, scope: !511)
!616 = !DILocation(line: 192, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !511, file: !1, line: 191, column: 6)
!618 = !DILocation(line: 191, column: 6, scope: !511)
!619 = !DILocation(line: 195, column: 1, scope: !511)
!620 = distinct !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPcj", scope: !15, file: !1, line: 202, type: !621, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !623, variables: !624)
!621 = !DISubroutineType(types: !622)
!622 = !{!160, !19, !149, !160}
!623 = !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPcj", scope: !15, file: !4, line: 97, type: !621, isLocal: false, isDefinition: false, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!624 = !{!625, !626, !627, !628, !629}
!625 = !DILocalVariable(name: "this", arg: 1, scope: !620, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!626 = !DILocalVariable(name: "buffer", arg: 2, scope: !620, file: !1, line: 202, type: !149)
!627 = !DILocalVariable(name: "length", arg: 3, scope: !620, file: !1, line: 202, type: !160)
!628 = !DILocalVariable(name: "count", scope: !620, file: !1, line: 204, type: !160)
!629 = !DILocalVariable(name: "c", scope: !630, file: !1, line: 206, type: !18)
!630 = distinct !DILexicalBlock(scope: !620, file: !1, line: 205, column: 26)
!631 = !DILocation(line: 0, scope: !620)
!632 = !DILocation(line: 202, column: 32, scope: !620)
!633 = !DILocation(line: 202, column: 47, scope: !620)
!634 = !DILocation(line: 204, column: 10, scope: !620)
!635 = !DILocation(line: 205, column: 16, scope: !636)
!636 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 1)
!637 = !DILocation(line: 205, column: 3, scope: !636)
!638 = !DILocation(line: 34, column: 3, scope: !14, inlinedAt: !639)
!639 = distinct !DILocation(line: 206, column: 13, scope: !630)
!640 = !DILocation(line: 36, column: 9, scope: !36, inlinedAt: !639)
!641 = !DILocation(line: 38, column: 37, scope: !38, inlinedAt: !639)
!642 = !DILocation(line: 0, scope: !14, inlinedAt: !639)
!643 = !DILocation(line: 34, column: 18, scope: !14, inlinedAt: !639)
!644 = !DILocation(line: 34, column: 16, scope: !14, inlinedAt: !639)
!645 = !DILocation(line: 35, column: 3, scope: !14, inlinedAt: !639)
!646 = !DILocation(line: 33, column: 7, scope: !14, inlinedAt: !639)
!647 = !DILocation(line: 37, column: 11, scope: !46, inlinedAt: !639)
!648 = !DILocation(line: 37, column: 9, scope: !36, inlinedAt: !639)
!649 = !DILocation(line: 38, column: 11, scope: !38, inlinedAt: !639)
!650 = !DILocation(line: 38, column: 22, scope: !38, inlinedAt: !639)
!651 = !DILocation(line: 38, column: 20, scope: !38, inlinedAt: !639)
!652 = !DILocation(line: 38, column: 35, scope: !38, inlinedAt: !639)
!653 = !DILocation(line: 38, column: 3, scope: !54, inlinedAt: !639)
!654 = !DILocation(line: 206, column: 9, scope: !630)
!655 = !DILocation(line: 208, column: 23, scope: !630)
!656 = !DILocation(line: 208, column: 12, scope: !630)
!657 = !DILocation(line: 208, column: 15, scope: !630)
!658 = !DILocation(line: 209, column: 10, scope: !630)
!659 = !DILocation(line: 211, column: 3, scope: !620)
!660 = distinct !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPcj", scope: !15, file: !1, line: 219, type: !661, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !663, variables: !664)
!661 = !DISubroutineType(types: !662)
!662 = !{!160, !19, !10, !149, !160}
!663 = !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPcj", scope: !15, file: !4, line: 102, type: !661, isLocal: false, isDefinition: false, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!664 = !{!665, !666, !667, !668, !669, !670}
!665 = !DILocalVariable(name: "this", arg: 1, scope: !660, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!666 = !DILocalVariable(name: "terminator", arg: 2, scope: !660, file: !1, line: 219, type: !10)
!667 = !DILocalVariable(name: "buffer", arg: 3, scope: !660, file: !1, line: 219, type: !149)
!668 = !DILocalVariable(name: "length", arg: 4, scope: !660, file: !1, line: 219, type: !160)
!669 = !DILocalVariable(name: "index", scope: !660, file: !1, line: 222, type: !160)
!670 = !DILocalVariable(name: "c", scope: !671, file: !1, line: 224, type: !18)
!671 = distinct !DILexicalBlock(scope: !660, file: !1, line: 223, column: 26)
!672 = !DILocation(line: 0, scope: !660)
!673 = !DILocation(line: 219, column: 36, scope: !660)
!674 = !DILocation(line: 219, column: 54, scope: !660)
!675 = !DILocation(line: 219, column: 69, scope: !660)
!676 = !DILocation(line: 221, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !660, file: !1, line: 221, column: 7)
!678 = !DILocation(line: 222, column: 10, scope: !660)
!679 = !DILocation(line: 221, column: 7, scope: !660)
!680 = !DILocation(line: 34, column: 3, scope: !14, inlinedAt: !681)
!681 = distinct !DILocation(line: 224, column: 13, scope: !671)
!682 = !DILocation(line: 36, column: 9, scope: !36, inlinedAt: !681)
!683 = !DILocation(line: 38, column: 37, scope: !38, inlinedAt: !681)
!684 = !DILocation(line: 225, column: 23, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !1, discriminator: 1)
!686 = distinct !DILexicalBlock(scope: !671, file: !1, line: 225, column: 9)
!687 = !DILocation(line: 223, column: 3, scope: !688)
!688 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 1)
!689 = !DILocation(line: 0, scope: !14, inlinedAt: !681)
!690 = !DILocation(line: 34, column: 18, scope: !14, inlinedAt: !681)
!691 = !DILocation(line: 34, column: 16, scope: !14, inlinedAt: !681)
!692 = !DILocation(line: 35, column: 3, scope: !14, inlinedAt: !681)
!693 = !DILocation(line: 33, column: 7, scope: !14, inlinedAt: !681)
!694 = !DILocation(line: 37, column: 11, scope: !46, inlinedAt: !681)
!695 = !DILocation(line: 37, column: 9, scope: !36, inlinedAt: !681)
!696 = !DILocation(line: 38, column: 11, scope: !38, inlinedAt: !681)
!697 = !DILocation(line: 38, column: 22, scope: !38, inlinedAt: !681)
!698 = !DILocation(line: 38, column: 20, scope: !38, inlinedAt: !681)
!699 = !DILocation(line: 38, column: 35, scope: !38, inlinedAt: !681)
!700 = !DILocation(line: 38, column: 3, scope: !54, inlinedAt: !681)
!701 = !DILocation(line: 224, column: 9, scope: !671)
!702 = !DILocation(line: 225, column: 20, scope: !685)
!703 = !DILocation(line: 225, column: 15, scope: !686)
!704 = !DILocation(line: 226, column: 23, scope: !671)
!705 = !DILocation(line: 226, column: 12, scope: !671)
!706 = !DILocation(line: 226, column: 15, scope: !671)
!707 = !DILocation(line: 227, column: 10, scope: !671)
!708 = !DILocation(line: 223, column: 16, scope: !688)
!709 = !DILocation(line: 230, column: 1, scope: !688)
!710 = distinct !DISubprogram(name: "readString", linkageName: "_ZN6Stream10readStringEv", scope: !15, file: !1, line: 232, type: !711, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !952, variables: !953)
!711 = !DISubroutineType(types: !712)
!712 = !{!713, !19}
!713 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !714, line: 45, size: 48, elements: !715, identifier: "_ZTS6String")
!714 = !DIFile(filename: "Arduino/WString.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!715 = !{!716, !717, !718, !719, !724, !728, !732, !738, !741, !745, !748, !751, !754, !757, !760, !764, !767, !770, !773, !777, !780, !783, !786, !789, !792, !795, !798, !799, !802, !805, !808, !811, !814, !815, !816, !819, !822, !825, !828, !831, !834, !837, !840, !841, !846, !849, !852, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !868, !869, !872, !875, !876, !880, !884, !887, !890, !893, !894, !895, !896, !899, !902, !903, !906, !907, !908, !909, !910, !913, !916, !919, !922, !925, !928, !929, !930, !931, !934, !937, !940, !941, !942, !943, !946, !949}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !713, file: !714, line: 196, baseType: !149, size: 16, flags: DIFlagProtected)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !713, file: !714, line: 197, baseType: !162, size: 16, offset: 16, flags: DIFlagProtected)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !713, file: !714, line: 198, baseType: !162, size: 16, offset: 32, flags: DIFlagProtected)
!719 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !713, file: !714, line: 51, type: !720, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!724 = !DISubprogram(name: "String", scope: !713, file: !714, line: 59, type: !725, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !727, !176}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!728 = !DISubprogram(name: "String", scope: !713, file: !714, line: 60, type: !729, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !727, !731}
!731 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !723, size: 16)
!732 = !DISubprogram(name: "String", scope: !713, file: !714, line: 61, type: !733, isLocal: false, isDefinition: false, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !727, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 16)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !714, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!738 = !DISubprogram(name: "String", scope: !713, file: !714, line: 66, type: !739, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !727, !10}
!741 = !DISubprogram(name: "String", scope: !713, file: !714, line: 67, type: !742, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !727, !744, !744}
!744 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!745 = !DISubprogram(name: "String", scope: !713, file: !714, line: 68, type: !746, isLocal: false, isDefinition: false, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !727, !18, !744}
!748 = !DISubprogram(name: "String", scope: !713, file: !714, line: 69, type: !749, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !727, !162, !744}
!751 = !DISubprogram(name: "String", scope: !713, file: !714, line: 70, type: !752, isLocal: false, isDefinition: false, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !727, !427, !744}
!754 = !DISubprogram(name: "String", scope: !713, file: !714, line: 71, type: !755, isLocal: false, isDefinition: false, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !727, !136, !744}
!757 = !DISubprogram(name: "String", scope: !713, file: !714, line: 72, type: !758, isLocal: false, isDefinition: false, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !727, !514, !744}
!760 = !DISubprogram(name: "String", scope: !713, file: !714, line: 73, type: !761, isLocal: false, isDefinition: false, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !727, !763, !744}
!763 = !DIBasicType(name: "double", size: 32, encoding: DW_ATE_float)
!764 = !DISubprogram(name: "~String", scope: !713, file: !714, line: 74, type: !765, isLocal: false, isDefinition: false, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !727}
!767 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !713, file: !714, line: 80, type: !768, isLocal: false, isDefinition: false, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!768 = !DISubroutineType(types: !769)
!769 = !{!744, !727, !162}
!770 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !713, file: !714, line: 81, type: !771, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!771 = !DISubroutineType(types: !772)
!772 = !{!162, !722}
!773 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !713, file: !714, line: 86, type: !774, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !727, !731}
!776 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !713, size: 16)
!777 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !713, file: !714, line: 87, type: !778, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!778 = !DISubroutineType(types: !779)
!779 = !{!776, !727, !176}
!780 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !713, file: !714, line: 88, type: !781, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!781 = !DISubroutineType(types: !782)
!782 = !{!776, !727, !735}
!783 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !713, file: !714, line: 99, type: !784, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!784 = !DISubroutineType(types: !785)
!785 = !{!744, !727, !731}
!786 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !713, file: !714, line: 100, type: !787, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!787 = !DISubroutineType(types: !788)
!788 = !{!744, !727, !176}
!789 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !713, file: !714, line: 101, type: !790, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!790 = !DISubroutineType(types: !791)
!791 = !{!744, !727, !10}
!792 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !713, file: !714, line: 102, type: !793, isLocal: false, isDefinition: false, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!793 = !DISubroutineType(types: !794)
!794 = !{!744, !727, !744}
!795 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !713, file: !714, line: 103, type: !796, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!796 = !DISubroutineType(types: !797)
!797 = !{!744, !727, !18}
!798 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !713, file: !714, line: 104, type: !768, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!799 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !713, file: !714, line: 105, type: !800, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!800 = !DISubroutineType(types: !801)
!801 = !{!744, !727, !427}
!802 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !713, file: !714, line: 106, type: !803, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!803 = !DISubroutineType(types: !804)
!804 = !{!744, !727, !136}
!805 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !713, file: !714, line: 107, type: !806, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!806 = !DISubroutineType(types: !807)
!807 = !{!744, !727, !514}
!808 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !713, file: !714, line: 108, type: !809, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!809 = !DISubroutineType(types: !810)
!810 = !{!744, !727, !763}
!811 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !713, file: !714, line: 109, type: !812, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!812 = !DISubroutineType(types: !813)
!813 = !{!744, !727, !735}
!814 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !713, file: !714, line: 113, type: !774, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!815 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !713, file: !714, line: 114, type: !778, isLocal: false, isDefinition: false, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!816 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !713, file: !714, line: 115, type: !817, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!817 = !DISubroutineType(types: !818)
!818 = !{!776, !727, !10}
!819 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !713, file: !714, line: 116, type: !820, isLocal: false, isDefinition: false, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!820 = !DISubroutineType(types: !821)
!821 = !{!776, !727, !744}
!822 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !713, file: !714, line: 117, type: !823, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!823 = !DISubroutineType(types: !824)
!824 = !{!776, !727, !18}
!825 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !713, file: !714, line: 118, type: !826, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!826 = !DISubroutineType(types: !827)
!827 = !{!776, !727, !162}
!828 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !713, file: !714, line: 119, type: !829, isLocal: false, isDefinition: false, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!829 = !DISubroutineType(types: !830)
!830 = !{!776, !727, !427}
!831 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !713, file: !714, line: 120, type: !832, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!832 = !DISubroutineType(types: !833)
!833 = !{!776, !727, !136}
!834 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !713, file: !714, line: 121, type: !835, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!835 = !DISubroutineType(types: !836)
!836 = !{!776, !727, !514}
!837 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !713, file: !714, line: 122, type: !838, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!838 = !DISubroutineType(types: !839)
!839 = !{!776, !727, !763}
!840 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !713, file: !714, line: 123, type: !781, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!841 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !713, file: !714, line: 138, type: !842, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!842 = !DISubroutineType(types: !843)
!843 = !{!844, !722}
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !713, file: !714, line: 50, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !720, size: 32, extraData: !713)
!846 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !713, file: !714, line: 139, type: !847, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!847 = !DISubroutineType(types: !848)
!848 = !{!18, !722, !731}
!849 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !713, file: !714, line: 140, type: !850, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!850 = !DISubroutineType(types: !851)
!851 = !{!744, !722, !731}
!852 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !713, file: !714, line: 141, type: !853, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!853 = !DISubroutineType(types: !854)
!854 = !{!744, !722, !176}
!855 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !713, file: !714, line: 142, type: !850, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!856 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !713, file: !714, line: 143, type: !853, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!857 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !713, file: !714, line: 144, type: !850, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!858 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !713, file: !714, line: 145, type: !853, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!859 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !713, file: !714, line: 146, type: !850, isLocal: false, isDefinition: false, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!860 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !713, file: !714, line: 147, type: !850, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!861 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !713, file: !714, line: 148, type: !850, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!862 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !713, file: !714, line: 149, type: !850, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!863 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !713, file: !714, line: 150, type: !850, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!864 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !713, file: !714, line: 151, type: !850, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!865 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !713, file: !714, line: 152, type: !866, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!866 = !DISubroutineType(types: !867)
!867 = !{!744, !722, !731, !162}
!868 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !713, file: !714, line: 153, type: !850, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!869 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !713, file: !714, line: 156, type: !870, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!870 = !DISubroutineType(types: !871)
!871 = !{!10, !722, !162}
!872 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !713, file: !714, line: 157, type: !873, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !727, !162, !10}
!875 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !713, file: !714, line: 158, type: !870, isLocal: false, isDefinition: false, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!876 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !713, file: !714, line: 159, type: !877, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!877 = !DISubroutineType(types: !878)
!878 = !{!879, !727, !162}
!879 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 16)
!880 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !713, file: !714, line: 160, type: !881, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !722, !883, !162, !162}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 16)
!884 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !713, file: !714, line: 161, type: !885, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !722, !149, !162, !162}
!887 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !713, file: !714, line: 163, type: !888, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!888 = !DISubroutineType(types: !889)
!889 = !{!176, !722}
!890 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !713, file: !714, line: 164, type: !891, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!891 = !DISubroutineType(types: !892)
!892 = !{!149, !727}
!893 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !713, file: !714, line: 165, type: !891, isLocal: false, isDefinition: false, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!894 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !713, file: !714, line: 166, type: !888, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!895 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !713, file: !714, line: 167, type: !888, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!896 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !713, file: !714, line: 170, type: !897, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!897 = !DISubroutineType(types: !898)
!898 = !{!18, !722, !10}
!899 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !713, file: !714, line: 171, type: !900, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!900 = !DISubroutineType(types: !901)
!901 = !{!18, !722, !10, !162}
!902 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !713, file: !714, line: 172, type: !847, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!903 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !713, file: !714, line: 173, type: !904, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!904 = !DISubroutineType(types: !905)
!905 = !{!18, !722, !731, !162}
!906 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !713, file: !714, line: 174, type: !897, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!907 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !713, file: !714, line: 175, type: !900, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!908 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !713, file: !714, line: 176, type: !847, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!909 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !713, file: !714, line: 177, type: !904, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!910 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !713, file: !714, line: 178, type: !911, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!911 = !DISubroutineType(types: !912)
!912 = !{!713, !722, !162}
!913 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !713, file: !714, line: 179, type: !914, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!914 = !DISubroutineType(types: !915)
!915 = !{!713, !722, !162, !162}
!916 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !713, file: !714, line: 182, type: !917, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !727, !10, !10}
!919 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !713, file: !714, line: 183, type: !920, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !727, !731, !731}
!922 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !713, file: !714, line: 184, type: !923, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !727, !162}
!925 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !713, file: !714, line: 185, type: !926, isLocal: false, isDefinition: false, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !727, !162, !162}
!928 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !713, file: !714, line: 186, type: !765, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!929 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !713, file: !714, line: 187, type: !765, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!930 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !713, file: !714, line: 188, type: !765, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!931 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !713, file: !714, line: 191, type: !932, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!932 = !DISubroutineType(types: !933)
!933 = !{!427, !722}
!934 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !713, file: !714, line: 192, type: !935, isLocal: false, isDefinition: false, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!935 = !DISubroutineType(types: !936)
!936 = !{!514, !722}
!937 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !713, file: !714, line: 193, type: !938, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!938 = !DISubroutineType(types: !939)
!939 = !{!763, !722}
!940 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !713, file: !714, line: 200, type: !765, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!941 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !713, file: !714, line: 201, type: !765, isLocal: false, isDefinition: false, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!942 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !713, file: !714, line: 202, type: !768, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!943 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !713, file: !714, line: 203, type: !944, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!944 = !DISubroutineType(types: !945)
!945 = !{!744, !727, !176, !162}
!946 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !713, file: !714, line: 206, type: !947, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!947 = !DISubroutineType(types: !948)
!948 = !{!776, !727, !176, !162}
!949 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !713, file: !714, line: 207, type: !950, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!950 = !DISubroutineType(types: !951)
!951 = !{!776, !727, !735, !162}
!952 = !DISubprogram(name: "readString", linkageName: "_ZN6Stream10readStringEv", scope: !15, file: !4, line: 108, type: !711, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!953 = !{!954, !955, !956}
!954 = !DILocalVariable(name: "this", arg: 1, scope: !710, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!955 = !DILocalVariable(name: "ret", scope: !710, file: !1, line: 234, type: !713)
!956 = !DILocalVariable(name: "c", scope: !710, file: !1, line: 235, type: !18)
!957 = !DILocation(line: 0, scope: !710)
!958 = !DIExpression(DW_OP_deref)
!959 = !DILocation(line: 234, column: 10, scope: !710)
!960 = !DILocation(line: 0, scope: !14, inlinedAt: !961)
!961 = distinct !DILocation(line: 235, column: 11, scope: !710)
!962 = !DILocation(line: 34, column: 18, scope: !14, inlinedAt: !961)
!963 = !DILocation(line: 34, column: 3, scope: !14, inlinedAt: !961)
!964 = !DILocation(line: 34, column: 16, scope: !14, inlinedAt: !961)
!965 = !DILocation(line: 36, column: 9, scope: !36, inlinedAt: !961)
!966 = !DILocation(line: 38, column: 37, scope: !38, inlinedAt: !961)
!967 = !DILocation(line: 35, column: 3, scope: !14, inlinedAt: !961)
!968 = !DILocation(line: 33, column: 7, scope: !14, inlinedAt: !961)
!969 = !DILocation(line: 37, column: 11, scope: !46, inlinedAt: !961)
!970 = !DILocation(line: 37, column: 9, scope: !36, inlinedAt: !961)
!971 = !DILocation(line: 0, scope: !972, inlinedAt: !977)
!972 = distinct !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !713, file: !714, line: 115, type: !817, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !816, variables: !973)
!973 = !{!974, !976}
!974 = !DILocalVariable(name: "this", arg: 1, scope: !972, type: !975, flags: DIFlagArtificial | DIFlagObjectPointer)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 16)
!976 = !DILocalVariable(name: "c", arg: 2, scope: !972, file: !714, line: 115, type: !10)
!977 = distinct !DILocation(line: 238, column: 9, scope: !978)
!978 = distinct !DILexicalBlock(scope: !710, file: !1, line: 237, column: 3)
!979 = !DILocation(line: 38, column: 11, scope: !38, inlinedAt: !961)
!980 = !DILocation(line: 38, column: 22, scope: !38, inlinedAt: !961)
!981 = !DILocation(line: 38, column: 20, scope: !38, inlinedAt: !961)
!982 = !DILocation(line: 38, column: 35, scope: !38, inlinedAt: !961)
!983 = !DILocation(line: 38, column: 3, scope: !54, inlinedAt: !961)
!984 = !DILocation(line: 37, column: 9, scope: !36, inlinedAt: !985)
!985 = distinct !DILocation(line: 239, column: 9, scope: !978)
!986 = !DILocation(line: 115, column: 29, scope: !972, inlinedAt: !977)
!987 = !DILocation(line: 115, column: 35, scope: !972, inlinedAt: !977)
!988 = !DILocation(line: 0, scope: !14, inlinedAt: !985)
!989 = !DILocation(line: 34, column: 18, scope: !14, inlinedAt: !985)
!990 = !DILocation(line: 34, column: 16, scope: !14, inlinedAt: !985)
!991 = !DILocation(line: 35, column: 3, scope: !14, inlinedAt: !985)
!992 = !DILocation(line: 36, column: 9, scope: !36, inlinedAt: !985)
!993 = !DILocation(line: 33, column: 7, scope: !14, inlinedAt: !985)
!994 = !DILocation(line: 37, column: 11, scope: !46, inlinedAt: !985)
!995 = !DILocation(line: 38, column: 11, scope: !38, inlinedAt: !985)
!996 = !DILocation(line: 38, column: 22, scope: !38, inlinedAt: !985)
!997 = !DILocation(line: 38, column: 20, scope: !38, inlinedAt: !985)
!998 = !DILocation(line: 38, column: 37, scope: !38, inlinedAt: !985)
!999 = !DILocation(line: 38, column: 35, scope: !38, inlinedAt: !985)
!1000 = !DILocation(line: 38, column: 3, scope: !54, inlinedAt: !985)
!1001 = !DILocation(line: 242, column: 1, scope: !710)
!1002 = !DILocation(line: 242, column: 1, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !978, file: !1, discriminator: 1)
!1004 = !DILocation(line: 242, column: 1, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 4)
!1006 = !DILocation(line: 242, column: 1, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 5)
!1008 = !DILocation(line: 242, column: 1, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 7)
!1010 = !DILocation(line: 242, column: 1, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !710, file: !1, discriminator: 8)
!1012 = distinct !DISubprogram(name: "readStringUntil", linkageName: "_ZN6Stream15readStringUntilEc", scope: !15, file: !1, line: 244, type: !1013, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !1015, variables: !1016)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!713, !19, !10}
!1015 = !DISubprogram(name: "readStringUntil", linkageName: "_ZN6Stream15readStringUntilEc", scope: !15, file: !4, line: 109, type: !1013, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1016 = !{!1017, !1018, !1019, !1020}
!1017 = !DILocalVariable(name: "this", arg: 1, scope: !1012, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!1018 = !DILocalVariable(name: "terminator", arg: 2, scope: !1012, file: !1, line: 244, type: !10)
!1019 = !DILocalVariable(name: "ret", scope: !1012, file: !1, line: 246, type: !713)
!1020 = !DILocalVariable(name: "c", scope: !1012, file: !1, line: 247, type: !18)
!1021 = !DILocation(line: 0, scope: !1012)
!1022 = !DILocation(line: 244, column: 37, scope: !1012)
!1023 = !DILocation(line: 246, column: 10, scope: !1012)
!1024 = !DILocation(line: 0, scope: !14, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 247, column: 11, scope: !1012)
!1026 = !DILocation(line: 34, column: 18, scope: !14, inlinedAt: !1025)
!1027 = !DILocation(line: 34, column: 3, scope: !14, inlinedAt: !1025)
!1028 = !DILocation(line: 34, column: 16, scope: !14, inlinedAt: !1025)
!1029 = !DILocation(line: 36, column: 9, scope: !36, inlinedAt: !1025)
!1030 = !DILocation(line: 38, column: 37, scope: !38, inlinedAt: !1025)
!1031 = !DILocation(line: 35, column: 3, scope: !14, inlinedAt: !1025)
!1032 = !DILocation(line: 33, column: 7, scope: !14, inlinedAt: !1025)
!1033 = !DILocation(line: 37, column: 11, scope: !46, inlinedAt: !1025)
!1034 = !DILocation(line: 37, column: 9, scope: !36, inlinedAt: !1025)
!1035 = !DILocation(line: 38, column: 11, scope: !38, inlinedAt: !1025)
!1036 = !DILocation(line: 38, column: 22, scope: !38, inlinedAt: !1025)
!1037 = !DILocation(line: 38, column: 20, scope: !38, inlinedAt: !1025)
!1038 = !DILocation(line: 38, column: 35, scope: !38, inlinedAt: !1025)
!1039 = !DILocation(line: 38, column: 3, scope: !54, inlinedAt: !1025)
!1040 = !DILocation(line: 247, column: 7, scope: !1012)
!1041 = !DILocation(line: 248, column: 25, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 2)
!1043 = !DILocation(line: 248, column: 22, scope: !1042)
!1044 = !DILocation(line: 248, column: 17, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 1)
!1046 = !DILocation(line: 0, scope: !972, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 250, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 249, column: 3)
!1049 = !DILocation(line: 115, column: 29, scope: !972, inlinedAt: !1047)
!1050 = !DILocation(line: 115, column: 35, scope: !972, inlinedAt: !1047)
!1051 = !DILocation(line: 0, scope: !14, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 251, column: 9, scope: !1048)
!1053 = !DILocation(line: 34, column: 18, scope: !14, inlinedAt: !1052)
!1054 = !DILocation(line: 34, column: 16, scope: !14, inlinedAt: !1052)
!1055 = !DILocation(line: 35, column: 3, scope: !14, inlinedAt: !1052)
!1056 = !DILocation(line: 36, column: 9, scope: !36, inlinedAt: !1052)
!1057 = !DILocation(line: 33, column: 7, scope: !14, inlinedAt: !1052)
!1058 = !DILocation(line: 37, column: 11, scope: !46, inlinedAt: !1052)
!1059 = !DILocation(line: 37, column: 9, scope: !36, inlinedAt: !1052)
!1060 = !DILocation(line: 38, column: 11, scope: !38, inlinedAt: !1052)
!1061 = !DILocation(line: 38, column: 22, scope: !38, inlinedAt: !1052)
!1062 = !DILocation(line: 38, column: 20, scope: !38, inlinedAt: !1052)
!1063 = !DILocation(line: 38, column: 37, scope: !38, inlinedAt: !1052)
!1064 = !DILocation(line: 38, column: 35, scope: !38, inlinedAt: !1052)
!1065 = !DILocation(line: 38, column: 3, scope: !54, inlinedAt: !1052)
!1066 = !DILocation(line: 254, column: 1, scope: !1012)
!1067 = !DILocation(line: 254, column: 1, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1048, file: !1, discriminator: 1)
!1069 = !DILocation(line: 254, column: 1, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 4)
!1071 = !DILocation(line: 254, column: 1, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 5)
!1073 = !DILocation(line: 254, column: 1, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 7)
!1075 = !DILocation(line: 254, column: 1, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 8)
