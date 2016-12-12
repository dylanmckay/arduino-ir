; ModuleID = 'Arduino/new.cpp'
source_filename = "Arduino/new.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

; Function Attrs: nobuiltin nounwind
define noalias i8* @_Znwj(i16 %size) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !6 {
entry:
  tail call void @llvm.dbg.value(metadata i16 %size, i64 0, metadata !14, metadata !15), !dbg !16
  %call = tail call noalias i8* @malloc(i16 %size), !dbg !17
  ret i8* %call, !dbg !18
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i16) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
define noalias i8* @_Znaj(i16 %size) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !20 {
entry:
  tail call void @llvm.dbg.value(metadata i16 %size, i64 0, metadata !22, metadata !15), !dbg !23
  %call = tail call noalias i8* @malloc(i16 %size), !dbg !24
  ret i8* %call, !dbg !25
}

; Function Attrs: nobuiltin nounwind
define void @_ZdlPv(i8* nocapture %ptr) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !27 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !31, metadata !15), !dbg !32
  tail call void @free(i8* %ptr), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
define void @_ZdaPv(i8* nocapture %ptr) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !35 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ptr, i64 0, metadata !37, metadata !15), !dbg !38
  tail call void @free(i8* %ptr), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "Arduino/new.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!6 = distinct !DISubprogram(name: "operator new", linkageName: "_Znwj", scope: !1, file: !1, line: 21, type: !7, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !13)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 16)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 62, baseType: !12)
!11 = !DIFile(filename: "/Users/dylan/projects/builds/llvm/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!12 = !DIBasicType(name: "unsigned int", size: 16, encoding: DW_ATE_unsigned)
!13 = !{!14}
!14 = !DILocalVariable(name: "size", arg: 1, scope: !6, file: !1, line: 21, type: !10)
!15 = !DIExpression()
!16 = !DILocation(line: 21, column: 27, scope: !6)
!17 = !DILocation(line: 22, column: 10, scope: !6)
!18 = !DILocation(line: 22, column: 3, scope: !19)
!19 = !DILexicalBlockFile(scope: !6, file: !1, discriminator: 1)
!20 = distinct !DISubprogram(name: "operator new[]", linkageName: "_Znaj", scope: !1, file: !1, line: 25, type: !7, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !21)
!21 = !{!22}
!22 = !DILocalVariable(name: "size", arg: 1, scope: !20, file: !1, line: 25, type: !10)
!23 = !DILocation(line: 25, column: 29, scope: !20)
!24 = !DILocation(line: 26, column: 10, scope: !20)
!25 = !DILocation(line: 26, column: 3, scope: !26)
!26 = !DILexicalBlockFile(scope: !20, file: !1, discriminator: 1)
!27 = distinct !DISubprogram(name: "operator delete", linkageName: "_ZdlPv", scope: !1, file: !1, line: 29, type: !28, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !9}
!30 = !{!31}
!31 = !DILocalVariable(name: "ptr", arg: 1, scope: !27, file: !1, line: 29, type: !9)
!32 = !DILocation(line: 29, column: 29, scope: !27)
!33 = !DILocation(line: 30, column: 3, scope: !27)
!34 = !DILocation(line: 31, column: 1, scope: !27)
!35 = distinct !DISubprogram(name: "operator delete[]", linkageName: "_ZdaPv", scope: !1, file: !1, line: 33, type: !28, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !36)
!36 = !{!37}
!37 = !DILocalVariable(name: "ptr", arg: 1, scope: !35, file: !1, line: 33, type: !9)
!38 = !DILocation(line: 33, column: 31, scope: !35)
!39 = !DILocation(line: 34, column: 3, scope: !35)
!40 = !DILocation(line: 35, column: 1, scope: !35)
