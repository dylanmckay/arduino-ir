; ModuleID = 'Arduino/HardwareSerial0.cpp'
source_filename = "Arduino/HardwareSerial0.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

%class.HardwareSerial = type <{ %class.Stream, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, [64 x i8], [64 x i8] }>
%class.Stream = type { %class.Print, i32, i32 }
%class.Print = type { i32 (...)**, i16 }

@Serial = global %class.HardwareSerial zeroinitializer, align 1, !dbg !0
@_ZTV14HardwareSerial = external unnamed_addr constant [8 x i8*], align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_HardwareSerial0.cpp, i8* null }]
@llvm.used = appending global [2 x i8*] [i8* bitcast (void ()* @__vector_18 to i8*), i8* bitcast (void ()* @__vector_19 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind
define void @__vector_18() #0 !dbg !514 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* @Serial, i64 0, metadata !518, metadata !527), !dbg !528
  %0 = load i8*, i8** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 3), align 1, !dbg !530, !tbaa !531
  %1 = load volatile i8, i8* %0, align 1, !dbg !530, !tbaa !537
  %2 = and i8 %1, 4, !dbg !530
  %tobool.i = icmp eq i8 %2, 0, !dbg !530
  br i1 %tobool.i, label %if.then.i, label %_ZN14HardwareSerial16_rx_complete_irqEv.exit, !dbg !538

if.then.i:                                        ; preds = %entry
  %3 = load i8*, i8** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 6), align 1, !dbg !539, !tbaa !540
  %4 = load volatile i8, i8* %3, align 1, !dbg !541, !tbaa !537
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !522, metadata !527), !dbg !542
  %5 = load volatile i8, i8* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 8), align 1, !dbg !543, !tbaa !544
  %add.i = add i8 %5, 1, !dbg !545
  %rem.i = and i8 %add.i, 63, !dbg !546
  tail call void @llvm.dbg.value(metadata i8 %rem.i, i64 0, metadata !525, metadata !527), !dbg !547
  %6 = load volatile i8, i8* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 9), align 1, !dbg !548, !tbaa !550
  %cmp.i = icmp eq i8 %rem.i, %6, !dbg !551
  br i1 %cmp.i, label %_ZN14HardwareSerial16_rx_complete_irqEv.exit, label %if.then6.i, !dbg !552

if.then6.i:                                       ; preds = %if.then.i
  %7 = load volatile i8, i8* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 8), align 1, !dbg !553, !tbaa !544
  %idxprom.i = zext i8 %7 to i16, !dbg !555
  %arrayidx.i = getelementptr inbounds %class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 12, i16 %idxprom.i, !dbg !555
  store i8 %4, i8* %arrayidx.i, align 1, !dbg !556, !tbaa !537
  store volatile i8 %rem.i, i8* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 8), align 1, !dbg !557, !tbaa !544
  br label %_ZN14HardwareSerial16_rx_complete_irqEv.exit, !dbg !558

_ZN14HardwareSerial16_rx_complete_irqEv.exit:     ; preds = %entry, %if.then.i, %if.then6.i
  ret void, !dbg !559
}

define void @__vector_19() #1 !dbg !560 {
entry:
  tail call void @_ZN14HardwareSerial17_tx_udr_empty_irqEv(%class.HardwareSerial* nonnull @Serial), !dbg !561
  ret void, !dbg !562
}

declare void @_ZN14HardwareSerial17_tx_udr_empty_irqEv(%class.HardwareSerial*) local_unnamed_addr #2

define zeroext i1 @_Z17Serial0_availablev() local_unnamed_addr #1 !dbg !563 {
entry:
  %call = tail call i16 @_ZN14HardwareSerial9availableEv(%class.HardwareSerial* nonnull @Serial), !dbg !566
  %tobool = icmp ne i16 %call, 0, !dbg !567
  ret i1 %tobool, !dbg !568
}

declare i16 @_ZN14HardwareSerial9availableEv(%class.HardwareSerial*) unnamed_addr #2

define internal void @_GLOBAL__sub_I_HardwareSerial0.cpp() #1 !dbg !569 {
entry:
  tail call void @llvm.dbg.value(metadata %class.HardwareSerial* @Serial, i64 0, metadata !571, metadata !527), !dbg !580
  tail call void @llvm.dbg.value(metadata i8* inttoptr (i16 197 to i8*), i64 0, metadata !574, metadata !527), !dbg !584
  tail call void @llvm.dbg.value(metadata i8* inttoptr (i16 196 to i8*), i64 0, metadata !575, metadata !527), !dbg !585
  tail call void @llvm.dbg.value(metadata i8* inttoptr (i16 192 to i8*), i64 0, metadata !576, metadata !527), !dbg !586
  tail call void @llvm.dbg.value(metadata i8* inttoptr (i16 193 to i8*), i64 0, metadata !577, metadata !527), !dbg !587
  tail call void @llvm.dbg.value(metadata i8* inttoptr (i16 194 to i8*), i64 0, metadata !578, metadata !527), !dbg !588
  tail call void @llvm.dbg.value(metadata i8* inttoptr (i16 198 to i8*), i64 0, metadata !579, metadata !527), !dbg !589
  store i16 0, i16* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 0, i32 0, i32 1), align 1, !dbg !590, !tbaa !601
  store i32 1000, i32* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 0, i32 1), align 1, !dbg !604, !tbaa !606
  store i32 (...)** bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @_ZTV14HardwareSerial, i16 0, i16 2) to i32 (...)**), i32 (...)*** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 0, i32 0, i32 0), align 1, !dbg !609, !tbaa !610
  store i8* inttoptr (i16 197 to i8*), i8** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 1), align 1, !dbg !612, !tbaa !613
  store i8* inttoptr (i16 196 to i8*), i8** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 2), align 1, !dbg !614, !tbaa !615
  store i8* inttoptr (i16 192 to i8*), i8** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 3), align 1, !dbg !616, !tbaa !531
  store i8* inttoptr (i16 193 to i8*), i8** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 4), align 1, !dbg !617, !tbaa !618
  store i8* inttoptr (i16 194 to i8*), i8** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 5), align 1, !dbg !619, !tbaa !620
  store i8* inttoptr (i16 198 to i8*), i8** getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 6), align 1, !dbg !621, !tbaa !540
  store volatile i8 0, i8* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 8), align 1, !dbg !622, !tbaa !544
  store volatile i8 0, i8* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 9), align 1, !dbg !623, !tbaa !550
  store volatile i8 0, i8* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 10), align 1, !dbg !624, !tbaa !625
  store volatile i8 0, i8* getelementptr inbounds (%class.HardwareSerial, %class.HardwareSerial* @Serial, i16 0, i32 11), align 1, !dbg !626, !tbaa !627
  ret void
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!511, !512}
!llvm.ident = !{!513}

!0 = distinct !DIGlobalVariable(name: "Serial", scope: !1, file: !2, line: 70, type: !19, isLocal: false, isDefinition: true)
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !10, globals: !18)
!2 = !DIFile(filename: "Arduino/HardwareSerial0.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!3 = !{!4}
!4 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "LookaheadMode", file: !5, line: 41, size: 16, elements: !6, identifier: "_ZTS13LookaheadMode")
!5 = !DIFile(filename: "Arduino/Stream.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "SKIP_ALL", value: 0)
!8 = !DIEnumerator(name: "SKIP_NONE", value: 1)
!9 = !DIEnumerator(name: "SKIP_WHITESPACE", value: 2)
!10 = !{!11, !16, !17}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 16)
!12 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 126, baseType: !15)
!14 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdint.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !14, line: 128, baseType: !17)
!17 = !DIBasicType(name: "unsigned int", size: 16, encoding: DW_ATE_unsigned)
!18 = !{!0}
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "HardwareSerial", file: !20, line: 93, size: 1256, elements: !21, vtableHolder: !26, identifier: "_ZTS14HardwareSerial")
!20 = !DIFile(filename: "Arduino/HardwareSerial.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!21 = !{!22, !450, !452, !453, !454, !455, !456, !457, !458, !461, !462, !465, !466, !470, !471, !475, !478, !481, !484, !487, !488, !489, !490, !491, !494, !497, !500, !503, !506, !509, !510}
!22 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !19, baseType: !23, flags: DIFlagPublic)
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Stream", file: !5, line: 49, size: 96, elements: !24, vtableHolder: !26, identifier: "_ZTS6Stream")
!24 = !{!25, !363, !364, !365, !369, !370, !374, !375, !376, !377, !380, !381, !384, !387, !390, !394, !397, !400, !403, !406, !409, !412, !415, !418, !421, !424, !427, !430, !433, !436, !439, !442, !445}
!25 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !23, baseType: !26, flags: DIFlagPublic)
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Print", file: !27, line: 34, size: 32, elements: !28, vtableHolder: !26, identifier: "_ZTS5Print")
!27 = !DIFile(filename: "Arduino/Print.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!28 = !{!29, !35, !36, !43, !47, !50, !53, !56, !57, !60, !66, !71, !74, !81, !320, !321, !324, !327, !330, !333, !336, !339, !342, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Print", scope: !27, file: !27, baseType: !30, size: 16, flags: DIFlagArtificial)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 16)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !32, size: 16)
!32 = !DISubroutineType(types: !33)
!33 = !{!34}
!34 = !DIBasicType(name: "int", size: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "write_error", scope: !26, file: !27, line: 37, baseType: !34, size: 16, offset: 16)
!36 = !DISubprogram(name: "printNumber", linkageName: "_ZN5Print11printNumberEmh", scope: !26, file: !27, line: 38, type: !37, isLocal: false, isDefinition: false, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !41, !42, !13}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 62, baseType: !17)
!40 = !DIFile(filename: "/Users/dylan/projects/builds/llvm/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!42 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !DISubprogram(name: "printFloat", linkageName: "_ZN5Print10printFloatEdh", scope: !26, file: !27, line: 39, type: !44, isLocal: false, isDefinition: false, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true)
!44 = !DISubroutineType(types: !45)
!45 = !{!39, !41, !46, !13}
!46 = !DIBasicType(name: "double", size: 32, encoding: DW_ATE_float)
!47 = !DISubprogram(name: "setWriteError", linkageName: "_ZN5Print13setWriteErrorEi", scope: !26, file: !27, line: 41, type: !48, isLocal: false, isDefinition: false, scopeLine: 41, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !41, !34}
!50 = !DISubprogram(name: "Print", scope: !26, file: !27, line: 43, type: !51, isLocal: false, isDefinition: false, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !41}
!53 = !DISubprogram(name: "getWriteError", linkageName: "_ZN5Print13getWriteErrorEv", scope: !26, file: !27, line: 45, type: !54, isLocal: false, isDefinition: false, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!54 = !DISubroutineType(types: !55)
!55 = !{!34, !41}
!56 = !DISubprogram(name: "clearWriteError", linkageName: "_ZN5Print15clearWriteErrorEv", scope: !26, file: !27, line: 46, type: !51, isLocal: false, isDefinition: false, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!57 = !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEh", scope: !26, file: !27, line: 48, type: !58, isLocal: false, isDefinition: false, scopeLine: 48, containingType: !26, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!58 = !DISubroutineType(types: !59)
!59 = !{!39, !41, !13}
!60 = !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKc", scope: !26, file: !27, line: 49, type: !61, isLocal: false, isDefinition: false, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!61 = !DISubroutineType(types: !62)
!62 = !{!39, !41, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 16)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKhj", scope: !26, file: !27, line: 53, type: !67, isLocal: false, isDefinition: false, scopeLine: 53, containingType: !26, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!67 = !DISubroutineType(types: !68)
!68 = !{!39, !41, !69, !39}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 16)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!71 = !DISubprogram(name: "write", linkageName: "_ZN5Print5writeEPKcj", scope: !26, file: !27, line: 54, type: !72, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!72 = !DISubroutineType(types: !73)
!73 = !{!39, !41, !63, !39}
!74 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEPK19__FlashStringHelper", scope: !26, file: !27, line: 58, type: !75, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!75 = !DISubroutineType(types: !76)
!76 = !{!39, !41, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 16)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !80, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!80 = !DIFile(filename: "Arduino/WString.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!81 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printERK6String", scope: !26, file: !27, line: 59, type: !82, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!82 = !DISubroutineType(types: !83)
!83 = !{!39, !41, !84}
!84 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !85, size: 16)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !80, line: 45, size: 48, elements: !87, identifier: "_ZTS6String")
!87 = !{!88, !90, !91, !92, !96, !100, !103, !106, !109, !112, !115, !118, !122, !125, !129, !132, !135, !138, !141, !145, !148, !151, !154, !157, !160, !163, !166, !167, !170, !173, !176, !179, !182, !183, !184, !187, !190, !193, !196, !199, !202, !205, !208, !209, !214, !217, !220, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !236, !237, !240, !243, !244, !248, !252, !255, !258, !261, !262, !263, !264, !267, !270, !271, !274, !275, !276, !277, !278, !281, !284, !287, !290, !293, !296, !297, !298, !299, !302, !305, !308, !309, !310, !311, !314, !317}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !86, file: !80, line: 196, baseType: !89, size: 16, flags: DIFlagProtected)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !86, file: !80, line: 197, baseType: !17, size: 16, offset: 16, flags: DIFlagProtected)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !86, file: !80, line: 198, baseType: !17, size: 16, offset: 32, flags: DIFlagProtected)
!92 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !86, file: !80, line: 51, type: !93, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!96 = !DISubprogram(name: "String", scope: !86, file: !80, line: 59, type: !97, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99, !63}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!100 = !DISubprogram(name: "String", scope: !86, file: !80, line: 60, type: !101, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !99, !84}
!103 = !DISubprogram(name: "String", scope: !86, file: !80, line: 61, type: !104, isLocal: false, isDefinition: false, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !99, !77}
!106 = !DISubprogram(name: "String", scope: !86, file: !80, line: 66, type: !107, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !99, !65}
!109 = !DISubprogram(name: "String", scope: !86, file: !80, line: 67, type: !110, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !99, !15, !15}
!112 = !DISubprogram(name: "String", scope: !86, file: !80, line: 68, type: !113, isLocal: false, isDefinition: false, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !99, !34, !15}
!115 = !DISubprogram(name: "String", scope: !86, file: !80, line: 69, type: !116, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !99, !17, !15}
!118 = !DISubprogram(name: "String", scope: !86, file: !80, line: 70, type: !119, isLocal: false, isDefinition: false, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !99, !121, !15}
!121 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!122 = !DISubprogram(name: "String", scope: !86, file: !80, line: 71, type: !123, isLocal: false, isDefinition: false, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !99, !42, !15}
!125 = !DISubprogram(name: "String", scope: !86, file: !80, line: 72, type: !126, isLocal: false, isDefinition: false, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !99, !128, !15}
!128 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!129 = !DISubprogram(name: "String", scope: !86, file: !80, line: 73, type: !130, isLocal: false, isDefinition: false, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !99, !46, !15}
!132 = !DISubprogram(name: "~String", scope: !86, file: !80, line: 74, type: !133, isLocal: false, isDefinition: false, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !99}
!135 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !86, file: !80, line: 80, type: !136, isLocal: false, isDefinition: false, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!136 = !DISubroutineType(types: !137)
!137 = !{!15, !99, !17}
!138 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !86, file: !80, line: 81, type: !139, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!139 = !DISubroutineType(types: !140)
!140 = !{!17, !95}
!141 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !86, file: !80, line: 86, type: !142, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !99, !84}
!144 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !86, size: 16)
!145 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !86, file: !80, line: 87, type: !146, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!146 = !DISubroutineType(types: !147)
!147 = !{!144, !99, !63}
!148 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !86, file: !80, line: 88, type: !149, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!149 = !DISubroutineType(types: !150)
!150 = !{!144, !99, !77}
!151 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !86, file: !80, line: 99, type: !152, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!152 = !DISubroutineType(types: !153)
!153 = !{!15, !99, !84}
!154 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !86, file: !80, line: 100, type: !155, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!155 = !DISubroutineType(types: !156)
!156 = !{!15, !99, !63}
!157 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !86, file: !80, line: 101, type: !158, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!158 = !DISubroutineType(types: !159)
!159 = !{!15, !99, !65}
!160 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !86, file: !80, line: 102, type: !161, isLocal: false, isDefinition: false, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!161 = !DISubroutineType(types: !162)
!162 = !{!15, !99, !15}
!163 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !86, file: !80, line: 103, type: !164, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!164 = !DISubroutineType(types: !165)
!165 = !{!15, !99, !34}
!166 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !86, file: !80, line: 104, type: !136, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!167 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !86, file: !80, line: 105, type: !168, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!168 = !DISubroutineType(types: !169)
!169 = !{!15, !99, !121}
!170 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !86, file: !80, line: 106, type: !171, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!171 = !DISubroutineType(types: !172)
!172 = !{!15, !99, !42}
!173 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !86, file: !80, line: 107, type: !174, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!174 = !DISubroutineType(types: !175)
!175 = !{!15, !99, !128}
!176 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !86, file: !80, line: 108, type: !177, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!177 = !DISubroutineType(types: !178)
!178 = !{!15, !99, !46}
!179 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !86, file: !80, line: 109, type: !180, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!180 = !DISubroutineType(types: !181)
!181 = !{!15, !99, !77}
!182 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !86, file: !80, line: 113, type: !142, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!183 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !86, file: !80, line: 114, type: !146, isLocal: false, isDefinition: false, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!184 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !86, file: !80, line: 115, type: !185, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!185 = !DISubroutineType(types: !186)
!186 = !{!144, !99, !65}
!187 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !86, file: !80, line: 116, type: !188, isLocal: false, isDefinition: false, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!188 = !DISubroutineType(types: !189)
!189 = !{!144, !99, !15}
!190 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !86, file: !80, line: 117, type: !191, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!191 = !DISubroutineType(types: !192)
!192 = !{!144, !99, !34}
!193 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !86, file: !80, line: 118, type: !194, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!194 = !DISubroutineType(types: !195)
!195 = !{!144, !99, !17}
!196 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !86, file: !80, line: 119, type: !197, isLocal: false, isDefinition: false, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!197 = !DISubroutineType(types: !198)
!198 = !{!144, !99, !121}
!199 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !86, file: !80, line: 120, type: !200, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!200 = !DISubroutineType(types: !201)
!201 = !{!144, !99, !42}
!202 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !86, file: !80, line: 121, type: !203, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!203 = !DISubroutineType(types: !204)
!204 = !{!144, !99, !128}
!205 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !86, file: !80, line: 122, type: !206, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!206 = !DISubroutineType(types: !207)
!207 = !{!144, !99, !46}
!208 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !86, file: !80, line: 123, type: !149, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!209 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !86, file: !80, line: 138, type: !210, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !95}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !86, file: !80, line: 50, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !93, size: 32, extraData: !86)
!214 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !86, file: !80, line: 139, type: !215, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!215 = !DISubroutineType(types: !216)
!216 = !{!34, !95, !84}
!217 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !86, file: !80, line: 140, type: !218, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!218 = !DISubroutineType(types: !219)
!219 = !{!15, !95, !84}
!220 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !86, file: !80, line: 141, type: !221, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!221 = !DISubroutineType(types: !222)
!222 = !{!15, !95, !63}
!223 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !86, file: !80, line: 142, type: !218, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!224 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !86, file: !80, line: 143, type: !221, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!225 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !86, file: !80, line: 144, type: !218, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!226 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !86, file: !80, line: 145, type: !221, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!227 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !86, file: !80, line: 146, type: !218, isLocal: false, isDefinition: false, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!228 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !86, file: !80, line: 147, type: !218, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!229 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !86, file: !80, line: 148, type: !218, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!230 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !86, file: !80, line: 149, type: !218, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!231 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !86, file: !80, line: 150, type: !218, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!232 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !86, file: !80, line: 151, type: !218, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!233 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !86, file: !80, line: 152, type: !234, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!234 = !DISubroutineType(types: !235)
!235 = !{!15, !95, !84, !17}
!236 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !86, file: !80, line: 153, type: !218, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!237 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !86, file: !80, line: 156, type: !238, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!238 = !DISubroutineType(types: !239)
!239 = !{!65, !95, !17}
!240 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !86, file: !80, line: 157, type: !241, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !99, !17, !65}
!243 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !86, file: !80, line: 158, type: !238, isLocal: false, isDefinition: false, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!244 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !86, file: !80, line: 159, type: !245, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !99, !17}
!247 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !65, size: 16)
!248 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !86, file: !80, line: 160, type: !249, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !95, !251, !17, !17}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 16)
!252 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !86, file: !80, line: 161, type: !253, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !95, !89, !17, !17}
!255 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !86, file: !80, line: 163, type: !256, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!256 = !DISubroutineType(types: !257)
!257 = !{!63, !95}
!258 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !86, file: !80, line: 164, type: !259, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!259 = !DISubroutineType(types: !260)
!260 = !{!89, !99}
!261 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !86, file: !80, line: 165, type: !259, isLocal: false, isDefinition: false, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!262 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !86, file: !80, line: 166, type: !256, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!263 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !86, file: !80, line: 167, type: !256, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!264 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !86, file: !80, line: 170, type: !265, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!265 = !DISubroutineType(types: !266)
!266 = !{!34, !95, !65}
!267 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !86, file: !80, line: 171, type: !268, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!268 = !DISubroutineType(types: !269)
!269 = !{!34, !95, !65, !17}
!270 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !86, file: !80, line: 172, type: !215, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!271 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !86, file: !80, line: 173, type: !272, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!272 = !DISubroutineType(types: !273)
!273 = !{!34, !95, !84, !17}
!274 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !86, file: !80, line: 174, type: !265, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!275 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !86, file: !80, line: 175, type: !268, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!276 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !86, file: !80, line: 176, type: !215, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!277 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !86, file: !80, line: 177, type: !272, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!278 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !86, file: !80, line: 178, type: !279, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!279 = !DISubroutineType(types: !280)
!280 = !{!86, !95, !17}
!281 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !86, file: !80, line: 179, type: !282, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!282 = !DISubroutineType(types: !283)
!283 = !{!86, !95, !17, !17}
!284 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !86, file: !80, line: 182, type: !285, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !99, !65, !65}
!287 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !86, file: !80, line: 183, type: !288, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !99, !84, !84}
!290 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !86, file: !80, line: 184, type: !291, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !99, !17}
!293 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !86, file: !80, line: 185, type: !294, isLocal: false, isDefinition: false, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !99, !17, !17}
!296 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !86, file: !80, line: 186, type: !133, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!297 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !86, file: !80, line: 187, type: !133, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!298 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !86, file: !80, line: 188, type: !133, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!299 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !86, file: !80, line: 191, type: !300, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!300 = !DISubroutineType(types: !301)
!301 = !{!121, !95}
!302 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !86, file: !80, line: 192, type: !303, isLocal: false, isDefinition: false, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!303 = !DISubroutineType(types: !304)
!304 = !{!128, !95}
!305 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !86, file: !80, line: 193, type: !306, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!306 = !DISubroutineType(types: !307)
!307 = !{!46, !95}
!308 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !86, file: !80, line: 200, type: !133, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!309 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !86, file: !80, line: 201, type: !133, isLocal: false, isDefinition: false, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!310 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !86, file: !80, line: 202, type: !136, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!311 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !86, file: !80, line: 203, type: !312, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!312 = !DISubroutineType(types: !313)
!313 = !{!15, !99, !63, !17}
!314 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !86, file: !80, line: 206, type: !315, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!315 = !DISubroutineType(types: !316)
!316 = !{!144, !99, !63, !17}
!317 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !86, file: !80, line: 207, type: !318, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!318 = !DISubroutineType(types: !319)
!319 = !{!144, !99, !77, !17}
!320 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEPKc", scope: !26, file: !27, line: 60, type: !61, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!321 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEc", scope: !26, file: !27, line: 61, type: !322, isLocal: false, isDefinition: false, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!322 = !DISubroutineType(types: !323)
!323 = !{!39, !41, !65}
!324 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEhi", scope: !26, file: !27, line: 62, type: !325, isLocal: false, isDefinition: false, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!325 = !DISubroutineType(types: !326)
!326 = !{!39, !41, !15, !34}
!327 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEii", scope: !26, file: !27, line: 63, type: !328, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!328 = !DISubroutineType(types: !329)
!329 = !{!39, !41, !34, !34}
!330 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEji", scope: !26, file: !27, line: 64, type: !331, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!331 = !DISubroutineType(types: !332)
!332 = !{!39, !41, !17, !34}
!333 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEli", scope: !26, file: !27, line: 65, type: !334, isLocal: false, isDefinition: false, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!334 = !DISubroutineType(types: !335)
!335 = !{!39, !41, !121, !34}
!336 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEmi", scope: !26, file: !27, line: 66, type: !337, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!337 = !DISubroutineType(types: !338)
!338 = !{!39, !41, !42, !34}
!339 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printEdi", scope: !26, file: !27, line: 67, type: !340, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!340 = !DISubroutineType(types: !341)
!341 = !{!39, !41, !46, !34}
!342 = !DISubprogram(name: "print", linkageName: "_ZN5Print5printERK9Printable", scope: !26, file: !27, line: 68, type: !343, isLocal: false, isDefinition: false, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!343 = !DISubroutineType(types: !344)
!344 = !{!39, !41, !345}
!345 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !346, size: 16)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = !DICompositeType(tag: DW_TAG_class_type, name: "Printable", file: !348, line: 33, size: 16, flags: DIFlagFwdDecl, identifier: "_ZTS9Printable")
!348 = !DIFile(filename: "Arduino/Printable.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!349 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEPK19__FlashStringHelper", scope: !26, file: !27, line: 70, type: !75, isLocal: false, isDefinition: false, scopeLine: 70, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!350 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnERK6String", scope: !26, file: !27, line: 71, type: !82, isLocal: false, isDefinition: false, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!351 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEPKc", scope: !26, file: !27, line: 72, type: !61, isLocal: false, isDefinition: false, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!352 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEc", scope: !26, file: !27, line: 73, type: !322, isLocal: false, isDefinition: false, scopeLine: 73, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!353 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEhi", scope: !26, file: !27, line: 74, type: !325, isLocal: false, isDefinition: false, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!354 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEii", scope: !26, file: !27, line: 75, type: !328, isLocal: false, isDefinition: false, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!355 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEji", scope: !26, file: !27, line: 76, type: !331, isLocal: false, isDefinition: false, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!356 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEli", scope: !26, file: !27, line: 77, type: !334, isLocal: false, isDefinition: false, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!357 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEmi", scope: !26, file: !27, line: 78, type: !337, isLocal: false, isDefinition: false, scopeLine: 78, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!358 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEdi", scope: !26, file: !27, line: 79, type: !340, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!359 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnERK9Printable", scope: !26, file: !27, line: 80, type: !343, isLocal: false, isDefinition: false, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!360 = !DISubprogram(name: "println", linkageName: "_ZN5Print7printlnEv", scope: !26, file: !27, line: 81, type: !361, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!361 = !DISubroutineType(types: !362)
!362 = !{!39, !41}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_timeout", scope: !23, file: !5, line: 52, baseType: !42, size: 32, offset: 32, flags: DIFlagProtected)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_startMillis", scope: !23, file: !5, line: 53, baseType: !42, size: 32, offset: 64, flags: DIFlagProtected)
!365 = !DISubprogram(name: "timedRead", linkageName: "_ZN6Stream9timedReadEv", scope: !23, file: !5, line: 54, type: !366, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!366 = !DISubroutineType(types: !367)
!367 = !{!34, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!369 = !DISubprogram(name: "timedPeek", linkageName: "_ZN6Stream9timedPeekEv", scope: !23, file: !5, line: 55, type: !366, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!370 = !DISubprogram(name: "peekNextDigit", linkageName: "_ZN6Stream13peekNextDigitE13LookaheadModeb", scope: !23, file: !5, line: 56, type: !371, isLocal: false, isDefinition: false, scopeLine: 56, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!371 = !DISubroutineType(types: !372)
!372 = !{!34, !368, !4, !373}
!373 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!374 = !DISubprogram(name: "available", linkageName: "_ZN6Stream9availableEv", scope: !23, file: !5, line: 59, type: !366, isLocal: false, isDefinition: false, scopeLine: 59, containingType: !23, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!375 = !DISubprogram(name: "read", linkageName: "_ZN6Stream4readEv", scope: !23, file: !5, line: 60, type: !366, isLocal: false, isDefinition: false, scopeLine: 60, containingType: !23, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!376 = !DISubprogram(name: "peek", linkageName: "_ZN6Stream4peekEv", scope: !23, file: !5, line: 61, type: !366, isLocal: false, isDefinition: false, scopeLine: 61, containingType: !23, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!377 = !DISubprogram(name: "flush", linkageName: "_ZN6Stream5flushEv", scope: !23, file: !5, line: 62, type: !378, isLocal: false, isDefinition: false, scopeLine: 62, containingType: !23, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !368}
!380 = !DISubprogram(name: "Stream", scope: !23, file: !5, line: 64, type: !378, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!381 = !DISubprogram(name: "setTimeout", linkageName: "_ZN6Stream10setTimeoutEm", scope: !23, file: !5, line: 68, type: !382, isLocal: false, isDefinition: false, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !368, !42}
!384 = !DISubprogram(name: "getTimeout", linkageName: "_ZN6Stream10getTimeoutEv", scope: !23, file: !5, line: 69, type: !385, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!385 = !DISubroutineType(types: !386)
!386 = !{!42, !368}
!387 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPc", scope: !23, file: !5, line: 71, type: !388, isLocal: false, isDefinition: false, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!388 = !DISubroutineType(types: !389)
!389 = !{!373, !368, !89}
!390 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPh", scope: !23, file: !5, line: 72, type: !391, isLocal: false, isDefinition: false, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!391 = !DISubroutineType(types: !392)
!392 = !{!373, !368, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 16)
!394 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPcj", scope: !23, file: !5, line: 75, type: !395, isLocal: false, isDefinition: false, scopeLine: 75, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!395 = !DISubroutineType(types: !396)
!396 = !{!373, !368, !89, !39}
!397 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEPhj", scope: !23, file: !5, line: 76, type: !398, isLocal: false, isDefinition: false, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!398 = !DISubroutineType(types: !399)
!399 = !{!373, !368, !393, !39}
!400 = !DISubprogram(name: "find", linkageName: "_ZN6Stream4findEc", scope: !23, file: !5, line: 79, type: !401, isLocal: false, isDefinition: false, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!401 = !DISubroutineType(types: !402)
!402 = !{!373, !368, !65}
!403 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcS0_", scope: !23, file: !5, line: 81, type: !404, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!404 = !DISubroutineType(types: !405)
!405 = !{!373, !368, !89, !89}
!406 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPhPc", scope: !23, file: !5, line: 82, type: !407, isLocal: false, isDefinition: false, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!407 = !DISubroutineType(types: !408)
!408 = !{!373, !368, !393, !89}
!409 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPcjS0_j", scope: !23, file: !5, line: 84, type: !410, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!410 = !DISubroutineType(types: !411)
!411 = !{!373, !368, !89, !39, !89, !39}
!412 = !DISubprogram(name: "findUntil", linkageName: "_ZN6Stream9findUntilEPhjPcj", scope: !23, file: !5, line: 85, type: !413, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!413 = !DISubroutineType(types: !414)
!414 = !{!373, !368, !393, !39, !89, !39}
!415 = !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntE13LookaheadModec", scope: !23, file: !5, line: 87, type: !416, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!416 = !DISubroutineType(types: !417)
!417 = !{!121, !368, !4, !65}
!418 = !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatE13LookaheadModec", scope: !23, file: !5, line: 94, type: !419, isLocal: false, isDefinition: false, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!419 = !DISubroutineType(types: !420)
!420 = !{!128, !368, !4, !65}
!421 = !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPcj", scope: !23, file: !5, line: 97, type: !422, isLocal: false, isDefinition: false, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!422 = !DISubroutineType(types: !423)
!423 = !{!39, !368, !89, !39}
!424 = !DISubprogram(name: "readBytes", linkageName: "_ZN6Stream9readBytesEPhj", scope: !23, file: !5, line: 98, type: !425, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!425 = !DISubroutineType(types: !426)
!426 = !{!39, !368, !393, !39}
!427 = !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPcj", scope: !23, file: !5, line: 102, type: !428, isLocal: false, isDefinition: false, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!428 = !DISubroutineType(types: !429)
!429 = !{!39, !368, !65, !89, !39}
!430 = !DISubprogram(name: "readBytesUntil", linkageName: "_ZN6Stream14readBytesUntilEcPhj", scope: !23, file: !5, line: 103, type: !431, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!431 = !DISubroutineType(types: !432)
!432 = !{!39, !368, !65, !393, !39}
!433 = !DISubprogram(name: "readString", linkageName: "_ZN6Stream10readStringEv", scope: !23, file: !5, line: 108, type: !434, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!434 = !DISubroutineType(types: !435)
!435 = !{!86, !368}
!436 = !DISubprogram(name: "readStringUntil", linkageName: "_ZN6Stream15readStringUntilEc", scope: !23, file: !5, line: 109, type: !437, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!437 = !DISubroutineType(types: !438)
!438 = !{!86, !368, !65}
!439 = !DISubprogram(name: "parseInt", linkageName: "_ZN6Stream8parseIntEc", scope: !23, file: !5, line: 112, type: !440, isLocal: false, isDefinition: false, scopeLine: 112, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!440 = !DISubroutineType(types: !441)
!441 = !{!121, !368, !65}
!442 = !DISubprogram(name: "parseFloat", linkageName: "_ZN6Stream10parseFloatEc", scope: !23, file: !5, line: 113, type: !443, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!443 = !DISubroutineType(types: !444)
!444 = !{!128, !368, !65}
!445 = !DISubprogram(name: "findMulti", linkageName: "_ZN6Stream9findMultiEPNS_11MultiTargetEi", scope: !23, file: !5, line: 126, type: !446, isLocal: false, isDefinition: false, scopeLine: 126, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!446 = !DISubroutineType(types: !447)
!447 = !{!34, !368, !448, !34}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 16)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "MultiTarget", scope: !23, file: !5, line: 118, size: 48, flags: DIFlagFwdDecl, identifier: "_ZTSN6Stream11MultiTargetE")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_ubrrh", scope: !19, file: !20, line: 96, baseType: !451, size: 16, offset: 96, flags: DIFlagProtected)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_ubrrl", scope: !19, file: !20, line: 97, baseType: !451, size: 16, offset: 112, flags: DIFlagProtected)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_ucsra", scope: !19, file: !20, line: 98, baseType: !451, size: 16, offset: 128, flags: DIFlagProtected)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_ucsrb", scope: !19, file: !20, line: 99, baseType: !451, size: 16, offset: 144, flags: DIFlagProtected)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_ucsrc", scope: !19, file: !20, line: 100, baseType: !451, size: 16, offset: 160, flags: DIFlagProtected)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_udr", scope: !19, file: !20, line: 101, baseType: !451, size: 16, offset: 176, flags: DIFlagProtected)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_written", scope: !19, file: !20, line: 103, baseType: !373, size: 8, offset: 192, flags: DIFlagProtected)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_buffer_head", scope: !19, file: !20, line: 105, baseType: !459, size: 8, offset: 200, flags: DIFlagProtected)
!459 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "rx_buffer_index_t", file: !20, line: 64, baseType: !13)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_buffer_tail", scope: !19, file: !20, line: 106, baseType: !459, size: 8, offset: 208, flags: DIFlagProtected)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_buffer_head", scope: !19, file: !20, line: 107, baseType: !463, size: 8, offset: 216, flags: DIFlagProtected)
!463 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "tx_buffer_index_t", file: !20, line: 59, baseType: !13)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_buffer_tail", scope: !19, file: !20, line: 108, baseType: !463, size: 8, offset: 224, flags: DIFlagProtected)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_rx_buffer", scope: !19, file: !20, line: 113, baseType: !467, size: 512, offset: 232, flags: DIFlagProtected)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_tx_buffer", scope: !19, file: !20, line: 114, baseType: !467, size: 512, offset: 744, flags: DIFlagProtected)
!471 = !DISubprogram(name: "HardwareSerial", scope: !19, file: !20, line: 117, type: !472, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474, !11, !11, !11, !11, !11, !11}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!475 = !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEm", scope: !19, file: !20, line: 121, type: !476, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !474, !42}
!478 = !DISubprogram(name: "begin", linkageName: "_ZN14HardwareSerial5beginEmh", scope: !19, file: !20, line: 122, type: !479, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !474, !42, !13}
!481 = !DISubprogram(name: "end", linkageName: "_ZN14HardwareSerial3endEv", scope: !19, file: !20, line: 123, type: !482, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !474}
!484 = !DISubprogram(name: "available", linkageName: "_ZN14HardwareSerial9availableEv", scope: !19, file: !20, line: 124, type: !485, isLocal: false, isDefinition: false, scopeLine: 124, containingType: !19, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!485 = !DISubroutineType(types: !486)
!486 = !{!34, !474}
!487 = !DISubprogram(name: "peek", linkageName: "_ZN14HardwareSerial4peekEv", scope: !19, file: !20, line: 125, type: !485, isLocal: false, isDefinition: false, scopeLine: 125, containingType: !19, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!488 = !DISubprogram(name: "read", linkageName: "_ZN14HardwareSerial4readEv", scope: !19, file: !20, line: 126, type: !485, isLocal: false, isDefinition: false, scopeLine: 126, containingType: !19, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!489 = !DISubprogram(name: "availableForWrite", linkageName: "_ZN14HardwareSerial17availableForWriteEv", scope: !19, file: !20, line: 127, type: !485, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!490 = !DISubprogram(name: "flush", linkageName: "_ZN14HardwareSerial5flushEv", scope: !19, file: !20, line: 128, type: !482, isLocal: false, isDefinition: false, scopeLine: 128, containingType: !19, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!491 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEh", scope: !19, file: !20, line: 129, type: !492, isLocal: false, isDefinition: false, scopeLine: 129, containingType: !19, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!492 = !DISubroutineType(types: !493)
!493 = !{!39, !474, !13}
!494 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEm", scope: !19, file: !20, line: 130, type: !495, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!495 = !DISubroutineType(types: !496)
!496 = !{!39, !474, !42}
!497 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEl", scope: !19, file: !20, line: 131, type: !498, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!498 = !DISubroutineType(types: !499)
!499 = !{!39, !474, !121}
!500 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEj", scope: !19, file: !20, line: 132, type: !501, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!501 = !DISubroutineType(types: !502)
!502 = !{!39, !474, !17}
!503 = !DISubprogram(name: "write", linkageName: "_ZN14HardwareSerial5writeEi", scope: !19, file: !20, line: 133, type: !504, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!504 = !DISubroutineType(types: !505)
!505 = !{!39, !474, !34}
!506 = !DISubprogram(name: "operator bool", linkageName: "_ZN14HardwareSerialcvbEv", scope: !19, file: !20, line: 135, type: !507, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!507 = !DISubroutineType(types: !508)
!508 = !{!373, !474}
!509 = !DISubprogram(name: "_rx_complete_irq", linkageName: "_ZN14HardwareSerial16_rx_complete_irqEv", scope: !19, file: !20, line: 138, type: !482, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!510 = !DISubprogram(name: "_tx_udr_empty_irq", linkageName: "_ZN14HardwareSerial17_tx_udr_empty_irqEv", scope: !19, file: !20, line: 139, type: !482, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!511 = !{i32 2, !"Dwarf Version", i32 4}
!512 = !{i32 2, !"Debug Info Version", i32 3}
!513 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!514 = distinct !DISubprogram(name: "__vector_18", scope: !2, file: !2, line: 40, type: !515, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{null}
!517 = !{}
!518 = !DILocalVariable(name: "this", arg: 1, scope: !519, type: !526, flags: DIFlagArtificial | DIFlagObjectPointer)
!519 = distinct !DISubprogram(name: "_rx_complete_irq", linkageName: "_ZN14HardwareSerial16_rx_complete_irqEv", scope: !19, file: !520, line: 101, type: !482, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !509, variables: !521)
!520 = !DIFile(filename: "Arduino/HardwareSerial_private.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!521 = !{!518, !522, !525}
!522 = !DILocalVariable(name: "c", scope: !523, file: !520, line: 106, type: !15)
!523 = distinct !DILexicalBlock(scope: !524, file: !520, line: 103, column: 36)
!524 = distinct !DILexicalBlock(scope: !519, file: !520, line: 103, column: 7)
!525 = !DILocalVariable(name: "i", scope: !523, file: !520, line: 107, type: !460)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 16)
!527 = !DIExpression()
!528 = !DILocation(line: 0, scope: !519, inlinedAt: !529)
!529 = distinct !DILocation(line: 49, column: 12, scope: !514)
!530 = !DILocation(line: 103, column: 7, scope: !524, inlinedAt: !529)
!531 = !{!532, !533, i64 16}
!532 = !{!"_ZTS14HardwareSerial", !533, i64 12, !533, i64 14, !533, i64 16, !533, i64 18, !533, i64 20, !533, i64 22, !536, i64 24, !534, i64 25, !534, i64 26, !534, i64 27, !534, i64 28, !534, i64 29, !534, i64 93}
!533 = !{!"any pointer", !534, i64 0}
!534 = !{!"omnipotent char", !535, i64 0}
!535 = !{!"Simple C++ TBAA"}
!536 = !{!"bool", !534, i64 0}
!537 = !{!534, !534, i64 0}
!538 = !DILocation(line: 103, column: 7, scope: !519, inlinedAt: !529)
!539 = !DILocation(line: 106, column: 24, scope: !523, inlinedAt: !529)
!540 = !{!532, !533, i64 22}
!541 = !DILocation(line: 106, column: 23, scope: !523, inlinedAt: !529)
!542 = !DILocation(line: 106, column: 19, scope: !523, inlinedAt: !529)
!543 = !DILocation(line: 107, column: 42, scope: !523, inlinedAt: !529)
!544 = !{!532, !534, i64 25}
!545 = !DILocation(line: 107, column: 58, scope: !523, inlinedAt: !529)
!546 = !DILocation(line: 107, column: 63, scope: !523, inlinedAt: !529)
!547 = !DILocation(line: 107, column: 23, scope: !523, inlinedAt: !529)
!548 = !DILocation(line: 113, column: 14, scope: !549, inlinedAt: !529)
!549 = distinct !DILexicalBlock(scope: !523, file: !520, line: 113, column: 9)
!550 = !{!532, !534, i64 26}
!551 = !DILocation(line: 113, column: 11, scope: !549, inlinedAt: !529)
!552 = !DILocation(line: 113, column: 9, scope: !523, inlinedAt: !529)
!553 = !DILocation(line: 114, column: 18, scope: !554, inlinedAt: !529)
!554 = distinct !DILexicalBlock(scope: !549, file: !520, line: 113, column: 31)
!555 = !DILocation(line: 114, column: 7, scope: !554, inlinedAt: !529)
!556 = !DILocation(line: 114, column: 35, scope: !554, inlinedAt: !529)
!557 = !DILocation(line: 115, column: 23, scope: !554, inlinedAt: !529)
!558 = !DILocation(line: 116, column: 5, scope: !554, inlinedAt: !529)
!559 = !DILocation(line: 50, column: 3, scope: !514)
!560 = distinct !DISubprogram(name: "__vector_19", scope: !2, file: !2, line: 59, type: !515, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !517)
!561 = !DILocation(line: 64, column: 10, scope: !560)
!562 = !DILocation(line: 65, column: 1, scope: !560)
!563 = distinct !DISubprogram(name: "Serial0_available", linkageName: "_Z17Serial0_availablev", scope: !2, file: !2, line: 75, type: !564, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !517)
!564 = !DISubroutineType(types: !565)
!565 = !{!373}
!566 = !DILocation(line: 76, column: 17, scope: !563)
!567 = !DILocation(line: 76, column: 10, scope: !563)
!568 = !DILocation(line: 76, column: 3, scope: !563)
!569 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_HardwareSerial0.cpp", scope: !2, file: !2, type: !570, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: true, unit: !1, variables: !517)
!570 = !DISubroutineType(types: !517)
!571 = !DILocalVariable(name: "this", arg: 1, scope: !572, type: !526, flags: DIFlagArtificial | DIFlagObjectPointer)
!572 = distinct !DISubprogram(name: "HardwareSerial", linkageName: "_ZN14HardwareSerialC2EPVhS1_S1_S1_S1_S1_", scope: !19, file: !520, line: 87, type: !472, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !471, variables: !573)
!573 = !{!571, !574, !575, !576, !577, !578, !579}
!574 = !DILocalVariable(name: "ubrrh", arg: 2, scope: !572, file: !520, line: 88, type: !11)
!575 = !DILocalVariable(name: "ubrrl", arg: 3, scope: !572, file: !520, line: 88, type: !11)
!576 = !DILocalVariable(name: "ucsra", arg: 4, scope: !572, file: !520, line: 89, type: !11)
!577 = !DILocalVariable(name: "ucsrb", arg: 5, scope: !572, file: !520, line: 89, type: !11)
!578 = !DILocalVariable(name: "ucsrc", arg: 6, scope: !572, file: !520, line: 90, type: !11)
!579 = !DILocalVariable(name: "udr", arg: 7, scope: !572, file: !520, line: 90, type: !11)
!580 = !DILocation(line: 0, scope: !572, inlinedAt: !581)
!581 = distinct !DILocation(line: 70, column: 18, scope: !582, inlinedAt: !583)
!582 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !2, file: !2, line: 70, type: !515, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !517)
!583 = distinct !DILocation(line: 0, scope: !569)
!584 = !DILocation(line: 88, column: 21, scope: !572, inlinedAt: !581)
!585 = !DILocation(line: 88, column: 46, scope: !572, inlinedAt: !581)
!586 = !DILocation(line: 89, column: 21, scope: !572, inlinedAt: !581)
!587 = !DILocation(line: 89, column: 46, scope: !572, inlinedAt: !581)
!588 = !DILocation(line: 90, column: 21, scope: !572, inlinedAt: !581)
!589 = !DILocation(line: 90, column: 46, scope: !572, inlinedAt: !581)
!590 = !DILocation(line: 43, column: 15, scope: !591, inlinedAt: !595)
!591 = distinct !DISubprogram(name: "Print", linkageName: "_ZN5PrintC2Ev", scope: !26, file: !27, line: 43, type: !51, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !50, variables: !592)
!592 = !{!593}
!593 = !DILocalVariable(name: "this", arg: 1, scope: !591, type: !594, flags: DIFlagArtificial | DIFlagObjectPointer)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 16)
!595 = distinct !DILocation(line: 64, column: 5, scope: !596, inlinedAt: !600)
!596 = distinct !DISubprogram(name: "Stream", linkageName: "_ZN6StreamC2Ev", scope: !23, file: !5, line: 64, type: !378, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !380, variables: !597)
!597 = !{!598}
!598 = !DILocalVariable(name: "this", arg: 1, scope: !596, type: !599, flags: DIFlagArtificial | DIFlagObjectPointer)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 16)
!600 = distinct !DILocation(line: 87, column: 17, scope: !572, inlinedAt: !581)
!601 = !{!602, !603, i64 2}
!602 = !{!"_ZTS5Print", !603, i64 2}
!603 = !{!"int", !534, i64 0}
!604 = !DILocation(line: 64, column: 23, scope: !605, inlinedAt: !600)
!605 = distinct !DILexicalBlock(scope: !596, file: !5, line: 64, column: 14)
!606 = !{!607, !608, i64 4}
!607 = !{!"_ZTS6Stream", !608, i64 4, !608, i64 8}
!608 = !{!"long", !534, i64 0}
!609 = !DILocation(line: 96, column: 1, scope: !572, inlinedAt: !581)
!610 = !{!611, !611, i64 0}
!611 = !{!"vtable pointer", !535, i64 0}
!612 = !DILocation(line: 91, column: 5, scope: !572, inlinedAt: !581)
!613 = !{!532, !533, i64 12}
!614 = !DILocation(line: 91, column: 20, scope: !572, inlinedAt: !581)
!615 = !{!532, !533, i64 14}
!616 = !DILocation(line: 92, column: 5, scope: !572, inlinedAt: !581)
!617 = !DILocation(line: 92, column: 20, scope: !572, inlinedAt: !581)
!618 = !{!532, !533, i64 18}
!619 = !DILocation(line: 92, column: 35, scope: !572, inlinedAt: !581)
!620 = !{!532, !533, i64 20}
!621 = !DILocation(line: 93, column: 5, scope: !572, inlinedAt: !581)
!622 = !DILocation(line: 94, column: 5, scope: !572, inlinedAt: !581)
!623 = !DILocation(line: 94, column: 25, scope: !572, inlinedAt: !581)
!624 = !DILocation(line: 95, column: 5, scope: !572, inlinedAt: !581)
!625 = !{!532, !534, i64 27}
!626 = !DILocation(line: 95, column: 25, scope: !572, inlinedAt: !581)
!627 = !{!532, !534, i64 28}
