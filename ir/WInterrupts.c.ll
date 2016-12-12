; ModuleID = 'Arduino/WInterrupts.c'
source_filename = "Arduino/WInterrupts.c"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

@_ZL7intFunc = internal global [2 x void ()*] [void ()* @_ZL7nothingv, void ()* @_ZL7nothingv], align 2, !dbg !0
@llvm.used = appending global [2 x i8*] [i8* bitcast (void ()* @__vector_1 to i8*), i8* bitcast (void ()* @__vector_2 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind
define void @attachInterrupt(i8 zeroext %interruptNum, void ()* %userFunc, i16 %mode) local_unnamed_addr #0 !dbg !23 {
entry:
  tail call void @llvm.dbg.value(metadata i8 %interruptNum, i64 0, metadata !28, metadata !31), !dbg !32
  tail call void @llvm.dbg.value(metadata void ()* %userFunc, i64 0, metadata !29, metadata !31), !dbg !33
  tail call void @llvm.dbg.value(metadata i16 %mode, i64 0, metadata !30, metadata !31), !dbg !34
  %cmp = icmp ult i8 %interruptNum, 2, !dbg !35
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %conv = zext i8 %interruptNum to i16, !dbg !38
  %arrayidx = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @_ZL7intFunc, i16 0, i16 %conv, !dbg !39
  store volatile void ()* %userFunc, void ()** %arrayidx, align 2, !dbg !41, !tbaa !42
  switch i8 %interruptNum, label %if.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
  ], !dbg !46

sw.bb:                                            ; preds = %if.then
  %0 = load volatile i8, i8* inttoptr (i16 105 to i8*), align 1, !dbg !47, !tbaa !49
  %1 = and i8 %0, -4, !dbg !50
  br label %sw.epilog.sink.split, !dbg !51

sw.bb7:                                           ; preds = %if.then
  %2 = load volatile i8, i8* inttoptr (i16 105 to i8*), align 1, !dbg !52, !tbaa !49
  %3 = and i8 %2, -13, !dbg !53
  %shl10 = shl i16 %mode, 2, !dbg !54
  br label %sw.epilog.sink.split, !dbg !55

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb7
  %shl10.sink = phi i16 [ %shl10, %sw.bb7 ], [ %mode, %sw.bb ]
  %and9.sink.in = phi i8 [ %3, %sw.bb7 ], [ %1, %sw.bb ]
  %.sink = phi i8 [ 2, %sw.bb7 ], [ 1, %sw.bb ]
  %and9.sink = zext i8 %and9.sink.in to i16, !dbg !53
  %or11 = or i16 %and9.sink, %shl10.sink, !dbg !56
  %conv12 = trunc i16 %or11 to i8, !dbg !57
  store volatile i8 %conv12, i8* inttoptr (i16 105 to i8*), align 1, !dbg !58, !tbaa !49
  %4 = load volatile i8, i8* inttoptr (i16 61 to i8*), align 1, !dbg !59, !tbaa !49
  %or14 = or i8 %4, %.sink, !dbg !59
  store volatile i8 %or14, i8* inttoptr (i16 61 to i8*), align 1, !dbg !59, !tbaa !49
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then, %sw.epilog.sink.split, %entry
  ret void, !dbg !61
}

; Function Attrs: nounwind
define void @detachInterrupt(i8 zeroext %interruptNum) local_unnamed_addr #0 !dbg !62 {
entry:
  tail call void @llvm.dbg.value(metadata i8 %interruptNum, i64 0, metadata !66, metadata !31), !dbg !67
  %conv = zext i8 %interruptNum to i16, !dbg !68
  %cmp = icmp ult i8 %interruptNum, 2, !dbg !70
  br i1 %cmp, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %entry
  switch i8 %interruptNum, label %sw.epilog [
    i8 0, label %sw.bb
    i8 1, label %sw.epilog.sink.split
  ], !dbg !72

sw.bb:                                            ; preds = %if.then
  br label %sw.epilog.sink.split, !dbg !74

sw.epilog.sink.split:                             ; preds = %if.then, %sw.bb
  %.sink = phi i8 [ -2, %sw.bb ], [ -3, %if.then ]
  %0 = load volatile i8, i8* inttoptr (i16 61 to i8*), align 1, !dbg !76, !tbaa !49
  %and6 = and i8 %0, %.sink, !dbg !76
  store volatile i8 %and6, i8* inttoptr (i16 61 to i8*), align 1, !dbg !76, !tbaa !49
  br label %sw.epilog, !dbg !77

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then
  %arrayidx = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @_ZL7intFunc, i16 0, i16 %conv, !dbg !78
  store volatile void ()* @_ZL7nothingv, void ()** %arrayidx, align 2, !dbg !79, !tbaa !42
  br label %if.end, !dbg !80

if.end:                                           ; preds = %sw.epilog, %entry
  ret void, !dbg !81
}

; Function Attrs: norecurse nounwind readnone
define internal void @_ZL7nothingv() #1 !dbg !82 {
entry:
  ret void, !dbg !83
}

define void @__vector_1() #2 !dbg !84 {
entry:
  %0 = load volatile void ()*, void ()** getelementptr inbounds ([2 x void ()*], [2 x void ()*]* @_ZL7intFunc, i16 0, i16 0), align 2, !dbg !85, !tbaa !42
  tail call void %0(), !dbg !85
  ret void, !dbg !85
}

define void @__vector_2() #2 !dbg !86 {
entry:
  %0 = load volatile void ()*, void ()** getelementptr inbounds ([2 x void ()*], [2 x void ()*]* @_ZL7intFunc, i16 0, i16 1), align 2, !dbg !87, !tbaa !42
  tail call void %0(), !dbg !87
  ret void, !dbg !87
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}

!0 = distinct !DIGlobalVariable(name: "intFunc", linkageName: "_ZL7intFunc", scope: !1, file: !2, line: 38, type: !11, isLocal: true, isDefinition: true)
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !4, globals: !10)
!2 = !DIFile(filename: "Arduino/WInterrupts.c", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!3 = !{}
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 16)
!6 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 126, baseType: !9)
!8 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdint.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !18)
!12 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidFuncPtr", file: !14, line: 66, baseType: !15)
!14 = !DIFile(filename: "Arduino/wiring_private.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 16)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !{!19}
!19 = !DISubrange(count: 2)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!23 = distinct !DISubprogram(name: "attachInterrupt", scope: !2, file: !2, line: 70, type: !24, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !7, !15, !26}
!26 = !DIBasicType(name: "int", size: 16, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(name: "interruptNum", arg: 1, scope: !23, file: !2, line: 70, type: !7)
!29 = !DILocalVariable(name: "userFunc", arg: 2, scope: !23, file: !2, line: 70, type: !15)
!30 = !DILocalVariable(name: "mode", arg: 3, scope: !23, file: !2, line: 70, type: !26)
!31 = !DIExpression()
!32 = !DILocation(line: 70, column: 30, scope: !23)
!33 = !DILocation(line: 70, column: 51, scope: !23)
!34 = !DILocation(line: 70, column: 72, scope: !23)
!35 = !DILocation(line: 71, column: 19, scope: !36)
!36 = distinct !DILexicalBlock(scope: !23, file: !2, line: 71, column: 6)
!37 = !DILocation(line: 71, column: 6, scope: !23)
!38 = !DILocation(line: 71, column: 6, scope: !36)
!39 = !DILocation(line: 72, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !2, line: 71, column: 46)
!41 = !DILocation(line: 72, column: 27, scope: !40)
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !DILocation(line: 81, column: 5, scope: !40)
!47 = !DILocation(line: 142, column: 16, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !2, line: 81, column: 27)
!49 = !{!44, !44, i64 0}
!50 = !DILocation(line: 142, column: 22, scope: !48)
!51 = !DILocation(line: 153, column: 7, scope: !48)
!52 = !DILocation(line: 157, column: 16, scope: !48)
!53 = !DILocation(line: 157, column: 22, scope: !48)
!54 = !DILocation(line: 157, column: 64, scope: !48)
!55 = !DILocation(line: 168, column: 7, scope: !48)
!56 = !DILocation(line: 157, column: 56, scope: !48)
!57 = !DILocation(line: 157, column: 15, scope: !48)
!58 = !DILocation(line: 157, column: 13, scope: !48)
!59 = !DILocation(line: 158, column: 13, scope: !48)
!60 = !DILocation(line: 184, column: 3, scope: !40)
!61 = !DILocation(line: 185, column: 1, scope: !23)
!62 = distinct !DISubprogram(name: "detachInterrupt", scope: !2, file: !2, line: 187, type: !63, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !7}
!65 = !{!66}
!66 = !DILocalVariable(name: "interruptNum", arg: 1, scope: !62, file: !2, line: 187, type: !7)
!67 = !DILocation(line: 187, column: 30, scope: !62)
!68 = !DILocation(line: 188, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !62, file: !2, line: 188, column: 6)
!70 = !DILocation(line: 188, column: 19, scope: !69)
!71 = !DILocation(line: 188, column: 6, scope: !62)
!72 = !DILocation(line: 192, column: 5, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !2, line: 188, column: 46)
!74 = !DILocation(line: 245, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !73, file: !2, line: 192, column: 27)
!76 = !DILocation(line: 249, column: 13, scope: !75)
!77 = !DILocation(line: 273, column: 13, scope: !73)
!78 = !DILocation(line: 273, column: 5, scope: !73)
!79 = !DILocation(line: 273, column: 27, scope: !73)
!80 = !DILocation(line: 274, column: 3, scope: !73)
!81 = !DILocation(line: 275, column: 1, scope: !62)
!82 = distinct !DISubprogram(name: "nothing", linkageName: "_ZL7nothingv", scope: !2, file: !2, line: 35, type: !16, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !3)
!83 = !DILocation(line: 36, column: 1, scope: !82)
!84 = distinct !DISubprogram(name: "__vector_1", scope: !2, file: !2, line: 309, type: !16, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !3)
!85 = !DILocation(line: 309, column: 1, scope: !84)
!86 = distinct !DISubprogram(name: "__vector_2", scope: !2, file: !2, line: 310, type: !16, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !3)
!87 = !DILocation(line: 310, column: 1, scope: !86)
