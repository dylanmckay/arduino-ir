; ModuleID = 'Arduino/wiring.c'
source_filename = "Arduino/wiring.c"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

@timer0_overflow_count = global i32 0, align 1, !dbg !0
@timer0_millis = global i32 0, align 1, !dbg !13
@_ZL12timer0_fract = internal unnamed_addr global i8 0, align 1, !dbg !16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__vector_16 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind
define void @__vector_16() #0 !dbg !20 {
entry:
  %0 = load volatile i32, i32* @timer0_millis, align 1, !dbg !26, !tbaa !27
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !24, metadata !31), !dbg !32
  %1 = load i8, i8* @_ZL12timer0_fract, align 1, !dbg !33, !tbaa !34
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !25, metadata !31), !dbg !35
  %add1 = add i8 %1, 3, !dbg !36
  tail call void @llvm.dbg.value(metadata i8 %add1, i64 0, metadata !25, metadata !31), !dbg !35
  %cmp = icmp ugt i8 %add1, 124, !dbg !37
  %sub = add i8 %1, -122, !dbg !39
  tail call void @llvm.dbg.value(metadata i8 %sub, i64 0, metadata !25, metadata !31), !dbg !35
  %m.0.v = select i1 %cmp, i32 2, i32 1, !dbg !41
  %m.0 = add i32 %m.0.v, %0, !dbg !41
  %f.0 = select i1 %cmp, i8 %sub, i8 %add1, !dbg !41
  tail call void @llvm.dbg.value(metadata i8 %f.0, i64 0, metadata !25, metadata !31), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 %m.0, i64 0, metadata !24, metadata !31), !dbg !32
  store i8 %f.0, i8* @_ZL12timer0_fract, align 1, !dbg !42, !tbaa !34
  store volatile i32 %m.0, i32* @timer0_millis, align 1, !dbg !43, !tbaa !27
  %2 = load volatile i32, i32* @timer0_overflow_count, align 1, !dbg !44, !tbaa !27
  %inc = add i32 %2, 1, !dbg !44
  store volatile i32 %inc, i32* @timer0_overflow_count, align 1, !dbg !44, !tbaa !27
  ret void, !dbg !45
}

; Function Attrs: nounwind
define i32 @millis() local_unnamed_addr #0 !dbg !46 {
entry:
  %0 = load volatile i8, i8* inttoptr (i16 95 to i8*), align 1, !dbg !52, !tbaa !34
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !51, metadata !31), !dbg !53
  tail call void asm sideeffect "cli", "~{memory}"() #4, !dbg !54, !srcloc !55
  %1 = load volatile i32, i32* @timer0_millis, align 1, !dbg !56, !tbaa !27
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !50, metadata !31), !dbg !57
  store volatile i8 %0, i8* inttoptr (i16 95 to i8*), align 1, !dbg !58, !tbaa !34
  ret i32 %1, !dbg !59
}

; Function Attrs: nounwind
define i32 @micros() local_unnamed_addr #0 !dbg !60 {
entry:
  %0 = load volatile i8, i8* inttoptr (i16 95 to i8*), align 1, !dbg !65, !tbaa !34
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !63, metadata !31), !dbg !66
  tail call void asm sideeffect "cli", "~{memory}"() #4, !dbg !67, !srcloc !68
  %1 = load volatile i32, i32* @timer0_overflow_count, align 1, !dbg !69, !tbaa !27
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !62, metadata !31), !dbg !70
  %2 = load volatile i8, i8* inttoptr (i16 70 to i8*), align 2, !dbg !71, !tbaa !34
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !64, metadata !31), !dbg !72
  %3 = load volatile i8, i8* inttoptr (i16 53 to i8*), align 1, !dbg !73, !tbaa !34
  %4 = and i8 %3, 1, !dbg !75
  %notlhs = icmp ne i8 %4, 0, !dbg !76
  %notrhs = icmp ne i8 %2, -1, !dbg !76
  %not.or.cond = and i1 %notrhs, %notlhs, !dbg !76
  %inc = zext i1 %not.or.cond to i32, !dbg !76
  %m.0 = add i32 %inc, %1, !dbg !76
  tail call void @llvm.dbg.value(metadata i32 %m.0, i64 0, metadata !62, metadata !31), !dbg !70
  store volatile i8 %0, i8* inttoptr (i16 95 to i8*), align 1, !dbg !77, !tbaa !34
  %shl = shl i32 %m.0, 8, !dbg !78
  %conv2 = zext i8 %2 to i32, !dbg !79
  %add = or i32 %shl, %conv2, !dbg !80
  %mul = shl i32 %add, 2, !dbg !81
  ret i32 %mul, !dbg !82
}

define void @delay(i32 %ms) local_unnamed_addr #1 !dbg !83 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %ms, i64 0, metadata !87, metadata !31), !dbg !90
  %0 = load volatile i8, i8* inttoptr (i16 95 to i8*), align 1, !dbg !91, !tbaa !34
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !63, metadata !31) #4, !dbg !93
  tail call void asm sideeffect "cli", "~{memory}"() #4, !dbg !94, !srcloc !68
  %1 = load volatile i32, i32* @timer0_overflow_count, align 1, !dbg !95, !tbaa !27
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !62, metadata !31) #4, !dbg !96
  %2 = load volatile i8, i8* inttoptr (i16 70 to i8*), align 2, !dbg !97, !tbaa !34
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !64, metadata !31) #4, !dbg !98
  %3 = load volatile i8, i8* inttoptr (i16 53 to i8*), align 1, !dbg !99, !tbaa !34
  tail call void @llvm.dbg.value(metadata i32 %m.0.i, i64 0, metadata !62, metadata !31) #4, !dbg !96
  store volatile i8 %0, i8* inttoptr (i16 95 to i8*), align 1, !dbg !100, !tbaa !34
  tail call void @llvm.dbg.value(metadata i32 %mul.i, i64 0, metadata !88, metadata !31), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %mul.i, i64 0, metadata !88, metadata !31), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %ms, i64 0, metadata !87, metadata !31), !dbg !90
  %cmp26 = icmp eq i32 %ms, 0, !dbg !102
  br i1 %cmp26, label %while.end6, label %while.body.preheader, !dbg !104

while.body.preheader:                             ; preds = %entry
  %notrhs.i = icmp ne i8 %2, -1, !dbg !105
  %4 = and i8 %3, 1, !dbg !106
  %notlhs.i = icmp ne i8 %4, 0, !dbg !105
  %not.or.cond.i = and i1 %notrhs.i, %notlhs.i, !dbg !105
  %inc.i = zext i1 %not.or.cond.i to i32, !dbg !105
  %m.0.i = add i32 %inc.i, %1, !dbg !105
  %shl.i = shl i32 %m.0.i, 8, !dbg !107
  %conv2.i = zext i8 %2 to i32, !dbg !108
  %add.i = or i32 %shl.i, %conv2.i, !dbg !109
  %mul.i = shl i32 %add.i, 2, !dbg !110
  br label %land.rhs.preheader, !dbg !111

land.rhs.preheader.loopexit:                      ; preds = %land.rhs
  br label %land.rhs.preheader, !dbg !111

land.rhs.preheader:                               ; preds = %land.rhs.preheader.loopexit, %while.body.preheader
  %start.028 = phi i32 [ %mul.i, %while.body.preheader ], [ %start.122, %land.rhs.preheader.loopexit ]
  %ms.addr.027 = phi i32 [ %ms, %while.body.preheader ], [ %ms.addr.121, %land.rhs.preheader.loopexit ]
  tail call void @yield(), !dbg !111
  tail call void @llvm.dbg.value(metadata i32 %start.028, i64 0, metadata !88, metadata !31), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %ms.addr.027, i64 0, metadata !87, metadata !31), !dbg !90
  br label %land.rhs, !dbg !113

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body5
  %start.122 = phi i32 [ %add, %while.body5 ], [ %start.028, %land.rhs.preheader ]
  %ms.addr.121 = phi i32 [ %dec, %while.body5 ], [ %ms.addr.027, %land.rhs.preheader ]
  %5 = load volatile i8, i8* inttoptr (i16 95 to i8*), align 1, !dbg !113, !tbaa !34
  tail call void @llvm.dbg.value(metadata i8 %5, i64 0, metadata !63, metadata !31) #4, !dbg !116
  tail call void asm sideeffect "cli", "~{memory}"() #4, !dbg !117, !srcloc !68
  %6 = load volatile i32, i32* @timer0_overflow_count, align 1, !dbg !118, !tbaa !27
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !62, metadata !31) #4, !dbg !119
  %7 = load volatile i8, i8* inttoptr (i16 70 to i8*), align 2, !dbg !120, !tbaa !34
  tail call void @llvm.dbg.value(metadata i8 %7, i64 0, metadata !64, metadata !31) #4, !dbg !121
  %8 = load volatile i8, i8* inttoptr (i16 53 to i8*), align 1, !dbg !122, !tbaa !34
  %9 = and i8 %8, 1, !dbg !123
  %notlhs.i11 = icmp ne i8 %9, 0, !dbg !124
  %notrhs.i12 = icmp ne i8 %7, -1, !dbg !124
  %not.or.cond.i13 = and i1 %notrhs.i12, %notlhs.i11, !dbg !124
  %inc.i14 = zext i1 %not.or.cond.i13 to i32, !dbg !124
  %m.0.i15 = add i32 %inc.i14, %6, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %m.0.i15, i64 0, metadata !62, metadata !31) #4, !dbg !119
  store volatile i8 %5, i8* inttoptr (i16 95 to i8*), align 1, !dbg !125, !tbaa !34
  %shl.i16 = shl i32 %m.0.i15, 8, !dbg !126
  %conv2.i17 = zext i8 %7 to i32, !dbg !127
  %add.i18 = or i32 %shl.i16, %conv2.i17, !dbg !128
  %mul.i19 = shl i32 %add.i18, 2, !dbg !129
  %sub = sub i32 %mul.i19, %start.122, !dbg !130
  %cmp4 = icmp ugt i32 %sub, 999, !dbg !131
  br i1 %cmp4, label %while.body5, label %land.rhs.preheader.loopexit, !dbg !132, !llvm.loop !134

while.body5:                                      ; preds = %land.rhs
  %dec = add i32 %ms.addr.121, -1, !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !87, metadata !31), !dbg !90
  %add = add i32 %start.122, 1000, !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !88, metadata !31), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !88, metadata !31), !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !87, metadata !31), !dbg !90
  %cmp2 = icmp eq i32 %dec, 0, !dbg !140
  br i1 %cmp2, label %while.end6.loopexit, label %land.rhs, !dbg !142, !llvm.loop !143

while.end6.loopexit:                              ; preds = %while.body5
  br label %while.end6, !dbg !146

while.end6:                                       ; preds = %while.end6.loopexit, %entry
  ret void, !dbg !146
}

declare void @yield() local_unnamed_addr #2

; Function Attrs: nounwind
define void @delayMicroseconds(i16 %us) local_unnamed_addr #0 !dbg !147 {
entry:
  tail call void @llvm.dbg.value(metadata i16 %us, i64 0, metadata !151, metadata !31), !dbg !152
  %cmp = icmp ult i16 %us, 2, !dbg !153
  br i1 %cmp, label %return, label %if.end, !dbg !155

if.end:                                           ; preds = %entry
  %shl = shl i16 %us, 2, !dbg !156
  tail call void @llvm.dbg.value(metadata i16 %shl, i64 0, metadata !151, metadata !31), !dbg !152
  %sub = add i16 %shl, -5, !dbg !157
  tail call void @llvm.dbg.value(metadata i16 %sub, i64 0, metadata !151, metadata !31), !dbg !152
  %0 = tail call i16 asm sideeffect "1: sbiw $0,1\0A\09brne 1b", "=w,0"(i16 %sub) #4, !dbg !158, !srcloc !159
  tail call void @llvm.dbg.value(metadata i16 %0, i64 0, metadata !151, metadata !31), !dbg !152
  br label %return, !dbg !160

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !161
}

; Function Attrs: nounwind
define void @init() local_unnamed_addr #0 !dbg !163 {
entry:
  tail call void asm sideeffect "sei", "~{memory}"() #4, !dbg !164, !srcloc !165
  %0 = load volatile i8, i8* inttoptr (i16 68 to i8*), align 4, !dbg !166, !tbaa !34
  %1 = or i8 %0, 2, !dbg !166
  store volatile i8 %1, i8* inttoptr (i16 68 to i8*), align 4, !dbg !166, !tbaa !34
  %2 = load volatile i8, i8* inttoptr (i16 68 to i8*), align 4, !dbg !167, !tbaa !34
  %3 = or i8 %2, 1, !dbg !167
  store volatile i8 %3, i8* inttoptr (i16 68 to i8*), align 4, !dbg !167, !tbaa !34
  %4 = load volatile i8, i8* inttoptr (i16 69 to i8*), align 1, !dbg !168, !tbaa !34
  %5 = or i8 %4, 2, !dbg !168
  store volatile i8 %5, i8* inttoptr (i16 69 to i8*), align 1, !dbg !168, !tbaa !34
  %6 = load volatile i8, i8* inttoptr (i16 69 to i8*), align 1, !dbg !169, !tbaa !34
  %7 = or i8 %6, 1, !dbg !169
  store volatile i8 %7, i8* inttoptr (i16 69 to i8*), align 1, !dbg !169, !tbaa !34
  %8 = load volatile i8, i8* inttoptr (i16 110 to i8*), align 2, !dbg !170, !tbaa !34
  %9 = or i8 %8, 1, !dbg !170
  store volatile i8 %9, i8* inttoptr (i16 110 to i8*), align 2, !dbg !170, !tbaa !34
  store volatile i8 0, i8* inttoptr (i16 129 to i8*), align 1, !dbg !171, !tbaa !34
  %10 = load volatile i8, i8* inttoptr (i16 129 to i8*), align 1, !dbg !172, !tbaa !34
  %11 = or i8 %10, 2, !dbg !172
  store volatile i8 %11, i8* inttoptr (i16 129 to i8*), align 1, !dbg !172, !tbaa !34
  %12 = load volatile i8, i8* inttoptr (i16 129 to i8*), align 1, !dbg !173, !tbaa !34
  %13 = or i8 %12, 1, !dbg !173
  store volatile i8 %13, i8* inttoptr (i16 129 to i8*), align 1, !dbg !173, !tbaa !34
  %14 = load volatile i8, i8* inttoptr (i16 128 to i8*), align 128, !dbg !174, !tbaa !34
  %15 = or i8 %14, 1, !dbg !174
  store volatile i8 %15, i8* inttoptr (i16 128 to i8*), align 128, !dbg !174, !tbaa !34
  %16 = load volatile i8, i8* inttoptr (i16 177 to i8*), align 1, !dbg !175, !tbaa !34
  %17 = or i8 %16, 4, !dbg !175
  store volatile i8 %17, i8* inttoptr (i16 177 to i8*), align 1, !dbg !175, !tbaa !34
  %18 = load volatile i8, i8* inttoptr (i16 176 to i8*), align 16, !dbg !176, !tbaa !34
  %19 = or i8 %18, 1, !dbg !176
  store volatile i8 %19, i8* inttoptr (i16 176 to i8*), align 16, !dbg !176, !tbaa !34
  %20 = load volatile i8, i8* inttoptr (i16 122 to i8*), align 2, !dbg !177, !tbaa !34
  %21 = or i8 %20, 4, !dbg !177
  store volatile i8 %21, i8* inttoptr (i16 122 to i8*), align 2, !dbg !177, !tbaa !34
  %22 = load volatile i8, i8* inttoptr (i16 122 to i8*), align 2, !dbg !178, !tbaa !34
  %23 = or i8 %22, 2, !dbg !178
  store volatile i8 %23, i8* inttoptr (i16 122 to i8*), align 2, !dbg !178, !tbaa !34
  %24 = load volatile i8, i8* inttoptr (i16 122 to i8*), align 2, !dbg !179, !tbaa !34
  %25 = or i8 %24, 1, !dbg !179
  store volatile i8 %25, i8* inttoptr (i16 122 to i8*), align 2, !dbg !179, !tbaa !34
  %26 = load volatile i8, i8* inttoptr (i16 122 to i8*), align 2, !dbg !180, !tbaa !34
  %27 = or i8 %26, -128, !dbg !180
  store volatile i8 %27, i8* inttoptr (i16 122 to i8*), align 2, !dbg !180, !tbaa !34
  store volatile i8 0, i8* inttoptr (i16 193 to i8*), align 1, !dbg !181, !tbaa !34
  ret void, !dbg !182
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = distinct !DIGlobalVariable(name: "timer0_overflow_count", scope: !1, file: !2, line: 38, type: !14, isLocal: false, isDefinition: true)
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !4, globals: !12)
!2 = !DIFile(filename: "Arduino/wiring.c", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!3 = !{}
!4 = !{!5, !10}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 16)
!6 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 126, baseType: !9)
!8 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdint.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 128, baseType: !11)
!11 = !DIBasicType(name: "unsigned int", size: 16, encoding: DW_ATE_unsigned)
!12 = !{!0, !13, !16}
!13 = distinct !DIGlobalVariable(name: "timer0_millis", scope: !1, file: !2, line: 39, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = distinct !DIGlobalVariable(name: "timer0_fract", linkageName: "_ZL12timer0_fract", scope: !1, file: !2, line: 40, type: !9, isLocal: true, isDefinition: true)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!20 = distinct !DISubprogram(name: "__vector_16", scope: !2, file: !2, line: 45, type: !21, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !{!24, !25}
!24 = !DILocalVariable(name: "m", scope: !20, file: !2, line: 50, type: !15)
!25 = !DILocalVariable(name: "f", scope: !20, file: !2, line: 51, type: !9)
!26 = !DILocation(line: 50, column: 20, scope: !20)
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C++ TBAA"}
!31 = !DIExpression()
!32 = !DILocation(line: 50, column: 16, scope: !20)
!33 = !DILocation(line: 51, column: 20, scope: !20)
!34 = !{!29, !29, i64 0}
!35 = !DILocation(line: 51, column: 16, scope: !20)
!36 = !DILocation(line: 54, column: 4, scope: !20)
!37 = !DILocation(line: 55, column: 8, scope: !38)
!38 = distinct !DILexicalBlock(scope: !20, file: !2, line: 55, column: 6)
!39 = !DILocation(line: 56, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !2, line: 55, column: 22)
!41 = !DILocation(line: 55, column: 6, scope: !20)
!42 = !DILocation(line: 60, column: 15, scope: !20)
!43 = !DILocation(line: 61, column: 16, scope: !20)
!44 = !DILocation(line: 62, column: 23, scope: !20)
!45 = !DILocation(line: 63, column: 1, scope: !20)
!46 = distinct !DISubprogram(name: "millis", scope: !2, file: !2, line: 65, type: !47, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!15}
!49 = !{!50, !51}
!50 = !DILocalVariable(name: "m", scope: !46, file: !2, line: 67, type: !15)
!51 = !DILocalVariable(name: "oldSREG", scope: !46, file: !2, line: 68, type: !7)
!52 = !DILocation(line: 68, column: 20, scope: !46)
!53 = !DILocation(line: 68, column: 10, scope: !46)
!54 = !DILocation(line: 72, column: 2, scope: !46)
!55 = !{i32 -2147018059}
!56 = !DILocation(line: 73, column: 6, scope: !46)
!57 = !DILocation(line: 67, column: 16, scope: !46)
!58 = !DILocation(line: 74, column: 7, scope: !46)
!59 = !DILocation(line: 76, column: 2, scope: !46)
!60 = distinct !DISubprogram(name: "micros", scope: !2, file: !2, line: 79, type: !47, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !61)
!61 = !{!62, !63, !64}
!62 = !DILocalVariable(name: "m", scope: !60, file: !2, line: 80, type: !15)
!63 = !DILocalVariable(name: "oldSREG", scope: !60, file: !2, line: 81, type: !7)
!64 = !DILocalVariable(name: "t", scope: !60, file: !2, line: 81, type: !7)
!65 = !DILocation(line: 81, column: 20, scope: !60)
!66 = !DILocation(line: 81, column: 10, scope: !60)
!67 = !DILocation(line: 83, column: 2, scope: !60)
!68 = !{i32 -2147017793}
!69 = !DILocation(line: 84, column: 6, scope: !60)
!70 = !DILocation(line: 80, column: 16, scope: !60)
!71 = !DILocation(line: 86, column: 6, scope: !60)
!72 = !DILocation(line: 81, column: 26, scope: !60)
!73 = !DILocation(line: 94, column: 7, scope: !74)
!74 = distinct !DILexicalBlock(scope: !60, file: !2, line: 94, column: 6)
!75 = !DILocation(line: 94, column: 13, scope: !74)
!76 = !DILocation(line: 94, column: 26, scope: !74)
!77 = !DILocation(line: 101, column: 7, scope: !60)
!78 = !DILocation(line: 103, column: 13, scope: !60)
!79 = !DILocation(line: 103, column: 21, scope: !60)
!80 = !DILocation(line: 103, column: 19, scope: !60)
!81 = !DILocation(line: 103, column: 24, scope: !60)
!82 = !DILocation(line: 103, column: 2, scope: !60)
!83 = distinct !DISubprogram(name: "delay", scope: !2, file: !2, line: 106, type: !84, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !15}
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "ms", arg: 1, scope: !83, file: !2, line: 106, type: !15)
!88 = !DILocalVariable(name: "start", scope: !83, file: !2, line: 108, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 130, baseType: !15)
!90 = !DILocation(line: 106, column: 26, scope: !83)
!91 = !DILocation(line: 81, column: 20, scope: !60, inlinedAt: !92)
!92 = distinct !DILocation(line: 108, column: 19, scope: !83)
!93 = !DILocation(line: 81, column: 10, scope: !60, inlinedAt: !92)
!94 = !DILocation(line: 83, column: 2, scope: !60, inlinedAt: !92)
!95 = !DILocation(line: 84, column: 6, scope: !60, inlinedAt: !92)
!96 = !DILocation(line: 80, column: 16, scope: !60, inlinedAt: !92)
!97 = !DILocation(line: 86, column: 6, scope: !60, inlinedAt: !92)
!98 = !DILocation(line: 81, column: 26, scope: !60, inlinedAt: !92)
!99 = !DILocation(line: 94, column: 7, scope: !74, inlinedAt: !92)
!100 = !DILocation(line: 101, column: 7, scope: !60, inlinedAt: !92)
!101 = !DILocation(line: 108, column: 11, scope: !83)
!102 = !DILocation(line: 110, column: 12, scope: !103)
!103 = !DILexicalBlockFile(scope: !83, file: !2, discriminator: 1)
!104 = !DILocation(line: 110, column: 2, scope: !103)
!105 = !DILocation(line: 94, column: 26, scope: !74, inlinedAt: !92)
!106 = !DILocation(line: 94, column: 13, scope: !74, inlinedAt: !92)
!107 = !DILocation(line: 103, column: 13, scope: !60, inlinedAt: !92)
!108 = !DILocation(line: 103, column: 21, scope: !60, inlinedAt: !92)
!109 = !DILocation(line: 103, column: 19, scope: !60, inlinedAt: !92)
!110 = !DILocation(line: 103, column: 24, scope: !60, inlinedAt: !92)
!111 = !DILocation(line: 111, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !83, file: !2, line: 110, column: 17)
!113 = !DILocation(line: 81, column: 20, scope: !60, inlinedAt: !114)
!114 = distinct !DILocation(line: 112, column: 22, scope: !115)
!115 = !DILexicalBlockFile(scope: !112, file: !2, discriminator: 2)
!116 = !DILocation(line: 81, column: 10, scope: !60, inlinedAt: !114)
!117 = !DILocation(line: 83, column: 2, scope: !60, inlinedAt: !114)
!118 = !DILocation(line: 84, column: 6, scope: !60, inlinedAt: !114)
!119 = !DILocation(line: 80, column: 16, scope: !60, inlinedAt: !114)
!120 = !DILocation(line: 86, column: 6, scope: !60, inlinedAt: !114)
!121 = !DILocation(line: 81, column: 26, scope: !60, inlinedAt: !114)
!122 = !DILocation(line: 94, column: 7, scope: !74, inlinedAt: !114)
!123 = !DILocation(line: 94, column: 13, scope: !74, inlinedAt: !114)
!124 = !DILocation(line: 94, column: 26, scope: !74, inlinedAt: !114)
!125 = !DILocation(line: 101, column: 7, scope: !60, inlinedAt: !114)
!126 = !DILocation(line: 103, column: 13, scope: !60, inlinedAt: !114)
!127 = !DILocation(line: 103, column: 21, scope: !60, inlinedAt: !114)
!128 = !DILocation(line: 103, column: 19, scope: !60, inlinedAt: !114)
!129 = !DILocation(line: 103, column: 24, scope: !60, inlinedAt: !114)
!130 = !DILocation(line: 112, column: 31, scope: !115)
!131 = !DILocation(line: 112, column: 40, scope: !115)
!132 = !DILocation(line: 112, column: 3, scope: !133)
!133 = !DILexicalBlockFile(scope: !112, file: !2, discriminator: 3)
!134 = distinct !{!134, !135, !136}
!135 = !DILocation(line: 110, column: 2, scope: !83)
!136 = !DILocation(line: 116, column: 2, scope: !83)
!137 = !DILocation(line: 113, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !2, line: 112, column: 49)
!139 = !DILocation(line: 114, column: 10, scope: !138)
!140 = !DILocation(line: 112, column: 14, scope: !141)
!141 = !DILexicalBlockFile(scope: !112, file: !2, discriminator: 1)
!142 = !DILocation(line: 112, column: 18, scope: !141)
!143 = distinct !{!143, !144, !145}
!144 = !DILocation(line: 112, column: 3, scope: !112)
!145 = !DILocation(line: 115, column: 3, scope: !112)
!146 = !DILocation(line: 117, column: 1, scope: !83)
!147 = distinct !DISubprogram(name: "delayMicroseconds", scope: !2, file: !2, line: 120, type: !148, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !11}
!150 = !{!151}
!151 = !DILocalVariable(name: "us", arg: 1, scope: !147, file: !2, line: 120, type: !11)
!152 = !DILocation(line: 120, column: 37, scope: !147)
!153 = !DILocation(line: 170, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !2, line: 170, column: 6)
!155 = !DILocation(line: 170, column: 6, scope: !147)
!156 = !DILocation(line: 175, column: 5, scope: !147)
!157 = !DILocation(line: 180, column: 5, scope: !147)
!158 = !DILocation(line: 234, column: 2, scope: !147)
!159 = !{i32 7204, i32 7222}
!160 = !DILocation(line: 239, column: 1, scope: !147)
!161 = !DILocation(line: 239, column: 1, scope: !162)
!162 = !DILexicalBlockFile(scope: !147, file: !2, discriminator: 1)
!163 = distinct !DISubprogram(name: "init", scope: !2, file: !2, line: 241, type: !21, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !3)
!164 = !DILocation(line: 245, column: 2, scope: !163)
!165 = !{i32 -2147017337}
!166 = !DILocation(line: 251, column: 2, scope: !163)
!167 = !DILocation(line: 252, column: 2, scope: !163)
!168 = !DILocation(line: 265, column: 2, scope: !163)
!169 = !DILocation(line: 266, column: 2, scope: !163)
!170 = !DILocation(line: 279, column: 2, scope: !163)
!171 = !DILocation(line: 290, column: 9, scope: !163)
!172 = !DILocation(line: 293, column: 2, scope: !163)
!173 = !DILocation(line: 295, column: 2, scope: !163)
!174 = !DILocation(line: 305, column: 2, scope: !163)
!175 = !DILocation(line: 312, column: 2, scope: !163)
!176 = !DILocation(line: 321, column: 2, scope: !163)
!177 = !DILocation(line: 356, column: 3, scope: !163)
!178 = !DILocation(line: 357, column: 3, scope: !163)
!179 = !DILocation(line: 358, column: 3, scope: !163)
!180 = !DILocation(line: 381, column: 2, scope: !163)
!181 = !DILocation(line: 390, column: 9, scope: !163)
!182 = !DILocation(line: 392, column: 1, scope: !163)
