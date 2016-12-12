; ModuleID = 'Arduino/WMath.cpp'
source_filename = "Arduino/WMath.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

define void @_Z10randomSeedm(i32 %seed) local_unnamed_addr #0 !dbg !6 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !11, metadata !12), !dbg !13
  %cmp = icmp eq i32 %seed, 0, !dbg !14
  br i1 %cmp, label %if.end, label %if.then, !dbg !16

if.then:                                          ; preds = %entry
  tail call void @srandom(i32 %seed), !dbg !17
  br label %if.end, !dbg !19

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !20
}

declare void @srandom(i32) local_unnamed_addr #1

define i32 @_Z6randoml(i32 %howbig) local_unnamed_addr #0 !dbg !21 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %howbig, i64 0, metadata !26, metadata !12), !dbg !27
  %cmp = icmp eq i32 %howbig, 0, !dbg !28
  br i1 %cmp, label %return, label %if.end, !dbg !30

if.end:                                           ; preds = %entry
  %call = tail call i32 @random(), !dbg !31
  %rem = srem i32 %call, %howbig, !dbg !32
  br label %return, !dbg !33

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %rem, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !34
}

declare i32 @random() local_unnamed_addr #1

define i32 @_Z6randomll(i32 %howsmall, i32 %howbig) local_unnamed_addr #0 !dbg !35 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %howsmall, i64 0, metadata !39, metadata !12), !dbg !42
  tail call void @llvm.dbg.value(metadata i32 %howbig, i64 0, metadata !40, metadata !12), !dbg !43
  %cmp = icmp sgt i32 %howbig, %howsmall, !dbg !44
  br i1 %cmp, label %if.end, label %return, !dbg !46

if.end:                                           ; preds = %entry
  %sub = sub nsw i32 %howbig, %howsmall, !dbg !47
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !41, metadata !12), !dbg !48
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !26, metadata !12), !dbg !49
  %cmp.i = icmp eq i32 %sub, 0, !dbg !51
  br i1 %cmp.i, label %_Z6randoml.exit, label %if.end.i, !dbg !52

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @random(), !dbg !53
  %rem.i = srem i32 %call.i, %sub, !dbg !54
  br label %_Z6randoml.exit, !dbg !55

_Z6randoml.exit:                                  ; preds = %if.end, %if.end.i
  %retval.0.i = phi i32 [ %rem.i, %if.end.i ], [ 0, %if.end ]
  %add = add nsw i32 %retval.0.i, %howsmall, !dbg !56
  br label %return

return:                                           ; preds = %entry, %_Z6randoml.exit
  %retval.0 = phi i32 [ %add, %_Z6randoml.exit ], [ %howsmall, %entry ]
  ret i32 %retval.0, !dbg !57
}

; Function Attrs: nounwind readnone
define i32 @_Z3maplllll(i32 %x, i32 %in_min, i32 %in_max, i32 %out_min, i32 %out_max) local_unnamed_addr #2 !dbg !59 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !63, metadata !12), !dbg !68
  tail call void @llvm.dbg.value(metadata i32 %in_min, i64 0, metadata !64, metadata !12), !dbg !69
  tail call void @llvm.dbg.value(metadata i32 %in_max, i64 0, metadata !65, metadata !12), !dbg !70
  tail call void @llvm.dbg.value(metadata i32 %out_min, i64 0, metadata !66, metadata !12), !dbg !71
  tail call void @llvm.dbg.value(metadata i32 %out_max, i64 0, metadata !67, metadata !12), !dbg !72
  %sub = sub nsw i32 %x, %in_min, !dbg !73
  %sub1 = sub nsw i32 %out_max, %out_min, !dbg !74
  %mul = mul nsw i32 %sub1, %sub, !dbg !75
  %sub2 = sub nsw i32 %in_max, %in_min, !dbg !76
  %div = sdiv i32 %mul, %sub2, !dbg !77
  %add = add nsw i32 %div, %out_min, !dbg !78
  ret i32 %add, !dbg !79
}

; Function Attrs: nounwind readnone
define i16 @_Z8makeWordj(i16 returned %w) local_unnamed_addr #2 !dbg !80 {
entry:
  tail call void @llvm.dbg.value(metadata i16 %w, i64 0, metadata !85, metadata !12), !dbg !86
  ret i16 %w, !dbg !87
}

; Function Attrs: nounwind readnone
define i16 @_Z8makeWordhh(i8 zeroext %h, i8 zeroext %l) local_unnamed_addr #2 !dbg !88 {
entry:
  tail call void @llvm.dbg.value(metadata i8 %h, i64 0, metadata !93, metadata !12), !dbg !95
  tail call void @llvm.dbg.value(metadata i8 %l, i64 0, metadata !94, metadata !12), !dbg !96
  %conv = zext i8 %h to i16, !dbg !97
  %shl = shl nuw i16 %conv, 8, !dbg !98
  %conv1 = zext i8 %l to i16, !dbg !99
  %or = or i16 %shl, %conv1, !dbg !100
  ret i16 %or, !dbg !101
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "Arduino/WMath.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!6 = distinct !DISubprogram(name: "randomSeed", linkageName: "_Z10randomSeedm", scope: !1, file: !1, line: 28, type: !7, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !10)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11}
!11 = !DILocalVariable(name: "seed", arg: 1, scope: !6, file: !1, line: 28, type: !9)
!12 = !DIExpression()
!13 = !DILocation(line: 28, column: 31, scope: !6)
!14 = !DILocation(line: 30, column: 12, scope: !15)
!15 = distinct !DILexicalBlock(scope: !6, file: !1, line: 30, column: 7)
!16 = !DILocation(line: 30, column: 7, scope: !6)
!17 = !DILocation(line: 31, column: 5, scope: !18)
!18 = distinct !DILexicalBlock(scope: !15, file: !1, line: 30, column: 18)
!19 = !DILocation(line: 32, column: 3, scope: !18)
!20 = !DILocation(line: 33, column: 1, scope: !6)
!21 = distinct !DISubprogram(name: "random", linkageName: "_Z6randoml", scope: !1, file: !1, line: 35, type: !22, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !24}
!24 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!25 = !{!26}
!26 = !DILocalVariable(name: "howbig", arg: 1, scope: !21, file: !1, line: 35, type: !24)
!27 = !DILocation(line: 35, column: 18, scope: !21)
!28 = !DILocation(line: 37, column: 14, scope: !29)
!29 = distinct !DILexicalBlock(scope: !21, file: !1, line: 37, column: 7)
!30 = !DILocation(line: 37, column: 7, scope: !21)
!31 = !DILocation(line: 40, column: 10, scope: !21)
!32 = !DILocation(line: 40, column: 19, scope: !21)
!33 = !DILocation(line: 40, column: 3, scope: !21)
!34 = !DILocation(line: 41, column: 1, scope: !21)
!35 = distinct !DISubprogram(name: "random", linkageName: "_Z6randomll", scope: !1, file: !1, line: 43, type: !36, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{!24, !24, !24}
!38 = !{!39, !40, !41}
!39 = !DILocalVariable(name: "howsmall", arg: 1, scope: !35, file: !1, line: 43, type: !24)
!40 = !DILocalVariable(name: "howbig", arg: 2, scope: !35, file: !1, line: 43, type: !24)
!41 = !DILocalVariable(name: "diff", scope: !35, file: !1, line: 48, type: !24)
!42 = !DILocation(line: 43, column: 18, scope: !35)
!43 = !DILocation(line: 43, column: 33, scope: !35)
!44 = !DILocation(line: 45, column: 16, scope: !45)
!45 = distinct !DILexicalBlock(scope: !35, file: !1, line: 45, column: 7)
!46 = !DILocation(line: 45, column: 7, scope: !35)
!47 = !DILocation(line: 48, column: 22, scope: !35)
!48 = !DILocation(line: 48, column: 8, scope: !35)
!49 = !DILocation(line: 35, column: 18, scope: !21, inlinedAt: !50)
!50 = distinct !DILocation(line: 49, column: 10, scope: !35)
!51 = !DILocation(line: 37, column: 14, scope: !29, inlinedAt: !50)
!52 = !DILocation(line: 37, column: 7, scope: !21, inlinedAt: !50)
!53 = !DILocation(line: 40, column: 10, scope: !21, inlinedAt: !50)
!54 = !DILocation(line: 40, column: 19, scope: !21, inlinedAt: !50)
!55 = !DILocation(line: 40, column: 3, scope: !21, inlinedAt: !50)
!56 = !DILocation(line: 49, column: 23, scope: !35)
!57 = !DILocation(line: 50, column: 1, scope: !58)
!58 = !DILexicalBlockFile(scope: !35, file: !1, discriminator: 1)
!59 = distinct !DISubprogram(name: "map", linkageName: "_Z3maplllll", scope: !1, file: !1, line: 52, type: !60, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!24, !24, !24, !24, !24, !24}
!62 = !{!63, !64, !65, !66, !67}
!63 = !DILocalVariable(name: "x", arg: 1, scope: !59, file: !1, line: 52, type: !24)
!64 = !DILocalVariable(name: "in_min", arg: 2, scope: !59, file: !1, line: 52, type: !24)
!65 = !DILocalVariable(name: "in_max", arg: 3, scope: !59, file: !1, line: 52, type: !24)
!66 = !DILocalVariable(name: "out_min", arg: 4, scope: !59, file: !1, line: 52, type: !24)
!67 = !DILocalVariable(name: "out_max", arg: 5, scope: !59, file: !1, line: 52, type: !24)
!68 = !DILocation(line: 52, column: 15, scope: !59)
!69 = !DILocation(line: 52, column: 23, scope: !59)
!70 = !DILocation(line: 52, column: 36, scope: !59)
!71 = !DILocation(line: 52, column: 49, scope: !59)
!72 = !DILocation(line: 52, column: 63, scope: !59)
!73 = !DILocation(line: 54, column: 13, scope: !59)
!74 = !DILocation(line: 54, column: 34, scope: !59)
!75 = !DILocation(line: 54, column: 23, scope: !59)
!76 = !DILocation(line: 54, column: 55, scope: !59)
!77 = !DILocation(line: 54, column: 45, scope: !59)
!78 = !DILocation(line: 54, column: 65, scope: !59)
!79 = !DILocation(line: 54, column: 3, scope: !59)
!80 = distinct !DISubprogram(name: "makeWord", linkageName: "_Z8makeWordj", scope: !1, file: !1, line: 57, type: !81, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !84)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !83}
!83 = !DIBasicType(name: "unsigned int", size: 16, encoding: DW_ATE_unsigned)
!84 = !{!85}
!85 = !DILocalVariable(name: "w", arg: 1, scope: !80, file: !1, line: 57, type: !83)
!86 = !DILocation(line: 57, column: 36, scope: !80)
!87 = !DILocation(line: 57, column: 41, scope: !80)
!88 = distinct !DISubprogram(name: "makeWord", linkageName: "_Z8makeWordhh", scope: !1, file: !1, line: 58, type: !89, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !92)
!89 = !DISubroutineType(types: !90)
!90 = !{!83, !91, !91}
!91 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!92 = !{!93, !94}
!93 = !DILocalVariable(name: "h", arg: 1, scope: !88, file: !1, line: 58, type: !91)
!94 = !DILocalVariable(name: "l", arg: 2, scope: !88, file: !1, line: 58, type: !91)
!95 = !DILocation(line: 58, column: 37, scope: !88)
!96 = !DILocation(line: 58, column: 54, scope: !88)
!97 = !DILocation(line: 58, column: 67, scope: !88)
!98 = !DILocation(line: 58, column: 69, scope: !88)
!99 = !DILocation(line: 58, column: 77, scope: !88)
!100 = !DILocation(line: 58, column: 75, scope: !88)
!101 = !DILocation(line: 58, column: 59, scope: !88)
