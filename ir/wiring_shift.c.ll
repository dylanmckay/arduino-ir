; ModuleID = 'Arduino/wiring_shift.c'
source_filename = "Arduino/wiring_shift.c"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

define zeroext i8 @shiftIn(i8 zeroext %dataPin, i8 zeroext %clockPin, i8 zeroext %bitOrder) local_unnamed_addr #0 !dbg !6 {
entry:
  tail call void @llvm.dbg.value(metadata i8 %dataPin, i64 0, metadata !13, metadata !18), !dbg !19
  tail call void @llvm.dbg.value(metadata i8 %clockPin, i64 0, metadata !14, metadata !18), !dbg !20
  tail call void @llvm.dbg.value(metadata i8 %bitOrder, i64 0, metadata !15, metadata !18), !dbg !21
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !16, metadata !18), !dbg !22
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !16, metadata !18), !dbg !22
  %cmp2 = icmp eq i8 %bitOrder, 0, !dbg !24
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !29
  %call = tail call i16 @digitalRead(i8 zeroext %dataPin), !dbg !30
  %sub.sink = select i1 %cmp2, i16 0, i16 7, !dbg !31
  %shl8 = shl i16 %call, %sub.sink, !dbg !32
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !29
  %call.1 = tail call i16 @digitalRead(i8 zeroext %dataPin), !dbg !30
  %sub.sink.1 = select i1 %cmp2, i16 1, i16 6, !dbg !31
  %shl8.1 = shl i16 %call.1, %sub.sink.1, !dbg !32
  %or10.1 = or i16 %shl8.1, %shl8, !dbg !34
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !29
  %call.2 = tail call i16 @digitalRead(i8 zeroext %dataPin), !dbg !30
  %sub.sink.2 = select i1 %cmp2, i16 2, i16 5, !dbg !31
  %shl8.2 = shl i16 %call.2, %sub.sink.2, !dbg !32
  %or10.2 = or i16 %shl8.2, %or10.1, !dbg !34
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !29
  %call.3 = tail call i16 @digitalRead(i8 zeroext %dataPin), !dbg !30
  %sub.sink.3 = select i1 %cmp2, i16 3, i16 4, !dbg !31
  %shl8.3 = shl i16 %call.3, %sub.sink.3, !dbg !32
  %or10.3 = or i16 %shl8.3, %or10.2, !dbg !34
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !29
  %call.4 = tail call i16 @digitalRead(i8 zeroext %dataPin), !dbg !30
  %sub.sink.4 = select i1 %cmp2, i16 4, i16 3, !dbg !31
  %shl8.4 = shl i16 %call.4, %sub.sink.4, !dbg !32
  %or10.4 = or i16 %shl8.4, %or10.3, !dbg !34
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !29
  %call.5 = tail call i16 @digitalRead(i8 zeroext %dataPin), !dbg !30
  %sub.sink.5 = select i1 %cmp2, i16 5, i16 2, !dbg !31
  %shl8.5 = shl i16 %call.5, %sub.sink.5, !dbg !32
  %or10.5 = or i16 %shl8.5, %or10.4, !dbg !34
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !29
  %call.6 = tail call i16 @digitalRead(i8 zeroext %dataPin), !dbg !30
  %sub.sink.6 = select i1 %cmp2, i16 6, i16 1, !dbg !31
  %shl8.6 = shl i16 %call.6, %sub.sink.6, !dbg !32
  %or10.6 = or i16 %shl8.6, %or10.5, !dbg !34
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !29
  %call.7 = tail call i16 @digitalRead(i8 zeroext %dataPin), !dbg !30
  %sub.sink.7 = select i1 %cmp2, i16 7, i16 0, !dbg !31
  %shl8.7 = shl i16 %call.7, %sub.sink.7, !dbg !32
  %or10.7 = or i16 %shl8.7, %or10.6, !dbg !34
  %conv11.7 = trunc i16 %or10.7 to i8, !dbg !34
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !17, metadata !18), !dbg !23
  ret i8 %conv11.7, !dbg !35
}

declare void @digitalWrite(i8 zeroext, i8 zeroext) local_unnamed_addr #1

declare i16 @digitalRead(i8 zeroext) local_unnamed_addr #1

define void @shiftOut(i8 zeroext %dataPin, i8 zeroext %clockPin, i8 zeroext %bitOrder, i8 zeroext %val) local_unnamed_addr #0 !dbg !36 {
entry:
  tail call void @llvm.dbg.value(metadata i8 %dataPin, i64 0, metadata !40, metadata !18), !dbg !45
  tail call void @llvm.dbg.value(metadata i8 %clockPin, i64 0, metadata !41, metadata !18), !dbg !46
  tail call void @llvm.dbg.value(metadata i8 %bitOrder, i64 0, metadata !42, metadata !18), !dbg !47
  tail call void @llvm.dbg.value(metadata i8 %val, i64 0, metadata !43, metadata !18), !dbg !48
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !44, metadata !18), !dbg !49
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !44, metadata !18), !dbg !49
  %cmp2 = icmp eq i8 %bitOrder, 0, !dbg !50
  %conv3 = zext i8 %val to i16
  br label %for.body, !dbg !55

for.body:                                         ; preds = %if.end, %entry
  %conv19 = phi i16 [ 0, %entry ], [ %conv, %if.end ]
  %i.018 = phi i8 [ 0, %entry ], [ %inc, %if.end ]
  br i1 %cmp2, label %if.then, label %if.else, !dbg !57

if.then:                                          ; preds = %for.body
  %shl = shl i16 1, %conv19, !dbg !58
  %and = and i16 %shl, %conv3, !dbg !59
  %tobool = icmp ne i16 %and, 0, !dbg !60
  %conv6 = zext i1 %tobool to i8, !dbg !61
  tail call void @digitalWrite(i8 zeroext %dataPin, i8 zeroext %conv6), !dbg !62
  br label %if.end, !dbg !62

if.else:                                          ; preds = %for.body
  %sub = sub nuw nsw i16 7, %conv19, !dbg !63
  %shl9 = shl i16 1, %sub, !dbg !64
  %and10 = and i16 %shl9, %conv3, !dbg !65
  %tobool11 = icmp ne i16 %and10, 0, !dbg !66
  %conv14 = zext i1 %tobool11 to i8, !dbg !67
  tail call void @digitalWrite(i8 zeroext %dataPin, i8 zeroext %conv14), !dbg !68
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 1), !dbg !69
  tail call void @digitalWrite(i8 zeroext %clockPin, i8 zeroext 0), !dbg !70
  %inc = add nuw nsw i8 %i.018, 1, !dbg !71
  tail call void @llvm.dbg.value(metadata i8 %inc, i64 0, metadata !44, metadata !18), !dbg !49
  tail call void @llvm.dbg.value(metadata i8 %inc, i64 0, metadata !44, metadata !18), !dbg !49
  %conv = zext i8 %inc to i16, !dbg !73
  %exitcond = icmp eq i8 %inc, 8, !dbg !75
  br i1 %exitcond, label %for.end, label %for.body, !dbg !55, !llvm.loop !76

for.end:                                          ; preds = %if.end
  ret void, !dbg !79
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "Arduino/wiring_shift.c", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!6 = distinct !DISubprogram(name: "shiftIn", scope: !1, file: !1, line: 25, type: !7, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !12)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9, !9, !9}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !10, line: 126, baseType: !11)
!10 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdint.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!13, !14, !15, !16, !17}
!13 = !DILocalVariable(name: "dataPin", arg: 1, scope: !6, file: !1, line: 25, type: !9)
!14 = !DILocalVariable(name: "clockPin", arg: 2, scope: !6, file: !1, line: 25, type: !9)
!15 = !DILocalVariable(name: "bitOrder", arg: 3, scope: !6, file: !1, line: 25, type: !9)
!16 = !DILocalVariable(name: "value", scope: !6, file: !1, line: 26, type: !9)
!17 = !DILocalVariable(name: "i", scope: !6, file: !1, line: 27, type: !9)
!18 = !DIExpression()
!19 = !DILocation(line: 25, column: 25, scope: !6)
!20 = !DILocation(line: 25, column: 42, scope: !6)
!21 = !DILocation(line: 25, column: 60, scope: !6)
!22 = !DILocation(line: 26, column: 10, scope: !6)
!23 = !DILocation(line: 27, column: 10, scope: !6)
!24 = !DILocation(line: 31, column: 16, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 31, column: 7)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 29, column: 26)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 29, column: 2)
!28 = distinct !DILexicalBlock(scope: !6, file: !1, line: 29, column: 2)
!29 = !DILocation(line: 30, column: 3, scope: !26)
!30 = !DILocation(line: 32, column: 13, scope: !25)
!31 = !DILocation(line: 31, column: 7, scope: !26)
!32 = !DILocation(line: 34, column: 34, scope: !25)
!33 = !DILocation(line: 35, column: 3, scope: !26)
!34 = !DILocation(line: 34, column: 10, scope: !25)
!35 = !DILocation(line: 37, column: 2, scope: !6)
!36 = distinct !DISubprogram(name: "shiftOut", scope: !1, file: !1, line: 40, type: !37, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !9, !9, !9, !9}
!39 = !{!40, !41, !42, !43, !44}
!40 = !DILocalVariable(name: "dataPin", arg: 1, scope: !36, file: !1, line: 40, type: !9)
!41 = !DILocalVariable(name: "clockPin", arg: 2, scope: !36, file: !1, line: 40, type: !9)
!42 = !DILocalVariable(name: "bitOrder", arg: 3, scope: !36, file: !1, line: 40, type: !9)
!43 = !DILocalVariable(name: "val", arg: 4, scope: !36, file: !1, line: 40, type: !9)
!44 = !DILocalVariable(name: "i", scope: !36, file: !1, line: 42, type: !9)
!45 = !DILocation(line: 40, column: 23, scope: !36)
!46 = !DILocation(line: 40, column: 40, scope: !36)
!47 = !DILocation(line: 40, column: 58, scope: !36)
!48 = !DILocation(line: 40, column: 76, scope: !36)
!49 = !DILocation(line: 42, column: 10, scope: !36)
!50 = !DILocation(line: 45, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 45, column: 7)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 44, column: 27)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 44, column: 2)
!54 = distinct !DILexicalBlock(scope: !36, file: !1, line: 44, column: 2)
!55 = !DILocation(line: 44, column: 2, scope: !56)
!56 = !DILexicalBlockFile(scope: !54, file: !1, discriminator: 1)
!57 = !DILocation(line: 45, column: 7, scope: !52)
!58 = !DILocation(line: 46, column: 38, scope: !51)
!59 = !DILocation(line: 46, column: 33, scope: !51)
!60 = !DILocation(line: 46, column: 28, scope: !51)
!61 = !DILocation(line: 46, column: 26, scope: !51)
!62 = !DILocation(line: 46, column: 4, scope: !51)
!63 = !DILocation(line: 48, column: 44, scope: !51)
!64 = !DILocation(line: 48, column: 38, scope: !51)
!65 = !DILocation(line: 48, column: 33, scope: !51)
!66 = !DILocation(line: 48, column: 28, scope: !51)
!67 = !DILocation(line: 48, column: 26, scope: !51)
!68 = !DILocation(line: 48, column: 4, scope: !51)
!69 = !DILocation(line: 50, column: 3, scope: !52)
!70 = !DILocation(line: 51, column: 3, scope: !52)
!71 = !DILocation(line: 44, column: 22, scope: !72)
!72 = !DILexicalBlockFile(scope: !53, file: !1, discriminator: 2)
!73 = !DILocation(line: 44, column: 14, scope: !74)
!74 = !DILexicalBlockFile(scope: !53, file: !1, discriminator: 1)
!75 = !DILocation(line: 44, column: 16, scope: !74)
!76 = distinct !{!76, !77, !78}
!77 = !DILocation(line: 44, column: 2, scope: !54)
!78 = !DILocation(line: 52, column: 2, scope: !54)
!79 = !DILocation(line: 53, column: 1, scope: !36)
