; ModuleID = 'Arduino/abi.cpp'
source_filename = "Arduino/abi.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

; Function Attrs: noreturn
define void @__cxa_pure_virtual() local_unnamed_addr #0 !dbg !6 {
entry:
  tail call void @abort() #2, !dbg !9
  unreachable, !dbg !9
}

; Function Attrs: noreturn
declare void @abort() local_unnamed_addr #1

; Function Attrs: noreturn
define void @__cxa_deleted_virtual() local_unnamed_addr #0 !dbg !10 {
entry:
  tail call void @abort() #2, !dbg !11
  unreachable, !dbg !11
}

attributes #0 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "Arduino/abi.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!6 = distinct !DISubprogram(name: "__cxa_pure_virtual", scope: !1, file: !1, line: 24, type: !7, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !0, variables: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !DILocation(line: 27, column: 3, scope: !6)
!10 = distinct !DISubprogram(name: "__cxa_deleted_virtual", scope: !1, file: !1, line: 30, type: !7, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !0, variables: !2)
!11 = !DILocation(line: 33, column: 3, scope: !10)
