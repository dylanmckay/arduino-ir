; ModuleID = 'Arduino/HardwareSerial.cpp'
source_filename = "Arduino/HardwareSerial.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

%class.HardwareSerial = type <{ %class.Stream, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, [64 x i8], [64 x i8] }>
%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i16 }

$_ZTS6Stream = comdat any

$_ZTI6Stream = comdat any

@_ZTV14HardwareSerial = unnamed_addr constant [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI14HardwareSerial to i8*), i8* bitcast (i16 (%class.HardwareSerial*, i8)* @_ZN14HardwareSerial5writeEh to i8*), i8* bitcast (i16 (%class.Print*, i8*, i16)* @_ZN5Print5writeEPKhj to i8*), i8* bitcast (i16 (%class.HardwareSerial*)* @_ZN14HardwareSerial9availableEv to i8*), i8* bitcast (i16 (%class.HardwareSerial*)* @_ZN14HardwareSerial4readEv to i8*), i8* bitcast (i16 (%class.HardwareSerial*)* @_ZN14HardwareSerial4peekEv to i8*), i8* bitcast (void (%class.HardwareSerial*)* @_ZN14HardwareSerial5flushEv to i8*)], align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS14HardwareSerial = constant [17 x i8] c"14HardwareSerial\00"
@_ZTS6Stream = linkonce_odr constant [8 x i8] c"6Stream\00", comdat
@_ZTI5Print = external constant i8*
@_ZTI6Stream = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i16 2) to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_ZTS6Stream, i32 0, i32 0), i8* bitcast (i8** @_ZTI5Print to i8*) }, comdat
@_ZTI14HardwareSerial = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i16 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14HardwareSerial, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTI6Stream to i8*) }

define weak void @_Z14serialEventRunv() local_unnamed_addr #0 !dbg !16 {
entry:
  br i1 or (i1 icmp eq (i1 ()* @_Z17Serial0_availablev, i1 ()* null), i1 icmp eq (void ()* @_Z11serialEventv, void ()* null)), label %if.end, label %land.lhs.true1, !dbg !19

land.lhs.true1:                                   ; preds = %entry
  %call = tail call zeroext i1 @_Z17Serial0_availablev(), !dbg !21
  br i1 %call, label %if.then, label %if.end, !dbg !23

if.then:                                          ; preds = %land.lhs.true1
  tail call void @_Z11serialEventv(), !dbg !25
  br label %if.end, !dbg !25

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true1
  ret void, !dbg !27
}

declare extern_weak zeroext i1 @_Z17Serial0_availablev() #1

declare extern_weak void @_Z11serialEventv() #1

; Function Attrs: nounwind
define void @_ZN14HardwareSerial17_tx_udr_empty_irqEv(%class.HardwareSerial* %this) local_unnamed_addr #2 align 2 !dbg !28 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !103, metadata !106), !dbg !107
  %_tx_buffer_tail = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 11, !dbg !108
  %0 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !108, !tbaa !109
  %idxprom = zext i8 %0 to i16, !dbg !115
  %arrayidx = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 13, i16 %idxprom, !dbg !115
  %1 = load i8, i8* %arrayidx, align 1, !dbg !115, !tbaa !116
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !105, metadata !106), !dbg !117
  %2 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !118, !tbaa !109
  %add = add i8 %2, 1, !dbg !119
  %rem = and i8 %add, 63, !dbg !120
  store volatile i8 %rem, i8* %_tx_buffer_tail, align 1, !dbg !121, !tbaa !109
  %_udr = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 6, !dbg !122
  %3 = load i8*, i8** %_udr, align 1, !dbg !122, !tbaa !123
  store volatile i8 %1, i8* %3, align 1, !dbg !124, !tbaa !116
  %_ucsra = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 3, !dbg !125
  %4 = load i8*, i8** %_ucsra, align 1, !dbg !125, !tbaa !126
  %5 = load volatile i8, i8* %4, align 1, !dbg !125, !tbaa !116
  %6 = or i8 %5, 64, !dbg !125
  store volatile i8 %6, i8* %4, align 1, !dbg !125, !tbaa !116
  %_tx_buffer_head = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 10, !dbg !127
  %7 = load volatile i8, i8* %_tx_buffer_head, align 1, !dbg !127, !tbaa !129
  %8 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !130, !tbaa !109
  %cmp = icmp eq i8 %7, %8, !dbg !131
  br i1 %cmp, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %entry
  %_ucsrb = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 4, !dbg !133
  %9 = load i8*, i8** %_ucsrb, align 1, !dbg !133, !tbaa !135
  %10 = load volatile i8, i8* %9, align 1, !dbg !133, !tbaa !116
  %11 = and i8 %10, -33, !dbg !133
  store volatile i8 %11, i8* %9, align 1, !dbg !133, !tbaa !116
  br label %if.end, !dbg !136

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !137
}

; Function Attrs: nounwind
define void @_ZN14HardwareSerial5beginEmh(%class.HardwareSerial* nocapture %this, i32 %baud, i8 zeroext %config) local_unnamed_addr #2 align 2 !dbg !138 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !144, metadata !106), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %baud, i64 0, metadata !145, metadata !106), !dbg !149
  tail call void @llvm.dbg.value(metadata i8 %config, i64 0, metadata !146, metadata !106), !dbg !150
  %div = udiv i32 4000000, %baud, !dbg !151
  %sub = add nuw nsw i32 %div, 131071, !dbg !152
  %div2 = lshr i32 %sub, 1, !dbg !153
  %conv = trunc i32 %div2 to i16, !dbg !154
  tail call void @llvm.dbg.value(metadata i16 %conv, i64 0, metadata !147, metadata !106), !dbg !155
  %_ucsra = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 3, !dbg !156
  %0 = load i8*, i8** %_ucsra, align 1, !dbg !156, !tbaa !126
  store volatile i8 2, i8* %0, align 1, !dbg !157, !tbaa !116
  %cmp = icmp eq i32 %baud, 57600, !dbg !158
  %cmp3 = icmp ugt i16 %conv, 4095, !dbg !160
  %or.cond = or i1 %cmp, %cmp3, !dbg !162
  %extract.t29 = trunc i32 %div2 to i8, !dbg !162
  %extract3133 = lshr i32 %sub, 9, !dbg !162
  %extract.t32 = trunc i32 %extract3133 to i8, !dbg !162
  br i1 %or.cond, label %if.then, label %if.end, !dbg !162

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_ucsra, align 1, !dbg !163, !tbaa !126
  store volatile i8 0, i8* %1, align 1, !dbg !165, !tbaa !116
  %div5 = udiv i32 2000000, %baud, !dbg !166
  %sub6 = add nsw i32 %div5, -1, !dbg !167
  %div7 = lshr i32 %sub6, 1, !dbg !168
  %extract.t = trunc i32 %div7 to i8, !dbg !169
  %extract35 = lshr i32 %sub6, 9, !dbg !169
  %extract.t30 = trunc i32 %extract35 to i8, !dbg !169
  br label %if.end, !dbg !169

if.end:                                           ; preds = %entry, %if.then
  %baud_setting.0.off0 = phi i8 [ %extract.t, %if.then ], [ %extract.t29, %entry ]
  %baud_setting.0.off8 = phi i8 [ %extract.t30, %if.then ], [ %extract.t32, %entry ]
  tail call void @llvm.dbg.value(metadata i16 undef, i64 0, metadata !147, metadata !106), !dbg !155
  %_ubrrh = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 1, !dbg !170
  %2 = load i8*, i8** %_ubrrh, align 1, !dbg !170, !tbaa !171
  store volatile i8 %baud_setting.0.off8, i8* %2, align 1, !dbg !172, !tbaa !116
  %_ubrrl = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 2, !dbg !173
  %3 = load i8*, i8** %_ubrrl, align 1, !dbg !173, !tbaa !174
  store volatile i8 %baud_setting.0.off0, i8* %3, align 1, !dbg !175, !tbaa !116
  %_written = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 7, !dbg !176
  store i8 0, i8* %_written, align 1, !dbg !177, !tbaa !178
  %_ucsrc = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 5, !dbg !179
  %4 = load i8*, i8** %_ucsrc, align 1, !dbg !179, !tbaa !180
  store volatile i8 %config, i8* %4, align 1, !dbg !181, !tbaa !116
  %_ucsrb = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 4, !dbg !182
  %5 = load i8*, i8** %_ucsrb, align 1, !dbg !182, !tbaa !135
  %6 = load volatile i8, i8* %5, align 1, !dbg !182, !tbaa !116
  %7 = or i8 %6, 16, !dbg !182
  store volatile i8 %7, i8* %5, align 1, !dbg !182, !tbaa !116
  %8 = load i8*, i8** %_ucsrb, align 1, !dbg !183, !tbaa !135
  %9 = load volatile i8, i8* %8, align 1, !dbg !183, !tbaa !116
  %10 = or i8 %9, 8, !dbg !183
  store volatile i8 %10, i8* %8, align 1, !dbg !183, !tbaa !116
  %11 = load i8*, i8** %_ucsrb, align 1, !dbg !184, !tbaa !135
  %12 = load volatile i8, i8* %11, align 1, !dbg !184, !tbaa !116
  %13 = or i8 %12, -128, !dbg !184
  store volatile i8 %13, i8* %11, align 1, !dbg !184, !tbaa !116
  %14 = load i8*, i8** %_ucsrb, align 1, !dbg !185, !tbaa !135
  %15 = load volatile i8, i8* %14, align 1, !dbg !185, !tbaa !116
  %16 = and i8 %15, -33, !dbg !185
  store volatile i8 %16, i8* %14, align 1, !dbg !185, !tbaa !116
  ret void, !dbg !186
}

define void @_ZN14HardwareSerial3endEv(%class.HardwareSerial* %this) local_unnamed_addr #0 align 2 !dbg !187 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !189, metadata !106), !dbg !190
  %0 = bitcast %class.HardwareSerial* %this to void (%class.HardwareSerial*)***, !dbg !191
  %vtable = load void (%class.HardwareSerial*)**, void (%class.HardwareSerial*)*** %0, align 1, !dbg !191, !tbaa !192
  %vfn = getelementptr inbounds void (%class.HardwareSerial*)*, void (%class.HardwareSerial*)** %vtable, i16 5, !dbg !191
  %1 = load void (%class.HardwareSerial*)*, void (%class.HardwareSerial*)** %vfn, align 1, !dbg !191
  tail call void %1(%class.HardwareSerial* %this), !dbg !191
  %_ucsrb = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 4, !dbg !194
  %2 = load i8*, i8** %_ucsrb, align 1, !dbg !194, !tbaa !135
  %3 = load volatile i8, i8* %2, align 1, !dbg !194, !tbaa !116
  %4 = and i8 %3, -17, !dbg !194
  store volatile i8 %4, i8* %2, align 1, !dbg !194, !tbaa !116
  %5 = load i8*, i8** %_ucsrb, align 1, !dbg !195, !tbaa !135
  %6 = load volatile i8, i8* %5, align 1, !dbg !195, !tbaa !116
  %7 = and i8 %6, -9, !dbg !195
  store volatile i8 %7, i8* %5, align 1, !dbg !195, !tbaa !116
  %8 = load i8*, i8** %_ucsrb, align 1, !dbg !196, !tbaa !135
  %9 = load volatile i8, i8* %8, align 1, !dbg !196, !tbaa !116
  %10 = and i8 %9, 127, !dbg !196
  store volatile i8 %10, i8* %8, align 1, !dbg !196, !tbaa !116
  %11 = load i8*, i8** %_ucsrb, align 1, !dbg !197, !tbaa !135
  %12 = load volatile i8, i8* %11, align 1, !dbg !197, !tbaa !116
  %13 = and i8 %12, -33, !dbg !197
  store volatile i8 %13, i8* %11, align 1, !dbg !197, !tbaa !116
  %_rx_buffer_tail = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 9, !dbg !198
  %14 = load volatile i8, i8* %_rx_buffer_tail, align 1, !dbg !198, !tbaa !199
  %_rx_buffer_head = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 8, !dbg !200
  store volatile i8 %14, i8* %_rx_buffer_head, align 1, !dbg !201, !tbaa !202
  ret void, !dbg !203
}

; Function Attrs: nounwind
define i16 @_ZN14HardwareSerial9availableEv(%class.HardwareSerial* %this) unnamed_addr #2 align 2 !dbg !204 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !206, metadata !106), !dbg !207
  %_rx_buffer_head = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 8, !dbg !208
  %0 = load volatile i8, i8* %_rx_buffer_head, align 1, !dbg !208, !tbaa !202
  %conv = zext i8 %0 to i16, !dbg !208
  %_rx_buffer_tail = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 9, !dbg !209
  %1 = load volatile i8, i8* %_rx_buffer_tail, align 1, !dbg !209, !tbaa !199
  %conv2 = zext i8 %1 to i16, !dbg !209
  %sub = sub nsw i16 %conv, %conv2, !dbg !210
  %rem = and i16 %sub, 63, !dbg !211
  ret i16 %rem, !dbg !212
}

; Function Attrs: nounwind
define i16 @_ZN14HardwareSerial4peekEv(%class.HardwareSerial* %this) unnamed_addr #2 align 2 !dbg !213 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !215, metadata !106), !dbg !216
  %_rx_buffer_head = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 8, !dbg !217
  %0 = load volatile i8, i8* %_rx_buffer_head, align 1, !dbg !217, !tbaa !202
  %_rx_buffer_tail = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 9, !dbg !219
  %1 = load volatile i8, i8* %_rx_buffer_tail, align 1, !dbg !219, !tbaa !199
  %cmp = icmp eq i8 %0, %1, !dbg !220
  br i1 %cmp, label %return, label %if.else, !dbg !221

if.else:                                          ; preds = %entry
  %2 = load volatile i8, i8* %_rx_buffer_tail, align 1, !dbg !222, !tbaa !199
  %idxprom = zext i8 %2 to i16, !dbg !224
  %arrayidx = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 12, i16 %idxprom, !dbg !224
  %3 = load i8, i8* %arrayidx, align 1, !dbg !224, !tbaa !116
  %conv4 = zext i8 %3 to i16, !dbg !224
  br label %return, !dbg !225

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi i16 [ %conv4, %if.else ], [ -1, %entry ]
  ret i16 %retval.0, !dbg !226
}

; Function Attrs: nounwind
define i16 @_ZN14HardwareSerial4readEv(%class.HardwareSerial* %this) unnamed_addr #2 align 2 !dbg !227 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !229, metadata !106), !dbg !233
  %_rx_buffer_head = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 8, !dbg !234
  %0 = load volatile i8, i8* %_rx_buffer_head, align 1, !dbg !234, !tbaa !202
  %_rx_buffer_tail = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 9, !dbg !235
  %1 = load volatile i8, i8* %_rx_buffer_tail, align 1, !dbg !235, !tbaa !199
  %cmp = icmp eq i8 %0, %1, !dbg !236
  br i1 %cmp, label %return, label %if.else, !dbg !237

if.else:                                          ; preds = %entry
  %2 = load volatile i8, i8* %_rx_buffer_tail, align 1, !dbg !238, !tbaa !199
  %idxprom = zext i8 %2 to i16, !dbg !239
  %arrayidx = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 12, i16 %idxprom, !dbg !239
  %3 = load i8, i8* %arrayidx, align 1, !dbg !239, !tbaa !116
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !230, metadata !106), !dbg !240
  %4 = load volatile i8, i8* %_rx_buffer_tail, align 1, !dbg !241, !tbaa !199
  %add = add i8 %4, 1, !dbg !242
  %5 = and i8 %add, 63, !dbg !243
  store volatile i8 %5, i8* %_rx_buffer_tail, align 1, !dbg !244, !tbaa !199
  %conv10 = zext i8 %3 to i16, !dbg !245
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi i16 [ %conv10, %if.else ], [ -1, %entry ]
  ret i16 %retval.0, !dbg !246
}

; Function Attrs: nounwind
define i16 @_ZN14HardwareSerial17availableForWriteEv(%class.HardwareSerial* %this) local_unnamed_addr #2 align 2 !dbg !247 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !249, metadata !106), !dbg !252
  %_tx_buffer_head = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 10, !dbg !253
  %0 = load volatile i8, i8* %_tx_buffer_head, align 1, !dbg !253, !tbaa !129
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !250, metadata !106), !dbg !254
  %_tx_buffer_tail = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 11, !dbg !255
  %1 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !255, !tbaa !109
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !251, metadata !106), !dbg !256
  %conv = zext i8 %0 to i16, !dbg !257
  %conv2 = zext i8 %1 to i16, !dbg !259
  %cmp = icmp ugt i8 %1, %0, !dbg !260
  %conv2.sink = select i1 %cmp, i16 %conv2, i16 63, !dbg !261
  %.sink = select i1 %cmp, i16 -1, i16 %conv2, !dbg !261
  %sub7 = sub nsw i16 %conv2.sink, %conv, !dbg !262
  %sub8 = add nsw i16 %sub7, %.sink, !dbg !263
  ret i16 %sub8, !dbg !264
}

; Function Attrs: nounwind
define void @_ZN14HardwareSerial5flushEv(%class.HardwareSerial* %this) unnamed_addr #2 align 2 !dbg !265 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !267, metadata !106), !dbg !268
  %_written = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 7, !dbg !269
  %0 = load i8, i8* %_written, align 1, !dbg !269, !tbaa !178, !range !271
  %tobool = icmp eq i8 %0, 0, !dbg !269
  br i1 %tobool, label %while.end, label %while.cond.preheader, !dbg !272

while.cond.preheader:                             ; preds = %entry
  %_ucsra = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 3, !dbg !273
  %_ucsrb = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 4, !dbg !275
  %_tx_buffer_tail.i = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 11, !dbg !277
  %_udr.i = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 6, !dbg !282
  %_tx_buffer_head.i = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 10, !dbg !283
  br label %while.cond, !dbg !275

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %1 = load i8*, i8** %_ucsrb, align 1, !dbg !275, !tbaa !135
  %2 = load volatile i8, i8* %1, align 1, !dbg !275, !tbaa !116
  %3 = and i8 %2, 32, !dbg !275
  %tobool2 = icmp eq i8 %3, 0, !dbg !275
  br i1 %tobool2, label %lor.rhs, label %while.body, !dbg !284

lor.rhs:                                          ; preds = %while.cond
  %4 = load i8*, i8** %_ucsra, align 1, !dbg !273, !tbaa !126
  %5 = load volatile i8, i8* %4, align 1, !dbg !273, !tbaa !116
  %6 = and i8 %5, 64, !dbg !273
  %lnot = icmp eq i8 %6, 0, !dbg !273
  br i1 %lnot, label %while.body, label %while.end.loopexit, !dbg !285

while.body:                                       ; preds = %while.cond, %lor.rhs
  %7 = load volatile i8, i8* inttoptr (i16 95 to i8*), align 1, !dbg !287, !tbaa !116
  %tobool8 = icmp slt i8 %7, 0, !dbg !287
  br i1 %tobool8, label %while.cond.backedge, label %land.lhs.true, !dbg !288

while.cond.backedge:                              ; preds = %while.body, %land.lhs.true, %if.then13, %if.then18, %if.then.i
  br label %while.cond, !dbg !275, !llvm.loop !289

land.lhs.true:                                    ; preds = %while.body
  %8 = load volatile i8, i8* %1, align 1, !dbg !292, !tbaa !116
  %9 = and i8 %8, 32, !dbg !292
  %tobool12 = icmp eq i8 %9, 0, !dbg !292
  br i1 %tobool12, label %while.cond.backedge, label %if.then13, !dbg !294

if.then13:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %_ucsra, align 1, !dbg !296, !tbaa !126
  %11 = load volatile i8, i8* %10, align 1, !dbg !296, !tbaa !116
  %12 = and i8 %11, 32, !dbg !296
  %tobool17 = icmp eq i8 %12, 0, !dbg !296
  br i1 %tobool17, label %while.cond.backedge, label %if.then18, !dbg !297

if.then18:                                        ; preds = %if.then13
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !103, metadata !106), !dbg !298
  %13 = load volatile i8, i8* %_tx_buffer_tail.i, align 1, !dbg !277, !tbaa !109
  %idxprom.i = zext i8 %13 to i16, !dbg !299
  %arrayidx.i = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 13, i16 %idxprom.i, !dbg !299
  %14 = load i8, i8* %arrayidx.i, align 1, !dbg !299, !tbaa !116
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !105, metadata !106), !dbg !300
  %15 = load volatile i8, i8* %_tx_buffer_tail.i, align 1, !dbg !301, !tbaa !109
  %add.i = add i8 %15, 1, !dbg !302
  %rem.i = and i8 %add.i, 63, !dbg !303
  store volatile i8 %rem.i, i8* %_tx_buffer_tail.i, align 1, !dbg !304, !tbaa !109
  %16 = load i8*, i8** %_udr.i, align 1, !dbg !282, !tbaa !123
  store volatile i8 %14, i8* %16, align 1, !dbg !305, !tbaa !116
  %17 = load i8*, i8** %_ucsra, align 1, !dbg !306, !tbaa !126
  %18 = load volatile i8, i8* %17, align 1, !dbg !306, !tbaa !116
  %19 = or i8 %18, 64, !dbg !306
  store volatile i8 %19, i8* %17, align 1, !dbg !306, !tbaa !116
  %20 = load volatile i8, i8* %_tx_buffer_head.i, align 1, !dbg !283, !tbaa !129
  %21 = load volatile i8, i8* %_tx_buffer_tail.i, align 1, !dbg !307, !tbaa !109
  %cmp.i = icmp eq i8 %20, %21, !dbg !308
  br i1 %cmp.i, label %if.then.i, label %while.cond.backedge, !dbg !309

if.then.i:                                        ; preds = %if.then18
  %22 = load i8*, i8** %_ucsrb, align 1, !dbg !310, !tbaa !135
  %23 = load volatile i8, i8* %22, align 1, !dbg !310, !tbaa !116
  %24 = and i8 %23, -33, !dbg !310
  store volatile i8 %24, i8* %22, align 1, !dbg !310, !tbaa !116
  br label %while.cond.backedge, !dbg !311

while.end.loopexit:                               ; preds = %lor.rhs
  br label %while.end, !dbg !312

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret void, !dbg !312
}

; Function Attrs: nounwind
define i16 @_ZN14HardwareSerial5writeEh(%class.HardwareSerial* %this, i8 zeroext %c) unnamed_addr #2 align 2 !dbg !313 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !315, metadata !106), !dbg !318
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !316, metadata !106), !dbg !319
  %_written = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 7, !dbg !320
  store i8 1, i8* %_written, align 1, !dbg !321, !tbaa !178
  %_tx_buffer_head = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 10, !dbg !322
  %0 = load volatile i8, i8* %_tx_buffer_head, align 1, !dbg !322, !tbaa !129
  %_tx_buffer_tail = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 11, !dbg !324
  %1 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !324, !tbaa !109
  %cmp = icmp eq i8 %0, %1, !dbg !325
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !326

land.lhs.true:                                    ; preds = %entry
  %_ucsra = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 3, !dbg !327
  %2 = load i8*, i8** %_ucsra, align 1, !dbg !327, !tbaa !126
  %3 = load volatile i8, i8* %2, align 1, !dbg !327, !tbaa !116
  %4 = and i8 %3, 32, !dbg !327
  %tobool = icmp eq i8 %4, 0, !dbg !327
  br i1 %tobool, label %if.end, label %if.then, !dbg !329

if.then:                                          ; preds = %land.lhs.true
  %_udr = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 6, !dbg !331
  %5 = load i8*, i8** %_udr, align 1, !dbg !331, !tbaa !123
  store volatile i8 %c, i8* %5, align 1, !dbg !333, !tbaa !116
  br label %return, !dbg !334

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load volatile i8, i8* %_tx_buffer_head, align 1, !dbg !335, !tbaa !129
  %add = add i8 %6, 1, !dbg !336
  %rem = and i8 %add, 63, !dbg !337
  tail call void @llvm.dbg.value(metadata i8 %rem, i64 0, metadata !317, metadata !106), !dbg !338
  %7 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !339, !tbaa !109
  %cmp1335 = icmp eq i8 %rem, %7, !dbg !340
  br i1 %cmp1335, label %while.body.lr.ph, label %if.end.while.end_crit_edge, !dbg !341

if.end.while.end_crit_edge:                       ; preds = %if.end
  %.pre = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 4, !dbg !342
  br label %while.end, !dbg !341

while.body.lr.ph:                                 ; preds = %if.end
  %_ucsra18 = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 3, !dbg !343
  %_udr.i = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 6, !dbg !348
  %_ucsrb.i = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 4, !dbg !350
  br label %while.body, !dbg !341

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %8 = load volatile i8, i8* inttoptr (i16 95 to i8*), align 1, !dbg !351, !tbaa !116
  %tobool16 = icmp slt i8 %8, 0, !dbg !351
  br i1 %tobool16, label %while.cond.backedge, label %if.then17, !dbg !352

while.cond.backedge:                              ; preds = %while.body, %if.then17, %if.then22, %if.then.i
  %9 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !339, !tbaa !109
  %cmp13 = icmp eq i8 %rem, %9, !dbg !340
  br i1 %cmp13, label %while.body, label %while.end.loopexit, !dbg !341, !llvm.loop !353

if.then17:                                        ; preds = %while.body
  %10 = load i8*, i8** %_ucsra18, align 1, !dbg !343, !tbaa !126
  %11 = load volatile i8, i8* %10, align 1, !dbg !343, !tbaa !116
  %12 = and i8 %11, 32, !dbg !343
  %tobool21 = icmp eq i8 %12, 0, !dbg !343
  br i1 %tobool21, label %while.cond.backedge, label %if.then22, !dbg !356

if.then22:                                        ; preds = %if.then17
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* %this, i64 0, metadata !103, metadata !106), !dbg !357
  %13 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !358, !tbaa !109
  %idxprom.i = zext i8 %13 to i16, !dbg !359
  %arrayidx.i = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 13, i16 %idxprom.i, !dbg !359
  %14 = load i8, i8* %arrayidx.i, align 1, !dbg !359, !tbaa !116
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !105, metadata !106), !dbg !360
  %15 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !361, !tbaa !109
  %add.i = add i8 %15, 1, !dbg !362
  %rem.i = and i8 %add.i, 63, !dbg !363
  store volatile i8 %rem.i, i8* %_tx_buffer_tail, align 1, !dbg !364, !tbaa !109
  %16 = load i8*, i8** %_udr.i, align 1, !dbg !348, !tbaa !123
  store volatile i8 %14, i8* %16, align 1, !dbg !365, !tbaa !116
  %17 = load i8*, i8** %_ucsra18, align 1, !dbg !366, !tbaa !126
  %18 = load volatile i8, i8* %17, align 1, !dbg !366, !tbaa !116
  %19 = or i8 %18, 64, !dbg !366
  store volatile i8 %19, i8* %17, align 1, !dbg !366, !tbaa !116
  %20 = load volatile i8, i8* %_tx_buffer_head, align 1, !dbg !367, !tbaa !129
  %21 = load volatile i8, i8* %_tx_buffer_tail, align 1, !dbg !368, !tbaa !109
  %cmp.i = icmp eq i8 %20, %21, !dbg !369
  br i1 %cmp.i, label %if.then.i, label %while.cond.backedge, !dbg !370

if.then.i:                                        ; preds = %if.then22
  %22 = load i8*, i8** %_ucsrb.i, align 1, !dbg !350, !tbaa !135
  %23 = load volatile i8, i8* %22, align 1, !dbg !350, !tbaa !116
  %24 = and i8 %23, -33, !dbg !350
  store volatile i8 %24, i8* %22, align 1, !dbg !350, !tbaa !116
  br label %while.cond.backedge, !dbg !371

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end, !dbg !372

while.end:                                        ; preds = %while.end.loopexit, %if.end.while.end_crit_edge
  %_ucsrb.pre-phi = phi i8** [ %.pre, %if.end.while.end_crit_edge ], [ %_ucsrb.i, %while.end.loopexit ], !dbg !342
  %25 = load volatile i8, i8* %_tx_buffer_head, align 1, !dbg !372, !tbaa !129
  %idxprom = zext i8 %25 to i16, !dbg !373
  %arrayidx = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* %this, i16 0, i32 13, i16 %idxprom, !dbg !373
  store i8 %c, i8* %arrayidx, align 1, !dbg !374, !tbaa !116
  store volatile i8 %rem, i8* %_tx_buffer_head, align 1, !dbg !375, !tbaa !129
  br label %return

return:                                           ; preds = %while.end, %if.then
  %_ucsrb.sink = phi i8** [ %_ucsrb.pre-phi, %while.end ], [ %_ucsra, %if.then ]
  %.sink34 = phi i8 [ 32, %while.end ], [ 64, %if.then ]
  %26 = load i8*, i8** %_ucsrb.sink, align 1, !dbg !342, !tbaa !376
  %27 = load volatile i8, i8* %26, align 1, !dbg !342, !tbaa !116
  %28 = or i8 %27, %.sink34, !dbg !342
  store volatile i8 %28, i8* %26, align 1, !dbg !342, !tbaa !116
  ret i16 1, !dbg !377
}

declare i16 @_ZN5Print5writeEPKhj(%class.Print*, i8*, i16) unnamed_addr #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "Arduino/HardwareSerial.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!2 = !{}
!3 = !{!4, !9, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 16)
!5 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 126, baseType: !8)
!7 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdint.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 128, baseType: !10)
!10 = !DIBasicType(name: "unsigned int", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "rx_buffer_index_t", file: !12, line: 64, baseType: !6)
!12 = !DIFile(filename: "Arduino/HardwareSerial.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!16 = distinct !DISubprogram(name: "serialEventRun", linkageName: "_Z14serialEventRunv", scope: !1, file: !1, line: 63, type: !17, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocation(line: 66, column: 25, scope: !20)
!20 = distinct !DILexicalBlock(scope: !16, file: !1, line: 66, column: 7)
!21 = !DILocation(line: 66, column: 43, scope: !22)
!22 = !DILexicalBlockFile(scope: !20, file: !1, discriminator: 2)
!23 = !DILocation(line: 66, column: 7, scope: !24)
!24 = !DILexicalBlockFile(scope: !16, file: !1, discriminator: 2)
!25 = !DILocation(line: 66, column: 64, scope: !26)
!26 = !DILexicalBlockFile(scope: !20, file: !1, discriminator: 3)
!27 = !DILocation(line: 77, column: 1, scope: !16)
!28 = distinct !DISubprogram(name: "_tx_udr_empty_irq", linkageName: "_ZN14HardwareSerial17_tx_udr_empty_irqEv", scope: !29, file: !1, line: 81, type: !67, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !99, variables: !102)
!29 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "HardwareSerial", file: !12, line: 93, size: 1256, elements: !30, vtableHolder: !100, identifier: "_ZTS14HardwareSerial")
!30 = !{!31, !34, !36, !37, !38, !39, !40, !41, !43, !45, !46, !49, !50, !54, !55, !59, !63, !66, !69, !73, !74, !75, !76, !77, !82, !85, !89, !92, !95, !98, !99}
!31 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !29, baseType: !32, flags: DIFlagPublic)
!32 = !DICompositeType(tag: DW_TAG_class_type, name: "Stream", file: !33, line: 49, size: 96, flags: DIFlagFwdDecl, identifier: "_ZTS6Stream")
!33 = !DIFile(filename: "Arduino/Stream.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_ubrrh", scope: !29, file: !12, line: 96, baseType: !35, size: 16, offset: 96, flags: DIFlagProtected)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_ubrrl", scope: !29, file: !12, line: 97, baseType: !35, size: 16, offset: 112, flags: DIFlagProtected)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_ucsra", scope: !29, file: !12, line: 98, baseType: !35, size: 16, offset: 128, flags: DIFlagProtected)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_ucsrb", scope: !29, file: !12, line: 99, baseType: !35, size: 16, offset: 144, flags: DIFlagProtected)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_ucsrc", scope: !29, file: !12, line: 100, baseType: !35, size: 16, offset: 160, flags: DIFlagProtected)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_udr", scope: !29, file: !12, line: 101, baseType: !35, size: 16, offset: 176, flags: DIFlagProtected)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_written", scope: !29, file: !12, line: 103, baseType: !42, size: 8, offset: 192, flags: DIFlagProtected)
!42 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_buffer_head", scope: !29, file: !12, line: 105, baseType: !44, size: 8, offset: 200, flags: DIFlagProtected)
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_buffer_tail", scope: !29, file: !12, line: 106, baseType: !44, size: 8, offset: 208, flags: DIFlagProtected)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_buffer_head", scope: !29, file: !12, line: 107, baseType: !47, size: 8, offset: 216, flags: DIFlagProtected)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "tx_buffer_index_t", file: !12, line: 59, baseType: !6)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_buffer_tail", scope: !29, file: !12, line: 108, baseType: !47, size: 8, offset: 224, flags: DIFlagProtected)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_buffer", scope: !29, file: !12, line: 113, baseType: !51, size: 512, offset: 232, flags: DIFlagProtected)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_buffer", scope: !29, file: !12, line: 114, baseType: !51, size: 512, offset: 744, flags: DIFlagProtected)
!55 = !DISubprogram(name: "HardwareSerial", scope: !29, file: !12, line: 117, type: !56, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !4, !4, !4, !4, !4, !4}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!59 = !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEm", scope: !29, file: !12, line: 121, type: !60, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !58, !62}
!62 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEmh", scope: !29, file: !12, line: 122, type: !64, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !58, !62, !6}
!66 = !DISubprogram(name: "end", linkageName: "_ZN14HardwareSerial3endEv", scope: !29, file: !12, line: 123, type: !67, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !58}
!69 = !DISubprogram(name: "available", linkageName: "_ZN14HardwareSerial9availableEv", scope: !29, file: !12, line: 124, type: !70, isLocal: false, isDefinition: false, scopeLine: 124, containingType: !29, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !58}
!72 = !DIBasicType(name: "int", size: 16, encoding: DW_ATE_signed)
!73 = !DISubprogram(name: "peek", linkageName: "_ZN14HardwareSerial4peekEv", scope: !29, file: !12, line: 125, type: !70, isLocal: false, isDefinition: false, scopeLine: 125, containingType: !29, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!74 = !DISubprogram(name: "read", linkageName: "_ZN14HardwareSerial4readEv", scope: !29, file: !12, line: 126, type: !70, isLocal: false, isDefinition: false, scopeLine: 126, containingType: !29, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!75 = !DISubprogram(name: "availableForWrite", linkageName: "_ZN14HardwareSerial17availableForWriteEv", scope: !29, file: !12, line: 127, type: !70, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!76 = !DISubprogram(name: "flush", linkageName: "_ZN14HardwareSerial5flushEv", scope: !29, file: !12, line: 128, type: !67, isLocal: false, isDefinition: false, scopeLine: 128, containingType: !29, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!77 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEh", scope: !29, file: !12, line: 129, type: !78, isLocal: false, isDefinition: false, scopeLine: 129, containingType: !29, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !58, !6}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 62, baseType: !10)
!81 = !DIFile(filename: "/Users/dylan/projects/builds/llvm/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!82 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEm", scope: !29, file: !12, line: 130, type: !83, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!83 = !DISubroutineType(types: !84)
!84 = !{!80, !58, !62}
!85 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEl", scope: !29, file: !12, line: 131, type: !86, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!86 = !DISubroutineType(types: !87)
!87 = !{!80, !58, !88}
!88 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!89 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEj", scope: !29, file: !12, line: 132, type: !90, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!90 = !DISubroutineType(types: !91)
!91 = !{!80, !58, !10}
!92 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEi", scope: !29, file: !12, line: 133, type: !93, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!93 = !DISubroutineType(types: !94)
!94 = !{!80, !58, !72}
!95 = !DISubprogram(name: "operator bool", linkageName: "_ZN14HardwareSerialcvbEv", scope: !29, file: !12, line: 135, type: !96, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!96 = !DISubroutineType(types: !97)
!97 = !{!42, !58}
!98 = !DISubprogram(name: "_rx_complete_irq", linkageName: "_ZN14HardwareSerial16_rx_complete_irqEv", scope: !29, file: !12, line: 138, type: !67, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!99 = !DISubprogram(name: "_tx_udr_empty_irq", linkageName: "_ZN14HardwareSerial17_tx_udr_empty_irqEv", scope: !29, file: !12, line: 139, type: !67, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!100 = !DICompositeType(tag: DW_TAG_class_type, name: "Print", file: !101, line: 34, size: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5Print")
!101 = !DIFile(filename: "Arduino/Print.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!102 = !{!103, !105}
!103 = !DILocalVariable(name: "this", arg: 1, scope: !28, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 16)
!105 = !DILocalVariable(name: "c", scope: !28, file: !1, line: 85, type: !8)
!106 = !DIExpression()
!107 = !DILocation(line: 0, scope: !28)
!108 = !DILocation(line: 85, column: 32, scope: !28)
!109 = !{!110, !112, i64 28}
!110 = !{!"_ZTS14HardwareSerial", !111, i64 12, !111, i64 14, !111, i64 16, !111, i64 18, !111, i64 20, !111, i64 22, !114, i64 24, !112, i64 25, !112, i64 26, !112, i64 27, !112, i64 28, !112, i64 29, !112, i64 93}
!111 = !{!"any pointer", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C++ TBAA"}
!114 = !{!"bool", !112, i64 0}
!115 = !DILocation(line: 85, column: 21, scope: !28)
!116 = !{!112, !112, i64 0}
!117 = !DILocation(line: 85, column: 17, scope: !28)
!118 = !DILocation(line: 86, column: 22, scope: !28)
!119 = !DILocation(line: 86, column: 38, scope: !28)
!120 = !DILocation(line: 86, column: 43, scope: !28)
!121 = !DILocation(line: 86, column: 19, scope: !28)
!122 = !DILocation(line: 88, column: 4, scope: !28)
!123 = !{!110, !111, i64 22}
!124 = !DILocation(line: 88, column: 9, scope: !28)
!125 = !DILocation(line: 93, column: 3, scope: !28)
!126 = !{!110, !111, i64 16}
!127 = !DILocation(line: 95, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !28, file: !1, line: 95, column: 7)
!129 = !{!110, !112, i64 27}
!130 = !DILocation(line: 95, column: 26, scope: !128)
!131 = !DILocation(line: 95, column: 23, scope: !128)
!132 = !DILocation(line: 95, column: 7, scope: !28)
!133 = !DILocation(line: 97, column: 5, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 95, column: 43)
!135 = !{!110, !111, i64 18}
!136 = !DILocation(line: 98, column: 3, scope: !134)
!137 = !DILocation(line: 99, column: 1, scope: !28)
!138 = distinct !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEmh", scope: !29, file: !1, line: 103, type: !139, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !63, variables: !143)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !58, !62, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !142, line: 126, baseType: !6)
!142 = !DIFile(filename: "Arduino/Arduino.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!143 = !{!144, !145, !146, !147}
!144 = !DILocalVariable(name: "this", arg: 1, scope: !138, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!145 = !DILocalVariable(name: "baud", arg: 2, scope: !138, file: !1, line: 103, type: !62)
!146 = !DILocalVariable(name: "config", arg: 3, scope: !138, file: !1, line: 103, type: !141)
!147 = !DILocalVariable(name: "baud_setting", scope: !138, file: !1, line: 106, type: !9)
!148 = !DILocation(line: 0, scope: !138)
!149 = !DILocation(line: 103, column: 42, scope: !138)
!150 = !DILocation(line: 103, column: 53, scope: !138)
!151 = !DILocation(line: 106, column: 38, scope: !138)
!152 = !DILocation(line: 106, column: 45, scope: !138)
!153 = !DILocation(line: 106, column: 50, scope: !138)
!154 = !DILocation(line: 106, column: 27, scope: !138)
!155 = !DILocation(line: 106, column: 12, scope: !138)
!156 = !DILocation(line: 107, column: 4, scope: !138)
!157 = !DILocation(line: 107, column: 11, scope: !138)
!158 = !DILocation(line: 114, column: 39, scope: !159)
!159 = distinct !DILexicalBlock(scope: !138, file: !1, line: 114, column: 7)
!160 = !DILocation(line: 114, column: 67, scope: !161)
!161 = !DILexicalBlockFile(scope: !159, file: !1, discriminator: 1)
!162 = !DILocation(line: 114, column: 50, scope: !159)
!163 = !DILocation(line: 116, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 115, column: 3)
!165 = !DILocation(line: 116, column: 13, scope: !164)
!166 = !DILocation(line: 117, column: 31, scope: !164)
!167 = !DILocation(line: 117, column: 38, scope: !164)
!168 = !DILocation(line: 117, column: 43, scope: !164)
!169 = !DILocation(line: 118, column: 3, scope: !164)
!170 = !DILocation(line: 121, column: 4, scope: !138)
!171 = !{!110, !111, i64 12}
!172 = !DILocation(line: 121, column: 11, scope: !138)
!173 = !DILocation(line: 122, column: 4, scope: !138)
!174 = !{!110, !111, i64 14}
!175 = !DILocation(line: 122, column: 11, scope: !138)
!176 = !DILocation(line: 124, column: 3, scope: !138)
!177 = !DILocation(line: 124, column: 12, scope: !138)
!178 = !{!110, !114, i64 24}
!179 = !DILocation(line: 130, column: 4, scope: !138)
!180 = !{!110, !111, i64 20}
!181 = !DILocation(line: 130, column: 11, scope: !138)
!182 = !DILocation(line: 132, column: 3, scope: !138)
!183 = !DILocation(line: 133, column: 3, scope: !138)
!184 = !DILocation(line: 134, column: 3, scope: !138)
!185 = !DILocation(line: 135, column: 3, scope: !138)
!186 = !DILocation(line: 136, column: 1, scope: !138)
!187 = distinct !DISubprogram(name: "end", linkageName: "_ZN14HardwareSerial3endEv", scope: !29, file: !1, line: 138, type: !67, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !66, variables: !188)
!188 = !{!189}
!189 = !DILocalVariable(name: "this", arg: 1, scope: !187, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!190 = !DILocation(line: 0, scope: !187)
!191 = !DILocation(line: 141, column: 3, scope: !187)
!192 = !{!193, !193, i64 0}
!193 = !{!"vtable pointer", !113, i64 0}
!194 = !DILocation(line: 143, column: 3, scope: !187)
!195 = !DILocation(line: 144, column: 3, scope: !187)
!196 = !DILocation(line: 145, column: 3, scope: !187)
!197 = !DILocation(line: 146, column: 3, scope: !187)
!198 = !DILocation(line: 149, column: 21, scope: !187)
!199 = !{!110, !112, i64 26}
!200 = !DILocation(line: 149, column: 3, scope: !187)
!201 = !DILocation(line: 149, column: 19, scope: !187)
!202 = !{!110, !112, i64 25}
!203 = !DILocation(line: 150, column: 1, scope: !187)
!204 = distinct !DISubprogram(name: "available", linkageName: "_ZN14HardwareSerial9availableEv", scope: !29, file: !1, line: 152, type: !70, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !69, variables: !205)
!205 = !{!206}
!206 = !DILocalVariable(name: "this", arg: 1, scope: !204, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!207 = !DILocation(line: 0, scope: !204)
!208 = !DILocation(line: 154, column: 50, scope: !204)
!209 = !DILocation(line: 154, column: 68, scope: !204)
!210 = !DILocation(line: 154, column: 66, scope: !204)
!211 = !DILocation(line: 154, column: 86, scope: !204)
!212 = !DILocation(line: 154, column: 3, scope: !204)
!213 = distinct !DISubprogram(name: "peek", linkageName: "_ZN14HardwareSerial4peekEv", scope: !29, file: !1, line: 157, type: !70, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !73, variables: !214)
!214 = !{!215}
!215 = !DILocalVariable(name: "this", arg: 1, scope: !213, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!216 = !DILocation(line: 0, scope: !213)
!217 = !DILocation(line: 159, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 159, column: 7)
!219 = !DILocation(line: 159, column: 26, scope: !218)
!220 = !DILocation(line: 159, column: 23, scope: !218)
!221 = !DILocation(line: 159, column: 7, scope: !213)
!222 = !DILocation(line: 162, column: 23, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !1, line: 161, column: 10)
!224 = !DILocation(line: 162, column: 12, scope: !223)
!225 = !DILocation(line: 162, column: 5, scope: !223)
!226 = !DILocation(line: 164, column: 1, scope: !213)
!227 = distinct !DISubprogram(name: "read", linkageName: "_ZN14HardwareSerial4readEv", scope: !29, file: !1, line: 166, type: !70, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !74, variables: !228)
!228 = !{!229, !230}
!229 = !DILocalVariable(name: "this", arg: 1, scope: !227, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!230 = !DILocalVariable(name: "c", scope: !231, file: !1, line: 172, type: !8)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 171, column: 10)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 169, column: 7)
!233 = !DILocation(line: 0, scope: !227)
!234 = !DILocation(line: 169, column: 7, scope: !232)
!235 = !DILocation(line: 169, column: 26, scope: !232)
!236 = !DILocation(line: 169, column: 23, scope: !232)
!237 = !DILocation(line: 169, column: 7, scope: !227)
!238 = !DILocation(line: 172, column: 34, scope: !231)
!239 = !DILocation(line: 172, column: 23, scope: !231)
!240 = !DILocation(line: 172, column: 19, scope: !231)
!241 = !DILocation(line: 173, column: 43, scope: !231)
!242 = !DILocation(line: 173, column: 59, scope: !231)
!243 = !DILocation(line: 173, column: 64, scope: !231)
!244 = !DILocation(line: 173, column: 21, scope: !231)
!245 = !DILocation(line: 174, column: 12, scope: !231)
!246 = !DILocation(line: 176, column: 1, scope: !227)
!247 = distinct !DISubprogram(name: "availableForWrite", linkageName: "_ZN14HardwareSerial17availableForWriteEv", scope: !29, file: !1, line: 178, type: !70, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !75, variables: !248)
!248 = !{!249, !250, !251}
!249 = !DILocalVariable(name: "this", arg: 1, scope: !247, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!250 = !DILocalVariable(name: "head", scope: !247, file: !1, line: 184, type: !48)
!251 = !DILocalVariable(name: "tail", scope: !247, file: !1, line: 185, type: !48)
!252 = !DILocation(line: 0, scope: !247)
!253 = !DILocation(line: 184, column: 28, scope: !247)
!254 = !DILocation(line: 184, column: 21, scope: !247)
!255 = !DILocation(line: 185, column: 28, scope: !247)
!256 = !DILocation(line: 185, column: 21, scope: !247)
!257 = !DILocation(line: 189, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !247, file: !1, line: 189, column: 7)
!259 = !DILocation(line: 189, column: 15, scope: !258)
!260 = !DILocation(line: 189, column: 12, scope: !258)
!261 = !DILocation(line: 189, column: 7, scope: !247)
!262 = !DILocation(line: 190, column: 15, scope: !247)
!263 = !DILocation(line: 190, column: 22, scope: !247)
!264 = !DILocation(line: 191, column: 1, scope: !247)
!265 = distinct !DISubprogram(name: "flush", linkageName: "_ZN14HardwareSerial5flushEv", scope: !29, file: !1, line: 193, type: !67, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !76, variables: !266)
!266 = !{!267}
!267 = !DILocalVariable(name: "this", arg: 1, scope: !265, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!268 = !DILocation(line: 0, scope: !265)
!269 = !DILocation(line: 198, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !1, line: 198, column: 7)
!271 = !{i8 0, i8 2}
!272 = !DILocation(line: 198, column: 7, scope: !265)
!273 = !DILocation(line: 201, column: 41, scope: !274)
!274 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 2)
!275 = !DILocation(line: 201, column: 10, scope: !276)
!276 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 1)
!277 = !DILocation(line: 85, column: 32, scope: !28, inlinedAt: !278)
!278 = distinct !DILocation(line: 207, column: 4, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 206, column: 6)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 202, column: 9)
!281 = distinct !DILexicalBlock(scope: !265, file: !1, line: 201, column: 70)
!282 = !DILocation(line: 88, column: 4, scope: !28, inlinedAt: !278)
!283 = !DILocation(line: 95, column: 7, scope: !128, inlinedAt: !278)
!284 = !DILocation(line: 201, column: 38, scope: !276)
!285 = !DILocation(line: 201, column: 3, scope: !286)
!286 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 3)
!287 = !DILocation(line: 202, column: 9, scope: !280)
!288 = !DILocation(line: 202, column: 36, scope: !280)
!289 = distinct !{!289, !290, !291}
!290 = !DILocation(line: 201, column: 3, scope: !265)
!291 = !DILocation(line: 208, column: 3, scope: !265)
!292 = !DILocation(line: 202, column: 39, scope: !293)
!293 = !DILexicalBlockFile(scope: !280, file: !1, discriminator: 1)
!294 = !DILocation(line: 202, column: 9, scope: !295)
!295 = !DILexicalBlockFile(scope: !281, file: !1, discriminator: 1)
!296 = !DILocation(line: 206, column: 6, scope: !279)
!297 = !DILocation(line: 206, column: 6, scope: !280)
!298 = !DILocation(line: 0, scope: !28, inlinedAt: !278)
!299 = !DILocation(line: 85, column: 21, scope: !28, inlinedAt: !278)
!300 = !DILocation(line: 85, column: 17, scope: !28, inlinedAt: !278)
!301 = !DILocation(line: 86, column: 22, scope: !28, inlinedAt: !278)
!302 = !DILocation(line: 86, column: 38, scope: !28, inlinedAt: !278)
!303 = !DILocation(line: 86, column: 43, scope: !28, inlinedAt: !278)
!304 = !DILocation(line: 86, column: 19, scope: !28, inlinedAt: !278)
!305 = !DILocation(line: 88, column: 9, scope: !28, inlinedAt: !278)
!306 = !DILocation(line: 93, column: 3, scope: !28, inlinedAt: !278)
!307 = !DILocation(line: 95, column: 26, scope: !128, inlinedAt: !278)
!308 = !DILocation(line: 95, column: 23, scope: !128, inlinedAt: !278)
!309 = !DILocation(line: 95, column: 7, scope: !28, inlinedAt: !278)
!310 = !DILocation(line: 97, column: 5, scope: !134, inlinedAt: !278)
!311 = !DILocation(line: 98, column: 3, scope: !134, inlinedAt: !278)
!312 = !DILocation(line: 211, column: 1, scope: !265)
!313 = distinct !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEh", scope: !29, file: !1, line: 213, type: !78, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !0, declaration: !77, variables: !314)
!314 = !{!315, !316, !317}
!315 = !DILocalVariable(name: "this", arg: 1, scope: !313, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!316 = !DILocalVariable(name: "c", arg: 2, scope: !313, file: !1, line: 213, type: !6)
!317 = !DILocalVariable(name: "i", scope: !313, file: !1, line: 225, type: !48)
!318 = !DILocation(line: 0, scope: !313)
!319 = !DILocation(line: 213, column: 38, scope: !313)
!320 = !DILocation(line: 215, column: 3, scope: !313)
!321 = !DILocation(line: 215, column: 12, scope: !313)
!322 = !DILocation(line: 220, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !313, file: !1, line: 220, column: 7)
!324 = !DILocation(line: 220, column: 26, scope: !323)
!325 = !DILocation(line: 220, column: 23, scope: !323)
!326 = !DILocation(line: 220, column: 42, scope: !323)
!327 = !DILocation(line: 220, column: 45, scope: !328)
!328 = !DILexicalBlockFile(scope: !323, file: !1, discriminator: 1)
!329 = !DILocation(line: 220, column: 7, scope: !330)
!330 = !DILexicalBlockFile(scope: !313, file: !1, discriminator: 1)
!331 = !DILocation(line: 221, column: 6, scope: !332)
!332 = distinct !DILexicalBlock(scope: !323, file: !1, line: 220, column: 73)
!333 = !DILocation(line: 221, column: 11, scope: !332)
!334 = !DILocation(line: 223, column: 5, scope: !332)
!335 = !DILocation(line: 225, column: 26, scope: !313)
!336 = !DILocation(line: 225, column: 42, scope: !313)
!337 = !DILocation(line: 225, column: 47, scope: !313)
!338 = !DILocation(line: 225, column: 21, scope: !313)
!339 = !DILocation(line: 229, column: 15, scope: !330)
!340 = !DILocation(line: 229, column: 12, scope: !330)
!341 = !DILocation(line: 229, column: 3, scope: !330)
!342 = !DILocation(line: 245, column: 3, scope: !313)
!343 = !DILocation(line: 235, column: 10, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 235, column: 10)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 230, column: 37)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 230, column: 9)
!347 = distinct !DILexicalBlock(scope: !313, file: !1, line: 229, column: 32)
!348 = !DILocation(line: 88, column: 4, scope: !28, inlinedAt: !349)
!349 = distinct !DILocation(line: 236, column: 2, scope: !344)
!350 = !DILocation(line: 97, column: 5, scope: !134, inlinedAt: !349)
!351 = !DILocation(line: 230, column: 9, scope: !346)
!352 = !DILocation(line: 230, column: 9, scope: !347)
!353 = distinct !{!353, !354, !355}
!354 = !DILocation(line: 229, column: 3, scope: !313)
!355 = !DILocation(line: 240, column: 3, scope: !313)
!356 = !DILocation(line: 235, column: 10, scope: !345)
!357 = !DILocation(line: 0, scope: !28, inlinedAt: !349)
!358 = !DILocation(line: 85, column: 32, scope: !28, inlinedAt: !349)
!359 = !DILocation(line: 85, column: 21, scope: !28, inlinedAt: !349)
!360 = !DILocation(line: 85, column: 17, scope: !28, inlinedAt: !349)
!361 = !DILocation(line: 86, column: 22, scope: !28, inlinedAt: !349)
!362 = !DILocation(line: 86, column: 38, scope: !28, inlinedAt: !349)
!363 = !DILocation(line: 86, column: 43, scope: !28, inlinedAt: !349)
!364 = !DILocation(line: 86, column: 19, scope: !28, inlinedAt: !349)
!365 = !DILocation(line: 88, column: 9, scope: !28, inlinedAt: !349)
!366 = !DILocation(line: 93, column: 3, scope: !28, inlinedAt: !349)
!367 = !DILocation(line: 95, column: 7, scope: !128, inlinedAt: !349)
!368 = !DILocation(line: 95, column: 26, scope: !128, inlinedAt: !349)
!369 = !DILocation(line: 95, column: 23, scope: !128, inlinedAt: !349)
!370 = !DILocation(line: 95, column: 7, scope: !28, inlinedAt: !349)
!371 = !DILocation(line: 98, column: 3, scope: !134, inlinedAt: !349)
!372 = !DILocation(line: 242, column: 14, scope: !313)
!373 = !DILocation(line: 242, column: 3, scope: !313)
!374 = !DILocation(line: 242, column: 31, scope: !313)
!375 = !DILocation(line: 243, column: 19, scope: !313)
!376 = !{!111, !111, i64 0}
!377 = !DILocation(line: 248, column: 1, scope: !313)
