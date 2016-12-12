; ModuleID = 'Arduino/main.cpp'
source_filename = "Arduino/main.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

define weak i16 @atexit(void ()*) local_unnamed_addr #0 !dbg !6 {
entry:
  tail call void @llvm.dbg.value(metadata void ()* %0, i64 0, metadata !14, metadata !15), !dbg !16
  ret i16 0, !dbg !17
}

; Function Attrs: norecurse
define weak void @initVariant() local_unnamed_addr #1 !dbg !18 {
entry:
  ret void, !dbg !19
}

; Function Attrs: norecurse
define weak void @_Z8setupUSBv() local_unnamed_addr #1 !dbg !20 {
entry:
  ret void, !dbg !21
}

; Function Attrs: norecurse noreturn
define i16 @main() local_unnamed_addr #2 !dbg !22 {
entry:
  tail call void @init(), !dbg !25
  tail call void @initVariant(), !dbg !26
  tail call void @setup(), !dbg !27
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.cond.backedge, %entry
  tail call void @loop(), !dbg !29
  br i1 icmp ne (void ()* @_Z14serialEventRunv, void ()* null), label %if.then, label %for.cond.backedge, !dbg !33

if.then:                                          ; preds = %for.cond
  tail call void @_Z14serialEventRunv(), !dbg !34
  br label %for.cond.backedge, !dbg !34

for.cond.backedge:                                ; preds = %if.then, %for.cond
  br label %for.cond, !dbg !29, !llvm.loop !37
}

declare void @init() local_unnamed_addr #3

declare void @setup() local_unnamed_addr #3

declare void @loop() local_unnamed_addr #3

declare extern_weak void @_Z14serialEventRunv() #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "Arduino/main.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!6 = distinct !DISubprogram(name: "atexit", scope: !1, file: !1, line: 23, type: !7, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !13)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 16, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 16)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !{!14}
!14 = !DILocalVariable(arg: 1, scope: !6, file: !1, line: 23, type: !10)
!15 = !DIExpression()
!16 = !DILocation(line: 23, column: 29, scope: !6)
!17 = !DILocation(line: 23, column: 36, scope: !6)
!18 = distinct !DISubprogram(name: "initVariant", scope: !1, file: !1, line: 28, type: !11, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !2)
!19 = !DILocation(line: 28, column: 22, scope: !18)
!20 = distinct !DISubprogram(name: "setupUSB", linkageName: "_Z8setupUSBv", scope: !1, file: !1, line: 31, type: !11, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !2)
!21 = !DILocation(line: 31, column: 19, scope: !20)
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 33, type: !23, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!9}
!25 = !DILocation(line: 35, column: 2, scope: !22)
!26 = !DILocation(line: 37, column: 2, scope: !22)
!27 = !DILocation(line: 43, column: 2, scope: !22)
!28 = !DILocation(line: 45, column: 2, scope: !22)
!29 = !DILocation(line: 46, column: 3, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 45, column: 11)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 45, column: 2)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 45, column: 2)
!33 = !DILocation(line: 47, column: 7, scope: !30)
!34 = !DILocation(line: 47, column: 23, scope: !35)
!35 = !DILexicalBlockFile(scope: !36, file: !1, discriminator: 1)
!36 = distinct !DILexicalBlock(scope: !30, file: !1, line: 47, column: 7)
!37 = distinct !{!37, !38, !39}
!38 = !DILocation(line: 45, column: 2, scope: !32)
!39 = !DILocation(line: 48, column: 2, scope: !32)
