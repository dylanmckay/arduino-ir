; ModuleID = 'Arduino/WString.cpp'
source_filename = "Arduino/WString.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

%class.String = type { i8*, i16, i16 }
%class.__FlashStringHelper = type opaque
%class.StringSumHelper = type { %class.String }

@_ZZN6StringixEjE19dummy_writable_char = internal global i8 0, align 1, !dbg !0

@_ZN6StringC1EPKc = alias void (%class.String*, i8*), void (%class.String*, i8*)* @_ZN6StringC2EPKc
@_ZN6StringC1ERKS_ = alias void (%class.String*, %class.String*), void (%class.String*, %class.String*)* @_ZN6StringC2ERKS_
@_ZN6StringC1EPK19__FlashStringHelper = alias void (%class.String*, %class.__FlashStringHelper*), void (%class.String*, %class.__FlashStringHelper*)* @_ZN6StringC2EPK19__FlashStringHelper
@_ZN6StringC1Ec = alias void (%class.String*, i8), void (%class.String*, i8)* @_ZN6StringC2Ec
@_ZN6StringC1Ehh = alias void (%class.String*, i8, i8), void (%class.String*, i8, i8)* @_ZN6StringC2Ehh
@_ZN6StringC1Eih = alias void (%class.String*, i16, i8), void (%class.String*, i16, i8)* @_ZN6StringC2Eih
@_ZN6StringC1Ejh = alias void (%class.String*, i16, i8), void (%class.String*, i16, i8)* @_ZN6StringC2Ejh
@_ZN6StringC1Elh = alias void (%class.String*, i32, i8), void (%class.String*, i32, i8)* @_ZN6StringC2Elh
@_ZN6StringC1Emh = alias void (%class.String*, i32, i8), void (%class.String*, i32, i8)* @_ZN6StringC2Emh
@_ZN6StringC1Efh = alias void (%class.String*, float, i8), void (%class.String*, float, i8)* @_ZN6StringC2Efh
@_ZN6StringC1Edh = alias void (%class.String*, float, i8), void (%class.String*, float, i8)* @_ZN6StringC2Edh
@_ZN6StringD1Ev = alias void (%class.String*), void (%class.String*)* @_ZN6StringD2Ev

; Function Attrs: nounwind
define void @_ZN6StringC2EPKc(%class.String* nocapture %this, i8* readonly %cstr) unnamed_addr #0 align 2 !dbg !262 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !264, metadata !266), !dbg !267
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !265, metadata !266), !dbg !268
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !272
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !275
  store i8* null, i8** %buffer.i, align 1, !dbg !276, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !283
  store i16 0, i16* %capacity.i, align 1, !dbg !284, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !286
  store i16 0, i16* %len.i, align 1, !dbg !287, !tbaa !288
  %tobool = icmp eq i8* %cstr, null, !dbg !289
  br i1 %tobool, label %if.end, label %if.end.i.i, !dbg !291

if.end.i.i:                                       ; preds = %entry
  %call = tail call i16 @strlen(i8* nonnull %cstr) #9, !dbg !292
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !299
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !297, metadata !266) #10, !dbg !302
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !298, metadata !266) #10, !dbg !303
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !308
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !307, metadata !266) #10, !dbg !311
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !317
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !315, metadata !266) #10, !dbg !320
  %add.i.i.i = add i16 %call, 1, !dbg !321
  %call.i.i.i = tail call noalias i8* @realloc(i8* null, i16 %add.i.i.i) #10, !dbg !322
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !323
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !324
  br i1 %tobool.i.i.i, label %if.then.i, label %if.then3.i.i, !dbg !326

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i, align 1, !dbg !327, !tbaa !277
  store i16 %call, i16* %capacity.i, align 1, !dbg !329, !tbaa !285
  %0 = load i16, i16* %len.i, align 1, !dbg !330, !tbaa !288
  %cmp4.i.i = icmp eq i16 %0, 0, !dbg !333
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end.i, !dbg !334

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !335, !tbaa !337
  br label %if.end.i, !dbg !338

if.then.i:                                        ; preds = %if.end.i.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !342
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !345, !tbaa !277
  %tobool.i5.i = icmp eq i8* %1, null, !dbg !345
  br i1 %tobool.i5.i, label %_ZN6String10invalidateEv.exit.i, label %if.then.i.i, !dbg !347

if.then.i.i:                                      ; preds = %if.then.i
  tail call void @free(i8* nonnull %1) #10, !dbg !348
  br label %_ZN6String10invalidateEv.exit.i, !dbg !348

_ZN6String10invalidateEv.exit.i:                  ; preds = %if.then.i.i, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !350, !tbaa !277
  store i16 0, i16* %len.i, align 1, !dbg !351, !tbaa !288
  store i16 0, i16* %capacity.i, align 1, !dbg !352, !tbaa !285
  br label %if.end, !dbg !353

if.end.i:                                         ; preds = %if.then5.i.i, %if.then3.i.i
  store i16 %call, i16* %len.i, align 1, !dbg !354, !tbaa !288
  %call2.i = tail call i8* @strcpy(i8* nonnull %call.i.i.i, i8* nonnull %cstr) #10, !dbg !355
  br label %if.end, !dbg !356

if.end:                                           ; preds = %if.end.i, %_ZN6String10invalidateEv.exit.i, %entry
  ret void, !dbg !357
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define dereferenceable(6) %class.String* @_ZN6String4copyEPKcj(%class.String* returned %this, i8* nocapture readonly %cstr, i16 %length) local_unnamed_addr #0 align 2 !dbg !295 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266), !dbg !358
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !297, metadata !266), !dbg !359
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !298, metadata !266), !dbg !360
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !361
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !307, metadata !266) #10, !dbg !363
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !364
  %0 = load i8*, i8** %buffer.i, align 1, !dbg !364, !tbaa !277
  %tobool.i = icmp eq i8* %0, null, !dbg !364
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true.i, !dbg !366

land.lhs.true.i:                                  ; preds = %entry
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !367
  %1 = load i16, i16* %capacity.i, align 1, !dbg !367, !tbaa !285
  %cmp.i = icmp ult i16 %1, %length, !dbg !369
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i.if.end_crit_edge, !dbg !370

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  %.pre = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !372
  br label %if.end, !dbg !370

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !373
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !315, metadata !266) #10, !dbg !375
  %add.i.i = add i16 %length, 1, !dbg !376
  %call.i.i = tail call noalias i8* @realloc(i8* %0, i16 %add.i.i) #10, !dbg !377
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !378
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !379
  br i1 %tobool.i.i, label %if.then, label %if.then3.i, !dbg !380

if.then3.i:                                       ; preds = %if.end.i
  store i8* %call.i.i, i8** %buffer.i, align 1, !dbg !381, !tbaa !277
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !382
  store i16 %length, i16* %capacity.i.i, align 1, !dbg !383, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !384
  %2 = load i16, i16* %len.i, align 1, !dbg !384, !tbaa !288
  %cmp4.i = icmp eq i16 %2, 0, !dbg !385
  br i1 %cmp4.i, label %if.then5.i, label %if.end, !dbg !386

if.then5.i:                                       ; preds = %if.then3.i
  store i8 0, i8* %call.i.i, align 1, !dbg !387, !tbaa !337
  br label %if.end, !dbg !388

if.then:                                          ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !389
  %3 = load i8*, i8** %buffer.i, align 1, !dbg !391, !tbaa !277
  %tobool.i5 = icmp eq i8* %3, null, !dbg !391
  br i1 %tobool.i5, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !392

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %3) #10, !dbg !393
  br label %_ZN6String10invalidateEv.exit, !dbg !393

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !394, !tbaa !277
  %len.i6 = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !395
  store i16 0, i16* %len.i6, align 1, !dbg !396, !tbaa !288
  %capacity.i7 = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !397
  store i16 0, i16* %capacity.i7, align 1, !dbg !398, !tbaa !285
  br label %return, !dbg !399

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.then5.i, %if.then3.i
  %len.pre-phi = phi i16* [ %.pre, %land.lhs.true.i.if.end_crit_edge ], [ %len.i, %if.then5.i ], [ %len.i, %if.then3.i ], !dbg !372
  %4 = phi i8* [ %0, %land.lhs.true.i.if.end_crit_edge ], [ %call.i.i, %if.then5.i ], [ %call.i.i, %if.then3.i ], !dbg !400
  store i16 %length, i16* %len.pre-phi, align 1, !dbg !401, !tbaa !288
  %call2 = tail call i8* @strcpy(i8* nonnull %4, i8* %cstr), !dbg !402
  br label %return, !dbg !403

return:                                           ; preds = %if.end, %_ZN6String10invalidateEv.exit
  ret %class.String* %this, !dbg !404
}

; Function Attrs: nounwind readonly
declare i16 @strlen(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
define void @_ZN6StringC2ERKS_(%class.String* %this, %class.String* readonly dereferenceable(6) %value) unnamed_addr #0 align 2 !dbg !405 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !407, metadata !266), !dbg !409
  tail call void @llvm.dbg.value(metadata %class.String* %value, i64 0, metadata !408, metadata !266), !dbg !410
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !411
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !414
  store i8* null, i8** %buffer.i, align 1, !dbg !415, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !416
  store i16 0, i16* %capacity.i, align 1, !dbg !417, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !418
  store i16 0, i16* %len.i, align 1, !dbg !419, !tbaa !288
  %call = tail call dereferenceable(6) %class.String* @_ZN6StringaSERKS_(%class.String* %this, %class.String* nonnull dereferenceable(6) %value), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: nounwind
define dereferenceable(6) %class.String* @_ZN6StringaSERKS_(%class.String* returned %this, %class.String* readonly dereferenceable(6) %rhs) local_unnamed_addr #0 align 2 !dbg !422 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !424, metadata !266), !dbg !426
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !425, metadata !266), !dbg !427
  %cmp = icmp eq %class.String* %this, %rhs, !dbg !428
  br i1 %cmp, label %return, label %if.end, !dbg !430

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 0, !dbg !431
  %0 = load i8*, i8** %buffer, align 1, !dbg !431, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !433
  br i1 %tobool, label %if.else, label %if.then2, !dbg !434

if.then2:                                         ; preds = %if.end
  %len = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 2, !dbg !435
  %1 = load i16, i16* %len, align 1, !dbg !435, !tbaa !288
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !437
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !297, metadata !266) #10, !dbg !439
  tail call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !298, metadata !266) #10, !dbg !440
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !441
  tail call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !307, metadata !266) #10, !dbg !443
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !444
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !444, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !444
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !445

land.lhs.true.i.i:                                ; preds = %if.then2
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !446
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !446, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %1, !dbg !447
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.if.end_crit_edge.i, !dbg !448

land.lhs.true.i.if.end_crit_edge.i:               ; preds = %land.lhs.true.i.i
  %.pre.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !449
  br label %if.end.i, !dbg !448

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then2
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !450
  tail call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !315, metadata !266) #10, !dbg !452
  %add.i.i.i = add i16 %1, 1, !dbg !453
  %call.i.i.i = tail call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !454
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !455
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !456
  br i1 %tobool.i.i.i, label %if.then.i, label %if.then3.i.i, !dbg !457

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !458, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !459
  store i16 %1, i16* %capacity.i.i.i, align 1, !dbg !460, !tbaa !285
  %len.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !461
  %4 = load i16, i16* %len.i.i, align 1, !dbg !461, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !462
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end.i, !dbg !463

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !464, !tbaa !337
  br label %if.end.i, !dbg !465

if.then.i:                                        ; preds = %if.end.i.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !466
  %5 = load i8*, i8** %buffer.i.i, align 1, !dbg !468, !tbaa !277
  %tobool.i5.i = icmp eq i8* %5, null, !dbg !468
  br i1 %tobool.i5.i, label %_ZN6String10invalidateEv.exit.i, label %if.then.i.i, !dbg !469

if.then.i.i:                                      ; preds = %if.then.i
  tail call void @free(i8* nonnull %5) #10, !dbg !470
  br label %_ZN6String10invalidateEv.exit.i, !dbg !470

_ZN6String10invalidateEv.exit.i:                  ; preds = %if.then.i.i, %if.then.i
  store i8* null, i8** %buffer.i.i, align 1, !dbg !471, !tbaa !277
  %len.i6.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !472
  store i16 0, i16* %len.i6.i, align 1, !dbg !473, !tbaa !288
  %capacity.i7.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !474
  store i16 0, i16* %capacity.i7.i, align 1, !dbg !475, !tbaa !285
  br label %return, !dbg !476

if.end.i:                                         ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.if.end_crit_edge.i
  %len.pre-phi.i = phi i16* [ %.pre.i, %land.lhs.true.i.if.end_crit_edge.i ], [ %len.i.i, %if.then5.i.i ], [ %len.i.i, %if.then3.i.i ], !dbg !449
  %6 = phi i8* [ %2, %land.lhs.true.i.if.end_crit_edge.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !477
  store i16 %1, i16* %len.pre-phi.i, align 1, !dbg !478, !tbaa !288
  %call2.i = tail call i8* @strcpy(i8* nonnull %6, i8* nonnull %0) #10, !dbg !479
  br label %return, !dbg !480

if.else:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !481
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !483
  %7 = load i8*, i8** %buffer.i, align 1, !dbg !483, !tbaa !277
  %tobool.i = icmp eq i8* %7, null, !dbg !483
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i8, !dbg !484

if.then.i8:                                       ; preds = %if.else
  tail call void @free(i8* nonnull %7) #10, !dbg !485
  br label %_ZN6String10invalidateEv.exit, !dbg !485

_ZN6String10invalidateEv.exit:                    ; preds = %if.else, %if.then.i8
  store i8* null, i8** %buffer.i, align 1, !dbg !486, !tbaa !277
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !487
  store i16 0, i16* %len.i, align 1, !dbg !488, !tbaa !288
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !489
  store i16 0, i16* %capacity.i, align 1, !dbg !490, !tbaa !285
  br label %return

return:                                           ; preds = %if.end.i, %_ZN6String10invalidateEv.exit.i, %_ZN6String10invalidateEv.exit, %entry
  ret %class.String* %this, !dbg !491
}

define void @_ZN6StringC2EPK19__FlashStringHelper(%class.String* %this, %class.__FlashStringHelper* %pstr) unnamed_addr #3 align 2 !dbg !492 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !494, metadata !266), !dbg !496
  tail call void @llvm.dbg.value(metadata %class.__FlashStringHelper* %pstr, i64 0, metadata !495, metadata !266), !dbg !497
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !498
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !501
  store i8* null, i8** %buffer.i, align 1, !dbg !502, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !503
  store i16 0, i16* %capacity.i, align 1, !dbg !504, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !505
  store i16 0, i16* %len.i, align 1, !dbg !506, !tbaa !288
  %call = tail call dereferenceable(6) %class.String* @_ZN6StringaSEPK19__FlashStringHelper(%class.String* %this, %class.__FlashStringHelper* %pstr), !dbg !507
  ret void, !dbg !508
}

define dereferenceable(6) %class.String* @_ZN6StringaSEPK19__FlashStringHelper(%class.String* returned %this, %class.__FlashStringHelper* %pstr) local_unnamed_addr #3 align 2 !dbg !509 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !511, metadata !266), !dbg !513
  tail call void @llvm.dbg.value(metadata %class.__FlashStringHelper* %pstr, i64 0, metadata !512, metadata !266), !dbg !514
  %tobool = icmp eq %class.__FlashStringHelper* %pstr, null, !dbg !515
  br i1 %tobool, label %if.else, label %if.then, !dbg !517

if.then:                                          ; preds = %entry
  %0 = bitcast %class.__FlashStringHelper* %pstr to i8*, !dbg !518
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !520, metadata !266) #10, !dbg !528
  %call.i = tail call i16 @__strlen_P(i8* %0) #1, !dbg !530
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !531, metadata !266), !dbg !536
  tail call void @llvm.dbg.value(metadata %class.__FlashStringHelper* %pstr, i64 0, metadata !534, metadata !266), !dbg !539
  tail call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !535, metadata !266), !dbg !540
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !541
  tail call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !307, metadata !266) #10, !dbg !544
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !545
  %1 = load i8*, i8** %buffer.i.i, align 1, !dbg !545, !tbaa !277
  %tobool.i.i = icmp eq i8* %1, null, !dbg !545
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !546

land.lhs.true.i.i:                                ; preds = %if.then
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !547
  %2 = load i16, i16* %capacity.i.i, align 1, !dbg !547, !tbaa !285
  %cmp.i.i = icmp ult i16 %2, %call.i, !dbg !548
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.if.end_crit_edge.i, !dbg !549

land.lhs.true.i.if.end_crit_edge.i:               ; preds = %land.lhs.true.i.i
  %.pre.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !550
  br label %if.end.i, !dbg !549

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !551
  tail call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !315, metadata !266) #10, !dbg !553
  %add.i.i.i = add i16 %call.i, 1, !dbg !554
  %call.i.i.i = tail call noalias i8* @realloc(i8* %1, i16 %add.i.i.i) #10, !dbg !555
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !556
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !557
  br i1 %tobool.i.i.i, label %if.then.i, label %if.then3.i.i, !dbg !558

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !559, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !560
  store i16 %call.i, i16* %capacity.i.i.i, align 1, !dbg !561, !tbaa !285
  %len.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !562
  %3 = load i16, i16* %len.i.i, align 1, !dbg !562, !tbaa !288
  %cmp4.i.i = icmp eq i16 %3, 0, !dbg !563
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end.i, !dbg !564

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !565, !tbaa !337
  br label %if.end.i, !dbg !566

if.then.i:                                        ; preds = %if.end.i.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !567
  %4 = load i8*, i8** %buffer.i.i, align 1, !dbg !570, !tbaa !277
  %tobool.i5.i = icmp eq i8* %4, null, !dbg !570
  br i1 %tobool.i5.i, label %_ZN6String10invalidateEv.exit.i, label %if.then.i.i, !dbg !571

if.then.i.i:                                      ; preds = %if.then.i
  tail call void @free(i8* nonnull %4) #10, !dbg !572
  br label %_ZN6String10invalidateEv.exit.i, !dbg !572

_ZN6String10invalidateEv.exit.i:                  ; preds = %if.then.i.i, %if.then.i
  store i8* null, i8** %buffer.i.i, align 1, !dbg !573, !tbaa !277
  %len.i6.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !574
  store i16 0, i16* %len.i6.i, align 1, !dbg !575, !tbaa !288
  %capacity.i7.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !576
  store i16 0, i16* %capacity.i7.i, align 1, !dbg !577, !tbaa !285
  br label %if.end, !dbg !578

if.end.i:                                         ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.if.end_crit_edge.i
  %len.pre-phi.i = phi i16* [ %.pre.i, %land.lhs.true.i.if.end_crit_edge.i ], [ %len.i.i, %if.then5.i.i ], [ %len.i.i, %if.then3.i.i ], !dbg !550
  %5 = phi i8* [ %1, %land.lhs.true.i.if.end_crit_edge.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !579
  store i16 %call.i, i16* %len.pre-phi.i, align 1, !dbg !580, !tbaa !288
  %call2.i = tail call i8* @strcpy_P(i8* nonnull %5, i8* %0), !dbg !581
  br label %if.end, !dbg !582

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !583
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !585
  %6 = load i8*, i8** %buffer.i, align 1, !dbg !585, !tbaa !277
  %tobool.i = icmp eq i8* %6, null, !dbg !585
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i5, !dbg !586

if.then.i5:                                       ; preds = %if.else
  tail call void @free(i8* nonnull %6) #10, !dbg !587
  br label %_ZN6String10invalidateEv.exit, !dbg !587

_ZN6String10invalidateEv.exit:                    ; preds = %if.else, %if.then.i5
  store i8* null, i8** %buffer.i, align 1, !dbg !588, !tbaa !277
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !589
  store i16 0, i16* %len.i, align 1, !dbg !590, !tbaa !288
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !591
  store i16 0, i16* %capacity.i, align 1, !dbg !592, !tbaa !285
  br label %if.end

if.end:                                           ; preds = %if.end.i, %_ZN6String10invalidateEv.exit.i, %_ZN6String10invalidateEv.exit
  ret %class.String* %this, !dbg !593
}

; Function Attrs: nounwind
define void @_ZN6StringC2Ec(%class.String* nocapture %this, i8 signext %c) unnamed_addr #0 align 2 !dbg !594 {
if.end.i.i.i:
  %buf = alloca [2 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !596, metadata !266), !dbg !603
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !597, metadata !266), !dbg !604
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !605
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !607
  store i8* null, i8** %buffer.i, align 1, !dbg !608, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !609
  store i16 0, i16* %capacity.i, align 1, !dbg !610, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !611
  store i16 0, i16* %len.i, align 1, !dbg !612, !tbaa !288
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i16 0, i16 0, !dbg !613
  call void @llvm.lifetime.start(i64 2, i8* nonnull %0) #10, !dbg !613
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !598, metadata !266), !dbg !614
  store i8 %c, i8* %0, align 1, !dbg !615, !tbaa !337
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i16 0, i16 1, !dbg !616
  store i8 0, i8* %arrayidx2, align 1, !dbg !617, !tbaa !337
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !618, metadata !266) #10, !dbg !622
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !266) #10, !dbg !624
  %call.i = call i16 @strlen(i8* nonnull %0) #9, !dbg !625
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !628
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !297, metadata !266) #10, !dbg !631
  tail call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !298, metadata !266) #10, !dbg !632
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !633
  tail call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !307, metadata !266) #10, !dbg !635
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !636
  tail call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !315, metadata !266) #10, !dbg !638
  %add.i.i.i.i = add i16 %call.i, 1, !dbg !639
  %call.i.i.i.i = tail call noalias i8* @realloc(i8* null, i16 %add.i.i.i.i) #10, !dbg !640
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !641
  %tobool.i.i.i.i = icmp eq i8* %call.i.i.i.i, null, !dbg !642
  br i1 %tobool.i.i.i.i, label %if.then.i.i, label %if.then3.i.i.i, !dbg !643

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  store i8* %call.i.i.i.i, i8** %buffer.i, align 1, !dbg !644, !tbaa !277
  store i16 %call.i, i16* %capacity.i, align 1, !dbg !645, !tbaa !285
  %1 = load i16, i16* %len.i, align 1, !dbg !646, !tbaa !288
  %cmp4.i.i.i = icmp eq i16 %1, 0, !dbg !647
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end.i.i, !dbg !648

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  store i8 0, i8* %call.i.i.i.i, align 1, !dbg !649, !tbaa !337
  br label %if.end.i.i, !dbg !650

if.then.i.i:                                      ; preds = %if.end.i.i.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !651
  %2 = load i8*, i8** %buffer.i, align 1, !dbg !653, !tbaa !277
  %tobool.i5.i.i = icmp eq i8* %2, null, !dbg !653
  br i1 %tobool.i5.i.i, label %_ZN6String10invalidateEv.exit.i.i, label %if.then.i.i.i, !dbg !654

if.then.i.i.i:                                    ; preds = %if.then.i.i
  tail call void @free(i8* nonnull %2) #10, !dbg !655
  br label %_ZN6String10invalidateEv.exit.i.i, !dbg !655

_ZN6String10invalidateEv.exit.i.i:                ; preds = %if.then.i.i.i, %if.then.i.i
  store i8* null, i8** %buffer.i, align 1, !dbg !656, !tbaa !277
  store i16 0, i16* %len.i, align 1, !dbg !657, !tbaa !288
  store i16 0, i16* %capacity.i, align 1, !dbg !658, !tbaa !285
  br label %_ZN6StringaSEPKc.exit, !dbg !659

if.end.i.i:                                       ; preds = %if.then5.i.i.i, %if.then3.i.i.i
  store i16 %call.i, i16* %len.i, align 1, !dbg !660, !tbaa !288
  %call2.i.i = call i8* @strcpy(i8* nonnull %call.i.i.i.i, i8* nonnull %0) #10, !dbg !661
  br label %_ZN6StringaSEPKc.exit, !dbg !662

_ZN6StringaSEPKc.exit:                            ; preds = %_ZN6String10invalidateEv.exit.i.i, %if.end.i.i
  call void @llvm.lifetime.end(i64 2, i8* nonnull %0) #10, !dbg !663
  ret void, !dbg !663
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
define dereferenceable(6) %class.String* @_ZN6StringaSEPKc(%class.String* returned %this, i8* readonly %cstr) local_unnamed_addr #0 align 2 !dbg !619 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !618, metadata !266), !dbg !664
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !621, metadata !266), !dbg !665
  %tobool = icmp eq i8* %cstr, null, !dbg !666
  br i1 %tobool, label %if.else, label %if.then, !dbg !667

if.then:                                          ; preds = %entry
  %call = tail call i16 @strlen(i8* nonnull %cstr) #9, !dbg !668
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !669
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !297, metadata !266) #10, !dbg !671
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !298, metadata !266) #10, !dbg !672
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !673
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !307, metadata !266) #10, !dbg !675
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !676
  %0 = load i8*, i8** %buffer.i.i, align 1, !dbg !676, !tbaa !277
  %tobool.i.i = icmp eq i8* %0, null, !dbg !676
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !677

land.lhs.true.i.i:                                ; preds = %if.then
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !678
  %1 = load i16, i16* %capacity.i.i, align 1, !dbg !678, !tbaa !285
  %cmp.i.i = icmp ult i16 %1, %call, !dbg !679
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.if.end_crit_edge.i, !dbg !680

land.lhs.true.i.if.end_crit_edge.i:               ; preds = %land.lhs.true.i.i
  %.pre.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !681
  br label %if.end.i, !dbg !680

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.then
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !682
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !315, metadata !266) #10, !dbg !684
  %add.i.i.i = add i16 %call, 1, !dbg !685
  %call.i.i.i = tail call noalias i8* @realloc(i8* %0, i16 %add.i.i.i) #10, !dbg !686
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !687
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !688
  br i1 %tobool.i.i.i, label %if.then.i, label %if.then3.i.i, !dbg !689

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !690, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !691
  store i16 %call, i16* %capacity.i.i.i, align 1, !dbg !692, !tbaa !285
  %len.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !693
  %2 = load i16, i16* %len.i.i, align 1, !dbg !693, !tbaa !288
  %cmp4.i.i = icmp eq i16 %2, 0, !dbg !694
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end.i, !dbg !695

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !696, !tbaa !337
  br label %if.end.i, !dbg !697

if.then.i:                                        ; preds = %if.end.i.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !698
  %3 = load i8*, i8** %buffer.i.i, align 1, !dbg !700, !tbaa !277
  %tobool.i5.i = icmp eq i8* %3, null, !dbg !700
  br i1 %tobool.i5.i, label %_ZN6String10invalidateEv.exit.i, label %if.then.i.i, !dbg !701

if.then.i.i:                                      ; preds = %if.then.i
  tail call void @free(i8* nonnull %3) #10, !dbg !702
  br label %_ZN6String10invalidateEv.exit.i, !dbg !702

_ZN6String10invalidateEv.exit.i:                  ; preds = %if.then.i.i, %if.then.i
  store i8* null, i8** %buffer.i.i, align 1, !dbg !703, !tbaa !277
  %len.i6.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !704
  store i16 0, i16* %len.i6.i, align 1, !dbg !705, !tbaa !288
  %capacity.i7.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !706
  store i16 0, i16* %capacity.i7.i, align 1, !dbg !707, !tbaa !285
  br label %if.end, !dbg !708

if.end.i:                                         ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.if.end_crit_edge.i
  %len.pre-phi.i = phi i16* [ %.pre.i, %land.lhs.true.i.if.end_crit_edge.i ], [ %len.i.i, %if.then5.i.i ], [ %len.i.i, %if.then3.i.i ], !dbg !681
  %4 = phi i8* [ %0, %land.lhs.true.i.if.end_crit_edge.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !709
  store i16 %call, i16* %len.pre-phi.i, align 1, !dbg !710, !tbaa !288
  %call2.i = tail call i8* @strcpy(i8* nonnull %4, i8* nonnull %cstr) #10, !dbg !711
  br label %if.end, !dbg !712

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !713
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !715
  %5 = load i8*, i8** %buffer.i, align 1, !dbg !715, !tbaa !277
  %tobool.i = icmp eq i8* %5, null, !dbg !715
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i5, !dbg !716

if.then.i5:                                       ; preds = %if.else
  tail call void @free(i8* nonnull %5) #10, !dbg !717
  br label %_ZN6String10invalidateEv.exit, !dbg !717

_ZN6String10invalidateEv.exit:                    ; preds = %if.else, %if.then.i5
  store i8* null, i8** %buffer.i, align 1, !dbg !718, !tbaa !277
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !719
  store i16 0, i16* %len.i, align 1, !dbg !720, !tbaa !288
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !721
  store i16 0, i16* %capacity.i, align 1, !dbg !722, !tbaa !285
  br label %if.end

if.end:                                           ; preds = %if.end.i, %_ZN6String10invalidateEv.exit.i, %_ZN6String10invalidateEv.exit
  ret %class.String* %this, !dbg !723
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

define void @_ZN6StringC2Ehh(%class.String* nocapture %this, i8 zeroext %value, i8 zeroext %base) unnamed_addr #3 align 2 !dbg !724 {
entry:
  %buf = alloca [9 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !726, metadata !266), !dbg !734
  tail call void @llvm.dbg.value(metadata i8 %value, i64 0, metadata !727, metadata !266), !dbg !735
  tail call void @llvm.dbg.value(metadata i8 %base, i64 0, metadata !728, metadata !266), !dbg !736
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !737
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !739
  store i8* null, i8** %buffer.i, align 1, !dbg !740, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !741
  store i16 0, i16* %capacity.i, align 1, !dbg !742, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !743
  store i16 0, i16* %len.i, align 1, !dbg !744, !tbaa !288
  %0 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i16 0, i16 0, !dbg !745
  call void @llvm.lifetime.start(i64 9, i8* nonnull %0) #10, !dbg !745
  tail call void @llvm.dbg.declare(metadata [9 x i8]* %buf, metadata !729, metadata !266), !dbg !746
  %conv = zext i8 %value to i16, !dbg !747
  %conv2 = zext i8 %base to i16, !dbg !748
  tail call void @llvm.dbg.value(metadata i16 %conv, i64 0, metadata !749, metadata !266), !dbg !757
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !755, metadata !266), !dbg !759
  tail call void @llvm.dbg.value(metadata i16 %conv2, i64 0, metadata !756, metadata !266), !dbg !760
  %call.i5 = call i8* @__utoa(i16 %conv, i8* nonnull %0, i16 %conv2), !dbg !761
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !618, metadata !266) #10, !dbg !764
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !266) #10, !dbg !766
  %call.i = call i16 @strlen(i8* nonnull %0) #9, !dbg !767
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !768
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !297, metadata !266) #10, !dbg !770
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !298, metadata !266) #10, !dbg !771
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !772
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !307, metadata !266) #10, !dbg !774
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !775, !tbaa !277
  %tobool.i.i.i = icmp eq i8* %1, null, !dbg !775
  br i1 %tobool.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i, !dbg !776

land.lhs.true.i.i.i:                              ; preds = %entry
  %2 = load i16, i16* %capacity.i, align 1, !dbg !777, !tbaa !285
  %cmp.i.i.i = icmp ult i16 %2, %call.i, !dbg !778
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %if.end.i.i, !dbg !779

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i, %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !780
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !315, metadata !266) #10, !dbg !782
  %add.i.i.i.i = add i16 %call.i, 1, !dbg !783
  %call.i.i.i.i = call noalias i8* @realloc(i8* %1, i16 %add.i.i.i.i) #10, !dbg !784
  call void @llvm.dbg.value(metadata i8* %call.i.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !785
  %tobool.i.i.i.i = icmp eq i8* %call.i.i.i.i, null, !dbg !786
  br i1 %tobool.i.i.i.i, label %if.then.i.i, label %if.then3.i.i.i, !dbg !787

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  store i8* %call.i.i.i.i, i8** %buffer.i, align 1, !dbg !788, !tbaa !277
  store i16 %call.i, i16* %capacity.i, align 1, !dbg !789, !tbaa !285
  %3 = load i16, i16* %len.i, align 1, !dbg !790, !tbaa !288
  %cmp4.i.i.i = icmp eq i16 %3, 0, !dbg !791
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end.i.i, !dbg !792

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  store i8 0, i8* %call.i.i.i.i, align 1, !dbg !793, !tbaa !337
  br label %if.end.i.i, !dbg !794

if.then.i.i:                                      ; preds = %if.end.i.i.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !795
  %4 = load i8*, i8** %buffer.i, align 1, !dbg !797, !tbaa !277
  %tobool.i5.i.i = icmp eq i8* %4, null, !dbg !797
  br i1 %tobool.i5.i.i, label %_ZN6String10invalidateEv.exit.i.i, label %if.then.i.i.i, !dbg !798

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @free(i8* nonnull %4) #10, !dbg !799
  br label %_ZN6String10invalidateEv.exit.i.i, !dbg !799

_ZN6String10invalidateEv.exit.i.i:                ; preds = %if.then.i.i.i, %if.then.i.i
  store i8* null, i8** %buffer.i, align 1, !dbg !800, !tbaa !277
  store i16 0, i16* %len.i, align 1, !dbg !801, !tbaa !288
  store i16 0, i16* %capacity.i, align 1, !dbg !802, !tbaa !285
  br label %_ZN6StringaSEPKc.exit, !dbg !803

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i, %if.then5.i.i.i, %if.then3.i.i.i
  %5 = phi i8* [ %call.i.i.i.i, %if.then5.i.i.i ], [ %call.i.i.i.i, %if.then3.i.i.i ], [ %1, %land.lhs.true.i.i.i ], !dbg !804
  store i16 %call.i, i16* %len.i, align 1, !dbg !805, !tbaa !288
  %call2.i.i = call i8* @strcpy(i8* nonnull %5, i8* nonnull %0) #10, !dbg !806
  br label %_ZN6StringaSEPKc.exit, !dbg !807

_ZN6StringaSEPKc.exit:                            ; preds = %_ZN6String10invalidateEv.exit.i.i, %if.end.i.i
  call void @llvm.lifetime.end(i64 9, i8* nonnull %0) #10, !dbg !808
  ret void, !dbg !808
}

define void @_ZN6StringC2Eih(%class.String* nocapture %this, i16 %value, i8 zeroext %base) unnamed_addr #3 align 2 !dbg !809 {
entry:
  %buf = alloca [18 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !811, metadata !266), !dbg !819
  tail call void @llvm.dbg.value(metadata i16 %value, i64 0, metadata !812, metadata !266), !dbg !820
  tail call void @llvm.dbg.value(metadata i8 %base, i64 0, metadata !813, metadata !266), !dbg !821
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !822
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !824
  store i8* null, i8** %buffer.i, align 1, !dbg !825, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !826
  store i16 0, i16* %capacity.i, align 1, !dbg !827, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !828
  store i16 0, i16* %len.i, align 1, !dbg !829, !tbaa !288
  %0 = getelementptr inbounds [18 x i8], [18 x i8]* %buf, i16 0, i16 0, !dbg !830
  call void @llvm.lifetime.start(i64 18, i8* nonnull %0) #10, !dbg !830
  tail call void @llvm.dbg.declare(metadata [18 x i8]* %buf, metadata !814, metadata !266), !dbg !831
  %conv = zext i8 %base to i16, !dbg !832
  tail call void @llvm.dbg.value(metadata i16 %value, i64 0, metadata !833, metadata !266), !dbg !840
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !838, metadata !266), !dbg !842
  tail call void @llvm.dbg.value(metadata i16 %conv, i64 0, metadata !839, metadata !266), !dbg !843
  %call.i4 = call i8* @__itoa(i16 %value, i8* nonnull %0, i16 %conv), !dbg !844
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !618, metadata !266) #10, !dbg !847
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !266) #10, !dbg !849
  %call.i = call i16 @strlen(i8* nonnull %0) #9, !dbg !850
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !851
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !297, metadata !266) #10, !dbg !853
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !298, metadata !266) #10, !dbg !854
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !855
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !307, metadata !266) #10, !dbg !857
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !858, !tbaa !277
  %tobool.i.i.i = icmp eq i8* %1, null, !dbg !858
  br i1 %tobool.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i, !dbg !859

land.lhs.true.i.i.i:                              ; preds = %entry
  %2 = load i16, i16* %capacity.i, align 1, !dbg !860, !tbaa !285
  %cmp.i.i.i = icmp ult i16 %2, %call.i, !dbg !861
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %if.end.i.i, !dbg !862

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i, %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !863
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !315, metadata !266) #10, !dbg !865
  %add.i.i.i.i = add i16 %call.i, 1, !dbg !866
  %call.i.i.i.i = call noalias i8* @realloc(i8* %1, i16 %add.i.i.i.i) #10, !dbg !867
  call void @llvm.dbg.value(metadata i8* %call.i.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !868
  %tobool.i.i.i.i = icmp eq i8* %call.i.i.i.i, null, !dbg !869
  br i1 %tobool.i.i.i.i, label %if.then.i.i, label %if.then3.i.i.i, !dbg !870

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  store i8* %call.i.i.i.i, i8** %buffer.i, align 1, !dbg !871, !tbaa !277
  store i16 %call.i, i16* %capacity.i, align 1, !dbg !872, !tbaa !285
  %3 = load i16, i16* %len.i, align 1, !dbg !873, !tbaa !288
  %cmp4.i.i.i = icmp eq i16 %3, 0, !dbg !874
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end.i.i, !dbg !875

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  store i8 0, i8* %call.i.i.i.i, align 1, !dbg !876, !tbaa !337
  br label %if.end.i.i, !dbg !877

if.then.i.i:                                      ; preds = %if.end.i.i.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !878
  %4 = load i8*, i8** %buffer.i, align 1, !dbg !880, !tbaa !277
  %tobool.i5.i.i = icmp eq i8* %4, null, !dbg !880
  br i1 %tobool.i5.i.i, label %_ZN6String10invalidateEv.exit.i.i, label %if.then.i.i.i, !dbg !881

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @free(i8* nonnull %4) #10, !dbg !882
  br label %_ZN6String10invalidateEv.exit.i.i, !dbg !882

_ZN6String10invalidateEv.exit.i.i:                ; preds = %if.then.i.i.i, %if.then.i.i
  store i8* null, i8** %buffer.i, align 1, !dbg !883, !tbaa !277
  store i16 0, i16* %len.i, align 1, !dbg !884, !tbaa !288
  store i16 0, i16* %capacity.i, align 1, !dbg !885, !tbaa !285
  br label %_ZN6StringaSEPKc.exit, !dbg !886

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i, %if.then5.i.i.i, %if.then3.i.i.i
  %5 = phi i8* [ %call.i.i.i.i, %if.then5.i.i.i ], [ %call.i.i.i.i, %if.then3.i.i.i ], [ %1, %land.lhs.true.i.i.i ], !dbg !887
  store i16 %call.i, i16* %len.i, align 1, !dbg !888, !tbaa !288
  %call2.i.i = call i8* @strcpy(i8* nonnull %5, i8* nonnull %0) #10, !dbg !889
  br label %_ZN6StringaSEPKc.exit, !dbg !890

_ZN6StringaSEPKc.exit:                            ; preds = %_ZN6String10invalidateEv.exit.i.i, %if.end.i.i
  call void @llvm.lifetime.end(i64 18, i8* nonnull %0) #10, !dbg !891
  ret void, !dbg !891
}

define void @_ZN6StringC2Ejh(%class.String* nocapture %this, i16 %value, i8 zeroext %base) unnamed_addr #3 align 2 !dbg !892 {
entry:
  %buf = alloca [17 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !894, metadata !266), !dbg !902
  tail call void @llvm.dbg.value(metadata i16 %value, i64 0, metadata !895, metadata !266), !dbg !903
  tail call void @llvm.dbg.value(metadata i8 %base, i64 0, metadata !896, metadata !266), !dbg !904
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !905
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !907
  store i8* null, i8** %buffer.i, align 1, !dbg !908, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !909
  store i16 0, i16* %capacity.i, align 1, !dbg !910, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !911
  store i16 0, i16* %len.i, align 1, !dbg !912, !tbaa !288
  %0 = getelementptr inbounds [17 x i8], [17 x i8]* %buf, i16 0, i16 0, !dbg !913
  call void @llvm.lifetime.start(i64 17, i8* nonnull %0) #10, !dbg !913
  tail call void @llvm.dbg.declare(metadata [17 x i8]* %buf, metadata !897, metadata !266), !dbg !914
  %conv = zext i8 %base to i16, !dbg !915
  tail call void @llvm.dbg.value(metadata i16 %value, i64 0, metadata !749, metadata !266), !dbg !916
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !755, metadata !266), !dbg !918
  tail call void @llvm.dbg.value(metadata i16 %conv, i64 0, metadata !756, metadata !266), !dbg !919
  %call.i4 = call i8* @__utoa(i16 %value, i8* nonnull %0, i16 %conv), !dbg !920
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !618, metadata !266) #10, !dbg !921
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !266) #10, !dbg !923
  %call.i = call i16 @strlen(i8* nonnull %0) #9, !dbg !924
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !925
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !297, metadata !266) #10, !dbg !927
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !298, metadata !266) #10, !dbg !928
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !929
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !307, metadata !266) #10, !dbg !931
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !932, !tbaa !277
  %tobool.i.i.i = icmp eq i8* %1, null, !dbg !932
  br i1 %tobool.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i, !dbg !933

land.lhs.true.i.i.i:                              ; preds = %entry
  %2 = load i16, i16* %capacity.i, align 1, !dbg !934, !tbaa !285
  %cmp.i.i.i = icmp ult i16 %2, %call.i, !dbg !935
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %if.end.i.i, !dbg !936

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i, %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !937
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !315, metadata !266) #10, !dbg !939
  %add.i.i.i.i = add i16 %call.i, 1, !dbg !940
  %call.i.i.i.i = call noalias i8* @realloc(i8* %1, i16 %add.i.i.i.i) #10, !dbg !941
  call void @llvm.dbg.value(metadata i8* %call.i.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !942
  %tobool.i.i.i.i = icmp eq i8* %call.i.i.i.i, null, !dbg !943
  br i1 %tobool.i.i.i.i, label %if.then.i.i, label %if.then3.i.i.i, !dbg !944

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  store i8* %call.i.i.i.i, i8** %buffer.i, align 1, !dbg !945, !tbaa !277
  store i16 %call.i, i16* %capacity.i, align 1, !dbg !946, !tbaa !285
  %3 = load i16, i16* %len.i, align 1, !dbg !947, !tbaa !288
  %cmp4.i.i.i = icmp eq i16 %3, 0, !dbg !948
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end.i.i, !dbg !949

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  store i8 0, i8* %call.i.i.i.i, align 1, !dbg !950, !tbaa !337
  br label %if.end.i.i, !dbg !951

if.then.i.i:                                      ; preds = %if.end.i.i.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !952
  %4 = load i8*, i8** %buffer.i, align 1, !dbg !954, !tbaa !277
  %tobool.i5.i.i = icmp eq i8* %4, null, !dbg !954
  br i1 %tobool.i5.i.i, label %_ZN6String10invalidateEv.exit.i.i, label %if.then.i.i.i, !dbg !955

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @free(i8* nonnull %4) #10, !dbg !956
  br label %_ZN6String10invalidateEv.exit.i.i, !dbg !956

_ZN6String10invalidateEv.exit.i.i:                ; preds = %if.then.i.i.i, %if.then.i.i
  store i8* null, i8** %buffer.i, align 1, !dbg !957, !tbaa !277
  store i16 0, i16* %len.i, align 1, !dbg !958, !tbaa !288
  store i16 0, i16* %capacity.i, align 1, !dbg !959, !tbaa !285
  br label %_ZN6StringaSEPKc.exit, !dbg !960

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i, %if.then5.i.i.i, %if.then3.i.i.i
  %5 = phi i8* [ %call.i.i.i.i, %if.then5.i.i.i ], [ %call.i.i.i.i, %if.then3.i.i.i ], [ %1, %land.lhs.true.i.i.i ], !dbg !961
  store i16 %call.i, i16* %len.i, align 1, !dbg !962, !tbaa !288
  %call2.i.i = call i8* @strcpy(i8* nonnull %5, i8* nonnull %0) #10, !dbg !963
  br label %_ZN6StringaSEPKc.exit, !dbg !964

_ZN6StringaSEPKc.exit:                            ; preds = %_ZN6String10invalidateEv.exit.i.i, %if.end.i.i
  call void @llvm.lifetime.end(i64 17, i8* nonnull %0) #10, !dbg !965
  ret void, !dbg !965
}

define void @_ZN6StringC2Elh(%class.String* nocapture %this, i32 %value, i8 zeroext %base) unnamed_addr #3 align 2 !dbg !966 {
entry:
  %buf = alloca [34 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !968, metadata !266), !dbg !976
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !969, metadata !266), !dbg !977
  tail call void @llvm.dbg.value(metadata i8 %base, i64 0, metadata !970, metadata !266), !dbg !978
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !979
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !981
  store i8* null, i8** %buffer.i, align 1, !dbg !982, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !983
  store i16 0, i16* %capacity.i, align 1, !dbg !984, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !985
  store i16 0, i16* %len.i, align 1, !dbg !986, !tbaa !288
  %0 = getelementptr inbounds [34 x i8], [34 x i8]* %buf, i16 0, i16 0, !dbg !987
  call void @llvm.lifetime.start(i64 34, i8* nonnull %0) #10, !dbg !987
  tail call void @llvm.dbg.declare(metadata [34 x i8]* %buf, metadata !971, metadata !266), !dbg !988
  %conv = zext i8 %base to i16, !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !990, metadata !266), !dbg !997
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !995, metadata !266), !dbg !999
  tail call void @llvm.dbg.value(metadata i16 %conv, i64 0, metadata !996, metadata !266), !dbg !1000
  %call.i4 = call i8* @__ltoa(i32 %value, i8* nonnull %0, i16 %conv), !dbg !1001
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !618, metadata !266) #10, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !266) #10, !dbg !1006
  %call.i = call i16 @strlen(i8* nonnull %0) #9, !dbg !1007
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !1008
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !297, metadata !266) #10, !dbg !1010
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !298, metadata !266) #10, !dbg !1011
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1012
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !307, metadata !266) #10, !dbg !1014
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !1015, !tbaa !277
  %tobool.i.i.i = icmp eq i8* %1, null, !dbg !1015
  br i1 %tobool.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i, !dbg !1016

land.lhs.true.i.i.i:                              ; preds = %entry
  %2 = load i16, i16* %capacity.i, align 1, !dbg !1017, !tbaa !285
  %cmp.i.i.i = icmp ult i16 %2, %call.i, !dbg !1018
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %if.end.i.i, !dbg !1019

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i, %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1020
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !315, metadata !266) #10, !dbg !1022
  %add.i.i.i.i = add i16 %call.i, 1, !dbg !1023
  %call.i.i.i.i = call noalias i8* @realloc(i8* %1, i16 %add.i.i.i.i) #10, !dbg !1024
  call void @llvm.dbg.value(metadata i8* %call.i.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1025
  %tobool.i.i.i.i = icmp eq i8* %call.i.i.i.i, null, !dbg !1026
  br i1 %tobool.i.i.i.i, label %if.then.i.i, label %if.then3.i.i.i, !dbg !1027

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  store i8* %call.i.i.i.i, i8** %buffer.i, align 1, !dbg !1028, !tbaa !277
  store i16 %call.i, i16* %capacity.i, align 1, !dbg !1029, !tbaa !285
  %3 = load i16, i16* %len.i, align 1, !dbg !1030, !tbaa !288
  %cmp4.i.i.i = icmp eq i16 %3, 0, !dbg !1031
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end.i.i, !dbg !1032

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  store i8 0, i8* %call.i.i.i.i, align 1, !dbg !1033, !tbaa !337
  br label %if.end.i.i, !dbg !1034

if.then.i.i:                                      ; preds = %if.end.i.i.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !1035
  %4 = load i8*, i8** %buffer.i, align 1, !dbg !1037, !tbaa !277
  %tobool.i5.i.i = icmp eq i8* %4, null, !dbg !1037
  br i1 %tobool.i5.i.i, label %_ZN6String10invalidateEv.exit.i.i, label %if.then.i.i.i, !dbg !1038

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @free(i8* nonnull %4) #10, !dbg !1039
  br label %_ZN6String10invalidateEv.exit.i.i, !dbg !1039

_ZN6String10invalidateEv.exit.i.i:                ; preds = %if.then.i.i.i, %if.then.i.i
  store i8* null, i8** %buffer.i, align 1, !dbg !1040, !tbaa !277
  store i16 0, i16* %len.i, align 1, !dbg !1041, !tbaa !288
  store i16 0, i16* %capacity.i, align 1, !dbg !1042, !tbaa !285
  br label %_ZN6StringaSEPKc.exit, !dbg !1043

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i, %if.then5.i.i.i, %if.then3.i.i.i
  %5 = phi i8* [ %call.i.i.i.i, %if.then5.i.i.i ], [ %call.i.i.i.i, %if.then3.i.i.i ], [ %1, %land.lhs.true.i.i.i ], !dbg !1044
  store i16 %call.i, i16* %len.i, align 1, !dbg !1045, !tbaa !288
  %call2.i.i = call i8* @strcpy(i8* nonnull %5, i8* nonnull %0) #10, !dbg !1046
  br label %_ZN6StringaSEPKc.exit, !dbg !1047

_ZN6StringaSEPKc.exit:                            ; preds = %_ZN6String10invalidateEv.exit.i.i, %if.end.i.i
  call void @llvm.lifetime.end(i64 34, i8* nonnull %0) #10, !dbg !1048
  ret void, !dbg !1048
}

define void @_ZN6StringC2Emh(%class.String* nocapture %this, i32 %value, i8 zeroext %base) unnamed_addr #3 align 2 !dbg !1049 {
entry:
  %buf = alloca [33 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1051, metadata !266), !dbg !1059
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !1052, metadata !266), !dbg !1060
  tail call void @llvm.dbg.value(metadata i8 %base, i64 0, metadata !1053, metadata !266), !dbg !1061
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !1062
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1064
  store i8* null, i8** %buffer.i, align 1, !dbg !1065, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1066
  store i16 0, i16* %capacity.i, align 1, !dbg !1067, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1068
  store i16 0, i16* %len.i, align 1, !dbg !1069, !tbaa !288
  %0 = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i16 0, i16 0, !dbg !1070
  call void @llvm.lifetime.start(i64 33, i8* nonnull %0) #10, !dbg !1070
  tail call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !1054, metadata !266), !dbg !1071
  %conv = zext i8 %base to i16, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !1073, metadata !266), !dbg !1080
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1078, metadata !266), !dbg !1082
  tail call void @llvm.dbg.value(metadata i16 %conv, i64 0, metadata !1079, metadata !266), !dbg !1083
  %call.i4 = call i8* @__ultoa(i32 %value, i8* nonnull %0, i16 %conv), !dbg !1084
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !618, metadata !266) #10, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !266) #10, !dbg !1089
  %call.i = call i16 @strlen(i8* nonnull %0) #9, !dbg !1090
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !294, metadata !266) #10, !dbg !1091
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !297, metadata !266) #10, !dbg !1093
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !298, metadata !266) #10, !dbg !1094
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1095
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !307, metadata !266) #10, !dbg !1097
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !1098, !tbaa !277
  %tobool.i.i.i = icmp eq i8* %1, null, !dbg !1098
  br i1 %tobool.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i, !dbg !1099

land.lhs.true.i.i.i:                              ; preds = %entry
  %2 = load i16, i16* %capacity.i, align 1, !dbg !1100, !tbaa !285
  %cmp.i.i.i = icmp ult i16 %2, %call.i, !dbg !1101
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %if.end.i.i, !dbg !1102

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i, %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1103
  call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !315, metadata !266) #10, !dbg !1105
  %add.i.i.i.i = add i16 %call.i, 1, !dbg !1106
  %call.i.i.i.i = call noalias i8* @realloc(i8* %1, i16 %add.i.i.i.i) #10, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %call.i.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1108
  %tobool.i.i.i.i = icmp eq i8* %call.i.i.i.i, null, !dbg !1109
  br i1 %tobool.i.i.i.i, label %if.then.i.i, label %if.then3.i.i.i, !dbg !1110

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  store i8* %call.i.i.i.i, i8** %buffer.i, align 1, !dbg !1111, !tbaa !277
  store i16 %call.i, i16* %capacity.i, align 1, !dbg !1112, !tbaa !285
  %3 = load i16, i16* %len.i, align 1, !dbg !1113, !tbaa !288
  %cmp4.i.i.i = icmp eq i16 %3, 0, !dbg !1114
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end.i.i, !dbg !1115

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  store i8 0, i8* %call.i.i.i.i, align 1, !dbg !1116, !tbaa !337
  br label %if.end.i.i, !dbg !1117

if.then.i.i:                                      ; preds = %if.end.i.i.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !1118
  %4 = load i8*, i8** %buffer.i, align 1, !dbg !1120, !tbaa !277
  %tobool.i5.i.i = icmp eq i8* %4, null, !dbg !1120
  br i1 %tobool.i5.i.i, label %_ZN6String10invalidateEv.exit.i.i, label %if.then.i.i.i, !dbg !1121

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @free(i8* nonnull %4) #10, !dbg !1122
  br label %_ZN6String10invalidateEv.exit.i.i, !dbg !1122

_ZN6String10invalidateEv.exit.i.i:                ; preds = %if.then.i.i.i, %if.then.i.i
  store i8* null, i8** %buffer.i, align 1, !dbg !1123, !tbaa !277
  store i16 0, i16* %len.i, align 1, !dbg !1124, !tbaa !288
  store i16 0, i16* %capacity.i, align 1, !dbg !1125, !tbaa !285
  br label %_ZN6StringaSEPKc.exit, !dbg !1126

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i, %if.then5.i.i.i, %if.then3.i.i.i
  %5 = phi i8* [ %call.i.i.i.i, %if.then5.i.i.i ], [ %call.i.i.i.i, %if.then3.i.i.i ], [ %1, %land.lhs.true.i.i.i ], !dbg !1127
  store i16 %call.i, i16* %len.i, align 1, !dbg !1128, !tbaa !288
  %call2.i.i = call i8* @strcpy(i8* nonnull %5, i8* nonnull %0) #10, !dbg !1129
  br label %_ZN6StringaSEPKc.exit, !dbg !1130

_ZN6StringaSEPKc.exit:                            ; preds = %_ZN6String10invalidateEv.exit.i.i, %if.end.i.i
  call void @llvm.lifetime.end(i64 33, i8* nonnull %0) #10, !dbg !1131
  ret void, !dbg !1131
}

define void @_ZN6StringC2Efh(%class.String* %this, float %value, i8 zeroext %decimalPlaces) unnamed_addr #3 align 2 !dbg !1132 {
entry:
  %buf = alloca [33 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1134, metadata !266), !dbg !1139
  tail call void @llvm.dbg.value(metadata float %value, i64 0, metadata !1135, metadata !266), !dbg !1140
  tail call void @llvm.dbg.value(metadata i8 %decimalPlaces, i64 0, metadata !1136, metadata !266), !dbg !1141
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !1142
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1144
  store i8* null, i8** %buffer.i, align 1, !dbg !1145, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1146
  store i16 0, i16* %capacity.i, align 1, !dbg !1147, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1148
  store i16 0, i16* %len.i, align 1, !dbg !1149, !tbaa !288
  %0 = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i16 0, i16 0, !dbg !1150
  call void @llvm.lifetime.start(i64 33, i8* nonnull %0) #10, !dbg !1150
  tail call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !1137, metadata !266), !dbg !1151
  %add = add i8 %decimalPlaces, 2, !dbg !1152
  %call = call i8* @dtostrf(float %value, i8 signext %add, i8 zeroext %decimalPlaces, i8* nonnull %0), !dbg !1153
  %call3 = call dereferenceable(6) %class.String* @_ZN6StringaSEPKc(%class.String* %this, i8* %call), !dbg !1154
  call void @llvm.lifetime.end(i64 33, i8* nonnull %0) #10, !dbg !1156
  ret void, !dbg !1156
}

declare i8* @dtostrf(float, i8 signext, i8 zeroext, i8*) local_unnamed_addr #5

define void @_ZN6StringC2Edh(%class.String* %this, float %value, i8 zeroext %decimalPlaces) unnamed_addr #3 align 2 !dbg !1157 {
entry:
  %buf = alloca [33 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1159, metadata !266), !dbg !1164
  tail call void @llvm.dbg.value(metadata float %value, i64 0, metadata !1160, metadata !266), !dbg !1165
  tail call void @llvm.dbg.value(metadata i8 %decimalPlaces, i64 0, metadata !1161, metadata !266), !dbg !1166
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !269, metadata !266), !dbg !1167
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1169
  store i8* null, i8** %buffer.i, align 1, !dbg !1170, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1171
  store i16 0, i16* %capacity.i, align 1, !dbg !1172, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1173
  store i16 0, i16* %len.i, align 1, !dbg !1174, !tbaa !288
  %0 = getelementptr inbounds [33 x i8], [33 x i8]* %buf, i16 0, i16 0, !dbg !1175
  call void @llvm.lifetime.start(i64 33, i8* nonnull %0) #10, !dbg !1175
  tail call void @llvm.dbg.declare(metadata [33 x i8]* %buf, metadata !1162, metadata !266), !dbg !1176
  %add = add i8 %decimalPlaces, 2, !dbg !1177
  %call = call i8* @dtostrf(float %value, i8 signext %add, i8 zeroext %decimalPlaces, i8* nonnull %0), !dbg !1178
  %call3 = call dereferenceable(6) %class.String* @_ZN6StringaSEPKc(%class.String* %this, i8* %call), !dbg !1179
  call void @llvm.lifetime.end(i64 33, i8* nonnull %0) #10, !dbg !1181
  ret void, !dbg !1181
}

; Function Attrs: nounwind
define void @_ZN6StringD2Ev(%class.String* nocapture readonly %this) unnamed_addr #0 align 2 !dbg !1182 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1184, metadata !266), !dbg !1185
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1186
  %0 = load i8*, i8** %buffer, align 1, !dbg !1186, !tbaa !277
  tail call void @free(i8* %0), !dbg !1188
  ret void, !dbg !1189
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
define void @_ZN6String10invalidateEv(%class.String* nocapture %this) local_unnamed_addr #0 align 2 !dbg !340 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266), !dbg !1190
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1191
  %0 = load i8*, i8** %buffer, align 1, !dbg !1191, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !1191
  br i1 %tobool, label %if.end, label %if.then, !dbg !1192

if.then:                                          ; preds = %entry
  tail call void @free(i8* nonnull %0), !dbg !1193
  br label %if.end, !dbg !1193

if.end:                                           ; preds = %entry, %if.then
  store i8* null, i8** %buffer, align 1, !dbg !1194, !tbaa !277
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1195
  store i16 0, i16* %len, align 1, !dbg !1196, !tbaa !288
  %capacity = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1197
  store i16 0, i16* %capacity, align 1, !dbg !1198, !tbaa !285
  ret void, !dbg !1199
}

; Function Attrs: nounwind
define zeroext i8 @_ZN6String7reserveEj(%class.String* nocapture %this, i16 %size) local_unnamed_addr #0 align 2 !dbg !305 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266), !dbg !1200
  tail call void @llvm.dbg.value(metadata i16 %size, i64 0, metadata !307, metadata !266), !dbg !1201
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1202
  %0 = load i8*, i8** %buffer, align 1, !dbg !1202, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !1202
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1203

land.lhs.true:                                    ; preds = %entry
  %capacity = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1204
  %1 = load i16, i16* %capacity, align 1, !dbg !1204, !tbaa !285
  %cmp = icmp ult i16 %1, %size, !dbg !1205
  br i1 %cmp, label %if.end, label %return, !dbg !1206

if.end:                                           ; preds = %land.lhs.true, %entry
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1207
  tail call void @llvm.dbg.value(metadata i16 %size, i64 0, metadata !315, metadata !266) #10, !dbg !1209
  %add.i = add i16 %size, 1, !dbg !1210
  %call.i = tail call noalias i8* @realloc(i8* %0, i16 %add.i) #10, !dbg !1211
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !316, metadata !266) #10, !dbg !1212
  %tobool.i = icmp eq i8* %call.i, null, !dbg !1213
  br i1 %tobool.i, label %return, label %if.then3, !dbg !1214

if.then3:                                         ; preds = %if.end
  store i8* %call.i, i8** %buffer, align 1, !dbg !1215, !tbaa !277
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1216
  store i16 %size, i16* %capacity.i, align 1, !dbg !1217, !tbaa !285
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1218
  %2 = load i16, i16* %len, align 1, !dbg !1218, !tbaa !288
  %cmp4 = icmp eq i16 %2, 0, !dbg !1219
  br i1 %cmp4, label %if.then5, label %return, !dbg !1220

if.then5:                                         ; preds = %if.then3
  store i8 0, i8* %call.i, align 1, !dbg !1221, !tbaa !337
  br label %return, !dbg !1222

return:                                           ; preds = %if.end, %if.then3, %if.then5, %land.lhs.true
  %retval.0 = phi i8 [ 1, %land.lhs.true ], [ 1, %if.then5 ], [ 1, %if.then3 ], [ 0, %if.end ]
  ret i8 %retval.0, !dbg !1223
}

; Function Attrs: nounwind
define zeroext i8 @_ZN6String12changeBufferEj(%class.String* nocapture %this, i16 %maxStrLen) local_unnamed_addr #0 align 2 !dbg !313 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266), !dbg !1224
  tail call void @llvm.dbg.value(metadata i16 %maxStrLen, i64 0, metadata !315, metadata !266), !dbg !1225
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1226
  %0 = load i8*, i8** %buffer, align 1, !dbg !1226, !tbaa !277
  %add = add i16 %maxStrLen, 1, !dbg !1227
  %call = tail call noalias i8* @realloc(i8* %0, i16 %add), !dbg !1228
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !316, metadata !266), !dbg !1229
  %tobool = icmp eq i8* %call, null, !dbg !1230
  br i1 %tobool, label %cleanup, label %if.then, !dbg !1231

if.then:                                          ; preds = %entry
  store i8* %call, i8** %buffer, align 1, !dbg !1232, !tbaa !277
  %capacity = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1233
  store i16 %maxStrLen, i16* %capacity, align 1, !dbg !1234, !tbaa !285
  br label %cleanup, !dbg !1235

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %entry ]
  ret i8 %retval.0, !dbg !1236
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i16) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #6

define dereferenceable(6) %class.String* @_ZN6String4copyEPK19__FlashStringHelperj(%class.String* returned %this, %class.__FlashStringHelper* %pstr, i16 %length) local_unnamed_addr #3 align 2 !dbg !532 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !531, metadata !266), !dbg !1237
  tail call void @llvm.dbg.value(metadata %class.__FlashStringHelper* %pstr, i64 0, metadata !534, metadata !266), !dbg !1238
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !535, metadata !266), !dbg !1239
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1240
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !307, metadata !266) #10, !dbg !1242
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1243
  %0 = load i8*, i8** %buffer.i, align 1, !dbg !1243, !tbaa !277
  %tobool.i = icmp eq i8* %0, null, !dbg !1243
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true.i, !dbg !1244

land.lhs.true.i:                                  ; preds = %entry
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1245
  %1 = load i16, i16* %capacity.i, align 1, !dbg !1245, !tbaa !285
  %cmp.i = icmp ult i16 %1, %length, !dbg !1246
  br i1 %cmp.i, label %if.end.i, label %land.lhs.true.i.if.end_crit_edge, !dbg !1247

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  %.pre = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1248
  br label %if.end, !dbg !1247

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1249
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !315, metadata !266) #10, !dbg !1251
  %add.i.i = add i16 %length, 1, !dbg !1252
  %call.i.i = tail call noalias i8* @realloc(i8* %0, i16 %add.i.i) #10, !dbg !1253
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1254
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !1255
  br i1 %tobool.i.i, label %if.then, label %if.then3.i, !dbg !1256

if.then3.i:                                       ; preds = %if.end.i
  store i8* %call.i.i, i8** %buffer.i, align 1, !dbg !1257, !tbaa !277
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1258
  store i16 %length, i16* %capacity.i.i, align 1, !dbg !1259, !tbaa !285
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1260
  %2 = load i16, i16* %len.i, align 1, !dbg !1260, !tbaa !288
  %cmp4.i = icmp eq i16 %2, 0, !dbg !1261
  br i1 %cmp4.i, label %if.then5.i, label %if.end, !dbg !1262

if.then5.i:                                       ; preds = %if.then3.i
  store i8 0, i8* %call.i.i, align 1, !dbg !1263, !tbaa !337
  br label %if.end, !dbg !1264

if.then:                                          ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !339, metadata !266) #10, !dbg !1265
  %3 = load i8*, i8** %buffer.i, align 1, !dbg !1267, !tbaa !277
  %tobool.i5 = icmp eq i8* %3, null, !dbg !1267
  br i1 %tobool.i5, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !1268

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %3) #10, !dbg !1269
  br label %_ZN6String10invalidateEv.exit, !dbg !1269

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !1270, !tbaa !277
  %len.i6 = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1271
  store i16 0, i16* %len.i6, align 1, !dbg !1272, !tbaa !288
  %capacity.i7 = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1273
  store i16 0, i16* %capacity.i7, align 1, !dbg !1274, !tbaa !285
  br label %return, !dbg !1275

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.then5.i, %if.then3.i
  %len.pre-phi = phi i16* [ %.pre, %land.lhs.true.i.if.end_crit_edge ], [ %len.i, %if.then5.i ], [ %len.i, %if.then3.i ], !dbg !1248
  %4 = phi i8* [ %0, %land.lhs.true.i.if.end_crit_edge ], [ %call.i.i, %if.then5.i ], [ %call.i.i, %if.then3.i ], !dbg !1276
  store i16 %length, i16* %len.pre-phi, align 1, !dbg !1277, !tbaa !288
  %5 = bitcast %class.__FlashStringHelper* %pstr to i8*, !dbg !1278
  %call2 = tail call i8* @strcpy_P(i8* nonnull %4, i8* %5), !dbg !1279
  br label %return, !dbg !1280

return:                                           ; preds = %if.end, %_ZN6String10invalidateEv.exit
  ret %class.String* %this, !dbg !1281
}

declare i8* @strcpy_P(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
define zeroext i8 @_ZN6String6concatERKS_(%class.String* nocapture %this, %class.String* nocapture readonly dereferenceable(6) %s) local_unnamed_addr #0 align 2 !dbg !1282 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1284, metadata !266), !dbg !1286
  tail call void @llvm.dbg.value(metadata %class.String* %s, i64 0, metadata !1285, metadata !266), !dbg !1287
  %buffer = getelementptr inbounds %class.String, %class.String* %s, i16 0, i32 0, !dbg !1288
  %0 = load i8*, i8** %buffer, align 1, !dbg !1288, !tbaa !277
  %len = getelementptr inbounds %class.String, %class.String* %s, i16 0, i32 2, !dbg !1289
  %1 = load i16, i16* %len, align 1, !dbg !1289, !tbaa !288
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1296
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !1298
  tail call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !1294, metadata !266) #10, !dbg !1299
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1300
  %2 = load i16, i16* %len.i, align 1, !dbg !1300, !tbaa !288
  %add.i = add i16 %2, %1, !dbg !1301
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1302
  %tobool.i = icmp eq i8* %0, null, !dbg !1303
  br i1 %tobool.i, label %_ZN6String6concatEPKcj.exit, label %if.end.i, !dbg !1305

if.end.i:                                         ; preds = %entry
  %cmp.i = icmp eq i16 %1, 0, !dbg !1306
  br i1 %cmp.i, label %_ZN6String6concatEPKcj.exit, label %if.end3.i, !dbg !1308

if.end3.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1309
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1312
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1313
  %3 = load i8*, i8** %buffer.i.i, align 1, !dbg !1313, !tbaa !277
  %tobool.i.i = icmp eq i8* %3, null, !dbg !1313
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1314

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1315
  %4 = load i16, i16* %capacity.i.i, align 1, !dbg !1315, !tbaa !285
  %cmp.i.i = icmp ult i16 %4, %add.i, !dbg !1316
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1317

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1318
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1320
  %add.i.i.i = add i16 %add.i, 1, !dbg !1321
  %call.i.i.i = tail call noalias i8* @realloc(i8* %3, i16 %add.i.i.i) #10, !dbg !1322
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1323
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1324
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1325

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1326, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1327
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1328, !tbaa !285
  %5 = load i16, i16* %len.i, align 1, !dbg !1329, !tbaa !288
  %cmp4.i.i = icmp eq i16 %5, 0, !dbg !1330
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1331

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1332, !tbaa !337
  br label %if.end6.i, !dbg !1333

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %6 = phi i16 [ %2, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %5, %if.then3.i.i ], !dbg !1334
  %7 = phi i8* [ %3, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1335
  %add.ptr.i = getelementptr inbounds i8, i8* %7, i16 %6, !dbg !1336
  %call8.i = tail call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %0) #10, !dbg !1337
  store i16 %add.i, i16* %len.i, align 1, !dbg !1338, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1339

_ZN6String6concatEPKcj.exit:                      ; preds = %entry, %if.end.i, %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 0, %entry ], [ 1, %if.end.i ], [ 0, %if.end.i.i ]
  ret i8 %retval.0.i, !dbg !1340
}

; Function Attrs: nounwind
define zeroext i8 @_ZN6String6concatEPKcj(%class.String* nocapture %this, i8* readonly %cstr, i16 %length) local_unnamed_addr #0 align 2 !dbg !1291 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266), !dbg !1341
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !1293, metadata !266), !dbg !1342
  tail call void @llvm.dbg.value(metadata i16 %length, i64 0, metadata !1294, metadata !266), !dbg !1343
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1344
  %0 = load i16, i16* %len, align 1, !dbg !1344, !tbaa !288
  %add = add i16 %0, %length, !dbg !1345
  tail call void @llvm.dbg.value(metadata i16 %add, i64 0, metadata !1295, metadata !266), !dbg !1346
  %tobool = icmp eq i8* %cstr, null, !dbg !1347
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1348

if.end:                                           ; preds = %entry
  %cmp = icmp eq i16 %length, 0, !dbg !1349
  br i1 %cmp, label %cleanup, label %if.end3, !dbg !1350

if.end3:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1351
  tail call void @llvm.dbg.value(metadata i16 %add, i64 0, metadata !307, metadata !266) #10, !dbg !1353
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1354
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !1354, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !1354
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true.i, !dbg !1355

land.lhs.true.i:                                  ; preds = %if.end3
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1356
  %2 = load i16, i16* %capacity.i, align 1, !dbg !1356, !tbaa !285
  %cmp.i = icmp ult i16 %2, %add, !dbg !1357
  br i1 %cmp.i, label %if.end.i, label %if.end6, !dbg !1358

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end3
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1359
  tail call void @llvm.dbg.value(metadata i16 %add, i64 0, metadata !315, metadata !266) #10, !dbg !1361
  %add.i.i = add i16 %add, 1, !dbg !1362
  %call.i.i = tail call noalias i8* @realloc(i8* %1, i16 %add.i.i) #10, !dbg !1363
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1364
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !1365
  br i1 %tobool.i.i, label %cleanup, label %if.then3.i, !dbg !1366

if.then3.i:                                       ; preds = %if.end.i
  store i8* %call.i.i, i8** %buffer.i, align 1, !dbg !1367, !tbaa !277
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1368
  store i16 %add, i16* %capacity.i.i, align 1, !dbg !1369, !tbaa !285
  %3 = load i16, i16* %len, align 1, !dbg !1370, !tbaa !288
  %cmp4.i = icmp eq i16 %3, 0, !dbg !1371
  br i1 %cmp4.i, label %if.then5.i, label %if.end6, !dbg !1372

if.then5.i:                                       ; preds = %if.then3.i
  store i8 0, i8* %call.i.i, align 1, !dbg !1373, !tbaa !337
  br label %if.end6, !dbg !1374

if.end6:                                          ; preds = %land.lhs.true.i, %if.then5.i, %if.then3.i
  %4 = phi i16 [ %0, %land.lhs.true.i ], [ 0, %if.then5.i ], [ %3, %if.then3.i ], !dbg !1375
  %5 = phi i8* [ %1, %land.lhs.true.i ], [ %call.i.i, %if.then5.i ], [ %call.i.i, %if.then3.i ], !dbg !1376
  %add.ptr = getelementptr inbounds i8, i8* %5, i16 %4, !dbg !1377
  %call8 = tail call i8* @strcpy(i8* %add.ptr, i8* nonnull %cstr), !dbg !1378
  store i16 %add, i16* %len, align 1, !dbg !1379, !tbaa !288
  br label %cleanup, !dbg !1380

cleanup:                                          ; preds = %if.end.i, %if.end, %entry, %if.end6
  %retval.0 = phi i8 [ 1, %if.end6 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end.i ]
  ret i8 %retval.0, !dbg !1381
}

; Function Attrs: nounwind
define zeroext i8 @_ZN6String6concatEPKc(%class.String* nocapture %this, i8* readonly %cstr) local_unnamed_addr #0 align 2 !dbg !1382 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1384, metadata !266), !dbg !1386
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !1385, metadata !266), !dbg !1387
  %tobool = icmp eq i8* %cstr, null, !dbg !1388
  br i1 %tobool, label %return, label %if.end.i, !dbg !1390

if.end.i:                                         ; preds = %entry
  %call = tail call i16 @strlen(i8* nonnull %cstr) #9, !dbg !1391
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1392
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !1293, metadata !266) #10, !dbg !1395
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !1294, metadata !266) #10, !dbg !1396
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1397
  %0 = load i16, i16* %len.i, align 1, !dbg !1397, !tbaa !288
  %add.i = add i16 %0, %call, !dbg !1398
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1399
  %cmp.i = icmp eq i16 %call, 0, !dbg !1400
  br i1 %cmp.i, label %return, label %if.end3.i, !dbg !1401

if.end3.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1402
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1404
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1405
  %1 = load i8*, i8** %buffer.i.i, align 1, !dbg !1405, !tbaa !277
  %tobool.i.i = icmp eq i8* %1, null, !dbg !1405
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1406

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1407
  %2 = load i16, i16* %capacity.i.i, align 1, !dbg !1407, !tbaa !285
  %cmp.i.i = icmp ult i16 %2, %add.i, !dbg !1408
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1409

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1410
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1412
  %add.i.i.i = add i16 %add.i, 1, !dbg !1413
  %call.i.i.i = tail call noalias i8* @realloc(i8* %1, i16 %add.i.i.i) #10, !dbg !1414
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1415
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1416
  br i1 %tobool.i.i.i, label %return, label %if.then3.i.i, !dbg !1417

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1418, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1419
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1420, !tbaa !285
  %3 = load i16, i16* %len.i, align 1, !dbg !1421, !tbaa !288
  %cmp4.i.i = icmp eq i16 %3, 0, !dbg !1422
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1423

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1424, !tbaa !337
  br label %if.end6.i, !dbg !1425

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %4 = phi i16 [ %0, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %3, %if.then3.i.i ], !dbg !1426
  %5 = phi i8* [ %1, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1427
  %add.ptr.i = getelementptr inbounds i8, i8* %5, i16 %4, !dbg !1428
  %call8.i = tail call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %cstr) #10, !dbg !1429
  store i16 %add.i, i16* %len.i, align 1, !dbg !1430, !tbaa !288
  br label %return, !dbg !1431

return:                                           ; preds = %if.end6.i, %if.end.i.i, %if.end.i, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 1, %if.end6.i ], [ 1, %if.end.i ], [ 0, %if.end.i.i ]
  ret i8 %retval.0, !dbg !1432
}

; Function Attrs: nounwind
define zeroext i8 @_ZN6String6concatEc(%class.String* nocapture %this, i8 signext %c) local_unnamed_addr #0 align 2 !dbg !1433 {
entry:
  %buf = alloca [2 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1435, metadata !266), !dbg !1438
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !1436, metadata !266), !dbg !1439
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i16 0, i16 0, !dbg !1440
  call void @llvm.lifetime.start(i64 2, i8* nonnull %0) #10, !dbg !1440
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !1437, metadata !266), !dbg !1441
  store i8 %c, i8* %0, align 1, !dbg !1442, !tbaa !337
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i16 0, i16 1, !dbg !1443
  store i8 0, i8* %arrayidx2, align 1, !dbg !1444, !tbaa !337
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1445
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !1447
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !1294, metadata !266) #10, !dbg !1448
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1449
  %1 = load i16, i16* %len.i, align 1, !dbg !1449, !tbaa !288
  %add.i = add i16 %1, 1, !dbg !1450
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1451
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1452
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1454
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1455
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !1455, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !1455
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1456

land.lhs.true.i.i:                                ; preds = %entry
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1457
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !1457, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !1458
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1459

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %entry
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1460
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1462
  %add.i.i.i = add i16 %1, 2, !dbg !1463
  %call.i.i.i = tail call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !1464
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1465
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1466
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1467

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1468, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1469
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1470, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !1471, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1472
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1473

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1474, !tbaa !337
  br label %if.end6.i, !dbg !1475

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !1476
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1477
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1478
  %call8.i = call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %0) #10, !dbg !1479
  store i16 %add.i, i16* %len.i, align 1, !dbg !1480, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1481

_ZN6String6concatEPKcj.exit:                      ; preds = %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 2, i8* nonnull %0) #10, !dbg !1482
  ret i8 %retval.0.i, !dbg !1483
}

define zeroext i8 @_ZN6String6concatEh(%class.String* nocapture %this, i8 zeroext %num) local_unnamed_addr #3 align 2 !dbg !1484 {
entry:
  %buf = alloca [4 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1486, metadata !266), !dbg !1492
  tail call void @llvm.dbg.value(metadata i8 %num, i64 0, metadata !1487, metadata !266), !dbg !1493
  %0 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i16 0, i16 0, !dbg !1494
  call void @llvm.lifetime.start(i64 4, i8* nonnull %0) #10, !dbg !1494
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %buf, metadata !1488, metadata !266), !dbg !1495
  %conv = zext i8 %num to i16, !dbg !1496
  tail call void @llvm.dbg.value(metadata i16 %conv, i64 0, metadata !833, metadata !266), !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !838, metadata !266), !dbg !1499
  tail call void @llvm.dbg.value(metadata i16 10, i64 0, metadata !839, metadata !266), !dbg !1500
  %call.i = call i8* @__itoa(i16 %conv, i8* nonnull %0, i16 10), !dbg !1501
  %call4 = call i16 @strlen(i8* nonnull %0) #9, !dbg !1502
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1503
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !1506
  call void @llvm.dbg.value(metadata i16 %call4, i64 0, metadata !1294, metadata !266) #10, !dbg !1507
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1508
  %1 = load i16, i16* %len.i, align 1, !dbg !1508, !tbaa !288
  %add.i = add i16 %1, %call4, !dbg !1509
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1510
  %cmp.i = icmp eq i16 %call4, 0, !dbg !1511
  br i1 %cmp.i, label %_ZN6String6concatEPKcj.exit, label %if.end3.i, !dbg !1512

if.end3.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1513
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1515
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1516
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !1516, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !1516
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1517

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1518
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !1518, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !1519
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1520

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1521
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1523
  %add.i.i.i = add i16 %add.i, 1, !dbg !1524
  %call.i.i.i = call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !1525
  call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1526
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1527
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1528

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1529, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1530
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1531, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !1532, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1533
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1534

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1535, !tbaa !337
  br label %if.end6.i, !dbg !1536

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !1537
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1538
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1539
  %call8.i = call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %0) #10, !dbg !1540
  store i16 %add.i, i16* %len.i, align 1, !dbg !1541, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1542

_ZN6String6concatEPKcj.exit:                      ; preds = %entry, %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 1, %entry ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %0) #10, !dbg !1543
  ret i8 %retval.0.i, !dbg !1544
}

define zeroext i8 @_ZN6String6concatEi(%class.String* nocapture %this, i16 %num) local_unnamed_addr #3 align 2 !dbg !1545 {
entry:
  %buf = alloca [8 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1547, metadata !266), !dbg !1553
  tail call void @llvm.dbg.value(metadata i16 %num, i64 0, metadata !1548, metadata !266), !dbg !1554
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i16 0, i16 0, !dbg !1555
  call void @llvm.lifetime.start(i64 8, i8* nonnull %0) #10, !dbg !1555
  tail call void @llvm.dbg.declare(metadata [8 x i8]* %buf, metadata !1549, metadata !266), !dbg !1556
  tail call void @llvm.dbg.value(metadata i16 %num, i64 0, metadata !833, metadata !266), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !838, metadata !266), !dbg !1559
  tail call void @llvm.dbg.value(metadata i16 10, i64 0, metadata !839, metadata !266), !dbg !1560
  %call.i = call i8* @__itoa(i16 %num, i8* nonnull %0, i16 10), !dbg !1561
  %call4 = call i16 @strlen(i8* nonnull %0) #9, !dbg !1562
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !1566
  call void @llvm.dbg.value(metadata i16 %call4, i64 0, metadata !1294, metadata !266) #10, !dbg !1567
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1568
  %1 = load i16, i16* %len.i, align 1, !dbg !1568, !tbaa !288
  %add.i = add i16 %1, %call4, !dbg !1569
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1570
  %cmp.i = icmp eq i16 %call4, 0, !dbg !1571
  br i1 %cmp.i, label %_ZN6String6concatEPKcj.exit, label %if.end3.i, !dbg !1572

if.end3.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1573
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1575
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1576
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !1576, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !1576
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1577

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1578
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !1578, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !1579
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1580

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1581
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1583
  %add.i.i.i = add i16 %add.i, 1, !dbg !1584
  %call.i.i.i = call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !1585
  call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1586
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1587
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1588

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1589, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1590
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1591, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !1592, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1593
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1594

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1595, !tbaa !337
  br label %if.end6.i, !dbg !1596

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !1597
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1598
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1599
  %call8.i = call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %0) #10, !dbg !1600
  store i16 %add.i, i16* %len.i, align 1, !dbg !1601, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1602

_ZN6String6concatEPKcj.exit:                      ; preds = %entry, %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 1, %entry ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %0) #10, !dbg !1603
  ret i8 %retval.0.i, !dbg !1604
}

define zeroext i8 @_ZN6String6concatEj(%class.String* nocapture %this, i16 %num) local_unnamed_addr #3 align 2 !dbg !1605 {
entry:
  %buf = alloca [7 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1607, metadata !266), !dbg !1613
  tail call void @llvm.dbg.value(metadata i16 %num, i64 0, metadata !1608, metadata !266), !dbg !1614
  %0 = getelementptr inbounds [7 x i8], [7 x i8]* %buf, i16 0, i16 0, !dbg !1615
  call void @llvm.lifetime.start(i64 7, i8* nonnull %0) #10, !dbg !1615
  tail call void @llvm.dbg.declare(metadata [7 x i8]* %buf, metadata !1609, metadata !266), !dbg !1616
  tail call void @llvm.dbg.value(metadata i16 %num, i64 0, metadata !749, metadata !266), !dbg !1617
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !755, metadata !266), !dbg !1619
  tail call void @llvm.dbg.value(metadata i16 10, i64 0, metadata !756, metadata !266), !dbg !1620
  %call.i = call i8* @__utoa(i16 %num, i8* nonnull %0, i16 10), !dbg !1621
  %call4 = call i16 @strlen(i8* nonnull %0) #9, !dbg !1622
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1623
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !1626
  call void @llvm.dbg.value(metadata i16 %call4, i64 0, metadata !1294, metadata !266) #10, !dbg !1627
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1628
  %1 = load i16, i16* %len.i, align 1, !dbg !1628, !tbaa !288
  %add.i = add i16 %1, %call4, !dbg !1629
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1630
  %cmp.i = icmp eq i16 %call4, 0, !dbg !1631
  br i1 %cmp.i, label %_ZN6String6concatEPKcj.exit, label %if.end3.i, !dbg !1632

if.end3.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1633
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1635
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1636
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !1636, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !1636
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1637

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1638
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !1638, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !1639
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1640

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1641
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1643
  %add.i.i.i = add i16 %add.i, 1, !dbg !1644
  %call.i.i.i = call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !1645
  call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1646
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1647
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1648

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1649, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1650
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1651, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !1652, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1653
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1654

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1655, !tbaa !337
  br label %if.end6.i, !dbg !1656

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !1657
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1658
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1659
  %call8.i = call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %0) #10, !dbg !1660
  store i16 %add.i, i16* %len.i, align 1, !dbg !1661, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1662

_ZN6String6concatEPKcj.exit:                      ; preds = %entry, %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 1, %entry ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 7, i8* nonnull %0) #10, !dbg !1663
  ret i8 %retval.0.i, !dbg !1664
}

define zeroext i8 @_ZN6String6concatEl(%class.String* nocapture %this, i32 %num) local_unnamed_addr #3 align 2 !dbg !1665 {
entry:
  %buf = alloca [14 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1667, metadata !266), !dbg !1673
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !1668, metadata !266), !dbg !1674
  %0 = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i16 0, i16 0, !dbg !1675
  call void @llvm.lifetime.start(i64 14, i8* nonnull %0) #10, !dbg !1675
  tail call void @llvm.dbg.declare(metadata [14 x i8]* %buf, metadata !1669, metadata !266), !dbg !1676
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !990, metadata !266), !dbg !1677
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !995, metadata !266), !dbg !1679
  tail call void @llvm.dbg.value(metadata i16 10, i64 0, metadata !996, metadata !266), !dbg !1680
  %call.i = call i8* @__ltoa(i32 %num, i8* nonnull %0, i16 10), !dbg !1681
  %call4 = call i16 @strlen(i8* nonnull %0) #9, !dbg !1682
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1683
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !1686
  call void @llvm.dbg.value(metadata i16 %call4, i64 0, metadata !1294, metadata !266) #10, !dbg !1687
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1688
  %1 = load i16, i16* %len.i, align 1, !dbg !1688, !tbaa !288
  %add.i = add i16 %1, %call4, !dbg !1689
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1690
  %cmp.i = icmp eq i16 %call4, 0, !dbg !1691
  br i1 %cmp.i, label %_ZN6String6concatEPKcj.exit, label %if.end3.i, !dbg !1692

if.end3.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1693
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1695
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1696
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !1696, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !1696
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1697

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1698
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !1698, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !1699
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1700

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1701
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1703
  %add.i.i.i = add i16 %add.i, 1, !dbg !1704
  %call.i.i.i = call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !1705
  call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1706
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1707
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1708

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1709, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1710
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1711, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !1712, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1713
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1714

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1715, !tbaa !337
  br label %if.end6.i, !dbg !1716

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !1717
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1718
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1719
  %call8.i = call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %0) #10, !dbg !1720
  store i16 %add.i, i16* %len.i, align 1, !dbg !1721, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1722

_ZN6String6concatEPKcj.exit:                      ; preds = %entry, %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 1, %entry ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 14, i8* nonnull %0) #10, !dbg !1723
  ret i8 %retval.0.i, !dbg !1724
}

define zeroext i8 @_ZN6String6concatEm(%class.String* nocapture %this, i32 %num) local_unnamed_addr #3 align 2 !dbg !1725 {
entry:
  %buf = alloca [13 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1727, metadata !266), !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !1728, metadata !266), !dbg !1734
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %buf, i16 0, i16 0, !dbg !1735
  call void @llvm.lifetime.start(i64 13, i8* nonnull %0) #10, !dbg !1735
  tail call void @llvm.dbg.declare(metadata [13 x i8]* %buf, metadata !1729, metadata !266), !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !1073, metadata !266), !dbg !1737
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1078, metadata !266), !dbg !1739
  tail call void @llvm.dbg.value(metadata i16 10, i64 0, metadata !1079, metadata !266), !dbg !1740
  %call.i = call i8* @__ultoa(i32 %num, i8* nonnull %0, i16 10), !dbg !1741
  %call4 = call i16 @strlen(i8* nonnull %0) #9, !dbg !1742
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1743
  call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !1746
  call void @llvm.dbg.value(metadata i16 %call4, i64 0, metadata !1294, metadata !266) #10, !dbg !1747
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1748
  %1 = load i16, i16* %len.i, align 1, !dbg !1748, !tbaa !288
  %add.i = add i16 %1, %call4, !dbg !1749
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1750
  %cmp.i = icmp eq i16 %call4, 0, !dbg !1751
  br i1 %cmp.i, label %_ZN6String6concatEPKcj.exit, label %if.end3.i, !dbg !1752

if.end3.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1753
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1755
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1756
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !1756, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !1756
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1757

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1758
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !1758, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !1759
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1760

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1761
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1763
  %add.i.i.i = add i16 %add.i, 1, !dbg !1764
  %call.i.i.i = call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !1765
  call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1766
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1767
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1768

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1769, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1770
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1771, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !1772, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1773
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1774

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1775, !tbaa !337
  br label %if.end6.i, !dbg !1776

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !1777
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1778
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1779
  %call8.i = call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %0) #10, !dbg !1780
  store i16 %add.i, i16* %len.i, align 1, !dbg !1781, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1782

_ZN6String6concatEPKcj.exit:                      ; preds = %entry, %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 1, %entry ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 13, i8* nonnull %0) #10, !dbg !1783
  ret i8 %retval.0.i, !dbg !1784
}

define zeroext i8 @_ZN6String6concatEf(%class.String* nocapture %this, float %num) local_unnamed_addr #3 align 2 !dbg !1785 {
entry:
  %buf = alloca [20 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1787, metadata !266), !dbg !1794
  tail call void @llvm.dbg.value(metadata float %num, i64 0, metadata !1788, metadata !266), !dbg !1795
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i16 0, i16 0, !dbg !1796
  call void @llvm.lifetime.start(i64 20, i8* nonnull %0) #10, !dbg !1796
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %buf, metadata !1789, metadata !266), !dbg !1797
  %call = call i8* @dtostrf(float %num, i8 signext 4, i8 zeroext 2, i8* nonnull %0), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !1793, metadata !266), !dbg !1799
  %call2 = call i16 @strlen(i8* %call) #9, !dbg !1800
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1801
  call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !1293, metadata !266) #10, !dbg !1804
  call void @llvm.dbg.value(metadata i16 %call2, i64 0, metadata !1294, metadata !266) #10, !dbg !1805
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1806
  %1 = load i16, i16* %len.i, align 1, !dbg !1806, !tbaa !288
  %add.i = add i16 %1, %call2, !dbg !1807
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1808
  %tobool.i = icmp eq i8* %call, null, !dbg !1809
  br i1 %tobool.i, label %_ZN6String6concatEPKcj.exit, label %if.end.i, !dbg !1810

if.end.i:                                         ; preds = %entry
  %cmp.i = icmp eq i16 %call2, 0, !dbg !1811
  br i1 %cmp.i, label %_ZN6String6concatEPKcj.exit, label %if.end3.i, !dbg !1812

if.end3.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1813
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1815
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1816
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !1816, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !1816
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1817

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1818
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !1818, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !1819
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1820

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1821
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1823
  %add.i.i.i = add i16 %add.i, 1, !dbg !1824
  %call.i.i.i = call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1826
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1827
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1828

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1829, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1830
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1831, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !1832, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1833
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1834

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1835, !tbaa !337
  br label %if.end6.i, !dbg !1836

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !1837
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1838
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1839
  %call8.i = call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %call) #10, !dbg !1840
  store i16 %add.i, i16* %len.i, align 1, !dbg !1841, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1842

_ZN6String6concatEPKcj.exit:                      ; preds = %entry, %if.end.i, %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 0, %entry ], [ 1, %if.end.i ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 20, i8* nonnull %0) #10, !dbg !1843
  ret i8 %retval.0.i, !dbg !1844
}

define zeroext i8 @_ZN6String6concatEd(%class.String* nocapture %this, float %num) local_unnamed_addr #3 align 2 !dbg !1845 {
entry:
  %buf = alloca [20 x i8], align 1
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1847, metadata !266), !dbg !1851
  tail call void @llvm.dbg.value(metadata float %num, i64 0, metadata !1848, metadata !266), !dbg !1852
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i16 0, i16 0, !dbg !1853
  call void @llvm.lifetime.start(i64 20, i8* nonnull %0) #10, !dbg !1853
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %buf, metadata !1849, metadata !266), !dbg !1854
  %call = call i8* @dtostrf(float %num, i8 signext 4, i8 zeroext 2, i8* nonnull %0), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !1850, metadata !266), !dbg !1856
  %call2 = call i16 @strlen(i8* %call) #9, !dbg !1857
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1290, metadata !266) #10, !dbg !1858
  call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !1293, metadata !266) #10, !dbg !1861
  call void @llvm.dbg.value(metadata i16 %call2, i64 0, metadata !1294, metadata !266) #10, !dbg !1862
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1863
  %1 = load i16, i16* %len.i, align 1, !dbg !1863, !tbaa !288
  %add.i = add i16 %1, %call2, !dbg !1864
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !1865
  %tobool.i = icmp eq i8* %call, null, !dbg !1866
  br i1 %tobool.i, label %_ZN6String6concatEPKcj.exit, label %if.end.i, !dbg !1867

if.end.i:                                         ; preds = %entry
  %cmp.i = icmp eq i16 %call2, 0, !dbg !1868
  br i1 %cmp.i, label %_ZN6String6concatEPKcj.exit, label %if.end3.i, !dbg !1869

if.end3.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1870
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !1872
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1873
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !1873, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !1873
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !1874

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1875
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !1875, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !1876
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !1877

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1878
  call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !1880
  %add.i.i.i = add i16 %add.i, 1, !dbg !1881
  %call.i.i.i = call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1883
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !1884
  br i1 %tobool.i.i.i, label %_ZN6String6concatEPKcj.exit, label %if.then3.i.i, !dbg !1885

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !1886, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1887
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !1888, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !1889, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1890
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !1891

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !1892, !tbaa !337
  br label %if.end6.i, !dbg !1893

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !1894
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !1895
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1896
  %call8.i = call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %call) #10, !dbg !1897
  store i16 %add.i, i16* %len.i, align 1, !dbg !1898, !tbaa !288
  br label %_ZN6String6concatEPKcj.exit, !dbg !1899

_ZN6String6concatEPKcj.exit:                      ; preds = %entry, %if.end.i, %if.end.i.i, %if.end6.i
  %retval.0.i = phi i8 [ 1, %if.end6.i ], [ 0, %entry ], [ 1, %if.end.i ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end(i64 20, i8* nonnull %0) #10, !dbg !1900
  ret i8 %retval.0.i, !dbg !1901
}

define zeroext i8 @_ZN6String6concatEPK19__FlashStringHelper(%class.String* nocapture %this, %class.__FlashStringHelper* %str) local_unnamed_addr #3 align 2 !dbg !1902 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !1904, metadata !266), !dbg !1908
  tail call void @llvm.dbg.value(metadata %class.__FlashStringHelper* %str, i64 0, metadata !1905, metadata !266), !dbg !1909
  %tobool = icmp eq %class.__FlashStringHelper* %str, null, !dbg !1910
  br i1 %tobool, label %return, label %if.end, !dbg !1912

if.end:                                           ; preds = %entry
  %0 = bitcast %class.__FlashStringHelper* %str to i8*, !dbg !1913
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !520, metadata !266) #10, !dbg !1914
  %call.i = tail call i16 @__strlen_P(i8* %0) #1, !dbg !1916
  tail call void @llvm.dbg.value(metadata i16 %call.i, i64 0, metadata !1906, metadata !266), !dbg !1917
  %cmp = icmp eq i16 %call.i, 0, !dbg !1918
  br i1 %cmp, label %return, label %if.end3, !dbg !1920

if.end3:                                          ; preds = %if.end
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !1921
  %1 = load i16, i16* %len, align 1, !dbg !1921, !tbaa !288
  %add = add i16 %1, %call.i, !dbg !1922
  tail call void @llvm.dbg.value(metadata i16 %add, i64 0, metadata !1907, metadata !266), !dbg !1923
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !304, metadata !266) #10, !dbg !1924
  tail call void @llvm.dbg.value(metadata i16 %add, i64 0, metadata !307, metadata !266) #10, !dbg !1927
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !1928
  %2 = load i8*, i8** %buffer.i, align 1, !dbg !1928, !tbaa !277
  %tobool.i = icmp eq i8* %2, null, !dbg !1928
  br i1 %tobool.i, label %if.end.i, label %land.lhs.true.i, !dbg !1929

land.lhs.true.i:                                  ; preds = %if.end3
  %capacity.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1930
  %3 = load i16, i16* %capacity.i, align 1, !dbg !1930, !tbaa !285
  %cmp.i = icmp ult i16 %3, %add, !dbg !1931
  br i1 %cmp.i, label %if.end.i, label %if.end7, !dbg !1932

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end3
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !1933
  tail call void @llvm.dbg.value(metadata i16 %add, i64 0, metadata !315, metadata !266) #10, !dbg !1935
  %add.i.i = add i16 %add, 1, !dbg !1936
  %call.i.i = tail call noalias i8* @realloc(i8* %2, i16 %add.i.i) #10, !dbg !1937
  tail call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !1938
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !1939
  br i1 %tobool.i.i, label %return, label %if.then3.i, !dbg !1940

if.then3.i:                                       ; preds = %if.end.i
  store i8* %call.i.i, i8** %buffer.i, align 1, !dbg !1941, !tbaa !277
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !1942
  store i16 %add, i16* %capacity.i.i, align 1, !dbg !1943, !tbaa !285
  %4 = load i16, i16* %len, align 1, !dbg !1944, !tbaa !288
  %cmp4.i = icmp eq i16 %4, 0, !dbg !1945
  br i1 %cmp4.i, label %if.then5.i, label %if.end7, !dbg !1946

if.then5.i:                                       ; preds = %if.then3.i
  store i8 0, i8* %call.i.i, align 1, !dbg !1947, !tbaa !337
  br label %if.end7, !dbg !1948

if.end7:                                          ; preds = %land.lhs.true.i, %if.then5.i, %if.then3.i
  %5 = phi i16 [ %1, %land.lhs.true.i ], [ 0, %if.then5.i ], [ %4, %if.then3.i ], !dbg !1949
  %6 = phi i8* [ %2, %land.lhs.true.i ], [ %call.i.i, %if.then5.i ], [ %call.i.i, %if.then3.i ], !dbg !1950
  %add.ptr = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !1951
  %call9 = tail call i8* @strcpy_P(i8* %add.ptr, i8* %0), !dbg !1952
  store i16 %add, i16* %len, align 1, !dbg !1953, !tbaa !288
  br label %return, !dbg !1954

return:                                           ; preds = %if.end.i, %if.end, %if.end7, %entry
  %retval.2 = phi i8 [ 0, %entry ], [ 1, %if.end ], [ 1, %if.end7 ], [ 0, %if.end.i ]
  ret i8 %retval.2, !dbg !1955
}

; Function Attrs: nounwind
define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperRK6String(%class.StringSumHelper* returned dereferenceable(6) %lhs, %class.String* nocapture readonly dereferenceable(6) %rhs) local_unnamed_addr #0 !dbg !1957 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !1998, metadata !266), !dbg !2001
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !1999, metadata !266), !dbg !2002
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2000, metadata !266), !dbg !2003
  %buffer = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 0, !dbg !2004
  %0 = load i8*, i8** %buffer, align 1, !dbg !2004, !tbaa !277
  %len = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 2, !dbg !2006
  %1 = load i16, i16* %len, align 1, !dbg !2006, !tbaa !288
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !2007
  tail call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !1294, metadata !266) #10, !dbg !2009
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2010
  %2 = load i16, i16* %len.i, align 1, !dbg !2010, !tbaa !288
  %add.i = add i16 %2, %1, !dbg !2011
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !2012
  %tobool.i = icmp eq i8* %0, null, !dbg !2013
  br i1 %tobool.i, label %entry.if.then_crit_edge, label %if.end.i, !dbg !2014

entry.if.then_crit_edge:                          ; preds = %entry
  %.pre = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2015
  br label %if.then, !dbg !2014

if.end.i:                                         ; preds = %entry
  %cmp.i = icmp eq i16 %1, 0, !dbg !2018
  br i1 %cmp.i, label %if.end, label %if.end3.i, !dbg !2019

if.end3.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !2020
  %buffer.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2022
  %3 = load i8*, i8** %buffer.i.i, align 1, !dbg !2022, !tbaa !277
  %tobool.i.i = icmp eq i8* %3, null, !dbg !2022
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !2023

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2024
  %4 = load i16, i16* %capacity.i.i, align 1, !dbg !2024, !tbaa !285
  %cmp.i.i = icmp ult i16 %4, %add.i, !dbg !2025
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !2026

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !2027
  %add.i.i.i = add i16 %add.i, 1, !dbg !2029
  %call.i.i.i = tail call noalias i8* @realloc(i8* %3, i16 %add.i.i.i) #10, !dbg !2030
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !2031
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !2032
  br i1 %tobool.i.i.i, label %if.then, label %if.then3.i.i, !dbg !2033

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !2034, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2035
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !2036, !tbaa !285
  %5 = load i16, i16* %len.i, align 1, !dbg !2037, !tbaa !288
  %cmp4.i.i = icmp eq i16 %5, 0, !dbg !2038
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !2039

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !2040, !tbaa !337
  br label %if.end6.i, !dbg !2041

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %6 = phi i16 [ %2, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %5, %if.then3.i.i ], !dbg !2042
  %7 = phi i8* [ %3, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !2043
  %add.ptr.i = getelementptr inbounds i8, i8* %7, i16 %6, !dbg !2044
  %call8.i = tail call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %0) #10, !dbg !2045
  store i16 %add.i, i16* %len.i, align 1, !dbg !2046, !tbaa !288
  br label %if.end, !dbg !2047

if.then:                                          ; preds = %entry.if.then_crit_edge, %if.end.i.i
  %buffer.i.pre-phi = phi i8** [ %.pre, %entry.if.then_crit_edge ], [ %buffer.i.i, %if.end.i.i ], !dbg !2015
  %8 = load i8*, i8** %buffer.i.pre-phi, align 1, !dbg !2015, !tbaa !277
  %tobool.i5 = icmp eq i8* %8, null, !dbg !2015
  br i1 %tobool.i5, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2048

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %8) #10, !dbg !2049
  br label %_ZN6String10invalidateEv.exit, !dbg !2049

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i.pre-phi, align 1, !dbg !2050, !tbaa !277
  store i16 0, i16* %len.i, align 1, !dbg !2051, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2052
  store i16 0, i16* %capacity.i, align 1, !dbg !2053, !tbaa !285
  br label %if.end, !dbg !2054

if.end:                                           ; preds = %if.end6.i, %if.end.i, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2055
}

; Function Attrs: nounwind
define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperPKc(%class.StringSumHelper* returned dereferenceable(6) %lhs, i8* readonly %cstr) local_unnamed_addr #0 !dbg !2056 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2060, metadata !266), !dbg !2063
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !2061, metadata !266), !dbg !2064
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2062, metadata !266), !dbg !2065
  %tobool = icmp eq i8* %cstr, null, !dbg !2066
  br i1 %tobool, label %entry.if.then_crit_edge, label %if.end.i, !dbg !2068

entry.if.then_crit_edge:                          ; preds = %entry
  %.pre = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2069
  br label %if.then, !dbg !2068

if.end.i:                                         ; preds = %entry
  %call = tail call i16 @strlen(i8* nonnull %cstr) #9, !dbg !2072
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !1293, metadata !266) #10, !dbg !2074
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !1294, metadata !266) #10, !dbg !2077
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2078
  %0 = load i16, i16* %len.i, align 1, !dbg !2078, !tbaa !288
  %add.i = add i16 %0, %call, !dbg !2079
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1295, metadata !266) #10, !dbg !2080
  %cmp.i = icmp eq i16 %call, 0, !dbg !2081
  br i1 %cmp.i, label %if.end, label %if.end3.i, !dbg !2082

if.end3.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !2083
  %buffer.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2085
  %1 = load i8*, i8** %buffer.i.i, align 1, !dbg !2085, !tbaa !277
  %tobool.i.i = icmp eq i8* %1, null, !dbg !2085
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !2086

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2087
  %2 = load i16, i16* %capacity.i.i, align 1, !dbg !2087, !tbaa !285
  %cmp.i.i = icmp ult i16 %2, %add.i, !dbg !2088
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end6.i, !dbg !2089

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !2090
  %add.i.i.i = add i16 %add.i, 1, !dbg !2092
  %call.i.i.i = tail call noalias i8* @realloc(i8* %1, i16 %add.i.i.i) #10, !dbg !2093
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !2094
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !2095
  br i1 %tobool.i.i.i, label %if.then, label %if.then3.i.i, !dbg !2096

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !2097, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2098
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !2099, !tbaa !285
  %3 = load i16, i16* %len.i, align 1, !dbg !2100, !tbaa !288
  %cmp4.i.i = icmp eq i16 %3, 0, !dbg !2101
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i, !dbg !2102

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !2103, !tbaa !337
  br label %if.end6.i, !dbg !2104

if.end6.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %4 = phi i16 [ %0, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %3, %if.then3.i.i ], !dbg !2105
  %5 = phi i8* [ %1, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !2106
  %add.ptr.i = getelementptr inbounds i8, i8* %5, i16 %4, !dbg !2107
  %call8.i = tail call i8* @strcpy(i8* %add.ptr.i, i8* nonnull %cstr) #10, !dbg !2108
  store i16 %add.i, i16* %len.i, align 1, !dbg !2109, !tbaa !288
  br label %if.end, !dbg !2110

if.then:                                          ; preds = %entry.if.then_crit_edge, %if.end.i.i
  %buffer.i.pre-phi = phi i8** [ %.pre, %entry.if.then_crit_edge ], [ %buffer.i.i, %if.end.i.i ], !dbg !2069
  %6 = load i8*, i8** %buffer.i.pre-phi, align 1, !dbg !2069, !tbaa !277
  %tobool.i8 = icmp eq i8* %6, null, !dbg !2069
  br i1 %tobool.i8, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2111

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %6) #10, !dbg !2112
  br label %_ZN6String10invalidateEv.exit, !dbg !2112

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i.pre-phi, align 1, !dbg !2113, !tbaa !277
  %len.i9 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2114
  store i16 0, i16* %len.i9, align 1, !dbg !2115, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2116
  store i16 0, i16* %capacity.i, align 1, !dbg !2117, !tbaa !285
  br label %if.end, !dbg !2118

if.end:                                           ; preds = %if.end.i, %if.end6.i, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2119
}

; Function Attrs: nounwind
define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperc(%class.StringSumHelper* returned dereferenceable(6) %lhs, i8 signext %c) local_unnamed_addr #0 !dbg !2120 {
entry:
  %buf.i = alloca [2 x i8], align 1
  tail call void @llvm.dbg.declare(metadata [2 x i8]* %buf.i, metadata !1437, metadata !266), !dbg !2127
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2124, metadata !266), !dbg !2130
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !2125, metadata !266), !dbg !2131
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2126, metadata !266), !dbg !2132
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !1436, metadata !266) #10, !dbg !2133
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %buf.i, i16 0, i16 0, !dbg !2134
  call void @llvm.lifetime.start(i64 2, i8* nonnull %0) #10, !dbg !2134
  store i8 %c, i8* %0, align 1, !dbg !2135, !tbaa !337
  %arrayidx2.i = getelementptr inbounds [2 x i8], [2 x i8]* %buf.i, i16 0, i16 1, !dbg !2136
  store i8 0, i8* %arrayidx2.i, align 1, !dbg !2137, !tbaa !337
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1293, metadata !266) #10, !dbg !2138
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !1294, metadata !266) #10, !dbg !2140
  %len.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2141
  %1 = load i16, i16* %len.i.i, align 1, !dbg !2141, !tbaa !288
  %add.i.i = add i16 %1, 1, !dbg !2142
  tail call void @llvm.dbg.value(metadata i16 %add.i.i, i64 0, metadata !1295, metadata !266) #10, !dbg !2143
  tail call void @llvm.dbg.value(metadata i16 %add.i.i, i64 0, metadata !307, metadata !266) #10, !dbg !2144
  %buffer.i.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2146
  %2 = load i8*, i8** %buffer.i.i.i, align 1, !dbg !2146, !tbaa !277
  %tobool.i.i.i = icmp eq i8* %2, null, !dbg !2146
  br i1 %tobool.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i, !dbg !2147

land.lhs.true.i.i.i:                              ; preds = %entry
  %capacity.i.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2148
  %3 = load i16, i16* %capacity.i.i.i, align 1, !dbg !2148, !tbaa !285
  %cmp.i.i.i = icmp ult i16 %3, %add.i.i, !dbg !2149
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %_ZN6String6concatEc.exit, !dbg !2150

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i, %entry
  tail call void @llvm.dbg.value(metadata i16 %add.i.i, i64 0, metadata !315, metadata !266) #10, !dbg !2151
  %add.i.i.i.i = add i16 %1, 2, !dbg !2153
  %call.i.i.i.i = tail call noalias i8* @realloc(i8* %2, i16 %add.i.i.i.i) #10, !dbg !2154
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !2155
  %tobool.i.i.i.i = icmp eq i8* %call.i.i.i.i, null, !dbg !2156
  br i1 %tobool.i.i.i.i, label %if.then, label %if.then3.i.i.i, !dbg !2157

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  store i8* %call.i.i.i.i, i8** %buffer.i.i.i, align 1, !dbg !2158, !tbaa !277
  %capacity.i.i.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2159
  store i16 %add.i.i, i16* %capacity.i.i.i.i, align 1, !dbg !2160, !tbaa !285
  %4 = load i16, i16* %len.i.i, align 1, !dbg !2161, !tbaa !288
  %cmp4.i.i.i = icmp eq i16 %4, 0, !dbg !2162
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %_ZN6String6concatEc.exit, !dbg !2163

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  store i8 0, i8* %call.i.i.i.i, align 1, !dbg !2164, !tbaa !337
  br label %_ZN6String6concatEc.exit, !dbg !2165

_ZN6String6concatEc.exit:                         ; preds = %land.lhs.true.i.i.i, %if.then3.i.i.i, %if.then5.i.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i.i ], [ 0, %if.then5.i.i.i ], [ %4, %if.then3.i.i.i ], !dbg !2166
  %6 = phi i8* [ %2, %land.lhs.true.i.i.i ], [ %call.i.i.i.i, %if.then5.i.i.i ], [ %call.i.i.i.i, %if.then3.i.i.i ], !dbg !2167
  %add.ptr.i.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !2168
  %call8.i.i = call i8* @strcpy(i8* %add.ptr.i.i, i8* nonnull %0) #10, !dbg !2169
  store i16 %add.i.i, i16* %len.i.i, align 1, !dbg !2170, !tbaa !288
  call void @llvm.lifetime.end(i64 2, i8* nonnull %0) #10, !dbg !2171
  br label %if.end, !dbg !2172

if.then:                                          ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end(i64 2, i8* nonnull %0) #10, !dbg !2171
  %7 = load i8*, i8** %buffer.i.i.i, align 1, !dbg !2173, !tbaa !277
  %tobool.i = icmp eq i8* %7, null, !dbg !2173
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2176

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %7) #10, !dbg !2177
  br label %_ZN6String10invalidateEv.exit, !dbg !2177

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i.i.i, align 1, !dbg !2178, !tbaa !277
  store i16 0, i16* %len.i.i, align 1, !dbg !2179, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2180
  store i16 0, i16* %capacity.i, align 1, !dbg !2181, !tbaa !285
  br label %if.end, !dbg !2182

if.end:                                           ; preds = %_ZN6String6concatEc.exit, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2183
}

define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperh(%class.StringSumHelper* returned dereferenceable(6) %lhs, i8 zeroext %num) local_unnamed_addr #3 !dbg !2184 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2188, metadata !266), !dbg !2191
  tail call void @llvm.dbg.value(metadata i8 %num, i64 0, metadata !2189, metadata !266), !dbg !2192
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2190, metadata !266), !dbg !2193
  %0 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, !dbg !2194
  %call = tail call zeroext i8 @_ZN6String6concatEh(%class.String* nonnull %0, i8 zeroext %num), !dbg !2196
  %tobool = icmp eq i8 %call, 0, !dbg !2194
  br i1 %tobool, label %if.then, label %if.end, !dbg !2197

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %0, i64 0, metadata !339, metadata !266) #10, !dbg !2198
  %buffer.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2201
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2201, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !2201
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2202

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %1) #10, !dbg !2203
  br label %_ZN6String10invalidateEv.exit, !dbg !2203

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !2204, !tbaa !277
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2205
  store i16 0, i16* %len.i, align 1, !dbg !2206, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2207
  store i16 0, i16* %capacity.i, align 1, !dbg !2208, !tbaa !285
  br label %if.end, !dbg !2209

if.end:                                           ; preds = %entry, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2210
}

define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperi(%class.StringSumHelper* returned dereferenceable(6) %lhs, i16 %num) local_unnamed_addr #3 !dbg !2211 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2215, metadata !266), !dbg !2218
  tail call void @llvm.dbg.value(metadata i16 %num, i64 0, metadata !2216, metadata !266), !dbg !2219
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2217, metadata !266), !dbg !2220
  %0 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, !dbg !2221
  %call = tail call zeroext i8 @_ZN6String6concatEi(%class.String* nonnull %0, i16 %num), !dbg !2223
  %tobool = icmp eq i8 %call, 0, !dbg !2221
  br i1 %tobool, label %if.then, label %if.end, !dbg !2224

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %0, i64 0, metadata !339, metadata !266) #10, !dbg !2225
  %buffer.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2228
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2228, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !2228
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2229

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %1) #10, !dbg !2230
  br label %_ZN6String10invalidateEv.exit, !dbg !2230

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !2231, !tbaa !277
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2232
  store i16 0, i16* %len.i, align 1, !dbg !2233, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2234
  store i16 0, i16* %capacity.i, align 1, !dbg !2235, !tbaa !285
  br label %if.end, !dbg !2236

if.end:                                           ; preds = %entry, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2237
}

define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperj(%class.StringSumHelper* returned dereferenceable(6) %lhs, i16 %num) local_unnamed_addr #3 !dbg !2238 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2242, metadata !266), !dbg !2245
  tail call void @llvm.dbg.value(metadata i16 %num, i64 0, metadata !2243, metadata !266), !dbg !2246
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2244, metadata !266), !dbg !2247
  %0 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, !dbg !2248
  %call = tail call zeroext i8 @_ZN6String6concatEj(%class.String* nonnull %0, i16 %num), !dbg !2250
  %tobool = icmp eq i8 %call, 0, !dbg !2248
  br i1 %tobool, label %if.then, label %if.end, !dbg !2251

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %0, i64 0, metadata !339, metadata !266) #10, !dbg !2252
  %buffer.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2255
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2255, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !2255
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2256

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %1) #10, !dbg !2257
  br label %_ZN6String10invalidateEv.exit, !dbg !2257

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !2258, !tbaa !277
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2259
  store i16 0, i16* %len.i, align 1, !dbg !2260, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2261
  store i16 0, i16* %capacity.i, align 1, !dbg !2262, !tbaa !285
  br label %if.end, !dbg !2263

if.end:                                           ; preds = %entry, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2264
}

define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperl(%class.StringSumHelper* returned dereferenceable(6) %lhs, i32 %num) local_unnamed_addr #3 !dbg !2265 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2269, metadata !266), !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !2270, metadata !266), !dbg !2273
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2271, metadata !266), !dbg !2274
  %0 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, !dbg !2275
  %call = tail call zeroext i8 @_ZN6String6concatEl(%class.String* nonnull %0, i32 %num), !dbg !2277
  %tobool = icmp eq i8 %call, 0, !dbg !2275
  br i1 %tobool, label %if.then, label %if.end, !dbg !2278

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %0, i64 0, metadata !339, metadata !266) #10, !dbg !2279
  %buffer.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2282
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2282, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !2282
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2283

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %1) #10, !dbg !2284
  br label %_ZN6String10invalidateEv.exit, !dbg !2284

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !2285, !tbaa !277
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2286
  store i16 0, i16* %len.i, align 1, !dbg !2287, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2288
  store i16 0, i16* %capacity.i, align 1, !dbg !2289, !tbaa !285
  br label %if.end, !dbg !2290

if.end:                                           ; preds = %entry, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2291
}

define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperm(%class.StringSumHelper* returned dereferenceable(6) %lhs, i32 %num) local_unnamed_addr #3 !dbg !2292 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2296, metadata !266), !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !2297, metadata !266), !dbg !2300
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2298, metadata !266), !dbg !2301
  %0 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, !dbg !2302
  %call = tail call zeroext i8 @_ZN6String6concatEm(%class.String* nonnull %0, i32 %num), !dbg !2304
  %tobool = icmp eq i8 %call, 0, !dbg !2302
  br i1 %tobool, label %if.then, label %if.end, !dbg !2305

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %0, i64 0, metadata !339, metadata !266) #10, !dbg !2306
  %buffer.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2309
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2309, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !2309
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2310

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %1) #10, !dbg !2311
  br label %_ZN6String10invalidateEv.exit, !dbg !2311

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !2312, !tbaa !277
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2313
  store i16 0, i16* %len.i, align 1, !dbg !2314, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2315
  store i16 0, i16* %capacity.i, align 1, !dbg !2316, !tbaa !285
  br label %if.end, !dbg !2317

if.end:                                           ; preds = %entry, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2318
}

define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperf(%class.StringSumHelper* returned dereferenceable(6) %lhs, float %num) local_unnamed_addr #3 !dbg !2319 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2323, metadata !266), !dbg !2326
  tail call void @llvm.dbg.value(metadata float %num, i64 0, metadata !2324, metadata !266), !dbg !2327
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2325, metadata !266), !dbg !2328
  %0 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, !dbg !2329
  %call = tail call zeroext i8 @_ZN6String6concatEf(%class.String* nonnull %0, float %num), !dbg !2331
  %tobool = icmp eq i8 %call, 0, !dbg !2329
  br i1 %tobool, label %if.then, label %if.end, !dbg !2332

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %0, i64 0, metadata !339, metadata !266) #10, !dbg !2333
  %buffer.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2336
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2336, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !2336
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2337

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %1) #10, !dbg !2338
  br label %_ZN6String10invalidateEv.exit, !dbg !2338

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !2339, !tbaa !277
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2340
  store i16 0, i16* %len.i, align 1, !dbg !2341, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2342
  store i16 0, i16* %capacity.i, align 1, !dbg !2343, !tbaa !285
  br label %if.end, !dbg !2344

if.end:                                           ; preds = %entry, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2345
}

define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperd(%class.StringSumHelper* returned dereferenceable(6) %lhs, float %num) local_unnamed_addr #3 !dbg !2346 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2350, metadata !266), !dbg !2353
  tail call void @llvm.dbg.value(metadata float %num, i64 0, metadata !2351, metadata !266), !dbg !2354
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2352, metadata !266), !dbg !2355
  %0 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, !dbg !2356
  %call = tail call zeroext i8 @_ZN6String6concatEd(%class.String* nonnull %0, float %num), !dbg !2358
  %tobool = icmp eq i8 %call, 0, !dbg !2356
  br i1 %tobool, label %if.then, label %if.end, !dbg !2359

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %0, i64 0, metadata !339, metadata !266) #10, !dbg !2360
  %buffer.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2363
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2363, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !2363
  br i1 %tobool.i, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2364

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %1) #10, !dbg !2365
  br label %_ZN6String10invalidateEv.exit, !dbg !2365

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i, align 1, !dbg !2366, !tbaa !277
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2367
  store i16 0, i16* %len.i, align 1, !dbg !2368, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2369
  store i16 0, i16* %capacity.i, align 1, !dbg !2370, !tbaa !285
  br label %if.end, !dbg !2371

if.end:                                           ; preds = %entry, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2372
}

define nonnull dereferenceable(6) %class.StringSumHelper* @_ZplRK15StringSumHelperPK19__FlashStringHelper(%class.StringSumHelper* returned dereferenceable(6) %lhs, %class.__FlashStringHelper* %rhs) local_unnamed_addr #3 !dbg !2373 {
entry:
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2377, metadata !266), !dbg !2380
  tail call void @llvm.dbg.value(metadata %class.__FlashStringHelper* %rhs, i64 0, metadata !2378, metadata !266), !dbg !2381
  tail call void @llvm.dbg.value(metadata %class.StringSumHelper* %lhs, i64 0, metadata !2379, metadata !266), !dbg !2382
  tail call void @llvm.dbg.value(metadata %class.__FlashStringHelper* %rhs, i64 0, metadata !1905, metadata !266), !dbg !2383
  %tobool.i = icmp eq %class.__FlashStringHelper* %rhs, null, !dbg !2386
  br i1 %tobool.i, label %entry.if.then_crit_edge, label %if.end.i, !dbg !2387

entry.if.then_crit_edge:                          ; preds = %entry
  %.pre = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2388
  br label %if.then, !dbg !2387

if.end.i:                                         ; preds = %entry
  %0 = bitcast %class.__FlashStringHelper* %rhs to i8*, !dbg !2391
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !520, metadata !266) #10, !dbg !2392
  %call.i.i = tail call i16 @__strlen_P(i8* %0) #1, !dbg !2394
  tail call void @llvm.dbg.value(metadata i16 %call.i.i, i64 0, metadata !1906, metadata !266), !dbg !2395
  %cmp.i = icmp eq i16 %call.i.i, 0, !dbg !2396
  br i1 %cmp.i, label %if.end, label %if.end3.i, !dbg !2397

if.end3.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2398
  %1 = load i16, i16* %len.i, align 1, !dbg !2398, !tbaa !288
  %add.i = add i16 %1, %call.i.i, !dbg !2399
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !1907, metadata !266), !dbg !2400
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !307, metadata !266) #10, !dbg !2401
  %buffer.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 0, !dbg !2403
  %2 = load i8*, i8** %buffer.i.i, align 1, !dbg !2403, !tbaa !277
  %tobool.i.i = icmp eq i8* %2, null, !dbg !2403
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i, !dbg !2404

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %capacity.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2405
  %3 = load i16, i16* %capacity.i.i, align 1, !dbg !2405, !tbaa !285
  %cmp.i.i = icmp ult i16 %3, %add.i, !dbg !2406
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end7.i, !dbg !2407

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %if.end3.i
  tail call void @llvm.dbg.value(metadata i16 %add.i, i64 0, metadata !315, metadata !266) #10, !dbg !2408
  %add.i.i.i = add i16 %add.i, 1, !dbg !2410
  %call.i.i.i = tail call noalias i8* @realloc(i8* %2, i16 %add.i.i.i) #10, !dbg !2411
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !2412
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null, !dbg !2413
  br i1 %tobool.i.i.i, label %if.then, label %if.then3.i.i, !dbg !2414

if.then3.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i.i, i8** %buffer.i.i, align 1, !dbg !2415, !tbaa !277
  %capacity.i.i.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2416
  store i16 %add.i, i16* %capacity.i.i.i, align 1, !dbg !2417, !tbaa !285
  %4 = load i16, i16* %len.i, align 1, !dbg !2418, !tbaa !288
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !2419
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end7.i, !dbg !2420

if.then5.i.i:                                     ; preds = %if.then3.i.i
  store i8 0, i8* %call.i.i.i, align 1, !dbg !2421, !tbaa !337
  br label %if.end7.i, !dbg !2422

if.end7.i:                                        ; preds = %if.then5.i.i, %if.then3.i.i, %land.lhs.true.i.i
  %5 = phi i16 [ %1, %land.lhs.true.i.i ], [ 0, %if.then5.i.i ], [ %4, %if.then3.i.i ], !dbg !2423
  %6 = phi i8* [ %2, %land.lhs.true.i.i ], [ %call.i.i.i, %if.then5.i.i ], [ %call.i.i.i, %if.then3.i.i ], !dbg !2424
  %add.ptr.i = getelementptr inbounds i8, i8* %6, i16 %5, !dbg !2425
  %call9.i = tail call i8* @strcpy_P(i8* %add.ptr.i, i8* %0), !dbg !2426
  store i16 %add.i, i16* %len.i, align 1, !dbg !2427, !tbaa !288
  br label %if.end, !dbg !2428

if.then:                                          ; preds = %entry.if.then_crit_edge, %if.end.i.i
  %buffer.i.pre-phi = phi i8** [ %.pre, %entry.if.then_crit_edge ], [ %buffer.i.i, %if.end.i.i ], !dbg !2388
  %7 = load i8*, i8** %buffer.i.pre-phi, align 1, !dbg !2388, !tbaa !277
  %tobool.i4 = icmp eq i8* %7, null, !dbg !2388
  br i1 %tobool.i4, label %_ZN6String10invalidateEv.exit, label %if.then.i, !dbg !2429

if.then.i:                                        ; preds = %if.then
  tail call void @free(i8* nonnull %7) #10, !dbg !2430
  br label %_ZN6String10invalidateEv.exit, !dbg !2430

_ZN6String10invalidateEv.exit:                    ; preds = %if.then, %if.then.i
  store i8* null, i8** %buffer.i.pre-phi, align 1, !dbg !2431, !tbaa !277
  %len.i5 = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 2, !dbg !2432
  store i16 0, i16* %len.i5, align 1, !dbg !2433, !tbaa !288
  %capacity.i = getelementptr inbounds %class.StringSumHelper, %class.StringSumHelper* %lhs, i16 0, i32 0, i32 1, !dbg !2434
  store i16 0, i16* %capacity.i, align 1, !dbg !2435, !tbaa !285
  br label %if.end, !dbg !2436

if.end:                                           ; preds = %if.end7.i, %if.end.i, %_ZN6String10invalidateEv.exit
  ret %class.StringSumHelper* %lhs, !dbg !2437
}

; Function Attrs: nounwind readonly
define i16 @_ZNK6String9compareToERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s) local_unnamed_addr #7 align 2 !dbg !2438 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2440, metadata !266), !dbg !2443
  tail call void @llvm.dbg.value(metadata %class.String* %s, i64 0, metadata !2442, metadata !266), !dbg !2444
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2445
  %0 = load i8*, i8** %buffer, align 1, !dbg !2445, !tbaa !277
  %tobool = icmp ne i8* %0, null, !dbg !2445
  %1 = getelementptr inbounds %class.String, %class.String* %s, i16 0, i32 0, !dbg !2447
  %2 = load i8*, i8** %1, align 1, !dbg !2447, !tbaa !277
  %tobool3 = icmp ne i8* %2, null, !dbg !2449
  %brmerge.demorgan = and i1 %tobool, %tobool3, !dbg !2450
  br i1 %brmerge.demorgan, label %if.end17, label %if.then, !dbg !2450

if.then:                                          ; preds = %entry
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !2451

land.lhs.true:                                    ; preds = %if.then
  %len = getelementptr inbounds %class.String, %class.String* %s, i16 0, i32 2, !dbg !2454
  %3 = load i16, i16* %len, align 1, !dbg !2454, !tbaa !288
  %cmp = icmp eq i16 %3, 0, !dbg !2456
  br i1 %cmp, label %if.end, label %if.then6, !dbg !2457

if.then6:                                         ; preds = %land.lhs.true
  %4 = load i8, i8* %2, align 1, !dbg !2459, !tbaa !337
  %conv = zext i8 %4 to i16, !dbg !2459
  %sub = sub nsw i16 0, %conv, !dbg !2461
  br label %return, !dbg !2462

if.end:                                           ; preds = %land.lhs.true, %if.then
  br i1 %tobool, label %land.lhs.true10, label %return, !dbg !2463

land.lhs.true10:                                  ; preds = %if.end
  %len11 = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2465
  %5 = load i16, i16* %len11, align 1, !dbg !2465, !tbaa !288
  %cmp12 = icmp eq i16 %5, 0, !dbg !2467
  br i1 %cmp12, label %return, label %if.then13, !dbg !2468

if.then13:                                        ; preds = %land.lhs.true10
  %6 = load i8, i8* %0, align 1, !dbg !2469, !tbaa !337
  %conv15 = zext i8 %6 to i16, !dbg !2469
  br label %return, !dbg !2471

if.end17:                                         ; preds = %entry
  %call = tail call i16 @strcmp(i8* nonnull %0, i8* nonnull %2) #9, !dbg !2472
  br label %return, !dbg !2473

return:                                           ; preds = %if.end, %land.lhs.true10, %if.end17, %if.then13, %if.then6
  %retval.0 = phi i16 [ %call, %if.end17 ], [ %sub, %if.then6 ], [ %conv15, %if.then13 ], [ 0, %land.lhs.true10 ], [ 0, %if.end ]
  ret i16 %retval.0, !dbg !2474
}

; Function Attrs: nounwind readonly
declare i16 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6String6equalsERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s2) local_unnamed_addr #7 align 2 !dbg !2475 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2477, metadata !266), !dbg !2479
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2478, metadata !266), !dbg !2480
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2481
  %0 = load i16, i16* %len, align 1, !dbg !2481, !tbaa !288
  %len2 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 2, !dbg !2482
  %1 = load i16, i16* %len2, align 1, !dbg !2482, !tbaa !288
  %cmp = icmp eq i16 %0, %1, !dbg !2483
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2484

land.rhs:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2440, metadata !266) #10, !dbg !2485
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2442, metadata !266) #10, !dbg !2488
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2489
  %2 = load i8*, i8** %buffer.i, align 1, !dbg !2489, !tbaa !277
  %tobool.i = icmp ne i8* %2, null, !dbg !2489
  %3 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !2490
  %4 = load i8*, i8** %3, align 1, !dbg !2490, !tbaa !277
  %tobool3.i = icmp ne i8* %4, null, !dbg !2491
  %brmerge.demorgan.i = and i1 %tobool.i, %tobool3.i, !dbg !2492
  br i1 %brmerge.demorgan.i, label %if.end17.i, label %if.then.i, !dbg !2492

if.then.i:                                        ; preds = %land.rhs
  %tobool3.i.not = xor i1 %tobool3.i, true, !dbg !2493
  %cmp.i = icmp eq i16 %0, 0, !dbg !2494
  %or.cond = or i1 %cmp.i, %tobool3.i.not, !dbg !2493
  br i1 %or.cond, label %if.end.i, label %if.then6.i, !dbg !2493

if.then6.i:                                       ; preds = %if.then.i
  %5 = load i8, i8* %4, align 1, !dbg !2495, !tbaa !337
  %conv.i = zext i8 %5 to i16, !dbg !2495
  %sub.i = sub nsw i16 0, %conv.i, !dbg !2496
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2497

if.end.i:                                         ; preds = %if.then.i
  %tobool.i.not = xor i1 %tobool.i, true, !dbg !2498
  %brmerge = or i1 %cmp.i, %tobool.i.not, !dbg !2498
  br i1 %brmerge, label %_ZNK6String9compareToERKS_.exit, label %if.then13.i, !dbg !2498

if.then13.i:                                      ; preds = %if.end.i
  %6 = load i8, i8* %2, align 1, !dbg !2499, !tbaa !337
  %conv15.i = zext i8 %6 to i16, !dbg !2499
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2500

if.end17.i:                                       ; preds = %land.rhs
  %call.i = tail call i16 @strcmp(i8* nonnull %2, i8* nonnull %4) #9, !dbg !2501
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2502

_ZNK6String9compareToERKS_.exit:                  ; preds = %if.end.i, %if.then6.i, %if.then13.i, %if.end17.i
  %retval.0.i = phi i16 [ %call.i, %if.end17.i ], [ %sub.i, %if.then6.i ], [ %conv15.i, %if.then13.i ], [ 0, %if.end.i ]
  %cmp3 = icmp eq i16 %retval.0.i, 0, !dbg !2503
  br label %land.end

land.end:                                         ; preds = %_ZNK6String9compareToERKS_.exit, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp3, %_ZNK6String9compareToERKS_.exit ]
  %conv = zext i1 %7 to i8, !dbg !2504
  ret i8 %conv, !dbg !2506
}

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6String6equalsEPKc(%class.String* nocapture readonly %this, i8* readonly %cstr) local_unnamed_addr #7 align 2 !dbg !2507 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2509, metadata !266), !dbg !2511
  tail call void @llvm.dbg.value(metadata i8* %cstr, i64 0, metadata !2510, metadata !266), !dbg !2512
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2513
  %0 = load i16, i16* %len, align 1, !dbg !2513, !tbaa !288
  %cmp = icmp eq i16 %0, 0, !dbg !2515
  %cmp2 = icmp eq i8* %cstr, null
  br i1 %cmp, label %if.then, label %if.end, !dbg !2516

if.then:                                          ; preds = %entry
  br i1 %cmp2, label %return, label %lor.rhs, !dbg !2517

lor.rhs:                                          ; preds = %if.then
  %1 = load i8, i8* %cstr, align 1, !dbg !2519, !tbaa !337
  %cmp3 = icmp eq i8 %1, 0, !dbg !2521
  br label %return, !dbg !2522

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0
  %2 = load i8*, i8** %buffer, align 1, !tbaa !277
  br i1 %cmp2, label %if.then6, label %if.end10, !dbg !2523

if.then6:                                         ; preds = %if.end
  %3 = load i8, i8* %2, align 1, !dbg !2524, !tbaa !337
  %cmp8 = icmp eq i8 %3, 0, !dbg !2527
  br label %return, !dbg !2528

if.end10:                                         ; preds = %if.end
  %call = tail call i16 @strcmp(i8* %2, i8* nonnull %cstr) #9, !dbg !2529
  %cmp12 = icmp eq i16 %call, 0, !dbg !2530
  br label %return, !dbg !2531

return:                                           ; preds = %if.then, %lor.rhs, %if.end10, %if.then6
  %cmp12.sink = phi i1 [ %cmp12, %if.end10 ], [ %cmp8, %if.then6 ], [ true, %if.then ], [ %cmp3, %lor.rhs ]
  %conv13 = zext i1 %cmp12.sink to i8, !dbg !2529
  ret i8 %conv13, !dbg !2532
}

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6StringltERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %rhs) local_unnamed_addr #7 align 2 !dbg !2533 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2535, metadata !266), !dbg !2537
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !2536, metadata !266), !dbg !2538
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2440, metadata !266) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !2442, metadata !266) #10, !dbg !2541
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2542
  %0 = load i8*, i8** %buffer.i, align 1, !dbg !2542, !tbaa !277
  %tobool.i = icmp ne i8* %0, null, !dbg !2542
  %1 = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 0, !dbg !2543
  %2 = load i8*, i8** %1, align 1, !dbg !2543, !tbaa !277
  %tobool3.i = icmp ne i8* %2, null, !dbg !2544
  %brmerge.demorgan.i = and i1 %tobool.i, %tobool3.i, !dbg !2545
  br i1 %brmerge.demorgan.i, label %if.end17.i, label %if.then.i, !dbg !2545

if.then.i:                                        ; preds = %entry
  br i1 %tobool3.i, label %land.lhs.true.i, label %if.end.i, !dbg !2546

land.lhs.true.i:                                  ; preds = %if.then.i
  %len.i = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 2, !dbg !2547
  %3 = load i16, i16* %len.i, align 1, !dbg !2547, !tbaa !288
  %cmp.i = icmp eq i16 %3, 0, !dbg !2548
  br i1 %cmp.i, label %if.end.i, label %if.then6.i, !dbg !2549

if.then6.i:                                       ; preds = %land.lhs.true.i
  %4 = load i8, i8* %2, align 1, !dbg !2550, !tbaa !337
  %conv.i = zext i8 %4 to i16, !dbg !2550
  %sub.i = sub nsw i16 0, %conv.i, !dbg !2551
  %extract = lshr i16 %sub.i, 15, !dbg !2552
  %extract.t = trunc i16 %extract to i8, !dbg !2552
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2552

if.end.i:                                         ; preds = %_ZNK6String9compareToERKS_.exit, %land.lhs.true.i, %if.then.i
  %merge = phi i8 [ 0, %land.lhs.true.i ], [ 0, %if.then.i ], [ %sub.i.sink.off15, %_ZNK6String9compareToERKS_.exit ]
  ret i8 %merge, !dbg !2553

if.end17.i:                                       ; preds = %entry
  %call.i = tail call i16 @strcmp(i8* nonnull %0, i8* nonnull %2) #9, !dbg !2554
  %extract12 = lshr i16 %call.i, 15, !dbg !2555
  %extract.t13 = trunc i16 %extract12 to i8, !dbg !2555
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2555

_ZNK6String9compareToERKS_.exit:                  ; preds = %if.then6.i, %if.end17.i
  %sub.i.sink.off15 = phi i8 [ %extract.t, %if.then6.i ], [ %extract.t13, %if.end17.i ]
  br label %if.end.i
}

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6StringgtERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %rhs) local_unnamed_addr #7 align 2 !dbg !2556 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2558, metadata !266), !dbg !2560
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !2559, metadata !266), !dbg !2561
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2440, metadata !266) #10, !dbg !2562
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !2442, metadata !266) #10, !dbg !2564
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2565
  %0 = load i8*, i8** %buffer.i, align 1, !dbg !2565, !tbaa !277
  %tobool.i = icmp ne i8* %0, null, !dbg !2565
  %1 = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 0, !dbg !2566
  %2 = load i8*, i8** %1, align 1, !dbg !2566, !tbaa !277
  %tobool3.i = icmp ne i8* %2, null, !dbg !2567
  %brmerge.demorgan.i = and i1 %tobool.i, %tobool3.i, !dbg !2568
  br i1 %brmerge.demorgan.i, label %if.end17.i, label %if.then.i, !dbg !2568

if.then.i:                                        ; preds = %entry
  br i1 %tobool3.i, label %land.lhs.true.i, label %if.end.i, !dbg !2569

land.lhs.true.i:                                  ; preds = %if.then.i
  %len.i = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 2, !dbg !2570
  %3 = load i16, i16* %len.i, align 1, !dbg !2570, !tbaa !288
  %cmp.i = icmp eq i16 %3, 0, !dbg !2571
  br i1 %cmp.i, label %if.end.i, label %if.then6.i, !dbg !2572

if.then6.i:                                       ; preds = %land.lhs.true.i
  %4 = load i8, i8* %2, align 1, !dbg !2573, !tbaa !337
  %conv.i = zext i8 %4 to i16, !dbg !2573
  %sub.i = sub nsw i16 0, %conv.i, !dbg !2574
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2575

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then.i
  br i1 %tobool.i, label %land.lhs.true10.i, label %_ZNK6String9compareToERKS_.exit, !dbg !2576

land.lhs.true10.i:                                ; preds = %if.end.i
  %len11.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2577
  %5 = load i16, i16* %len11.i, align 1, !dbg !2577, !tbaa !288
  %cmp12.i = icmp eq i16 %5, 0, !dbg !2578
  br i1 %cmp12.i, label %_ZNK6String9compareToERKS_.exit, label %if.then13.i, !dbg !2579

if.then13.i:                                      ; preds = %land.lhs.true10.i
  %6 = load i8, i8* %0, align 1, !dbg !2580, !tbaa !337
  %conv15.i = zext i8 %6 to i16, !dbg !2580
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2581

if.end17.i:                                       ; preds = %entry
  %call.i = tail call i16 @strcmp(i8* nonnull %0, i8* nonnull %2) #9, !dbg !2582
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2583

_ZNK6String9compareToERKS_.exit:                  ; preds = %if.then6.i, %if.end.i, %land.lhs.true10.i, %if.then13.i, %if.end17.i
  %retval.0.i = phi i16 [ %call.i, %if.end17.i ], [ %sub.i, %if.then6.i ], [ %conv15.i, %if.then13.i ], [ 0, %land.lhs.true10.i ], [ 0, %if.end.i ]
  %cmp = icmp sgt i16 %retval.0.i, 0, !dbg !2584
  %conv = zext i1 %cmp to i8, !dbg !2585
  ret i8 %conv, !dbg !2586
}

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6StringleERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %rhs) local_unnamed_addr #7 align 2 !dbg !2587 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2589, metadata !266), !dbg !2591
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !2590, metadata !266), !dbg !2592
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2440, metadata !266) #10, !dbg !2593
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !2442, metadata !266) #10, !dbg !2595
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2596
  %0 = load i8*, i8** %buffer.i, align 1, !dbg !2596, !tbaa !277
  %tobool.i = icmp ne i8* %0, null, !dbg !2596
  %1 = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 0, !dbg !2597
  %2 = load i8*, i8** %1, align 1, !dbg !2597, !tbaa !277
  %tobool3.i = icmp ne i8* %2, null, !dbg !2598
  %brmerge.demorgan.i = and i1 %tobool.i, %tobool3.i, !dbg !2599
  br i1 %brmerge.demorgan.i, label %if.end17.i, label %if.then.i, !dbg !2599

if.then.i:                                        ; preds = %entry
  br i1 %tobool3.i, label %land.lhs.true.i, label %if.end.i, !dbg !2600

land.lhs.true.i:                                  ; preds = %if.then.i
  %len.i = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 2, !dbg !2601
  %3 = load i16, i16* %len.i, align 1, !dbg !2601, !tbaa !288
  %cmp.i = icmp eq i16 %3, 0, !dbg !2602
  br i1 %cmp.i, label %if.end.i, label %if.then6.i, !dbg !2603

if.then6.i:                                       ; preds = %land.lhs.true.i
  %4 = load i8, i8* %2, align 1, !dbg !2604, !tbaa !337
  %conv.i = zext i8 %4 to i16, !dbg !2604
  %sub.i = sub nsw i16 0, %conv.i, !dbg !2605
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2606

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then.i
  br i1 %tobool.i, label %land.lhs.true10.i, label %_ZNK6String9compareToERKS_.exit, !dbg !2607

land.lhs.true10.i:                                ; preds = %if.end.i
  %len11.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2608
  %5 = load i16, i16* %len11.i, align 1, !dbg !2608, !tbaa !288
  %cmp12.i = icmp eq i16 %5, 0, !dbg !2609
  br i1 %cmp12.i, label %_ZNK6String9compareToERKS_.exit, label %if.then13.i, !dbg !2610

if.then13.i:                                      ; preds = %land.lhs.true10.i
  %6 = load i8, i8* %0, align 1, !dbg !2611, !tbaa !337
  %conv15.i = zext i8 %6 to i16, !dbg !2611
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2612

if.end17.i:                                       ; preds = %entry
  %call.i = tail call i16 @strcmp(i8* nonnull %0, i8* nonnull %2) #9, !dbg !2613
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2614

_ZNK6String9compareToERKS_.exit:                  ; preds = %if.then6.i, %if.end.i, %land.lhs.true10.i, %if.then13.i, %if.end17.i
  %retval.0.i = phi i16 [ %call.i, %if.end17.i ], [ %sub.i, %if.then6.i ], [ %conv15.i, %if.then13.i ], [ 0, %land.lhs.true10.i ], [ 0, %if.end.i ]
  %cmp = icmp slt i16 %retval.0.i, 1, !dbg !2615
  %conv = zext i1 %cmp to i8, !dbg !2616
  ret i8 %conv, !dbg !2617
}

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6StringgeERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %rhs) local_unnamed_addr #7 align 2 !dbg !2618 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2620, metadata !266), !dbg !2622
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !2621, metadata !266), !dbg !2623
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2440, metadata !266) #10, !dbg !2624
  tail call void @llvm.dbg.value(metadata %class.String* %rhs, i64 0, metadata !2442, metadata !266) #10, !dbg !2626
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2627
  %0 = load i8*, i8** %buffer.i, align 1, !dbg !2627, !tbaa !277
  %tobool.i = icmp ne i8* %0, null, !dbg !2627
  %1 = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 0, !dbg !2628
  %2 = load i8*, i8** %1, align 1, !dbg !2628, !tbaa !277
  %tobool3.i = icmp ne i8* %2, null, !dbg !2629
  %brmerge.demorgan.i = and i1 %tobool.i, %tobool3.i, !dbg !2630
  br i1 %brmerge.demorgan.i, label %if.end17.i, label %if.then.i, !dbg !2630

if.then.i:                                        ; preds = %entry
  br i1 %tobool3.i, label %land.lhs.true.i, label %_ZNK6String9compareToERKS_.exit, !dbg !2631

land.lhs.true.i:                                  ; preds = %if.then.i
  %len.i = getelementptr inbounds %class.String, %class.String* %rhs, i16 0, i32 2, !dbg !2632
  %3 = load i16, i16* %len.i, align 1, !dbg !2632, !tbaa !288
  %cmp.i = icmp eq i16 %3, 0, !dbg !2633
  br i1 %cmp.i, label %_ZNK6String9compareToERKS_.exit, label %if.then6.i, !dbg !2634

if.then6.i:                                       ; preds = %land.lhs.true.i
  %4 = load i8, i8* %2, align 1, !dbg !2635, !tbaa !337
  %conv.i = zext i8 %4 to i16, !dbg !2635
  %sub.i = sub nsw i16 0, %conv.i, !dbg !2636
  %extract2 = lshr i16 %sub.i, 15, !dbg !2637
  %extract.t3 = trunc i16 %extract2 to i8, !dbg !2637
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2637

if.end17.i:                                       ; preds = %entry
  %call.i = tail call i16 @strcmp(i8* nonnull %0, i8* nonnull %2) #9, !dbg !2638
  %extract = lshr i16 %call.i, 15, !dbg !2639
  %extract.t = trunc i16 %extract to i8, !dbg !2639
  br label %_ZNK6String9compareToERKS_.exit, !dbg !2639

_ZNK6String9compareToERKS_.exit:                  ; preds = %if.then.i, %land.lhs.true.i, %if.then6.i, %if.end17.i
  %retval.0.i.off15 = phi i8 [ %extract.t, %if.end17.i ], [ %extract.t3, %if.then6.i ], [ 0, %land.lhs.true.i ], [ 0, %if.then.i ]
  %.not = xor i8 %retval.0.i.off15, 1, !dbg !2640
  ret i8 %.not, !dbg !2641
}

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6String16equalsIgnoreCaseERKS_(%class.String* readonly %this, %class.String* readonly dereferenceable(6) %s2) local_unnamed_addr #7 align 2 !dbg !2642 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2644, metadata !266), !dbg !2648
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2645, metadata !266), !dbg !2649
  %cmp = icmp eq %class.String* %this, %s2, !dbg !2650
  br i1 %cmp, label %return, label %if.end, !dbg !2652

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2653
  %0 = load i16, i16* %len, align 1, !dbg !2653, !tbaa !288
  %len2 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 2, !dbg !2655
  %1 = load i16, i16* %len2, align 1, !dbg !2655, !tbaa !288
  %cmp3 = icmp eq i16 %0, %1, !dbg !2656
  br i1 %cmp3, label %if.end5, label %return, !dbg !2657

if.end5:                                          ; preds = %if.end
  %cmp7 = icmp eq i16 %0, 0, !dbg !2658
  br i1 %cmp7, label %return, label %if.end9, !dbg !2660

if.end9:                                          ; preds = %if.end5
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2661
  %2 = load i8*, i8** %buffer, align 1, !dbg !2661, !tbaa !277
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2646, metadata !266), !dbg !2662
  %buffer10 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !2663
  %3 = load i8*, i8** %buffer10, align 1, !dbg !2663, !tbaa !277
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2647, metadata !266), !dbg !2664
  br label %while.cond, !dbg !2665

while.cond:                                       ; preds = %while.body, %if.end9
  %p1.0 = phi i8* [ %2, %if.end9 ], [ %incdec.ptr, %while.body ]
  %p2.0 = phi i8* [ %3, %if.end9 ], [ %incdec.ptr11, %while.body ]
  tail call void @llvm.dbg.value(metadata i8* %p2.0, i64 0, metadata !2647, metadata !266), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8* %p1.0, i64 0, metadata !2646, metadata !266), !dbg !2662
  %4 = load i8, i8* %p1.0, align 1, !dbg !2666, !tbaa !337
  %tobool = icmp eq i8 %4, 0, !dbg !2666
  br i1 %tobool, label %return.loopexit, label %while.body, !dbg !2668

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %p1.0, i16 1, !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !2646, metadata !266), !dbg !2662
  %conv = sext i8 %4 to i16, !dbg !2672
  %call = tail call i16 @tolower(i16 %conv) #1, !dbg !2673
  %incdec.ptr11 = getelementptr inbounds i8, i8* %p2.0, i16 1, !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr11, i64 0, metadata !2647, metadata !266), !dbg !2664
  %5 = load i8, i8* %p2.0, align 1, !dbg !2675, !tbaa !337
  %conv12 = sext i8 %5 to i16, !dbg !2675
  %call13 = tail call i16 @tolower(i16 %conv12) #1, !dbg !2676
  %cmp14 = icmp eq i16 %call, %call13, !dbg !2678
  br i1 %cmp14, label %while.cond, label %return.loopexit, !dbg !2679, !llvm.loop !2680

return.loopexit:                                  ; preds = %while.cond, %while.body
  %retval.1.ph = phi i8 [ 1, %while.cond ], [ 0, %while.body ]
  br label %return, !dbg !2682

return:                                           ; preds = %return.loopexit, %if.end5, %if.end, %entry
  %retval.1 = phi i8 [ 1, %entry ], [ 0, %if.end ], [ 1, %if.end5 ], [ %retval.1.ph, %return.loopexit ]
  ret i8 %retval.1, !dbg !2682
}

; Function Attrs: nounwind readnone
declare i16 @tolower(i16) local_unnamed_addr #8

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6String10startsWithERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s2) local_unnamed_addr #7 align 2 !dbg !2683 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2685, metadata !266), !dbg !2687
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2686, metadata !266), !dbg !2688
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2689
  %0 = load i16, i16* %len, align 1, !dbg !2689, !tbaa !288
  %len2 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 2, !dbg !2691
  %1 = load i16, i16* %len2, align 1, !dbg !2691, !tbaa !288
  %cmp = icmp ult i16 %0, %1, !dbg !2692
  br i1 %cmp, label %return, label %if.end, !dbg !2693

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2694, metadata !266) #10, !dbg !2699
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2697, metadata !266) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !2698, metadata !266) #10, !dbg !2702
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2703
  %2 = load i8*, i8** %buffer.i, align 1, !dbg !2703, !tbaa !277
  %tobool.i = icmp eq i8* %2, null, !dbg !2703
  br i1 %tobool.i, label %return, label %lor.lhs.false3.i, !dbg !2706

lor.lhs.false3.i:                                 ; preds = %if.end
  %buffer4.i = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !2707
  %3 = load i8*, i8** %buffer4.i, align 1, !dbg !2707, !tbaa !277
  %tobool5.i = icmp eq i8* %3, null, !dbg !2709
  br i1 %tobool5.i, label %return, label %if.end.i, !dbg !2710

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %call.i = tail call i16 @strncmp(i8* nonnull %2, i8* nonnull %3, i16 %1) #9, !dbg !2712
  %cmp9.i = icmp eq i16 %call.i, 0, !dbg !2713
  %conv.i = zext i1 %cmp9.i to i8, !dbg !2712
  br label %return, !dbg !2714

return:                                           ; preds = %if.end.i, %lor.lhs.false3.i, %if.end, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %conv.i, %if.end.i ], [ 0, %lor.lhs.false3.i ], [ 0, %if.end ]
  ret i8 %retval.0, !dbg !2715
}

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6String10startsWithERKS_j(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s2, i16 %offset) local_unnamed_addr #7 align 2 !dbg !2695 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2694, metadata !266), !dbg !2716
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2697, metadata !266), !dbg !2717
  tail call void @llvm.dbg.value(metadata i16 %offset, i64 0, metadata !2698, metadata !266), !dbg !2718
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2719
  %0 = load i16, i16* %len, align 1, !dbg !2719, !tbaa !288
  %len2 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 2, !dbg !2720
  %1 = load i16, i16* %len2, align 1, !dbg !2720, !tbaa !288
  %sub = sub i16 %0, %1, !dbg !2721
  %cmp = icmp ult i16 %sub, %offset, !dbg !2722
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !2723

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2724
  %2 = load i8*, i8** %buffer, align 1, !dbg !2724, !tbaa !277
  %tobool = icmp eq i8* %2, null, !dbg !2724
  br i1 %tobool, label %return, label %lor.lhs.false3, !dbg !2725

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %buffer4 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !2726
  %3 = load i8*, i8** %buffer4, align 1, !dbg !2726, !tbaa !277
  %tobool5 = icmp eq i8* %3, null, !dbg !2727
  br i1 %tobool5, label %return, label %if.end, !dbg !2728

if.end:                                           ; preds = %lor.lhs.false3
  %arrayidx = getelementptr inbounds i8, i8* %2, i16 %offset, !dbg !2729
  %call = tail call i16 @strncmp(i8* %arrayidx, i8* nonnull %3, i16 %1) #9, !dbg !2730
  %cmp9 = icmp eq i16 %call, 0, !dbg !2731
  %conv = zext i1 %cmp9 to i8, !dbg !2730
  br label %return, !dbg !2732

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i8 [ %conv, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i8 %retval.0, !dbg !2733
}

; Function Attrs: nounwind readonly
declare i16 @strncmp(i8*, i8*, i16) local_unnamed_addr #2

; Function Attrs: nounwind readonly
define zeroext i8 @_ZNK6String8endsWithERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s2) local_unnamed_addr #7 align 2 !dbg !2734 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2736, metadata !266), !dbg !2738
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2737, metadata !266), !dbg !2739
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2740
  %0 = load i16, i16* %len, align 1, !dbg !2740, !tbaa !288
  %len2 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 2, !dbg !2742
  %1 = load i16, i16* %len2, align 1, !dbg !2742, !tbaa !288
  %cmp = icmp ult i16 %0, %1, !dbg !2743
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !2744

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2745
  %2 = load i8*, i8** %buffer, align 1, !dbg !2745, !tbaa !277
  %tobool = icmp eq i8* %2, null, !dbg !2745
  br i1 %tobool, label %return, label %lor.lhs.false3, !dbg !2747

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %buffer4 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !2748
  %3 = load i8*, i8** %buffer4, align 1, !dbg !2748, !tbaa !277
  %tobool5 = icmp eq i8* %3, null, !dbg !2750
  br i1 %tobool5, label %return, label %if.end, !dbg !2751

if.end:                                           ; preds = %lor.lhs.false3
  %sub = sub i16 %0, %1, !dbg !2753
  %arrayidx = getelementptr inbounds i8, i8* %2, i16 %sub, !dbg !2754
  %call = tail call i16 @strcmp(i8* %arrayidx, i8* nonnull %3) #9, !dbg !2755
  %cmp10 = icmp eq i16 %call, 0, !dbg !2756
  %conv = zext i1 %cmp10 to i8, !dbg !2755
  br label %return, !dbg !2757

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i8 [ %conv, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i8 %retval.0, !dbg !2758
}

; Function Attrs: nounwind readonly
define signext i8 @_ZNK6String6charAtEj(%class.String* nocapture readonly %this, i16 %loc) local_unnamed_addr #7 align 2 !dbg !2759 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2761, metadata !266), !dbg !2763
  tail call void @llvm.dbg.value(metadata i16 %loc, i64 0, metadata !2762, metadata !266), !dbg !2764
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2765, metadata !266), !dbg !2769
  tail call void @llvm.dbg.value(metadata i16 %loc, i64 0, metadata !2768, metadata !266), !dbg !2771
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2772
  %0 = load i16, i16* %len.i, align 1, !dbg !2772, !tbaa !288
  %cmp.i = icmp ugt i16 %0, %loc, !dbg !2774
  br i1 %cmp.i, label %lor.lhs.false.i, label %_ZNK6StringixEj.exit, !dbg !2775

lor.lhs.false.i:                                  ; preds = %entry
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2776
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2776, !tbaa !277
  %tobool.i = icmp eq i8* %1, null, !dbg !2776
  br i1 %tobool.i, label %_ZNK6StringixEj.exit, label %if.end.i, !dbg !2778

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr inbounds i8, i8* %1, i16 %loc, !dbg !2780
  %2 = load i8, i8* %arrayidx.i, align 1, !dbg !2780, !tbaa !337
  br label %_ZNK6StringixEj.exit, !dbg !2781

_ZNK6StringixEj.exit:                             ; preds = %entry, %lor.lhs.false.i, %if.end.i
  %retval.0.i = phi i8 [ %2, %if.end.i ], [ 0, %lor.lhs.false.i ], [ 0, %entry ]
  ret i8 %retval.0.i, !dbg !2782
}

; Function Attrs: nounwind readonly
define signext i8 @_ZNK6StringixEj(%class.String* nocapture readonly %this, i16 %index) local_unnamed_addr #7 align 2 !dbg !2766 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2765, metadata !266), !dbg !2783
  tail call void @llvm.dbg.value(metadata i16 %index, i64 0, metadata !2768, metadata !266), !dbg !2784
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2785
  %0 = load i16, i16* %len, align 1, !dbg !2785, !tbaa !288
  %cmp = icmp ugt i16 %0, %index, !dbg !2786
  br i1 %cmp, label %lor.lhs.false, label %return, !dbg !2787

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2788
  %1 = load i8*, i8** %buffer, align 1, !dbg !2788, !tbaa !277
  %tobool = icmp eq i8* %1, null, !dbg !2788
  br i1 %tobool, label %return, label %if.end, !dbg !2789

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds i8, i8* %1, i16 %index, !dbg !2790
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2790, !tbaa !337
  br label %return, !dbg !2791

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8 [ %2, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i8 %retval.0, !dbg !2792
}

; Function Attrs: nounwind
define void @_ZN6String9setCharAtEjc(%class.String* nocapture readonly %this, i16 %loc, i8 signext %c) local_unnamed_addr #0 align 2 !dbg !2793 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2795, metadata !266), !dbg !2798
  tail call void @llvm.dbg.value(metadata i16 %loc, i64 0, metadata !2796, metadata !266), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !2797, metadata !266), !dbg !2800
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2801
  %0 = load i16, i16* %len, align 1, !dbg !2801, !tbaa !288
  %cmp = icmp ugt i16 %0, %loc, !dbg !2803
  br i1 %cmp, label %if.then, label %if.end, !dbg !2804

if.then:                                          ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2805
  %1 = load i8*, i8** %buffer, align 1, !dbg !2805, !tbaa !277
  %arrayidx = getelementptr inbounds i8, i8* %1, i16 %loc, !dbg !2805
  store i8 %c, i8* %arrayidx, align 1, !dbg !2807, !tbaa !337
  br label %if.end, !dbg !2805

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2808
}

; Function Attrs: nounwind
define dereferenceable(1) i8* @_ZN6StringixEj(%class.String* nocapture readonly %this, i16 %index) local_unnamed_addr #0 align 2 !dbg !1 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !256, metadata !266), !dbg !2809
  tail call void @llvm.dbg.value(metadata i16 %index, i64 0, metadata !258, metadata !266), !dbg !2810
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2811
  %0 = load i16, i16* %len, align 1, !dbg !2811, !tbaa !288
  %cmp = icmp ugt i16 %0, %index, !dbg !2813
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2814

lor.lhs.false:                                    ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2815
  %1 = load i8*, i8** %buffer, align 1, !dbg !2815, !tbaa !277
  %tobool = icmp eq i8* %1, null, !dbg !2815
  br i1 %tobool, label %if.then, label %if.end, !dbg !2817

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, i8* @_ZZN6StringixEjE19dummy_writable_char, align 1, !dbg !2819, !tbaa !337
  br label %return, !dbg !2821

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds i8, i8* %1, i16 %index, !dbg !2822
  br label %return, !dbg !2823

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ @_ZZN6StringixEjE19dummy_writable_char, %if.then ], [ %arrayidx, %if.end ]
  ret i8* %retval.0, !dbg !2824
}

; Function Attrs: nounwind
define void @_ZNK6String8getBytesEPhjj(%class.String* nocapture readonly %this, i8* %buf, i16 %bufsize, i16 %index) local_unnamed_addr #0 align 2 !dbg !2825 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2827, metadata !266), !dbg !2832
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !2828, metadata !266), !dbg !2833
  tail call void @llvm.dbg.value(metadata i16 %bufsize, i64 0, metadata !2829, metadata !266), !dbg !2834
  tail call void @llvm.dbg.value(metadata i16 %index, i64 0, metadata !2830, metadata !266), !dbg !2835
  %tobool = icmp ne i16 %bufsize, 0, !dbg !2836
  %tobool2 = icmp ne i8* %buf, null, !dbg !2838
  %or.cond = and i1 %tobool2, %tobool, !dbg !2840
  br i1 %or.cond, label %if.end, label %return, !dbg !2840

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2841
  %0 = load i16, i16* %len, align 1, !dbg !2841, !tbaa !288
  %cmp = icmp ugt i16 %0, %index, !dbg !2843
  br i1 %cmp, label %if.end4, label %return.sink.split, !dbg !2844

if.end4:                                          ; preds = %if.end
  %sub = add i16 %bufsize, -1, !dbg !2845
  tail call void @llvm.dbg.value(metadata i16 %sub, i64 0, metadata !2831, metadata !266), !dbg !2846
  %sub6 = sub i16 %0, %index, !dbg !2847
  %cmp7 = icmp ugt i16 %sub, %sub6, !dbg !2849
  tail call void @llvm.dbg.value(metadata i16 %sub6, i64 0, metadata !2831, metadata !266), !dbg !2846
  %sub6.sub = select i1 %cmp7, i16 %sub6, i16 %sub, !dbg !2850
  tail call void @llvm.dbg.value(metadata i16 %sub6.sub, i64 0, metadata !2831, metadata !266), !dbg !2846
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2851
  %1 = load i8*, i8** %buffer, align 1, !dbg !2851, !tbaa !277
  %add.ptr = getelementptr inbounds i8, i8* %1, i16 %index, !dbg !2852
  %call = tail call i8* @strncpy(i8* nonnull %buf, i8* %add.ptr, i16 %sub6.sub), !dbg !2853
  %arrayidx12 = getelementptr inbounds i8, i8* %buf, i16 %sub6.sub, !dbg !2854
  br label %return.sink.split, !dbg !2855

return.sink.split:                                ; preds = %if.end, %if.end4
  %arrayidx12.sink = phi i8* [ %arrayidx12, %if.end4 ], [ %buf, %if.end ]
  store i8 0, i8* %arrayidx12.sink, align 1, !dbg !2856, !tbaa !337
  br label %return, !dbg !2857

return:                                           ; preds = %return.sink.split, %entry
  ret void, !dbg !2857
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i16) local_unnamed_addr #6

; Function Attrs: nounwind readonly
define i16 @_ZNK6String7indexOfEc(%class.String* nocapture readonly %this, i8 signext %c) local_unnamed_addr #7 align 2 !dbg !2859 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2861, metadata !266), !dbg !2863
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !2862, metadata !266), !dbg !2864
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2865, metadata !266) #10, !dbg !2871
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !2868, metadata !266) #10, !dbg !2873
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !2869, metadata !266) #10, !dbg !2874
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2875
  %0 = load i16, i16* %len.i, align 1, !dbg !2875, !tbaa !288
  %cmp.i = icmp eq i16 %0, 0, !dbg !2877
  br i1 %cmp.i, label %_ZNK6String7indexOfEcj.exit, label %if.end.i, !dbg !2878

if.end.i:                                         ; preds = %entry
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2879
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2879, !tbaa !277
  %conv.i = sext i8 %c to i16, !dbg !2880
  %call.i = tail call i8* @strchr(i8* %1, i16 %conv.i) #9, !dbg !2881
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !2870, metadata !266) #10, !dbg !2882
  %cmp2.i = icmp eq i8* %call.i, null, !dbg !2883
  br i1 %cmp2.i, label %_ZNK6String7indexOfEcj.exit, label %if.end4.i, !dbg !2885

if.end4.i:                                        ; preds = %if.end.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %call.i to i16, !dbg !2886
  %sub.ptr.rhs.cast.i = ptrtoint i8* %1 to i16, !dbg !2886
  %sub.ptr.sub.i = sub i16 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !2886
  br label %_ZNK6String7indexOfEcj.exit, !dbg !2887

_ZNK6String7indexOfEcj.exit:                      ; preds = %entry, %if.end.i, %if.end4.i
  %retval.1.i = phi i16 [ -1, %entry ], [ %sub.ptr.sub.i, %if.end4.i ], [ -1, %if.end.i ]
  ret i16 %retval.1.i, !dbg !2888
}

; Function Attrs: nounwind readonly
define i16 @_ZNK6String7indexOfEcj(%class.String* nocapture readonly %this, i8 signext %ch, i16 %fromIndex) local_unnamed_addr #7 align 2 !dbg !2866 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2865, metadata !266), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 %ch, i64 0, metadata !2868, metadata !266), !dbg !2890
  tail call void @llvm.dbg.value(metadata i16 %fromIndex, i64 0, metadata !2869, metadata !266), !dbg !2891
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2892
  %0 = load i16, i16* %len, align 1, !dbg !2892, !tbaa !288
  %cmp = icmp ugt i16 %0, %fromIndex, !dbg !2893
  br i1 %cmp, label %if.end, label %return, !dbg !2894

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2895
  %1 = load i8*, i8** %buffer, align 1, !dbg !2895, !tbaa !277
  %add.ptr = getelementptr inbounds i8, i8* %1, i16 %fromIndex, !dbg !2896
  %conv = sext i8 %ch to i16, !dbg !2897
  %call = tail call i8* @strchr(i8* %add.ptr, i16 %conv) #9, !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !2870, metadata !266), !dbg !2899
  %cmp2 = icmp eq i8* %call, null, !dbg !2900
  br i1 %cmp2, label %return, label %if.end4, !dbg !2901

if.end4:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i16, !dbg !2902
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i16, !dbg !2902
  %sub.ptr.sub = sub i16 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2902
  br label %return, !dbg !2903

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.1 = phi i16 [ -1, %entry ], [ %sub.ptr.sub, %if.end4 ], [ -1, %if.end ]
  ret i16 %retval.1, !dbg !2904
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i16) local_unnamed_addr #2

; Function Attrs: nounwind readonly
define i16 @_ZNK6String7indexOfERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s2) local_unnamed_addr #7 align 2 !dbg !2906 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2908, metadata !266), !dbg !2910
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2909, metadata !266), !dbg !2911
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2912, metadata !266) #10, !dbg !2918
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2915, metadata !266) #10, !dbg !2920
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !2916, metadata !266) #10, !dbg !2921
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2922
  %0 = load i16, i16* %len.i, align 1, !dbg !2922, !tbaa !288
  %cmp.i = icmp eq i16 %0, 0, !dbg !2924
  br i1 %cmp.i, label %_ZNK6String7indexOfERKS_j.exit, label %if.end.i, !dbg !2925

if.end.i:                                         ; preds = %entry
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2926
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2926, !tbaa !277
  %buffer2.i = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !2927
  %2 = load i8*, i8** %buffer2.i, align 1, !dbg !2927, !tbaa !277
  %call.i = tail call i8* @strstr(i8* %1, i8* %2) #9, !dbg !2928
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !2917, metadata !266) #10, !dbg !2929
  %cmp3.i = icmp eq i8* %call.i, null, !dbg !2930
  br i1 %cmp3.i, label %_ZNK6String7indexOfERKS_j.exit, label %if.end5.i, !dbg !2932

if.end5.i:                                        ; preds = %if.end.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %call.i to i16, !dbg !2933
  %sub.ptr.rhs.cast.i = ptrtoint i8* %1 to i16, !dbg !2933
  %sub.ptr.sub.i = sub i16 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !2933
  br label %_ZNK6String7indexOfERKS_j.exit, !dbg !2934

_ZNK6String7indexOfERKS_j.exit:                   ; preds = %entry, %if.end.i, %if.end5.i
  %retval.1.i = phi i16 [ -1, %entry ], [ %sub.ptr.sub.i, %if.end5.i ], [ -1, %if.end.i ]
  ret i16 %retval.1.i, !dbg !2935
}

; Function Attrs: nounwind readonly
define i16 @_ZNK6String7indexOfERKS_j(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s2, i16 %fromIndex) local_unnamed_addr #7 align 2 !dbg !2913 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2912, metadata !266), !dbg !2936
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !2915, metadata !266), !dbg !2937
  tail call void @llvm.dbg.value(metadata i16 %fromIndex, i64 0, metadata !2916, metadata !266), !dbg !2938
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2939
  %0 = load i16, i16* %len, align 1, !dbg !2939, !tbaa !288
  %cmp = icmp ugt i16 %0, %fromIndex, !dbg !2940
  br i1 %cmp, label %if.end, label %return, !dbg !2941

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2942
  %1 = load i8*, i8** %buffer, align 1, !dbg !2942, !tbaa !277
  %add.ptr = getelementptr inbounds i8, i8* %1, i16 %fromIndex, !dbg !2943
  %buffer2 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !2944
  %2 = load i8*, i8** %buffer2, align 1, !dbg !2944, !tbaa !277
  %call = tail call i8* @strstr(i8* %add.ptr, i8* %2) #9, !dbg !2945
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !2917, metadata !266), !dbg !2946
  %cmp3 = icmp eq i8* %call, null, !dbg !2947
  br i1 %cmp3, label %return, label %if.end5, !dbg !2948

if.end5:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i16, !dbg !2949
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i16, !dbg !2949
  %sub.ptr.sub = sub i16 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2949
  br label %return, !dbg !2950

return:                                           ; preds = %if.end5, %if.end, %entry
  %retval.1 = phi i16 [ -1, %entry ], [ %sub.ptr.sub, %if.end5 ], [ -1, %if.end ]
  ret i16 %retval.1, !dbg !2951
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
define i16 @_ZNK6String11lastIndexOfEc(%class.String* nocapture readonly %this, i8 signext %theChar) local_unnamed_addr #0 align 2 !dbg !2953 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2955, metadata !266), !dbg !2957
  tail call void @llvm.dbg.value(metadata i8 %theChar, i64 0, metadata !2956, metadata !266), !dbg !2958
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2959
  %0 = load i16, i16* %len, align 1, !dbg !2959, !tbaa !288
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2960, metadata !266) #10, !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 %theChar, i64 0, metadata !2963, metadata !266) #10, !dbg !2969
  %cmp.i = icmp eq i16 %0, 0, !dbg !2970
  br i1 %cmp.i, label %_ZNK6String11lastIndexOfEcj.exit, label %if.end.i, !dbg !2972

if.end.i:                                         ; preds = %entry
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2973
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !2973, !tbaa !277
  %arrayidx.i = getelementptr inbounds i8, i8* %1, i16 %0, !dbg !2973
  %2 = load i8, i8* %arrayidx.i, align 1, !dbg !2973, !tbaa !337
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2965, metadata !266) #10, !dbg !2974
  store i8 0, i8* %arrayidx.i, align 1, !dbg !2975, !tbaa !337
  %3 = load i8*, i8** %buffer.i, align 1, !dbg !2976, !tbaa !277
  %conv.i = sext i8 %theChar to i16, !dbg !2977
  %call.i = tail call i8* @strrchr(i8* %3, i16 %conv.i) #9, !dbg !2978
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !2966, metadata !266) #10, !dbg !2979
  %arrayidx8.i = getelementptr inbounds i8, i8* %3, i16 %0, !dbg !2980
  store i8 %2, i8* %arrayidx8.i, align 1, !dbg !2981, !tbaa !337
  %cmp9.i = icmp eq i8* %call.i, null, !dbg !2982
  br i1 %cmp9.i, label %_ZNK6String11lastIndexOfEcj.exit, label %if.end11.i, !dbg !2984

if.end11.i:                                       ; preds = %if.end.i
  %4 = bitcast %class.String* %this to i16*, !dbg !2985
  %5 = load i16, i16* %4, align 1, !dbg !2985, !tbaa !277
  %sub.ptr.lhs.cast.i = ptrtoint i8* %call.i to i16, !dbg !2986
  %sub.ptr.sub.i = sub i16 %sub.ptr.lhs.cast.i, %5, !dbg !2986
  br label %_ZNK6String11lastIndexOfEcj.exit, !dbg !2987

_ZNK6String11lastIndexOfEcj.exit:                 ; preds = %entry, %if.end.i, %if.end11.i
  %retval.1.i = phi i16 [ -1, %entry ], [ %sub.ptr.sub.i, %if.end11.i ], [ -1, %if.end.i ]
  ret i16 %retval.1.i, !dbg !2988
}

; Function Attrs: nounwind
define i16 @_ZNK6String11lastIndexOfEcj(%class.String* nocapture readonly %this, i8 signext %ch, i16 %fromIndex) local_unnamed_addr #0 align 2 !dbg !2961 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !2960, metadata !266), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8 %ch, i64 0, metadata !2963, metadata !266), !dbg !2990
  tail call void @llvm.dbg.value(metadata i16 %fromIndex, i64 0, metadata !2964, metadata !266), !dbg !2991
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !2992
  %0 = load i16, i16* %len, align 1, !dbg !2992, !tbaa !288
  %cmp = icmp ugt i16 %0, %fromIndex, !dbg !2993
  br i1 %cmp, label %if.end, label %return, !dbg !2994

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !2995
  %1 = load i8*, i8** %buffer, align 1, !dbg !2995, !tbaa !277
  %add = add nuw i16 %fromIndex, 1, !dbg !2996
  %arrayidx = getelementptr inbounds i8, i8* %1, i16 %add, !dbg !2995
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2995, !tbaa !337
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2965, metadata !266), !dbg !2997
  store i8 0, i8* %arrayidx, align 1, !dbg !2998, !tbaa !337
  %3 = load i8*, i8** %buffer, align 1, !dbg !2999, !tbaa !277
  %conv = sext i8 %ch to i16, !dbg !3000
  %call = tail call i8* @strrchr(i8* %3, i16 %conv) #9, !dbg !3001
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !2966, metadata !266), !dbg !3002
  %arrayidx8 = getelementptr inbounds i8, i8* %3, i16 %add, !dbg !3003
  store i8 %2, i8* %arrayidx8, align 1, !dbg !3004, !tbaa !337
  %cmp9 = icmp eq i8* %call, null, !dbg !3005
  br i1 %cmp9, label %return, label %if.end11, !dbg !3006

if.end11:                                         ; preds = %if.end
  %4 = bitcast %class.String* %this to i16*, !dbg !3007
  %5 = load i16, i16* %4, align 1, !dbg !3007, !tbaa !277
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i16, !dbg !3008
  %sub.ptr.sub = sub i16 %sub.ptr.lhs.cast, %5, !dbg !3008
  br label %return, !dbg !3009

return:                                           ; preds = %if.end11, %if.end, %entry
  %retval.1 = phi i16 [ -1, %entry ], [ %sub.ptr.sub, %if.end11 ], [ -1, %if.end ]
  ret i16 %retval.1, !dbg !3010
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i16) local_unnamed_addr #2

; Function Attrs: nounwind readonly
define i16 @_ZNK6String11lastIndexOfERKS_(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s2) local_unnamed_addr #7 align 2 !dbg !3012 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3014, metadata !266), !dbg !3016
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !3015, metadata !266), !dbg !3017
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !3018
  %0 = load i16, i16* %len, align 1, !dbg !3018, !tbaa !288
  %len2 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 2, !dbg !3019
  %1 = load i16, i16* %len2, align 1, !dbg !3019, !tbaa !288
  %sub = sub i16 %0, %1, !dbg !3020
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3021, metadata !266) #10, !dbg !3029
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !3024, metadata !266) #10, !dbg !3031
  tail call void @llvm.dbg.value(metadata i16 %sub, i64 0, metadata !3025, metadata !266) #10, !dbg !3032
  %cmp.i = icmp eq i16 %1, 0, !dbg !3033
  br i1 %cmp.i, label %_ZNK6String11lastIndexOfERKS_j.exit, label %lor.lhs.false.i, !dbg !3035

lor.lhs.false.i:                                  ; preds = %entry
  %cmp3.i = icmp eq i16 %0, 0, !dbg !3036
  %cmp7.i = icmp ult i16 %0, %1, !dbg !3038
  %or.cond.i = or i1 %cmp3.i, %cmp7.i, !dbg !3040
  br i1 %or.cond.i, label %_ZNK6String11lastIndexOfERKS_j.exit, label %if.end.i, !dbg !3040

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp9.i = icmp ugt i16 %0, %sub, !dbg !3041
  %sub.i = add i16 %0, -1, !dbg !3043
  tail call void @llvm.dbg.value(metadata i16 %sub.i, i64 0, metadata !3025, metadata !266) #10, !dbg !3032
  %fromIndex.sub.i = select i1 %cmp9.i, i16 %sub, i16 %sub.i, !dbg !3045
  tail call void @llvm.dbg.value(metadata i16 %fromIndex.sub.i, i64 0, metadata !3025, metadata !266) #10, !dbg !3032
  tail call void @llvm.dbg.value(metadata i16 -1, i64 0, metadata !3026, metadata !266) #10, !dbg !3046
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3047
  %2 = load i8*, i8** %buffer.i, align 1, !dbg !3047, !tbaa !277
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3027, metadata !266) #10, !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3027, metadata !266) #10, !dbg !3048
  tail call void @llvm.dbg.value(metadata i16 -1, i64 0, metadata !3026, metadata !266) #10, !dbg !3046
  %cmp1439.i = icmp slt i16 %fromIndex.sub.i, 0, !dbg !3049
  br i1 %cmp1439.i, label %_ZNK6String11lastIndexOfERKS_j.exit, label %for.body.lr.ph.i, !dbg !3052

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %buffer15.i = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !3054
  %3 = load i8*, i8** %buffer15.i, align 1, !dbg !3054, !tbaa !277
  %sub.ptr.rhs.cast.i = ptrtoint i8* %2 to i16, !dbg !3056
  %add.ptr.i = getelementptr inbounds i8, i8* %2, i16 %fromIndex.sub.i, !dbg !3058
  br label %for.body.i, !dbg !3052

for.body.i:                                       ; preds = %if.end17.i, %for.body.lr.ph.i
  %p.041.i = phi i8* [ %2, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end17.i ]
  %found.040.i = phi i16 [ -1, %for.body.lr.ph.i ], [ %found.0.sub.ptr.sub.i, %if.end17.i ]
  %call.i = tail call i8* @strstr(i8* %p.041.i, i8* %3) #9, !dbg !3059
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !3027, metadata !266) #10, !dbg !3048
  %tobool.i = icmp eq i8* %call.i, null, !dbg !3060
  br i1 %tobool.i, label %_ZNK6String11lastIndexOfERKS_j.exit.loopexit, label %if.end17.i, !dbg !3062

if.end17.i:                                       ; preds = %for.body.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %call.i to i16, !dbg !3056
  %sub.ptr.sub.i = sub i16 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !3056
  %cmp19.i = icmp ugt i16 %sub.ptr.sub.i, %fromIndex.sub.i, !dbg !3063
  tail call void @llvm.dbg.value(metadata i16 %sub.ptr.sub.i, i64 0, metadata !3026, metadata !266) #10, !dbg !3046
  %found.0.sub.ptr.sub.i = select i1 %cmp19.i, i16 %found.040.i, i16 %sub.ptr.sub.i, !dbg !3064
  tail call void @llvm.dbg.value(metadata i16 %found.0.sub.ptr.sub.i, i64 0, metadata !3026, metadata !266) #10, !dbg !3046
  %incdec.ptr.i = getelementptr inbounds i8, i8* %call.i, i16 1, !dbg !3065
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !3027, metadata !266) #10, !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !3027, metadata !266) #10, !dbg !3048
  tail call void @llvm.dbg.value(metadata i16 %found.0.sub.ptr.sub.i, i64 0, metadata !3026, metadata !266) #10, !dbg !3046
  %cmp14.i = icmp ugt i8* %incdec.ptr.i, %add.ptr.i, !dbg !3049
  br i1 %cmp14.i, label %_ZNK6String11lastIndexOfERKS_j.exit.loopexit, label %for.body.i, !dbg !3052, !llvm.loop !3067

_ZNK6String11lastIndexOfERKS_j.exit.loopexit:     ; preds = %if.end17.i, %for.body.i
  %retval.0.i.ph = phi i16 [ %found.0.sub.ptr.sub.i, %if.end17.i ], [ %found.040.i, %for.body.i ]
  br label %_ZNK6String11lastIndexOfERKS_j.exit, !dbg !3070

_ZNK6String11lastIndexOfERKS_j.exit:              ; preds = %_ZNK6String11lastIndexOfERKS_j.exit.loopexit, %entry, %lor.lhs.false.i, %if.end.i
  %retval.0.i = phi i16 [ -1, %lor.lhs.false.i ], [ -1, %entry ], [ -1, %if.end.i ], [ %retval.0.i.ph, %_ZNK6String11lastIndexOfERKS_j.exit.loopexit ]
  ret i16 %retval.0.i, !dbg !3070
}

; Function Attrs: nounwind readonly
define i16 @_ZNK6String11lastIndexOfERKS_j(%class.String* nocapture readonly %this, %class.String* nocapture readonly dereferenceable(6) %s2, i16 %fromIndex) local_unnamed_addr #7 align 2 !dbg !3022 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3021, metadata !266), !dbg !3071
  tail call void @llvm.dbg.value(metadata %class.String* %s2, i64 0, metadata !3024, metadata !266), !dbg !3072
  tail call void @llvm.dbg.value(metadata i16 %fromIndex, i64 0, metadata !3025, metadata !266), !dbg !3073
  %len = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 2, !dbg !3074
  %0 = load i16, i16* %len, align 1, !dbg !3074, !tbaa !288
  %cmp = icmp eq i16 %0, 0, !dbg !3075
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !3076

lor.lhs.false:                                    ; preds = %entry
  %len2 = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !3077
  %1 = load i16, i16* %len2, align 1, !dbg !3077, !tbaa !288
  %cmp3 = icmp eq i16 %1, 0, !dbg !3078
  %cmp7 = icmp ugt i16 %0, %1, !dbg !3079
  %or.cond = or i1 %cmp3, %cmp7, !dbg !3080
  br i1 %or.cond, label %return, label %if.end, !dbg !3080

if.end:                                           ; preds = %lor.lhs.false
  %cmp9 = icmp ugt i16 %1, %fromIndex, !dbg !3081
  %sub = add i16 %1, -1, !dbg !3082
  tail call void @llvm.dbg.value(metadata i16 %sub, i64 0, metadata !3025, metadata !266), !dbg !3073
  %fromIndex.sub = select i1 %cmp9, i16 %fromIndex, i16 %sub, !dbg !3083
  tail call void @llvm.dbg.value(metadata i16 %fromIndex.sub, i64 0, metadata !3025, metadata !266), !dbg !3073
  tail call void @llvm.dbg.value(metadata i16 -1, i64 0, metadata !3026, metadata !266), !dbg !3084
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3085
  %2 = load i8*, i8** %buffer, align 1, !dbg !3085, !tbaa !277
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3027, metadata !266), !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3027, metadata !266), !dbg !3086
  tail call void @llvm.dbg.value(metadata i16 -1, i64 0, metadata !3026, metadata !266), !dbg !3084
  %cmp1439 = icmp slt i16 %fromIndex.sub, 0, !dbg !3087
  br i1 %cmp1439, label %return, label %for.body.lr.ph, !dbg !3088

for.body.lr.ph:                                   ; preds = %if.end
  %buffer15 = getelementptr inbounds %class.String, %class.String* %s2, i16 0, i32 0, !dbg !3089
  %3 = load i8*, i8** %buffer15, align 1, !dbg !3089, !tbaa !277
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i16, !dbg !3090
  %add.ptr = getelementptr inbounds i8, i8* %2, i16 %fromIndex.sub, !dbg !3091
  br label %for.body, !dbg !3088

for.body:                                         ; preds = %for.body.lr.ph, %if.end17
  %p.041 = phi i8* [ %2, %for.body.lr.ph ], [ %incdec.ptr, %if.end17 ]
  %found.040 = phi i16 [ -1, %for.body.lr.ph ], [ %found.0.sub.ptr.sub, %if.end17 ]
  %call = tail call i8* @strstr(i8* %p.041, i8* %3) #9, !dbg !3092
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !3027, metadata !266), !dbg !3086
  %tobool = icmp eq i8* %call, null, !dbg !3093
  br i1 %tobool, label %return.loopexit, label %if.end17, !dbg !3094

if.end17:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i16, !dbg !3090
  %sub.ptr.sub = sub i16 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3090
  %cmp19 = icmp ugt i16 %sub.ptr.sub, %fromIndex.sub, !dbg !3095
  tail call void @llvm.dbg.value(metadata i16 %sub.ptr.sub, i64 0, metadata !3026, metadata !266), !dbg !3084
  %found.0.sub.ptr.sub = select i1 %cmp19, i16 %found.040, i16 %sub.ptr.sub, !dbg !3096
  tail call void @llvm.dbg.value(metadata i16 %found.0.sub.ptr.sub, i64 0, metadata !3026, metadata !266), !dbg !3084
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i16 1, !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3027, metadata !266), !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3027, metadata !266), !dbg !3086
  tail call void @llvm.dbg.value(metadata i16 %found.0.sub.ptr.sub, i64 0, metadata !3026, metadata !266), !dbg !3084
  %cmp14 = icmp ugt i8* %incdec.ptr, %add.ptr, !dbg !3087
  br i1 %cmp14, label %return.loopexit, label %for.body, !dbg !3088, !llvm.loop !3067

return.loopexit:                                  ; preds = %if.end17, %for.body
  %retval.0.ph = phi i16 [ %found.040, %for.body ], [ %found.0.sub.ptr.sub, %if.end17 ]
  br label %return, !dbg !3098

return:                                           ; preds = %return.loopexit, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i16 [ -1, %lor.lhs.false ], [ -1, %entry ], [ -1, %if.end ], [ %retval.0.ph, %return.loopexit ]
  ret i16 %retval.0, !dbg !3098
}

define void @_ZNK6String9substringEjj(%class.String* noalias sret %agg.result, %class.String* nocapture readonly %this, i16 %left, i16 %right) local_unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !3100 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3102, metadata !266), !dbg !3110
  tail call void @llvm.dbg.value(metadata i16 %left, i64 0, metadata !3103, metadata !266), !dbg !3111
  tail call void @llvm.dbg.value(metadata i16 %right, i64 0, metadata !3104, metadata !266), !dbg !3112
  %cmp = icmp ugt i16 %left, %right, !dbg !3113
  tail call void @llvm.dbg.value(metadata i16 %left, i64 0, metadata !3104, metadata !266), !dbg !3112
  tail call void @llvm.dbg.value(metadata i16 %right, i64 0, metadata !3103, metadata !266), !dbg !3111
  %left.right = select i1 %cmp, i16 %left, i16 %right, !dbg !3114
  %right.left = select i1 %cmp, i16 %right, i16 %left, !dbg !3114
  tail call void @llvm.dbg.value(metadata i16 %right.left, i64 0, metadata !3103, metadata !266), !dbg !3111
  tail call void @llvm.dbg.value(metadata i16 %left.right, i64 0, metadata !3104, metadata !266), !dbg !3112
  tail call void @llvm.dbg.declare(metadata %class.String* %agg.result, metadata !3108, metadata !3115), !dbg !3116
  tail call void @llvm.dbg.value(metadata %class.String* %agg.result, i64 0, metadata !264, metadata !266) #10, !dbg !3117
  tail call void @llvm.dbg.value(metadata %class.String* %agg.result, i64 0, metadata !269, metadata !266) #10, !dbg !3119
  %buffer.i.i = getelementptr inbounds %class.String, %class.String* %agg.result, i16 0, i32 0, !dbg !3121
  store i8* null, i8** %buffer.i.i, align 2, !dbg !3122, !tbaa !277
  %capacity.i.i = getelementptr inbounds %class.String, %class.String* %agg.result, i16 0, i32 1, !dbg !3123
  store i16 0, i16* %capacity.i.i, align 2, !dbg !3124, !tbaa !285
  %len.i.i = getelementptr inbounds %class.String, %class.String* %agg.result, i16 0, i32 2, !dbg !3125
  store i16 0, i16* %len.i.i, align 2, !dbg !3126, !tbaa !288
  tail call void @llvm.dbg.value(metadata %class.String* %agg.result, i64 0, metadata !294, metadata !266) #10, !dbg !3127
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !298, metadata !266) #10, !dbg !3129
  tail call void @llvm.dbg.value(metadata %class.String* %agg.result, i64 0, metadata !304, metadata !266) #10, !dbg !3130
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !307, metadata !266) #10, !dbg !3132
  tail call void @llvm.dbg.value(metadata %class.String* %agg.result, i64 0, metadata !312, metadata !266) #10, !dbg !3133
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !315, metadata !266) #10, !dbg !3135
  %call.i.i.i.i = tail call noalias i8* @realloc(i8* null, i16 1) #10, !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i.i, i64 0, metadata !316, metadata !266) #10, !dbg !3137
  %tobool.i.i.i.i = icmp eq i8* %call.i.i.i.i, null, !dbg !3138
  br i1 %tobool.i.i.i.i, label %_ZN6String10invalidateEv.exit.i.i, label %if.end.i.i, !dbg !3139

_ZN6String10invalidateEv.exit.i.i:                ; preds = %entry
  tail call void @llvm.dbg.value(metadata %class.String* %agg.result, i64 0, metadata !339, metadata !266) #10, !dbg !3140
  store i8* null, i8** %buffer.i.i, align 2, !dbg !3142, !tbaa !277
  store i16 0, i16* %len.i.i, align 2, !dbg !3143, !tbaa !288
  store i16 0, i16* %capacity.i.i, align 2, !dbg !3144, !tbaa !285
  br label %_ZN6StringC2EPKc.exit, !dbg !3145

if.end.i.i:                                       ; preds = %entry
  store i8* %call.i.i.i.i, i8** %buffer.i.i, align 2, !dbg !3146, !tbaa !277
  store i16 0, i16* %capacity.i.i, align 2, !dbg !3147, !tbaa !285
  store i16 0, i16* %len.i.i, align 2, !dbg !3148, !tbaa !288
  store i8 0, i8* %call.i.i.i.i, align 1, !dbg !3149
  br label %_ZN6StringC2EPKc.exit, !dbg !3150

_ZN6StringC2EPKc.exit:                            ; preds = %_ZN6String10invalidateEv.exit.i.i, %if.end.i.i
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !3151
  %0 = load i16, i16* %len, align 1, !dbg !3151, !tbaa !288
  %cmp2 = icmp ult i16 %right.left, %0, !dbg !3153
  br i1 %cmp2, label %invoke.cont, label %nrvo.skipdtor, !dbg !3154

invoke.cont:                                      ; preds = %_ZN6StringC2EPKc.exit
  %cmp6 = icmp ugt i16 %left.right, %0, !dbg !3155
  tail call void @llvm.dbg.value(metadata i16 %0, i64 0, metadata !3104, metadata !266), !dbg !3112
  %.left.right = select i1 %cmp6, i16 %0, i16 %left.right, !dbg !3157
  tail call void @llvm.dbg.value(metadata i16 %.left.right, i64 0, metadata !3104, metadata !266), !dbg !3112
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3158
  %1 = load i8*, i8** %buffer, align 1, !dbg !3158, !tbaa !277
  %arrayidx = getelementptr inbounds i8, i8* %1, i16 %.left.right, !dbg !3158
  %2 = load i8, i8* %arrayidx, align 1, !dbg !3158, !tbaa !337
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3109, metadata !266), !dbg !3159
  store i8 0, i8* %arrayidx, align 1, !dbg !3160, !tbaa !337
  %3 = load i8*, i8** %buffer, align 1, !dbg !3161, !tbaa !277
  %add.ptr = getelementptr inbounds i8, i8* %3, i16 %right.left, !dbg !3162
  %call = tail call dereferenceable(6) %class.String* @_ZN6StringaSEPKc(%class.String* nonnull %agg.result, i8* %add.ptr), !dbg !3163
  %4 = load i8*, i8** %buffer, align 1, !dbg !3164, !tbaa !277
  %arrayidx15 = getelementptr inbounds i8, i8* %4, i16 %.left.right, !dbg !3164
  store i8 %2, i8* %arrayidx15, align 1, !dbg !3165, !tbaa !337
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %invoke.cont, %_ZN6StringC2EPKc.exit
  ret void, !dbg !3166
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
define void @_ZN6String7replaceEcc(%class.String* nocapture readonly %this, i8 signext %find, i8 signext %replace) local_unnamed_addr #0 align 2 !dbg !3168 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3170, metadata !266), !dbg !3175
  tail call void @llvm.dbg.value(metadata i8 %find, i64 0, metadata !3171, metadata !266), !dbg !3176
  tail call void @llvm.dbg.value(metadata i8 %replace, i64 0, metadata !3172, metadata !266), !dbg !3177
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3178
  %0 = load i8*, i8** %buffer, align 1, !dbg !3178, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !3178
  br i1 %tobool, label %for.end, label %for.cond.preheader, !dbg !3180

for.cond.preheader:                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3173, metadata !266), !dbg !3181
  %1 = load i8, i8* %0, align 1, !dbg !3182, !tbaa !337
  %tobool311 = icmp eq i8 %1, 0, !dbg !3182
  br i1 %tobool311, label %for.end, label %for.body.preheader, !dbg !3185

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !3187

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %2 = phi i8 [ %3, %for.inc ], [ %1, %for.body.preheader ]
  %p.012 = phi i8* [ %incdec.ptr, %for.inc ], [ %0, %for.body.preheader ]
  %cmp = icmp eq i8 %2, %find, !dbg !3187
  br i1 %cmp, label %if.then5, label %for.inc, !dbg !3190

if.then5:                                         ; preds = %for.body
  store i8 %replace, i8* %p.012, align 1, !dbg !3191, !tbaa !337
  br label %for.inc, !dbg !3193

for.inc:                                          ; preds = %for.body, %if.then5
  %incdec.ptr = getelementptr inbounds i8, i8* %p.012, i16 1, !dbg !3194
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3173, metadata !266), !dbg !3181
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3173, metadata !266), !dbg !3181
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !3182, !tbaa !337
  %tobool3 = icmp eq i8 %3, 0, !dbg !3182
  br i1 %tobool3, label %for.end.loopexit, label %for.body, !dbg !3185, !llvm.loop !3196

for.end.loopexit:                                 ; preds = %for.inc
  br label %for.end, !dbg !3199

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader, %entry
  ret void, !dbg !3199
}

; Function Attrs: nounwind
define void @_ZN6String7replaceERKS_S1_(%class.String* nocapture %this, %class.String* nocapture readonly dereferenceable(6) %find, %class.String* nocapture readonly dereferenceable(6) %replace) local_unnamed_addr #0 align 2 !dbg !3200 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3202, metadata !266), !dbg !3217
  tail call void @llvm.dbg.value(metadata %class.String* %find, i64 0, metadata !3203, metadata !266), !dbg !3218
  tail call void @llvm.dbg.value(metadata %class.String* %replace, i64 0, metadata !3204, metadata !266), !dbg !3219
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !3220
  %0 = load i16, i16* %len, align 1, !dbg !3220, !tbaa !288
  %cmp = icmp eq i16 %0, 0, !dbg !3222
  br i1 %cmp, label %cleanup.cont83, label %lor.lhs.false, !dbg !3223

lor.lhs.false:                                    ; preds = %entry
  %len2 = getelementptr inbounds %class.String, %class.String* %find, i16 0, i32 2, !dbg !3224
  %1 = load i16, i16* %len2, align 1, !dbg !3224, !tbaa !288
  %cmp3 = icmp eq i16 %1, 0, !dbg !3226
  br i1 %cmp3, label %cleanup.cont83, label %if.end, !dbg !3227

if.end:                                           ; preds = %lor.lhs.false
  %len4 = getelementptr inbounds %class.String, %class.String* %replace, i16 0, i32 2, !dbg !3229
  %2 = load i16, i16* %len4, align 1, !dbg !3229, !tbaa !288
  %sub = sub i16 %2, %1, !dbg !3230
  tail call void @llvm.dbg.value(metadata i16 %sub, i64 0, metadata !3205, metadata !266), !dbg !3231
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3232
  %3 = load i8*, i8** %buffer, align 1, !dbg !3232, !tbaa !277
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3206, metadata !266), !dbg !3233
  %cmp6 = icmp eq i16 %sub, 0, !dbg !3234
  br i1 %cmp6, label %while.cond.preheader, label %if.else, !dbg !3235

while.cond.preheader:                             ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3206, metadata !266), !dbg !3233
  %buffer8 = getelementptr inbounds %class.String, %class.String* %find, i16 0, i32 0, !dbg !3236
  %4 = load i8*, i8** %buffer8, align 1, !dbg !3236, !tbaa !277
  %call145 = tail call i8* @strstr(i8* %3, i8* %4) #9, !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %call145, i64 0, metadata !3207, metadata !266), !dbg !3240
  %cmp9146 = icmp eq i8* %call145, null, !dbg !3241
  br i1 %cmp9146, label %cleanup.cont83, label %while.body.lr.ph, !dbg !3242

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %buffer10 = getelementptr inbounds %class.String, %class.String* %replace, i16 0, i32 0, !dbg !3243
  br label %while.body, !dbg !3242

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %5 = phi i16 [ %2, %while.body.lr.ph ], [ %7, %while.body ], !dbg !3245
  %call147 = phi i8* [ %call145, %while.body.lr.ph ], [ %call, %while.body ]
  %6 = load i8*, i8** %buffer10, align 1, !dbg !3243, !tbaa !277
  tail call void @llvm.memcpy.p0i8.p0i8.i16(i8* nonnull %call147, i8* %6, i16 %5, i32 1, i1 false), !dbg !3246
  %7 = load i16, i16* %len4, align 1, !dbg !3247, !tbaa !288
  %add.ptr = getelementptr inbounds i8, i8* %call147, i16 %7, !dbg !3248
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !3206, metadata !266), !dbg !3233
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !3206, metadata !266), !dbg !3233
  %8 = load i8*, i8** %buffer8, align 1, !dbg !3236, !tbaa !277
  %call = tail call i8* @strstr(i8* %add.ptr, i8* %8) #9, !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !3207, metadata !266), !dbg !3240
  %cmp9 = icmp eq i8* %call, null, !dbg !3241
  br i1 %cmp9, label %cleanup.cont83.loopexit, label %while.body, !dbg !3242, !llvm.loop !3249

if.else:                                          ; preds = %if.end
  %cmp13 = icmp slt i16 %sub, 0, !dbg !3252
  %buffer17 = getelementptr inbounds %class.String, %class.String* %find, i16 0, i32 0
  %9 = load i8*, i8** %buffer17, align 1, !tbaa !277
  %call18148 = tail call i8* @strstr(i8* %3, i8* %9) #9, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %call18148, i64 0, metadata !3207, metadata !266), !dbg !3240
  %cmp19149 = icmp eq i8* %call18148, null
  br i1 %cmp13, label %while.cond16.preheader, label %while.cond33.preheader, !dbg !3256

while.cond33.preheader:                           ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i16 %0, i64 0, metadata !3214, metadata !266), !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3206, metadata !266), !dbg !3233
  br i1 %cmp19149, label %cleanup.cont83, label %while.body37.preheader, !dbg !3259

while.body37.preheader:                           ; preds = %while.cond33.preheader
  br label %while.body37, !dbg !3261

while.cond16.preheader:                           ; preds = %if.else
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3206, metadata !266), !dbg !3233
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3208, metadata !266), !dbg !3263
  br i1 %cmp19149, label %while.end29, label %while.body20.lr.ph, !dbg !3264

while.body20.lr.ph:                               ; preds = %while.cond16.preheader
  %buffer22 = getelementptr inbounds %class.String, %class.String* %replace, i16 0, i32 0, !dbg !3265
  br label %while.body20, !dbg !3264

while.body20:                                     ; preds = %while.body20.lr.ph, %while.body20
  %call18152 = phi i8* [ %call18148, %while.body20.lr.ph ], [ %call18, %while.body20 ]
  %readFrom.1151 = phi i8* [ %3, %while.body20.lr.ph ], [ %add.ptr27, %while.body20 ]
  %writeTo.0150 = phi i8* [ %3, %while.body20.lr.ph ], [ %add.ptr25, %while.body20 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %call18152 to i16, !dbg !3266
  %sub.ptr.rhs.cast = ptrtoint i8* %readFrom.1151 to i16, !dbg !3266
  %sub.ptr.sub = sub i16 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3266
  tail call void @llvm.dbg.value(metadata i16 %sub.ptr.sub, i64 0, metadata !3212, metadata !266), !dbg !3267
  tail call void @llvm.memcpy.p0i8.p0i8.i16(i8* %writeTo.0150, i8* %readFrom.1151, i16 %sub.ptr.sub, i32 1, i1 false), !dbg !3268
  %add.ptr21 = getelementptr inbounds i8, i8* %writeTo.0150, i16 %sub.ptr.sub, !dbg !3269
  tail call void @llvm.dbg.value(metadata i8* %add.ptr21, i64 0, metadata !3208, metadata !266), !dbg !3263
  %10 = load i8*, i8** %buffer22, align 1, !dbg !3265, !tbaa !277
  %11 = load i16, i16* %len4, align 1, !dbg !3270, !tbaa !288
  tail call void @llvm.memcpy.p0i8.p0i8.i16(i8* %add.ptr21, i8* %10, i16 %11, i32 1, i1 false), !dbg !3271
  %12 = load i16, i16* %len4, align 1, !dbg !3272, !tbaa !288
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr21, i16 %12, !dbg !3273
  tail call void @llvm.dbg.value(metadata i8* %add.ptr25, i64 0, metadata !3208, metadata !266), !dbg !3263
  %13 = load i16, i16* %len2, align 1, !dbg !3274, !tbaa !288
  %add.ptr27 = getelementptr inbounds i8, i8* %call18152, i16 %13, !dbg !3275
  tail call void @llvm.dbg.value(metadata i8* %add.ptr27, i64 0, metadata !3206, metadata !266), !dbg !3233
  %14 = load i16, i16* %len, align 1, !dbg !3276, !tbaa !288
  %add = add i16 %14, %sub, !dbg !3276
  store i16 %add, i16* %len, align 1, !dbg !3276, !tbaa !288
  tail call void @llvm.dbg.value(metadata i8* %add.ptr27, i64 0, metadata !3206, metadata !266), !dbg !3233
  tail call void @llvm.dbg.value(metadata i8* %add.ptr25, i64 0, metadata !3208, metadata !266), !dbg !3263
  %15 = load i8*, i8** %buffer17, align 1, !dbg !3277, !tbaa !277
  %call18 = tail call i8* @strstr(i8* %add.ptr27, i8* %15) #9, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %call18, i64 0, metadata !3207, metadata !266), !dbg !3240
  %cmp19 = icmp eq i8* %call18, null, !dbg !3278
  br i1 %cmp19, label %while.end29.loopexit, label %while.body20, !dbg !3264, !llvm.loop !3279

while.end29.loopexit:                             ; preds = %while.body20
  br label %while.end29, !dbg !3282

while.end29:                                      ; preds = %while.end29.loopexit, %while.cond16.preheader
  %writeTo.0.lcssa = phi i8* [ %3, %while.cond16.preheader ], [ %add.ptr25, %while.end29.loopexit ]
  %readFrom.1.lcssa = phi i8* [ %3, %while.cond16.preheader ], [ %add.ptr27, %while.end29.loopexit ]
  %call30 = tail call i8* @strcpy(i8* %writeTo.0.lcssa, i8* %readFrom.1.lcssa), !dbg !3282
  br label %cleanup.cont83, !dbg !3283

while.body37:                                     ; preds = %while.body37.preheader, %while.body37
  %call35160 = phi i8* [ %call35, %while.body37 ], [ %call18148, %while.body37.preheader ]
  %size.0159 = phi i16 [ %add40, %while.body37 ], [ %0, %while.body37.preheader ]
  %add.ptr39 = getelementptr inbounds i8, i8* %call35160, i16 %1, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %add.ptr39, i64 0, metadata !3206, metadata !266), !dbg !3233
  %add40 = add i16 %size.0159, %sub, !dbg !3284
  tail call void @llvm.dbg.value(metadata i16 %add40, i64 0, metadata !3214, metadata !266), !dbg !3258
  tail call void @llvm.dbg.value(metadata i16 %add40, i64 0, metadata !3214, metadata !266), !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %add.ptr39, i64 0, metadata !3206, metadata !266), !dbg !3233
  %call35 = tail call i8* @strstr(i8* %add.ptr39, i8* %9) #9, !dbg !3285
  tail call void @llvm.dbg.value(metadata i8* %call35, i64 0, metadata !3207, metadata !266), !dbg !3240
  %cmp36 = icmp eq i8* %call35, null, !dbg !3286
  br i1 %cmp36, label %while.end41, label %while.body37, !dbg !3259, !llvm.loop !3287

while.end41:                                      ; preds = %while.body37
  %cmp43 = icmp eq i16 %add40, %0, !dbg !3290
  br i1 %cmp43, label %cleanup.cont83, label %if.end45, !dbg !3292

if.end45:                                         ; preds = %while.end41
  %capacity = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 1, !dbg !3293
  %16 = load i16, i16* %capacity, align 1, !dbg !3293, !tbaa !285
  %cmp46 = icmp ugt i16 %add40, %16, !dbg !3295
  br i1 %cmp46, label %land.lhs.true, label %if.end49, !dbg !3296

land.lhs.true:                                    ; preds = %if.end45
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !312, metadata !266) #10, !dbg !3297
  tail call void @llvm.dbg.value(metadata i16 undef, i64 0, metadata !315, metadata !266) #10, !dbg !3300
  %add.i = add i16 %add40, 1, !dbg !3301
  %call.i = tail call noalias i8* @realloc(i8* %3, i16 %add.i) #10, !dbg !3302
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !316, metadata !266) #10, !dbg !3303
  %tobool.i = icmp eq i8* %call.i, null, !dbg !3304
  br i1 %tobool.i, label %cleanup.cont83, label %_ZN6String12changeBufferEj.exit, !dbg !3305

_ZN6String12changeBufferEj.exit:                  ; preds = %land.lhs.true
  store i8* %call.i, i8** %buffer, align 1, !dbg !3306, !tbaa !277
  store i16 %add40, i16* %capacity, align 1, !dbg !3307, !tbaa !285
  %.pre = load i16, i16* %len, align 1, !dbg !3308, !tbaa !288
  br label %if.end49, !dbg !3309

if.end49:                                         ; preds = %_ZN6String12changeBufferEj.exit, %if.end45
  %17 = phi i16 [ %.pre, %_ZN6String12changeBufferEj.exit ], [ %0, %if.end45 ], !dbg !3308
  %index.0154 = add i16 %17, -1, !dbg !3310
  tail call void @llvm.dbg.value(metadata i16 %index.0154, i64 0, metadata !3216, metadata !266), !dbg !3311
  %cmp53155 = icmp sgt i16 %index.0154, -1, !dbg !3312
  br i1 %cmp53155, label %land.rhs.lr.ph, label %cleanup.cont83, !dbg !3313

land.rhs.lr.ph:                                   ; preds = %if.end49
  %buffer74 = getelementptr inbounds %class.String, %class.String* %replace, i16 0, i32 0, !dbg !3314
  br label %land.rhs, !dbg !3313

land.rhs:                                         ; preds = %while.body56, %land.rhs.lr.ph
  %index.0156 = phi i16 [ %index.0154, %land.rhs.lr.ph ], [ %index.0, %while.body56 ]
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3021, metadata !266) #10, !dbg !3316
  tail call void @llvm.dbg.value(metadata %class.String* %find, i64 0, metadata !3024, metadata !266) #10, !dbg !3319
  tail call void @llvm.dbg.value(metadata i16 %index.0156, i64 0, metadata !3025, metadata !266) #10, !dbg !3320
  %18 = load i16, i16* %len2, align 1, !dbg !3321, !tbaa !288
  %cmp.i = icmp eq i16 %18, 0, !dbg !3322
  br i1 %cmp.i, label %cleanup.cont83.loopexit167, label %lor.lhs.false.i, !dbg !3323

lor.lhs.false.i:                                  ; preds = %land.rhs
  %19 = load i16, i16* %len, align 1, !dbg !3324, !tbaa !288
  %cmp3.i = icmp eq i16 %19, 0, !dbg !3325
  %cmp7.i = icmp ugt i16 %18, %19, !dbg !3326
  %or.cond.i = or i1 %cmp3.i, %cmp7.i, !dbg !3327
  br i1 %or.cond.i, label %cleanup.cont83.loopexit167, label %if.end.i, !dbg !3327

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp9.i = icmp ugt i16 %19, %index.0156, !dbg !3328
  %sub.i = add i16 %19, -1, !dbg !3329
  tail call void @llvm.dbg.value(metadata i16 %sub.i, i64 0, metadata !3025, metadata !266) #10, !dbg !3320
  %fromIndex.sub.i = select i1 %cmp9.i, i16 %index.0156, i16 %sub.i, !dbg !3330
  tail call void @llvm.dbg.value(metadata i16 %fromIndex.sub.i, i64 0, metadata !3025, metadata !266) #10, !dbg !3320
  tail call void @llvm.dbg.value(metadata i16 -1, i64 0, metadata !3026, metadata !266) #10, !dbg !3331
  %20 = load i8*, i8** %buffer, align 1, !dbg !3332, !tbaa !277
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3027, metadata !266) #10, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3027, metadata !266) #10, !dbg !3333
  tail call void @llvm.dbg.value(metadata i16 -1, i64 0, metadata !3026, metadata !266) #10, !dbg !3331
  %cmp1439.i = icmp slt i16 %fromIndex.sub.i, 0, !dbg !3334
  br i1 %cmp1439.i, label %cleanup.cont83.loopexit167, label %for.body.lr.ph.i, !dbg !3335

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %21 = load i8*, i8** %buffer17, align 1, !dbg !3336, !tbaa !277
  %sub.ptr.rhs.cast.i = ptrtoint i8* %20 to i16, !dbg !3337
  %add.ptr.i = getelementptr inbounds i8, i8* %20, i16 %fromIndex.sub.i, !dbg !3338
  br label %for.body.i, !dbg !3335

for.body.i:                                       ; preds = %if.end17.i, %for.body.lr.ph.i
  %p.041.i = phi i8* [ %20, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end17.i ]
  %found.040.i = phi i16 [ -1, %for.body.lr.ph.i ], [ %found.0.sub.ptr.sub.i, %if.end17.i ]
  %call.i139 = tail call i8* @strstr(i8* %p.041.i, i8* %21) #9, !dbg !3339
  tail call void @llvm.dbg.value(metadata i8* %call.i139, i64 0, metadata !3027, metadata !266) #10, !dbg !3333
  %tobool.i140 = icmp eq i8* %call.i139, null, !dbg !3340
  br i1 %tobool.i140, label %_ZNK6String11lastIndexOfERKS_j.exit, label %if.end17.i, !dbg !3341

if.end17.i:                                       ; preds = %for.body.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %call.i139 to i16, !dbg !3337
  %sub.ptr.sub.i = sub i16 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !3337
  %cmp19.i = icmp ugt i16 %sub.ptr.sub.i, %fromIndex.sub.i, !dbg !3342
  tail call void @llvm.dbg.value(metadata i16 %sub.ptr.sub.i, i64 0, metadata !3026, metadata !266) #10, !dbg !3331
  %found.0.sub.ptr.sub.i = select i1 %cmp19.i, i16 %found.040.i, i16 %sub.ptr.sub.i, !dbg !3343
  tail call void @llvm.dbg.value(metadata i16 %found.0.sub.ptr.sub.i, i64 0, metadata !3026, metadata !266) #10, !dbg !3331
  %incdec.ptr.i = getelementptr inbounds i8, i8* %call.i139, i16 1, !dbg !3344
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !3027, metadata !266) #10, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !3027, metadata !266) #10, !dbg !3333
  tail call void @llvm.dbg.value(metadata i16 %found.0.sub.ptr.sub.i, i64 0, metadata !3026, metadata !266) #10, !dbg !3331
  %cmp14.i = icmp ugt i8* %incdec.ptr.i, %add.ptr.i, !dbg !3334
  br i1 %cmp14.i, label %_ZNK6String11lastIndexOfERKS_j.exit, label %for.body.i, !dbg !3335, !llvm.loop !3067

_ZNK6String11lastIndexOfERKS_j.exit:              ; preds = %for.body.i, %if.end17.i
  %retval.0.i141 = phi i16 [ %found.040.i, %for.body.i ], [ %found.0.sub.ptr.sub.i, %if.end17.i ]
  tail call void @llvm.dbg.value(metadata i16 %retval.0.i141, i64 0, metadata !3216, metadata !266), !dbg !3311
  %cmp55 = icmp sgt i16 %retval.0.i141, -1, !dbg !3345
  br i1 %cmp55, label %while.body56, label %cleanup.cont83.loopexit167, !dbg !3346

while.body56:                                     ; preds = %_ZNK6String11lastIndexOfERKS_j.exit
  %add.ptr58 = getelementptr inbounds i8, i8* %20, i16 %retval.0.i141, !dbg !3348
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr58, i16 %18, !dbg !3349
  tail call void @llvm.dbg.value(metadata i8* %add.ptr60, i64 0, metadata !3206, metadata !266), !dbg !3233
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr60, i16 %sub, !dbg !3350
  %sub.ptr.lhs.cast64 = ptrtoint i8* %add.ptr60 to i16, !dbg !3351
  %sub.ptr.sub66136 = add i16 %19, %sub.ptr.rhs.cast.i, !dbg !3352
  %sub67 = sub i16 %sub.ptr.sub66136, %sub.ptr.lhs.cast64, !dbg !3352
  tail call void @llvm.memmove.p0i8.p0i8.i16(i8* %add.ptr61, i8* %add.ptr60, i16 %sub67, i32 1, i1 false), !dbg !3353
  %22 = load i16, i16* %len, align 1, !dbg !3354, !tbaa !288
  %add69 = add i16 %22, %sub, !dbg !3354
  store i16 %add69, i16* %len, align 1, !dbg !3354, !tbaa !288
  %23 = load i8*, i8** %buffer, align 1, !dbg !3355, !tbaa !277
  %arrayidx = getelementptr inbounds i8, i8* %23, i16 %add69, !dbg !3355
  store i8 0, i8* %arrayidx, align 1, !dbg !3356, !tbaa !337
  %24 = load i8*, i8** %buffer, align 1, !dbg !3357, !tbaa !277
  %add.ptr73 = getelementptr inbounds i8, i8* %24, i16 %retval.0.i141, !dbg !3358
  %25 = load i8*, i8** %buffer74, align 1, !dbg !3314, !tbaa !277
  %26 = load i16, i16* %len4, align 1, !dbg !3359, !tbaa !288
  tail call void @llvm.memcpy.p0i8.p0i8.i16(i8* %add.ptr73, i8* %25, i16 %26, i32 1, i1 false), !dbg !3360
  %index.0 = add nsw i16 %retval.0.i141, -1, !dbg !3310
  tail call void @llvm.dbg.value(metadata i16 %index.0, i64 0, metadata !3216, metadata !266), !dbg !3311
  %cmp53 = icmp eq i16 %retval.0.i141, 0, !dbg !3312
  br i1 %cmp53, label %cleanup.cont83.loopexit167, label %land.rhs, !dbg !3313, !llvm.loop !3361

cleanup.cont83.loopexit:                          ; preds = %while.body
  br label %cleanup.cont83, !dbg !3364

cleanup.cont83.loopexit167:                       ; preds = %if.end.i, %land.rhs, %lor.lhs.false.i, %_ZNK6String11lastIndexOfERKS_j.exit, %while.body56
  br label %cleanup.cont83, !dbg !3364

cleanup.cont83:                                   ; preds = %cleanup.cont83.loopexit167, %cleanup.cont83.loopexit, %while.cond33.preheader, %if.end49, %while.cond.preheader, %land.lhs.true, %while.end29, %while.end41, %entry, %lor.lhs.false
  ret void, !dbg !3364
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i16(i8* nocapture writeonly, i8* nocapture readonly, i16, i32, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i16(i8* nocapture, i8* nocapture readonly, i16, i32, i1) #4

; Function Attrs: nounwind
define void @_ZN6String6removeEj(%class.String* nocapture %this, i16 %index) local_unnamed_addr #0 align 2 !dbg !3366 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3368, metadata !266), !dbg !3370
  tail call void @llvm.dbg.value(metadata i16 %index, i64 0, metadata !3369, metadata !266), !dbg !3371
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3372, metadata !266) #10, !dbg !3378
  tail call void @llvm.dbg.value(metadata i16 %index, i64 0, metadata !3375, metadata !266) #10, !dbg !3380
  tail call void @llvm.dbg.value(metadata i16 -1, i64 0, metadata !3376, metadata !266) #10, !dbg !3381
  %len.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !3382
  %0 = load i16, i16* %len.i, align 1, !dbg !3382, !tbaa !288
  %cmp.i = icmp ugt i16 %0, %index, !dbg !3384
  br i1 %cmp.i, label %if.end4.i, label %_ZN6String6removeEjj.exit, !dbg !3385

if.end4.i:                                        ; preds = %entry
  %sub.i = sub i16 %0, %index, !dbg !3386
  tail call void @llvm.dbg.value(metadata i16 %sub.i, i64 0, metadata !3376, metadata !266) #10, !dbg !3381
  tail call void @llvm.dbg.value(metadata i16 %sub.i, i64 0, metadata !3376, metadata !266) #10, !dbg !3381
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3388
  %1 = load i8*, i8** %buffer.i, align 1, !dbg !3388, !tbaa !277
  %add.ptr.i = getelementptr inbounds i8, i8* %1, i16 %index, !dbg !3389
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !3377, metadata !266) #10, !dbg !3390
  store i16 %index, i16* %len.i, align 1, !dbg !3391, !tbaa !288
  %add.ptr16.i = getelementptr inbounds i8, i8* %add.ptr.i, i16 %sub.i, !dbg !3392
  %call.i = tail call i8* @strncpy(i8* %add.ptr.i, i8* %add.ptr16.i, i16 0) #10, !dbg !3393
  %2 = load i8*, i8** %buffer.i, align 1, !dbg !3394, !tbaa !277
  %3 = load i16, i16* %len.i, align 1, !dbg !3395, !tbaa !288
  %arrayidx.i = getelementptr inbounds i8, i8* %2, i16 %3, !dbg !3394
  store i8 0, i8* %arrayidx.i, align 1, !dbg !3396, !tbaa !337
  br label %_ZN6String6removeEjj.exit, !dbg !3397

_ZN6String6removeEjj.exit:                        ; preds = %entry, %if.end4.i
  ret void, !dbg !3398
}

; Function Attrs: nounwind
define void @_ZN6String6removeEjj(%class.String* nocapture %this, i16 %index, i16 %count) local_unnamed_addr #0 align 2 !dbg !3373 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3372, metadata !266), !dbg !3399
  tail call void @llvm.dbg.value(metadata i16 %index, i64 0, metadata !3375, metadata !266), !dbg !3400
  tail call void @llvm.dbg.value(metadata i16 %count, i64 0, metadata !3376, metadata !266), !dbg !3401
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !3402
  %0 = load i16, i16* %len, align 1, !dbg !3402, !tbaa !288
  %cmp = icmp ule i16 %0, %index, !dbg !3403
  %cmp2 = icmp eq i16 %count, 0, !dbg !3404
  %or.cond = or i1 %cmp2, %cmp, !dbg !3406
  br i1 %or.cond, label %return, label %if.end4, !dbg !3406

if.end4:                                          ; preds = %entry
  %sub = sub i16 %0, %index, !dbg !3407
  %cmp6 = icmp ult i16 %sub, %count, !dbg !3408
  tail call void @llvm.dbg.value(metadata i16 %sub, i64 0, metadata !3376, metadata !266), !dbg !3401
  %sub.count = select i1 %cmp6, i16 %sub, i16 %count, !dbg !3409
  tail call void @llvm.dbg.value(metadata i16 %sub.count, i64 0, metadata !3376, metadata !266), !dbg !3401
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3410
  %1 = load i8*, i8** %buffer, align 1, !dbg !3410, !tbaa !277
  %add.ptr = getelementptr inbounds i8, i8* %1, i16 %index, !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !3377, metadata !266), !dbg !3412
  %sub12 = sub i16 %0, %sub.count, !dbg !3413
  store i16 %sub12, i16* %len, align 1, !dbg !3414, !tbaa !288
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i16 %sub.count, !dbg !3415
  %sub18 = sub i16 %sub12, %index, !dbg !3416
  %call = tail call i8* @strncpy(i8* %add.ptr, i8* %add.ptr16, i16 %sub18), !dbg !3417
  %2 = load i8*, i8** %buffer, align 1, !dbg !3418, !tbaa !277
  %3 = load i16, i16* %len, align 1, !dbg !3419, !tbaa !288
  %arrayidx = getelementptr inbounds i8, i8* %2, i16 %3, !dbg !3418
  store i8 0, i8* %arrayidx, align 1, !dbg !3420, !tbaa !337
  br label %return, !dbg !3421

return:                                           ; preds = %entry, %if.end4
  ret void, !dbg !3422
}

; Function Attrs: nounwind
define void @_ZN6String11toLowerCaseEv(%class.String* nocapture readonly %this) local_unnamed_addr #0 align 2 !dbg !3424 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3426, metadata !266), !dbg !3429
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3430
  %0 = load i8*, i8** %buffer, align 1, !dbg !3430, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !3430
  br i1 %tobool, label %for.end, label %for.cond.preheader, !dbg !3432

for.cond.preheader:                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3427, metadata !266), !dbg !3433
  %1 = load i8, i8* %0, align 1, !dbg !3434, !tbaa !337
  %tobool39 = icmp eq i8 %1, 0, !dbg !3434
  br i1 %tobool39, label %for.end, label %for.body.preheader, !dbg !3437

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !3439

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i8 [ %3, %for.body ], [ %1, %for.body.preheader ]
  %p.010 = phi i8* [ %incdec.ptr, %for.body ], [ %0, %for.body.preheader ]
  %conv = sext i8 %2 to i16, !dbg !3439
  %call = tail call i16 @tolower(i16 %conv) #1, !dbg !3441
  %conv4 = trunc i16 %call to i8, !dbg !3441
  store i8 %conv4, i8* %p.010, align 1, !dbg !3442, !tbaa !337
  %incdec.ptr = getelementptr inbounds i8, i8* %p.010, i16 1, !dbg !3443
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3427, metadata !266), !dbg !3433
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3427, metadata !266), !dbg !3433
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !3434, !tbaa !337
  %tobool3 = icmp eq i8 %3, 0, !dbg !3434
  br i1 %tobool3, label %for.end.loopexit, label %for.body, !dbg !3437, !llvm.loop !3445

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end, !dbg !3448

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader, %entry
  ret void, !dbg !3448
}

; Function Attrs: nounwind
define void @_ZN6String11toUpperCaseEv(%class.String* nocapture readonly %this) local_unnamed_addr #0 align 2 !dbg !3449 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3451, metadata !266), !dbg !3454
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3455
  %0 = load i8*, i8** %buffer, align 1, !dbg !3455, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !3455
  br i1 %tobool, label %for.end, label %for.cond.preheader, !dbg !3457

for.cond.preheader:                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !266), !dbg !3458
  %1 = load i8, i8* %0, align 1, !dbg !3459, !tbaa !337
  %tobool39 = icmp eq i8 %1, 0, !dbg !3459
  br i1 %tobool39, label %for.end, label %for.body.preheader, !dbg !3462

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !3464

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i8 [ %3, %for.body ], [ %1, %for.body.preheader ]
  %p.010 = phi i8* [ %incdec.ptr, %for.body ], [ %0, %for.body.preheader ]
  %conv = sext i8 %2 to i16, !dbg !3464
  %call = tail call i16 @toupper(i16 %conv) #1, !dbg !3466
  %conv4 = trunc i16 %call to i8, !dbg !3466
  store i8 %conv4, i8* %p.010, align 1, !dbg !3467, !tbaa !337
  %incdec.ptr = getelementptr inbounds i8, i8* %p.010, i16 1, !dbg !3468
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3452, metadata !266), !dbg !3458
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3452, metadata !266), !dbg !3458
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !3459, !tbaa !337
  %tobool3 = icmp eq i8 %3, 0, !dbg !3459
  br i1 %tobool3, label %for.end.loopexit, label %for.body, !dbg !3462, !llvm.loop !3470

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end, !dbg !3473

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader, %entry
  ret void, !dbg !3473
}

; Function Attrs: nounwind readnone
declare i16 @toupper(i16) local_unnamed_addr #8

; Function Attrs: nounwind
define void @_ZN6String4trimEv(%class.String* nocapture %this) local_unnamed_addr #0 align 2 !dbg !3474 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3476, metadata !266), !dbg !3479
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3480
  %0 = load i8*, i8** %buffer, align 1, !dbg !3480, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !3480
  br i1 %tobool, label %return, label %lor.lhs.false, !dbg !3482

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 2, !dbg !3483
  %1 = load i16, i16* %len, align 1, !dbg !3483, !tbaa !288
  %cmp = icmp eq i16 %1, 0, !dbg !3485
  br i1 %cmp, label %return, label %while.cond.preheader, !dbg !3486

while.cond.preheader:                             ; preds = %lor.lhs.false
  br label %while.cond, !dbg !3488

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %begin.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %0, %while.cond.preheader ]
  tail call void @llvm.dbg.value(metadata i8* %begin.0, i64 0, metadata !3477, metadata !266), !dbg !3488
  %2 = load i8, i8* %begin.0, align 1, !dbg !3489, !tbaa !337
  %conv = sext i8 %2 to i16, !dbg !3489
  %call = tail call i16 @isspace(i16 %conv) #1, !dbg !3490
  %tobool3 = icmp eq i16 %call, 0, !dbg !3490
  %incdec.ptr = getelementptr inbounds i8, i8* %begin.0, i16 1, !dbg !3491
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !3477, metadata !266), !dbg !3488
  br i1 %tobool3, label %while.end, label %while.cond, !dbg !3493, !llvm.loop !3494

while.end:                                        ; preds = %while.cond
  %add.ptr = getelementptr inbounds i8, i8* %0, i16 %1, !dbg !3497
  br label %while.cond7, !dbg !3498

while.cond7:                                      ; preds = %while.cond7, %while.end
  %add.ptr.pn = phi i8* [ %add.ptr, %while.end ], [ %end.0, %while.cond7 ]
  %end.0 = getelementptr inbounds i8, i8* %add.ptr.pn, i16 -1, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %end.0, i64 0, metadata !3478, metadata !266), !dbg !3500
  %3 = load i8, i8* %end.0, align 1, !dbg !3501, !tbaa !337
  %conv8 = sext i8 %3 to i16, !dbg !3501
  %call9 = tail call i16 @isspace(i16 %conv8) #1, !dbg !3502
  %cmp11 = icmp uge i8* %end.0, %begin.0, !dbg !3503
  %not.tobool10 = icmp ne i16 %call9, 0, !dbg !3504
  %.cmp11 = and i1 %cmp11, %not.tobool10, !dbg !3504
  br i1 %.cmp11, label %while.cond7, label %while.end14, !dbg !3505, !llvm.loop !3507

while.end14:                                      ; preds = %while.cond7
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr.pn to i16, !dbg !3509
  %sub.ptr.rhs.cast = ptrtoint i8* %begin.0 to i16, !dbg !3509
  %sub.ptr.sub = sub i16 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3509
  store i16 %sub.ptr.sub, i16* %len, align 1, !dbg !3510, !tbaa !288
  %cmp18 = icmp ugt i8* %begin.0, %0, !dbg !3511
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !3513

if.then19:                                        ; preds = %while.end14
  tail call void @llvm.memcpy.p0i8.p0i8.i16(i8* nonnull %0, i8* %begin.0, i16 %sub.ptr.sub, i32 1, i1 false), !dbg !3514
  %.pre = load i8*, i8** %buffer, align 1, !dbg !3515, !tbaa !277
  %.pre34 = load i16, i16* %len, align 1, !dbg !3516, !tbaa !288
  br label %if.end22, !dbg !3517

if.end22:                                         ; preds = %if.then19, %while.end14
  %4 = phi i16 [ %.pre34, %if.then19 ], [ %sub.ptr.sub, %while.end14 ], !dbg !3516
  %5 = phi i8* [ %.pre, %if.then19 ], [ %0, %while.end14 ], !dbg !3515
  %arrayidx = getelementptr inbounds i8, i8* %5, i16 %4, !dbg !3515
  store i8 0, i8* %arrayidx, align 1, !dbg !3519, !tbaa !337
  br label %return, !dbg !3520

return:                                           ; preds = %entry, %lor.lhs.false, %if.end22
  ret void, !dbg !3521
}

; Function Attrs: nounwind readnone
declare i16 @isspace(i16) local_unnamed_addr #8

; Function Attrs: nounwind readonly
define i32 @_ZNK6String5toIntEv(%class.String* nocapture readonly %this) local_unnamed_addr #7 align 2 !dbg !3522 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3524, metadata !266), !dbg !3525
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3526
  %0 = load i8*, i8** %buffer, align 1, !dbg !3526, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !3526
  br i1 %tobool, label %return, label %if.then, !dbg !3528

if.then:                                          ; preds = %entry
  %call = tail call i32 @atol(i8* nonnull %0) #9, !dbg !3529
  br label %return, !dbg !3531

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !3532
}

; Function Attrs: nounwind readonly
declare i32 @atol(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
define float @_ZNK6String7toFloatEv(%class.String* nocapture readonly %this) local_unnamed_addr #7 align 2 !dbg !3533 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3535, metadata !266), !dbg !3536
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3537, metadata !266) #10, !dbg !3540
  %buffer.i = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3542
  %0 = load i8*, i8** %buffer.i, align 1, !dbg !3542, !tbaa !277
  %tobool.i = icmp eq i8* %0, null, !dbg !3542
  br i1 %tobool.i, label %_ZNK6String8toDoubleEv.exit, label %if.then.i, !dbg !3544

if.then.i:                                        ; preds = %entry
  %call.i = tail call float @atof(i8* nonnull %0) #10, !dbg !3545
  br label %_ZNK6String8toDoubleEv.exit, !dbg !3547

_ZNK6String8toDoubleEv.exit:                      ; preds = %entry, %if.then.i
  %retval.0.i = phi float [ %call.i, %if.then.i ], [ 0.000000e+00, %entry ]
  ret float %retval.0.i, !dbg !3548
}

; Function Attrs: nounwind readonly
define float @_ZNK6String8toDoubleEv(%class.String* nocapture readonly %this) local_unnamed_addr #7 align 2 !dbg !3538 {
entry:
  tail call void @llvm.dbg.value(metadata %class.String* %this, i64 0, metadata !3537, metadata !266), !dbg !3549
  %buffer = getelementptr inbounds %class.String, %class.String* %this, i16 0, i32 0, !dbg !3550
  %0 = load i8*, i8** %buffer, align 1, !dbg !3550, !tbaa !277
  %tobool = icmp eq i8* %0, null, !dbg !3550
  br i1 %tobool, label %return, label %if.then, !dbg !3551

if.then:                                          ; preds = %entry
  %call = tail call float @atof(i8* nonnull %0), !dbg !3552
  br label %return, !dbg !3553

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi float [ %call, %if.then ], [ 0.000000e+00, %entry ]
  ret float %retval.0, !dbg !3554
}

; Function Attrs: nounwind readonly
declare float @atof(i8* nocapture) local_unnamed_addr #2

declare i8* @__utoa(i16, i8*, i16) local_unnamed_addr #5

declare i8* @__itoa(i16, i8*, i16) local_unnamed_addr #5

declare i8* @__ltoa(i32, i8*, i16) local_unnamed_addr #5

declare i8* @__ultoa(i32, i8*, i16) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16 @__strlen_P(i8*) local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!251}
!llvm.module.flags = !{!259, !260}
!llvm.ident = !{!261}

!0 = distinct !DIGlobalVariable(name: "dummy_writable_char", scope: !1, file: !2, line: 523, type: !8, isLocal: true, isDefinition: true)
!1 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !3, file: !2, line: 521, type: !176, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !175, variables: !255)
!2 = !DIFile(filename: "Arduino/WString.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !4, line: 45, size: 48, elements: !5, identifier: "_ZTS6String")
!4 = !DIFile(filename: "Arduino/WString.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!5 = !{!6, !9, !11, !12, !17, !23, !27, !33, !36, !40, !44, !47, !51, !55, !59, !63, !66, !69, !72, !76, !79, !82, !85, !88, !91, !94, !97, !98, !101, !104, !107, !110, !113, !114, !115, !118, !121, !124, !127, !130, !133, !136, !139, !140, !145, !148, !151, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !167, !168, !171, !174, !175, !179, !183, !186, !189, !192, !193, !194, !195, !198, !201, !202, !205, !206, !207, !208, !209, !212, !215, !218, !221, !224, !227, !228, !229, !230, !233, !236, !239, !240, !241, !242, !245, !248}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3, file: !4, line: 196, baseType: !7, size: 16, flags: DIFlagProtected)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 16)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !3, file: !4, line: 197, baseType: !10, size: 16, offset: 16, flags: DIFlagProtected)
!10 = !DIBasicType(name: "unsigned int", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3, file: !4, line: 198, baseType: !10, size: 16, offset: 32, flags: DIFlagProtected)
!12 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !3, file: !4, line: 51, type: !13, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!17 = !DISubprogram(name: "String", scope: !3, file: !4, line: 59, type: !18, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 16)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!23 = !DISubprogram(name: "String", scope: !3, file: !4, line: 60, type: !24, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !20, !26}
!26 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 16)
!27 = !DISubprogram(name: "String", scope: !3, file: !4, line: 61, type: !28, isLocal: false, isDefinition: false, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !20, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 16)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !4, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!33 = !DISubprogram(name: "String", scope: !3, file: !4, line: 66, type: !34, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !20, !8}
!36 = !DISubprogram(name: "String", scope: !3, file: !4, line: 67, type: !37, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !20, !39, !39}
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DISubprogram(name: "String", scope: !3, file: !4, line: 68, type: !41, isLocal: false, isDefinition: false, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !20, !43, !39}
!43 = !DIBasicType(name: "int", size: 16, encoding: DW_ATE_signed)
!44 = !DISubprogram(name: "String", scope: !3, file: !4, line: 69, type: !45, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !20, !10, !39}
!47 = !DISubprogram(name: "String", scope: !3, file: !4, line: 70, type: !48, isLocal: false, isDefinition: false, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !20, !50, !39}
!50 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!51 = !DISubprogram(name: "String", scope: !3, file: !4, line: 71, type: !52, isLocal: false, isDefinition: false, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !20, !54, !39}
!54 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DISubprogram(name: "String", scope: !3, file: !4, line: 72, type: !56, isLocal: false, isDefinition: false, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !20, !58, !39}
!58 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!59 = !DISubprogram(name: "String", scope: !3, file: !4, line: 73, type: !60, isLocal: false, isDefinition: false, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !20, !62, !39}
!62 = !DIBasicType(name: "double", size: 32, encoding: DW_ATE_float)
!63 = !DISubprogram(name: "~String", scope: !3, file: !4, line: 74, type: !64, isLocal: false, isDefinition: false, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !20}
!66 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !3, file: !4, line: 80, type: !67, isLocal: false, isDefinition: false, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!67 = !DISubroutineType(types: !68)
!68 = !{!39, !20, !10}
!69 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !3, file: !4, line: 81, type: !70, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!70 = !DISubroutineType(types: !71)
!71 = !{!10, !15}
!72 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !3, file: !4, line: 86, type: !73, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !20, !26}
!75 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3, size: 16)
!76 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !3, file: !4, line: 87, type: !77, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!77 = !DISubroutineType(types: !78)
!78 = !{!75, !20, !21}
!79 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !3, file: !4, line: 88, type: !80, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!80 = !DISubroutineType(types: !81)
!81 = !{!75, !20, !30}
!82 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !3, file: !4, line: 99, type: !83, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!83 = !DISubroutineType(types: !84)
!84 = !{!39, !20, !26}
!85 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !3, file: !4, line: 100, type: !86, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!86 = !DISubroutineType(types: !87)
!87 = !{!39, !20, !21}
!88 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !3, file: !4, line: 101, type: !89, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!89 = !DISubroutineType(types: !90)
!90 = !{!39, !20, !8}
!91 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !3, file: !4, line: 102, type: !92, isLocal: false, isDefinition: false, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!92 = !DISubroutineType(types: !93)
!93 = !{!39, !20, !39}
!94 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !3, file: !4, line: 103, type: !95, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!95 = !DISubroutineType(types: !96)
!96 = !{!39, !20, !43}
!97 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !3, file: !4, line: 104, type: !67, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!98 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !3, file: !4, line: 105, type: !99, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!99 = !DISubroutineType(types: !100)
!100 = !{!39, !20, !50}
!101 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !3, file: !4, line: 106, type: !102, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!102 = !DISubroutineType(types: !103)
!103 = !{!39, !20, !54}
!104 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !3, file: !4, line: 107, type: !105, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!105 = !DISubroutineType(types: !106)
!106 = !{!39, !20, !58}
!107 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !3, file: !4, line: 108, type: !108, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!108 = !DISubroutineType(types: !109)
!109 = !{!39, !20, !62}
!110 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !3, file: !4, line: 109, type: !111, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!111 = !DISubroutineType(types: !112)
!112 = !{!39, !20, !30}
!113 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !3, file: !4, line: 113, type: !73, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!114 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !3, file: !4, line: 114, type: !77, isLocal: false, isDefinition: false, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!115 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !3, file: !4, line: 115, type: !116, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!116 = !DISubroutineType(types: !117)
!117 = !{!75, !20, !8}
!118 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !3, file: !4, line: 116, type: !119, isLocal: false, isDefinition: false, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!119 = !DISubroutineType(types: !120)
!120 = !{!75, !20, !39}
!121 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !3, file: !4, line: 117, type: !122, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!122 = !DISubroutineType(types: !123)
!123 = !{!75, !20, !43}
!124 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !3, file: !4, line: 118, type: !125, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!125 = !DISubroutineType(types: !126)
!126 = !{!75, !20, !10}
!127 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !3, file: !4, line: 119, type: !128, isLocal: false, isDefinition: false, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!128 = !DISubroutineType(types: !129)
!129 = !{!75, !20, !50}
!130 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !3, file: !4, line: 120, type: !131, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!131 = !DISubroutineType(types: !132)
!132 = !{!75, !20, !54}
!133 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !3, file: !4, line: 121, type: !134, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!134 = !DISubroutineType(types: !135)
!135 = !{!75, !20, !58}
!136 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !3, file: !4, line: 122, type: !137, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!137 = !DISubroutineType(types: !138)
!138 = !{!75, !20, !62}
!139 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !3, file: !4, line: 123, type: !80, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!140 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !3, file: !4, line: 138, type: !141, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !15}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !3, file: !4, line: 50, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !13, size: 32, extraData: !3)
!145 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !3, file: !4, line: 139, type: !146, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!146 = !DISubroutineType(types: !147)
!147 = !{!43, !15, !26}
!148 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !3, file: !4, line: 140, type: !149, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!149 = !DISubroutineType(types: !150)
!150 = !{!39, !15, !26}
!151 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !3, file: !4, line: 141, type: !152, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!152 = !DISubroutineType(types: !153)
!153 = !{!39, !15, !21}
!154 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !3, file: !4, line: 142, type: !149, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!155 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !3, file: !4, line: 143, type: !152, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!156 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !3, file: !4, line: 144, type: !149, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!157 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !3, file: !4, line: 145, type: !152, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!158 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !3, file: !4, line: 146, type: !149, isLocal: false, isDefinition: false, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!159 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !3, file: !4, line: 147, type: !149, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!160 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !3, file: !4, line: 148, type: !149, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!161 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !3, file: !4, line: 149, type: !149, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!162 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !3, file: !4, line: 150, type: !149, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!163 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !3, file: !4, line: 151, type: !149, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!164 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !3, file: !4, line: 152, type: !165, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!165 = !DISubroutineType(types: !166)
!166 = !{!39, !15, !26, !10}
!167 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !3, file: !4, line: 153, type: !149, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!168 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !3, file: !4, line: 156, type: !169, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!169 = !DISubroutineType(types: !170)
!170 = !{!8, !15, !10}
!171 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !3, file: !4, line: 157, type: !172, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !20, !10, !8}
!174 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !3, file: !4, line: 158, type: !169, isLocal: false, isDefinition: false, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!175 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !3, file: !4, line: 159, type: !176, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !20, !10}
!178 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 16)
!179 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !3, file: !4, line: 160, type: !180, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !15, !182, !10, !10}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 16)
!183 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !3, file: !4, line: 161, type: !184, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !15, !7, !10, !10}
!186 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !3, file: !4, line: 163, type: !187, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!187 = !DISubroutineType(types: !188)
!188 = !{!21, !15}
!189 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !3, file: !4, line: 164, type: !190, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!190 = !DISubroutineType(types: !191)
!191 = !{!7, !20}
!192 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !3, file: !4, line: 165, type: !190, isLocal: false, isDefinition: false, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!193 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !3, file: !4, line: 166, type: !187, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!194 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !3, file: !4, line: 167, type: !187, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!195 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !3, file: !4, line: 170, type: !196, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!196 = !DISubroutineType(types: !197)
!197 = !{!43, !15, !8}
!198 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !3, file: !4, line: 171, type: !199, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!199 = !DISubroutineType(types: !200)
!200 = !{!43, !15, !8, !10}
!201 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !3, file: !4, line: 172, type: !146, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!202 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !3, file: !4, line: 173, type: !203, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!203 = !DISubroutineType(types: !204)
!204 = !{!43, !15, !26, !10}
!205 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !3, file: !4, line: 174, type: !196, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!206 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !3, file: !4, line: 175, type: !199, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!207 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !3, file: !4, line: 176, type: !146, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!208 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !3, file: !4, line: 177, type: !203, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!209 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !3, file: !4, line: 178, type: !210, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!210 = !DISubroutineType(types: !211)
!211 = !{!3, !15, !10}
!212 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !3, file: !4, line: 179, type: !213, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!213 = !DISubroutineType(types: !214)
!214 = !{!3, !15, !10, !10}
!215 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !3, file: !4, line: 182, type: !216, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !20, !8, !8}
!218 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !3, file: !4, line: 183, type: !219, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !20, !26, !26}
!221 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !3, file: !4, line: 184, type: !222, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !20, !10}
!224 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !3, file: !4, line: 185, type: !225, isLocal: false, isDefinition: false, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !20, !10, !10}
!227 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !3, file: !4, line: 186, type: !64, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!228 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !3, file: !4, line: 187, type: !64, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!229 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !3, file: !4, line: 188, type: !64, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!230 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !3, file: !4, line: 191, type: !231, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!231 = !DISubroutineType(types: !232)
!232 = !{!50, !15}
!233 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !3, file: !4, line: 192, type: !234, isLocal: false, isDefinition: false, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!234 = !DISubroutineType(types: !235)
!235 = !{!58, !15}
!236 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !3, file: !4, line: 193, type: !237, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!237 = !DISubroutineType(types: !238)
!238 = !{!62, !15}
!239 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !3, file: !4, line: 200, type: !64, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!240 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !3, file: !4, line: 201, type: !64, isLocal: false, isDefinition: false, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!241 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !3, file: !4, line: 202, type: !67, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!242 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !3, file: !4, line: 203, type: !243, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!243 = !DISubroutineType(types: !244)
!244 = !{!39, !20, !21, !10}
!245 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !3, file: !4, line: 206, type: !246, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!246 = !DISubroutineType(types: !247)
!247 = !{!75, !20, !21, !10}
!248 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !3, file: !4, line: 207, type: !249, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!249 = !DISubroutineType(types: !250)
!250 = !{!75, !20, !30, !10}
!251 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !252, retainedTypes: !253, globals: !254)
!252 = !{}
!253 = !{!7, !21, !182, !10, !58}
!254 = !{!0}
!255 = !{!256, !258}
!256 = !DILocalVariable(name: "this", arg: 1, scope: !1, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 16)
!258 = !DILocalVariable(name: "index", arg: 2, scope: !1, file: !2, line: 521, type: !10)
!259 = !{i32 2, !"Dwarf Version", i32 4}
!260 = !{i32 2, !"Debug Info Version", i32 3}
!261 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!262 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2EPKc", scope: !3, file: !2, line: 28, type: !18, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !17, variables: !263)
!263 = !{!264, !265}
!264 = !DILocalVariable(name: "this", arg: 1, scope: !262, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!265 = !DILocalVariable(name: "cstr", arg: 2, scope: !262, file: !2, line: 28, type: !21)
!266 = !DIExpression()
!267 = !DILocation(line: 0, scope: !262)
!268 = !DILocation(line: 28, column: 28, scope: !262)
!269 = !DILocalVariable(name: "this", arg: 1, scope: !270, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!270 = distinct !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !3, file: !2, line: 131, type: !64, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !239, variables: !271)
!271 = !{!269}
!272 = !DILocation(line: 0, scope: !270, inlinedAt: !273)
!273 = distinct !DILocation(line: 30, column: 2, scope: !274)
!274 = distinct !DILexicalBlock(scope: !262, file: !2, line: 29, column: 1)
!275 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !273)
!276 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !273)
!277 = !{!278, !279, i64 0}
!278 = !{!"_ZTS6String", !279, i64 0, !282, i64 2, !282, i64 4}
!279 = !{!"any pointer", !280, i64 0}
!280 = !{!"omnipotent char", !281, i64 0}
!281 = !{!"Simple C++ TBAA"}
!282 = !{!"int", !280, i64 0}
!283 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !273)
!284 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !273)
!285 = !{!278, !282, i64 2}
!286 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !273)
!287 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !273)
!288 = !{!278, !282, i64 4}
!289 = !DILocation(line: 31, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !274, file: !2, line: 31, column: 6)
!291 = !DILocation(line: 31, column: 6, scope: !274)
!292 = !DILocation(line: 31, column: 23, scope: !293)
!293 = !DILexicalBlockFile(scope: !290, file: !2, discriminator: 1)
!294 = !DILocalVariable(name: "this", arg: 1, scope: !295, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!295 = distinct !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !3, file: !2, line: 170, type: !246, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !245, variables: !296)
!296 = !{!294, !297, !298}
!297 = !DILocalVariable(name: "cstr", arg: 2, scope: !295, file: !2, line: 170, type: !21)
!298 = !DILocalVariable(name: "length", arg: 3, scope: !295, file: !2, line: 170, type: !10)
!299 = !DILocation(line: 0, scope: !295, inlinedAt: !300)
!300 = distinct !DILocation(line: 31, column: 12, scope: !301)
!301 = !DILexicalBlockFile(scope: !290, file: !2, discriminator: 2)
!302 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !300)
!303 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !300)
!304 = !DILocalVariable(name: "this", arg: 1, scope: !305, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!305 = distinct !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !3, file: !2, line: 145, type: !67, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !66, variables: !306)
!306 = !{!304, !307}
!307 = !DILocalVariable(name: "size", arg: 2, scope: !305, file: !2, line: 145, type: !10)
!308 = !DILocation(line: 0, scope: !305, inlinedAt: !309)
!309 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !300)
!310 = distinct !DILexicalBlock(scope: !295, file: !2, line: 172, column: 6)
!311 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !309)
!312 = !DILocalVariable(name: "this", arg: 1, scope: !313, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!313 = distinct !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !3, file: !2, line: 155, type: !67, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !241, variables: !314)
!314 = !{!312, !315, !316}
!315 = !DILocalVariable(name: "maxStrLen", arg: 2, scope: !313, file: !2, line: 155, type: !10)
!316 = !DILocalVariable(name: "newbuffer", scope: !313, file: !2, line: 157, type: !7)
!317 = !DILocation(line: 0, scope: !313, inlinedAt: !318)
!318 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !309)
!319 = distinct !DILexicalBlock(scope: !305, file: !2, line: 148, column: 6)
!320 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !318)
!321 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !318)
!322 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !318)
!323 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !318)
!324 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !318)
!325 = distinct !DILexicalBlock(scope: !313, file: !2, line: 158, column: 6)
!326 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !318)
!327 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !318)
!328 = distinct !DILexicalBlock(scope: !325, file: !2, line: 158, column: 17)
!329 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !318)
!330 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !309)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 149, column: 7)
!332 = distinct !DILexicalBlock(scope: !319, file: !2, line: 148, column: 26)
!333 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !309)
!334 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !309)
!335 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !309)
!336 = !DILexicalBlockFile(scope: !331, file: !2, discriminator: 1)
!337 = !{!280, !280, i64 0}
!338 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !309)
!339 = !DILocalVariable(name: "this", arg: 1, scope: !340, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = distinct !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !3, file: !2, line: 138, type: !64, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !240, variables: !341)
!341 = !{!339}
!342 = !DILocation(line: 0, scope: !340, inlinedAt: !343)
!343 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !300)
!344 = distinct !DILexicalBlock(scope: !310, file: !2, line: 172, column: 24)
!345 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !343)
!346 = distinct !DILexicalBlock(scope: !340, file: !2, line: 140, column: 6)
!347 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !343)
!348 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !343)
!349 = !DILexicalBlockFile(scope: !346, file: !2, discriminator: 1)
!350 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !343)
!351 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !343)
!352 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !343)
!353 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !300)
!354 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !300)
!355 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !300)
!356 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !300)
!357 = !DILocation(line: 32, column: 1, scope: !262)
!358 = !DILocation(line: 0, scope: !295)
!359 = !DILocation(line: 170, column: 35, scope: !295)
!360 = !DILocation(line: 170, column: 54, scope: !295)
!361 = !DILocation(line: 0, scope: !305, inlinedAt: !362)
!362 = distinct !DILocation(line: 172, column: 7, scope: !310)
!363 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !362)
!364 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !362)
!365 = distinct !DILexicalBlock(scope: !305, file: !2, line: 147, column: 6)
!366 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !362)
!367 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !362)
!368 = !DILexicalBlockFile(scope: !365, file: !2, discriminator: 1)
!369 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !362)
!370 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !362)
!371 = !DILexicalBlockFile(scope: !305, file: !2, discriminator: 1)
!372 = !DILocation(line: 176, column: 2, scope: !295)
!373 = !DILocation(line: 0, scope: !313, inlinedAt: !374)
!374 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !362)
!375 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !374)
!376 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !374)
!377 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !374)
!378 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !374)
!379 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !374)
!380 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !374)
!381 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !374)
!382 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !374)
!383 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !374)
!384 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !362)
!385 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !362)
!386 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !362)
!387 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !362)
!388 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !362)
!389 = !DILocation(line: 0, scope: !340, inlinedAt: !390)
!390 = distinct !DILocation(line: 173, column: 3, scope: !344)
!391 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !390)
!392 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !390)
!393 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !390)
!394 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !390)
!395 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !390)
!396 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !390)
!397 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !390)
!398 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !390)
!399 = !DILocation(line: 174, column: 3, scope: !344)
!400 = !DILocation(line: 177, column: 9, scope: !295)
!401 = !DILocation(line: 176, column: 6, scope: !295)
!402 = !DILocation(line: 177, column: 2, scope: !295)
!403 = !DILocation(line: 178, column: 2, scope: !295)
!404 = !DILocation(line: 179, column: 1, scope: !295)
!405 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2ERKS_", scope: !3, file: !2, line: 34, type: !24, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !23, variables: !406)
!406 = !{!407, !408}
!407 = !DILocalVariable(name: "this", arg: 1, scope: !405, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!408 = !DILocalVariable(name: "value", arg: 2, scope: !405, file: !2, line: 34, type: !26)
!409 = !DILocation(line: 0, scope: !405)
!410 = !DILocation(line: 34, column: 30, scope: !405)
!411 = !DILocation(line: 0, scope: !270, inlinedAt: !412)
!412 = distinct !DILocation(line: 36, column: 2, scope: !413)
!413 = distinct !DILexicalBlock(scope: !405, file: !2, line: 35, column: 1)
!414 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !412)
!415 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !412)
!416 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !412)
!417 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !412)
!418 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !412)
!419 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !412)
!420 = !DILocation(line: 37, column: 8, scope: !413)
!421 = !DILocation(line: 38, column: 1, scope: !405)
!422 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !3, file: !2, line: 214, type: !73, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !72, variables: !423)
!423 = !{!424, !425}
!424 = !DILocalVariable(name: "this", arg: 1, scope: !422, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!425 = !DILocalVariable(name: "rhs", arg: 2, scope: !422, file: !2, line: 214, type: !26)
!426 = !DILocation(line: 0, scope: !422)
!427 = !DILocation(line: 214, column: 44, scope: !422)
!428 = !DILocation(line: 216, column: 11, scope: !429)
!429 = distinct !DILexicalBlock(scope: !422, file: !2, line: 216, column: 6)
!430 = !DILocation(line: 216, column: 6, scope: !422)
!431 = !DILocation(line: 218, column: 10, scope: !432)
!432 = distinct !DILexicalBlock(scope: !422, file: !2, line: 218, column: 6)
!433 = !DILocation(line: 218, column: 6, scope: !432)
!434 = !DILocation(line: 218, column: 6, scope: !422)
!435 = !DILocation(line: 218, column: 39, scope: !436)
!436 = !DILexicalBlockFile(scope: !432, file: !2, discriminator: 1)
!437 = !DILocation(line: 0, scope: !295, inlinedAt: !438)
!438 = distinct !DILocation(line: 218, column: 18, scope: !436)
!439 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !438)
!440 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !438)
!441 = !DILocation(line: 0, scope: !305, inlinedAt: !442)
!442 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !438)
!443 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !442)
!444 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !442)
!445 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !442)
!446 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !442)
!447 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !442)
!448 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !442)
!449 = !DILocation(line: 176, column: 2, scope: !295, inlinedAt: !438)
!450 = !DILocation(line: 0, scope: !313, inlinedAt: !451)
!451 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !442)
!452 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !451)
!453 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !451)
!454 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !451)
!455 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !451)
!456 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !451)
!457 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !451)
!458 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !451)
!459 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !451)
!460 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !451)
!461 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !442)
!462 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !442)
!463 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !442)
!464 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !442)
!465 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !442)
!466 = !DILocation(line: 0, scope: !340, inlinedAt: !467)
!467 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !438)
!468 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !467)
!469 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !467)
!470 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !467)
!471 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !467)
!472 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !467)
!473 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !467)
!474 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !467)
!475 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !467)
!476 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !438)
!477 = !DILocation(line: 177, column: 9, scope: !295, inlinedAt: !438)
!478 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !438)
!479 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !438)
!480 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !438)
!481 = !DILocation(line: 0, scope: !340, inlinedAt: !482)
!482 = distinct !DILocation(line: 219, column: 7, scope: !432)
!483 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !482)
!484 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !482)
!485 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !482)
!486 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !482)
!487 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !482)
!488 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !482)
!489 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !482)
!490 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !482)
!491 = !DILocation(line: 222, column: 1, scope: !422)
!492 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2EPK19__FlashStringHelper", scope: !3, file: !2, line: 40, type: !28, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !27, variables: !493)
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "this", arg: 1, scope: !492, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!495 = !DILocalVariable(name: "pstr", arg: 2, scope: !492, file: !2, line: 40, type: !30)
!496 = !DILocation(line: 0, scope: !492)
!497 = !DILocation(line: 40, column: 43, scope: !492)
!498 = !DILocation(line: 0, scope: !270, inlinedAt: !499)
!499 = distinct !DILocation(line: 42, column: 2, scope: !500)
!500 = distinct !DILexicalBlock(scope: !492, file: !2, line: 41, column: 1)
!501 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !499)
!502 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !499)
!503 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !499)
!504 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !499)
!505 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !499)
!506 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !499)
!507 = !DILocation(line: 43, column: 8, scope: !500)
!508 = !DILocation(line: 44, column: 1, scope: !492)
!509 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !3, file: !2, line: 246, type: !80, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !79, variables: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "this", arg: 1, scope: !509, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!512 = !DILocalVariable(name: "pstr", arg: 2, scope: !509, file: !2, line: 246, type: !30)
!513 = !DILocation(line: 0, scope: !509)
!514 = !DILocation(line: 246, column: 57, scope: !509)
!515 = !DILocation(line: 248, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !509, file: !2, line: 248, column: 6)
!517 = !DILocation(line: 248, column: 6, scope: !509)
!518 = !DILocation(line: 248, column: 32, scope: !519)
!519 = !DILexicalBlockFile(scope: !516, file: !2, discriminator: 1)
!520 = !DILocalVariable(name: "s", arg: 1, scope: !521, file: !522, line: 1781, type: !21)
!521 = distinct !DISubprogram(name: "strlen_P", linkageName: "_ZL8strlen_PPKc", scope: !522, file: !522, line: 1781, type: !523, isLocal: true, isDefinition: true, scopeLine: 1781, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !527)
!522 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/avr/pgmspace.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!523 = !DISubroutineType(types: !524)
!524 = !{!525, !21}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !526, line: 62, baseType: !10)
!526 = !DIFile(filename: "/Users/dylan/projects/builds/llvm/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!527 = !{!520}
!528 = !DILocation(line: 1781, column: 47, scope: !521, inlinedAt: !529)
!529 = distinct !DILocation(line: 248, column: 23, scope: !519)
!530 = !DILocation(line: 1783, column: 30, scope: !521, inlinedAt: !529)
!531 = !DILocalVariable(name: "this", arg: 1, scope: !532, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!532 = distinct !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !3, file: !2, line: 181, type: !249, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !248, variables: !533)
!533 = !{!531, !534, !535}
!534 = !DILocalVariable(name: "pstr", arg: 2, scope: !532, file: !2, line: 181, type: !30)
!535 = !DILocalVariable(name: "length", arg: 3, scope: !532, file: !2, line: 181, type: !10)
!536 = !DILocation(line: 0, scope: !532, inlinedAt: !537)
!537 = distinct !DILocation(line: 248, column: 12, scope: !538)
!538 = !DILexicalBlockFile(scope: !516, file: !2, discriminator: 2)
!539 = !DILocation(line: 181, column: 50, scope: !532, inlinedAt: !537)
!540 = !DILocation(line: 181, column: 69, scope: !532, inlinedAt: !537)
!541 = !DILocation(line: 0, scope: !305, inlinedAt: !542)
!542 = distinct !DILocation(line: 183, column: 7, scope: !543, inlinedAt: !537)
!543 = distinct !DILexicalBlock(scope: !532, file: !2, line: 183, column: 6)
!544 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !542)
!545 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !542)
!546 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !542)
!547 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !542)
!548 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !542)
!549 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !542)
!550 = !DILocation(line: 187, column: 2, scope: !532, inlinedAt: !537)
!551 = !DILocation(line: 0, scope: !313, inlinedAt: !552)
!552 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !542)
!553 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !552)
!554 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !552)
!555 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !552)
!556 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !552)
!557 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !552)
!558 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !552)
!559 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !552)
!560 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !552)
!561 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !552)
!562 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !542)
!563 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !542)
!564 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !542)
!565 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !542)
!566 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !542)
!567 = !DILocation(line: 0, scope: !340, inlinedAt: !568)
!568 = distinct !DILocation(line: 184, column: 3, scope: !569, inlinedAt: !537)
!569 = distinct !DILexicalBlock(scope: !543, file: !2, line: 183, column: 24)
!570 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !568)
!571 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !568)
!572 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !568)
!573 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !568)
!574 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !568)
!575 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !568)
!576 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !568)
!577 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !568)
!578 = !DILocation(line: 185, column: 3, scope: !569, inlinedAt: !537)
!579 = !DILocation(line: 188, column: 11, scope: !532, inlinedAt: !537)
!580 = !DILocation(line: 187, column: 6, scope: !532, inlinedAt: !537)
!581 = !DILocation(line: 188, column: 2, scope: !532, inlinedAt: !537)
!582 = !DILocation(line: 189, column: 2, scope: !532, inlinedAt: !537)
!583 = !DILocation(line: 0, scope: !340, inlinedAt: !584)
!584 = distinct !DILocation(line: 249, column: 7, scope: !516)
!585 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !584)
!586 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !584)
!587 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !584)
!588 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !584)
!589 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !584)
!590 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !584)
!591 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !584)
!592 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !584)
!593 = !DILocation(line: 251, column: 2, scope: !509)
!594 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Ec", scope: !3, file: !2, line: 59, type: !34, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !33, variables: !595)
!595 = !{!596, !597, !598}
!596 = !DILocalVariable(name: "this", arg: 1, scope: !594, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!597 = !DILocalVariable(name: "c", arg: 2, scope: !594, file: !2, line: 59, type: !8)
!598 = !DILocalVariable(name: "buf", scope: !599, file: !2, line: 62, type: !600)
!599 = distinct !DILexicalBlock(scope: !594, file: !2, line: 60, column: 1)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 2)
!603 = !DILocation(line: 0, scope: !594)
!604 = !DILocation(line: 59, column: 21, scope: !594)
!605 = !DILocation(line: 0, scope: !270, inlinedAt: !606)
!606 = distinct !DILocation(line: 61, column: 2, scope: !599)
!607 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !606)
!608 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !606)
!609 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !606)
!610 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !606)
!611 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !606)
!612 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !606)
!613 = !DILocation(line: 62, column: 2, scope: !599)
!614 = !DILocation(line: 62, column: 7, scope: !599)
!615 = !DILocation(line: 63, column: 9, scope: !599)
!616 = !DILocation(line: 64, column: 2, scope: !599)
!617 = !DILocation(line: 64, column: 9, scope: !599)
!618 = !DILocalVariable(name: "this", arg: 1, scope: !619, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!619 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !3, file: !2, line: 238, type: !77, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !76, variables: !620)
!620 = !{!618, !621}
!621 = !DILocalVariable(name: "cstr", arg: 2, scope: !619, file: !2, line: 238, type: !21)
!622 = !DILocation(line: 0, scope: !619, inlinedAt: !623)
!623 = distinct !DILocation(line: 65, column: 8, scope: !599)
!624 = !DILocation(line: 238, column: 42, scope: !619, inlinedAt: !623)
!625 = !DILocation(line: 240, column: 23, scope: !626, inlinedAt: !623)
!626 = !DILexicalBlockFile(scope: !627, file: !2, discriminator: 1)
!627 = distinct !DILexicalBlock(scope: !619, file: !2, line: 240, column: 6)
!628 = !DILocation(line: 0, scope: !295, inlinedAt: !629)
!629 = distinct !DILocation(line: 240, column: 12, scope: !630, inlinedAt: !623)
!630 = !DILexicalBlockFile(scope: !627, file: !2, discriminator: 2)
!631 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !629)
!632 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !629)
!633 = !DILocation(line: 0, scope: !305, inlinedAt: !634)
!634 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !629)
!635 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !634)
!636 = !DILocation(line: 0, scope: !313, inlinedAt: !637)
!637 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !634)
!638 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !637)
!639 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !637)
!640 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !637)
!641 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !637)
!642 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !637)
!643 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !637)
!644 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !637)
!645 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !637)
!646 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !634)
!647 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !634)
!648 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !634)
!649 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !634)
!650 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !634)
!651 = !DILocation(line: 0, scope: !340, inlinedAt: !652)
!652 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !629)
!653 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !652)
!654 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !652)
!655 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !652)
!656 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !652)
!657 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !652)
!658 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !652)
!659 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !629)
!660 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !629)
!661 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !629)
!662 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !629)
!663 = !DILocation(line: 66, column: 1, scope: !594)
!664 = !DILocation(line: 0, scope: !619)
!665 = !DILocation(line: 238, column: 42, scope: !619)
!666 = !DILocation(line: 240, column: 6, scope: !627)
!667 = !DILocation(line: 240, column: 6, scope: !619)
!668 = !DILocation(line: 240, column: 23, scope: !626)
!669 = !DILocation(line: 0, scope: !295, inlinedAt: !670)
!670 = distinct !DILocation(line: 240, column: 12, scope: !630)
!671 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !670)
!672 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !670)
!673 = !DILocation(line: 0, scope: !305, inlinedAt: !674)
!674 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !670)
!675 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !674)
!676 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !674)
!677 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !674)
!678 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !674)
!679 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !674)
!680 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !674)
!681 = !DILocation(line: 176, column: 2, scope: !295, inlinedAt: !670)
!682 = !DILocation(line: 0, scope: !313, inlinedAt: !683)
!683 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !674)
!684 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !683)
!685 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !683)
!686 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !683)
!687 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !683)
!688 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !683)
!689 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !683)
!690 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !683)
!691 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !683)
!692 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !683)
!693 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !674)
!694 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !674)
!695 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !674)
!696 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !674)
!697 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !674)
!698 = !DILocation(line: 0, scope: !340, inlinedAt: !699)
!699 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !670)
!700 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !699)
!701 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !699)
!702 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !699)
!703 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !699)
!704 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !699)
!705 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !699)
!706 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !699)
!707 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !699)
!708 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !670)
!709 = !DILocation(line: 177, column: 9, scope: !295, inlinedAt: !670)
!710 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !670)
!711 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !670)
!712 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !670)
!713 = !DILocation(line: 0, scope: !340, inlinedAt: !714)
!714 = distinct !DILocation(line: 241, column: 7, scope: !627)
!715 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !714)
!716 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !714)
!717 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !714)
!718 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !714)
!719 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !714)
!720 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !714)
!721 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !714)
!722 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !714)
!723 = !DILocation(line: 243, column: 2, scope: !619)
!724 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Ehh", scope: !3, file: !2, line: 68, type: !37, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !36, variables: !725)
!725 = !{!726, !727, !728, !729}
!726 = !DILocalVariable(name: "this", arg: 1, scope: !724, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!727 = !DILocalVariable(name: "value", arg: 2, scope: !724, file: !2, line: 68, type: !39)
!728 = !DILocalVariable(name: "base", arg: 3, scope: !724, file: !2, line: 68, type: !39)
!729 = !DILocalVariable(name: "buf", scope: !730, file: !2, line: 71, type: !731)
!730 = distinct !DILexicalBlock(scope: !724, file: !2, line: 69, column: 1)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 72, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 9)
!734 = !DILocation(line: 0, scope: !724)
!735 = !DILocation(line: 68, column: 30, scope: !724)
!736 = !DILocation(line: 68, column: 51, scope: !724)
!737 = !DILocation(line: 0, scope: !270, inlinedAt: !738)
!738 = distinct !DILocation(line: 70, column: 2, scope: !730)
!739 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !738)
!740 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !738)
!741 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !738)
!742 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !738)
!743 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !738)
!744 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !738)
!745 = !DILocation(line: 71, column: 2, scope: !730)
!746 = !DILocation(line: 71, column: 7, scope: !730)
!747 = !DILocation(line: 72, column: 7, scope: !730)
!748 = !DILocation(line: 72, column: 19, scope: !730)
!749 = !DILocalVariable(name: "__val", arg: 1, scope: !750, file: !751, line: 517, type: !10)
!750 = distinct !DISubprogram(name: "utoa", scope: !751, file: !751, line: 517, type: !752, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !754)
!751 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdlib.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!752 = !DISubroutineType(types: !753)
!753 = !{!7, !10, !7, !43}
!754 = !{!749, !755, !756}
!755 = !DILocalVariable(name: "__s", arg: 2, scope: !750, file: !751, line: 517, type: !7)
!756 = !DILocalVariable(name: "__radix", arg: 3, scope: !750, file: !751, line: 517, type: !43)
!757 = !DILocation(line: 517, column: 26, scope: !750, inlinedAt: !758)
!758 = distinct !DILocation(line: 72, column: 2, scope: !730)
!759 = !DILocation(line: 517, column: 39, scope: !750, inlinedAt: !758)
!760 = !DILocation(line: 517, column: 48, scope: !750, inlinedAt: !758)
!761 = !DILocation(line: 521, column: 9, scope: !762, inlinedAt: !758)
!762 = distinct !DILexicalBlock(scope: !763, file: !751, line: 519, column: 42)
!763 = distinct !DILexicalBlock(scope: !750, file: !751, line: 519, column: 9)
!764 = !DILocation(line: 0, scope: !619, inlinedAt: !765)
!765 = distinct !DILocation(line: 73, column: 8, scope: !730)
!766 = !DILocation(line: 238, column: 42, scope: !619, inlinedAt: !765)
!767 = !DILocation(line: 240, column: 23, scope: !626, inlinedAt: !765)
!768 = !DILocation(line: 0, scope: !295, inlinedAt: !769)
!769 = distinct !DILocation(line: 240, column: 12, scope: !630, inlinedAt: !765)
!770 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !769)
!771 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !769)
!772 = !DILocation(line: 0, scope: !305, inlinedAt: !773)
!773 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !769)
!774 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !773)
!775 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !773)
!776 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !773)
!777 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !773)
!778 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !773)
!779 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !773)
!780 = !DILocation(line: 0, scope: !313, inlinedAt: !781)
!781 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !773)
!782 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !781)
!783 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !781)
!784 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !781)
!785 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !781)
!786 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !781)
!787 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !781)
!788 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !781)
!789 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !781)
!790 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !773)
!791 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !773)
!792 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !773)
!793 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !773)
!794 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !773)
!795 = !DILocation(line: 0, scope: !340, inlinedAt: !796)
!796 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !769)
!797 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !796)
!798 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !796)
!799 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !796)
!800 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !796)
!801 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !796)
!802 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !796)
!803 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !769)
!804 = !DILocation(line: 177, column: 9, scope: !295, inlinedAt: !769)
!805 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !769)
!806 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !769)
!807 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !769)
!808 = !DILocation(line: 74, column: 1, scope: !724)
!809 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Eih", scope: !3, file: !2, line: 76, type: !41, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !40, variables: !810)
!810 = !{!811, !812, !813, !814}
!811 = !DILocalVariable(name: "this", arg: 1, scope: !809, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!812 = !DILocalVariable(name: "value", arg: 2, scope: !809, file: !2, line: 76, type: !43)
!813 = !DILocalVariable(name: "base", arg: 3, scope: !809, file: !2, line: 76, type: !39)
!814 = !DILocalVariable(name: "buf", scope: !815, file: !2, line: 79, type: !816)
!815 = distinct !DILexicalBlock(scope: !809, file: !2, line: 77, column: 1)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 144, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 18)
!819 = !DILocation(line: 0, scope: !809)
!820 = !DILocation(line: 76, column: 20, scope: !809)
!821 = !DILocation(line: 76, column: 41, scope: !809)
!822 = !DILocation(line: 0, scope: !270, inlinedAt: !823)
!823 = distinct !DILocation(line: 78, column: 2, scope: !815)
!824 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !823)
!825 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !823)
!826 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !823)
!827 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !823)
!828 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !823)
!829 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !823)
!830 = !DILocation(line: 79, column: 2, scope: !815)
!831 = !DILocation(line: 79, column: 7, scope: !815)
!832 = !DILocation(line: 80, column: 19, scope: !815)
!833 = !DILocalVariable(name: "__val", arg: 1, scope: !834, file: !751, line: 429, type: !43)
!834 = distinct !DISubprogram(name: "itoa", scope: !751, file: !751, line: 429, type: !835, isLocal: false, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!7, !43, !7, !43}
!837 = !{!833, !838, !839}
!838 = !DILocalVariable(name: "__s", arg: 2, scope: !834, file: !751, line: 429, type: !7)
!839 = !DILocalVariable(name: "__radix", arg: 3, scope: !834, file: !751, line: 429, type: !43)
!840 = !DILocation(line: 429, column: 17, scope: !834, inlinedAt: !841)
!841 = distinct !DILocation(line: 80, column: 2, scope: !815)
!842 = !DILocation(line: 429, column: 30, scope: !834, inlinedAt: !841)
!843 = !DILocation(line: 429, column: 39, scope: !834, inlinedAt: !841)
!844 = !DILocation(line: 433, column: 9, scope: !845, inlinedAt: !841)
!845 = distinct !DILexicalBlock(scope: !846, file: !751, line: 431, column: 42)
!846 = distinct !DILexicalBlock(scope: !834, file: !751, line: 431, column: 9)
!847 = !DILocation(line: 0, scope: !619, inlinedAt: !848)
!848 = distinct !DILocation(line: 81, column: 8, scope: !815)
!849 = !DILocation(line: 238, column: 42, scope: !619, inlinedAt: !848)
!850 = !DILocation(line: 240, column: 23, scope: !626, inlinedAt: !848)
!851 = !DILocation(line: 0, scope: !295, inlinedAt: !852)
!852 = distinct !DILocation(line: 240, column: 12, scope: !630, inlinedAt: !848)
!853 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !852)
!854 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !852)
!855 = !DILocation(line: 0, scope: !305, inlinedAt: !856)
!856 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !852)
!857 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !856)
!858 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !856)
!859 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !856)
!860 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !856)
!861 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !856)
!862 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !856)
!863 = !DILocation(line: 0, scope: !313, inlinedAt: !864)
!864 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !856)
!865 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !864)
!866 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !864)
!867 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !864)
!868 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !864)
!869 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !864)
!870 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !864)
!871 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !864)
!872 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !864)
!873 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !856)
!874 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !856)
!875 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !856)
!876 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !856)
!877 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !856)
!878 = !DILocation(line: 0, scope: !340, inlinedAt: !879)
!879 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !852)
!880 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !879)
!881 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !879)
!882 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !879)
!883 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !879)
!884 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !879)
!885 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !879)
!886 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !852)
!887 = !DILocation(line: 177, column: 9, scope: !295, inlinedAt: !852)
!888 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !852)
!889 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !852)
!890 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !852)
!891 = !DILocation(line: 82, column: 1, scope: !809)
!892 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Ejh", scope: !3, file: !2, line: 84, type: !45, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !44, variables: !893)
!893 = !{!894, !895, !896, !897}
!894 = !DILocalVariable(name: "this", arg: 1, scope: !892, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!895 = !DILocalVariable(name: "value", arg: 2, scope: !892, file: !2, line: 84, type: !10)
!896 = !DILocalVariable(name: "base", arg: 3, scope: !892, file: !2, line: 84, type: !39)
!897 = !DILocalVariable(name: "buf", scope: !898, file: !2, line: 87, type: !899)
!898 = distinct !DILexicalBlock(scope: !892, file: !2, line: 85, column: 1)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 136, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 17)
!902 = !DILocation(line: 0, scope: !892)
!903 = !DILocation(line: 84, column: 29, scope: !892)
!904 = !DILocation(line: 84, column: 50, scope: !892)
!905 = !DILocation(line: 0, scope: !270, inlinedAt: !906)
!906 = distinct !DILocation(line: 86, column: 2, scope: !898)
!907 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !906)
!908 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !906)
!909 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !906)
!910 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !906)
!911 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !906)
!912 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !906)
!913 = !DILocation(line: 87, column: 2, scope: !898)
!914 = !DILocation(line: 87, column: 7, scope: !898)
!915 = !DILocation(line: 88, column: 19, scope: !898)
!916 = !DILocation(line: 517, column: 26, scope: !750, inlinedAt: !917)
!917 = distinct !DILocation(line: 88, column: 2, scope: !898)
!918 = !DILocation(line: 517, column: 39, scope: !750, inlinedAt: !917)
!919 = !DILocation(line: 517, column: 48, scope: !750, inlinedAt: !917)
!920 = !DILocation(line: 521, column: 9, scope: !762, inlinedAt: !917)
!921 = !DILocation(line: 0, scope: !619, inlinedAt: !922)
!922 = distinct !DILocation(line: 89, column: 8, scope: !898)
!923 = !DILocation(line: 238, column: 42, scope: !619, inlinedAt: !922)
!924 = !DILocation(line: 240, column: 23, scope: !626, inlinedAt: !922)
!925 = !DILocation(line: 0, scope: !295, inlinedAt: !926)
!926 = distinct !DILocation(line: 240, column: 12, scope: !630, inlinedAt: !922)
!927 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !926)
!928 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !926)
!929 = !DILocation(line: 0, scope: !305, inlinedAt: !930)
!930 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !926)
!931 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !930)
!932 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !930)
!933 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !930)
!934 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !930)
!935 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !930)
!936 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !930)
!937 = !DILocation(line: 0, scope: !313, inlinedAt: !938)
!938 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !930)
!939 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !938)
!940 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !938)
!941 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !938)
!942 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !938)
!943 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !938)
!944 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !938)
!945 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !938)
!946 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !938)
!947 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !930)
!948 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !930)
!949 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !930)
!950 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !930)
!951 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !930)
!952 = !DILocation(line: 0, scope: !340, inlinedAt: !953)
!953 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !926)
!954 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !953)
!955 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !953)
!956 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !953)
!957 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !953)
!958 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !953)
!959 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !953)
!960 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !926)
!961 = !DILocation(line: 177, column: 9, scope: !295, inlinedAt: !926)
!962 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !926)
!963 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !926)
!964 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !926)
!965 = !DILocation(line: 90, column: 1, scope: !892)
!966 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Elh", scope: !3, file: !2, line: 92, type: !48, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !47, variables: !967)
!967 = !{!968, !969, !970, !971}
!968 = !DILocalVariable(name: "this", arg: 1, scope: !966, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!969 = !DILocalVariable(name: "value", arg: 2, scope: !966, file: !2, line: 92, type: !50)
!970 = !DILocalVariable(name: "base", arg: 3, scope: !966, file: !2, line: 92, type: !39)
!971 = !DILocalVariable(name: "buf", scope: !972, file: !2, line: 95, type: !973)
!972 = distinct !DILexicalBlock(scope: !966, file: !2, line: 93, column: 1)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 272, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 34)
!976 = !DILocation(line: 0, scope: !966)
!977 = !DILocation(line: 92, column: 21, scope: !966)
!978 = !DILocation(line: 92, column: 42, scope: !966)
!979 = !DILocation(line: 0, scope: !270, inlinedAt: !980)
!980 = distinct !DILocation(line: 94, column: 2, scope: !972)
!981 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !980)
!982 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !980)
!983 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !980)
!984 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !980)
!985 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !980)
!986 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !980)
!987 = !DILocation(line: 95, column: 2, scope: !972)
!988 = !DILocation(line: 95, column: 7, scope: !972)
!989 = !DILocation(line: 96, column: 19, scope: !972)
!990 = !DILocalVariable(name: "__val", arg: 1, scope: !991, file: !751, line: 474, type: !50)
!991 = distinct !DISubprogram(name: "ltoa", scope: !751, file: !751, line: 474, type: !992, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!7, !50, !7, !43}
!994 = !{!990, !995, !996}
!995 = !DILocalVariable(name: "__s", arg: 2, scope: !991, file: !751, line: 474, type: !7)
!996 = !DILocalVariable(name: "__radix", arg: 3, scope: !991, file: !751, line: 474, type: !43)
!997 = !DILocation(line: 474, column: 18, scope: !991, inlinedAt: !998)
!998 = distinct !DILocation(line: 96, column: 2, scope: !972)
!999 = !DILocation(line: 474, column: 31, scope: !991, inlinedAt: !998)
!1000 = !DILocation(line: 474, column: 40, scope: !991, inlinedAt: !998)
!1001 = !DILocation(line: 478, column: 9, scope: !1002, inlinedAt: !998)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !751, line: 476, column: 42)
!1003 = distinct !DILexicalBlock(scope: !991, file: !751, line: 476, column: 9)
!1004 = !DILocation(line: 0, scope: !619, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 97, column: 8, scope: !972)
!1006 = !DILocation(line: 238, column: 42, scope: !619, inlinedAt: !1005)
!1007 = !DILocation(line: 240, column: 23, scope: !626, inlinedAt: !1005)
!1008 = !DILocation(line: 0, scope: !295, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 240, column: 12, scope: !630, inlinedAt: !1005)
!1010 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !1009)
!1011 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !1009)
!1012 = !DILocation(line: 0, scope: !305, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !1009)
!1014 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1013)
!1015 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1013)
!1016 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1013)
!1017 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1013)
!1018 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1013)
!1019 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1013)
!1020 = !DILocation(line: 0, scope: !313, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1013)
!1022 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1021)
!1023 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1021)
!1024 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1021)
!1025 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1021)
!1026 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1021)
!1027 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1021)
!1028 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1021)
!1029 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1021)
!1030 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1013)
!1031 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1013)
!1032 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1013)
!1033 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1013)
!1034 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1013)
!1035 = !DILocation(line: 0, scope: !340, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !1009)
!1037 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !1036)
!1038 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !1036)
!1039 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !1036)
!1040 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !1036)
!1041 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !1036)
!1042 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !1036)
!1043 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !1009)
!1044 = !DILocation(line: 177, column: 9, scope: !295, inlinedAt: !1009)
!1045 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !1009)
!1046 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !1009)
!1047 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !1009)
!1048 = !DILocation(line: 98, column: 1, scope: !966)
!1049 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Emh", scope: !3, file: !2, line: 100, type: !52, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !51, variables: !1050)
!1050 = !{!1051, !1052, !1053, !1054}
!1051 = !DILocalVariable(name: "this", arg: 1, scope: !1049, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1052 = !DILocalVariable(name: "value", arg: 2, scope: !1049, file: !2, line: 100, type: !54)
!1053 = !DILocalVariable(name: "base", arg: 3, scope: !1049, file: !2, line: 100, type: !39)
!1054 = !DILocalVariable(name: "buf", scope: !1055, file: !2, line: 103, type: !1056)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 101, column: 1)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 264, elements: !1057)
!1057 = !{!1058}
!1058 = !DISubrange(count: 33)
!1059 = !DILocation(line: 0, scope: !1049)
!1060 = !DILocation(line: 100, column: 30, scope: !1049)
!1061 = !DILocation(line: 100, column: 51, scope: !1049)
!1062 = !DILocation(line: 0, scope: !270, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 102, column: 2, scope: !1055)
!1064 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !1063)
!1065 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !1063)
!1066 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !1063)
!1067 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !1063)
!1068 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !1063)
!1069 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !1063)
!1070 = !DILocation(line: 103, column: 2, scope: !1055)
!1071 = !DILocation(line: 103, column: 7, scope: !1055)
!1072 = !DILocation(line: 104, column: 20, scope: !1055)
!1073 = !DILocalVariable(name: "__val", arg: 1, scope: !1074, file: !751, line: 559, type: !54)
!1074 = distinct !DISubprogram(name: "ultoa", scope: !751, file: !751, line: 559, type: !1075, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!7, !54, !7, !43}
!1077 = !{!1073, !1078, !1079}
!1078 = !DILocalVariable(name: "__s", arg: 2, scope: !1074, file: !751, line: 559, type: !7)
!1079 = !DILocalVariable(name: "__radix", arg: 3, scope: !1074, file: !751, line: 559, type: !43)
!1080 = !DILocation(line: 559, column: 28, scope: !1074, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 104, column: 2, scope: !1055)
!1082 = !DILocation(line: 559, column: 41, scope: !1074, inlinedAt: !1081)
!1083 = !DILocation(line: 559, column: 50, scope: !1074, inlinedAt: !1081)
!1084 = !DILocation(line: 563, column: 9, scope: !1085, inlinedAt: !1081)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !751, line: 561, column: 42)
!1086 = distinct !DILexicalBlock(scope: !1074, file: !751, line: 561, column: 9)
!1087 = !DILocation(line: 0, scope: !619, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 105, column: 8, scope: !1055)
!1089 = !DILocation(line: 238, column: 42, scope: !619, inlinedAt: !1088)
!1090 = !DILocation(line: 240, column: 23, scope: !626, inlinedAt: !1088)
!1091 = !DILocation(line: 0, scope: !295, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 240, column: 12, scope: !630, inlinedAt: !1088)
!1093 = !DILocation(line: 170, column: 35, scope: !295, inlinedAt: !1092)
!1094 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !1092)
!1095 = !DILocation(line: 0, scope: !305, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !1092)
!1097 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1096)
!1098 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1096)
!1099 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1096)
!1100 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1096)
!1101 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1096)
!1102 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1096)
!1103 = !DILocation(line: 0, scope: !313, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1096)
!1105 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1104)
!1106 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1104)
!1107 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1104)
!1108 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1104)
!1109 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1104)
!1110 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1104)
!1111 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1104)
!1112 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1104)
!1113 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1096)
!1114 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1096)
!1115 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1096)
!1116 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1096)
!1117 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1096)
!1118 = !DILocation(line: 0, scope: !340, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !1092)
!1120 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !1119)
!1121 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !1119)
!1122 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !1119)
!1123 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !1119)
!1124 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !1119)
!1125 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !1119)
!1126 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !1092)
!1127 = !DILocation(line: 177, column: 9, scope: !295, inlinedAt: !1092)
!1128 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !1092)
!1129 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !1092)
!1130 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !1092)
!1131 = !DILocation(line: 106, column: 1, scope: !1049)
!1132 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Efh", scope: !3, file: !2, line: 108, type: !56, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !55, variables: !1133)
!1133 = !{!1134, !1135, !1136, !1137}
!1134 = !DILocalVariable(name: "this", arg: 1, scope: !1132, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1135 = !DILocalVariable(name: "value", arg: 2, scope: !1132, file: !2, line: 108, type: !58)
!1136 = !DILocalVariable(name: "decimalPlaces", arg: 3, scope: !1132, file: !2, line: 108, type: !39)
!1137 = !DILocalVariable(name: "buf", scope: !1138, file: !2, line: 111, type: !1056)
!1138 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 109, column: 1)
!1139 = !DILocation(line: 0, scope: !1132)
!1140 = !DILocation(line: 108, column: 22, scope: !1132)
!1141 = !DILocation(line: 108, column: 43, scope: !1132)
!1142 = !DILocation(line: 0, scope: !270, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 110, column: 2, scope: !1138)
!1144 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !1143)
!1145 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !1143)
!1146 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !1143)
!1147 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !1143)
!1148 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !1143)
!1149 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !1143)
!1150 = !DILocation(line: 111, column: 2, scope: !1138)
!1151 = !DILocation(line: 111, column: 7, scope: !1138)
!1152 = !DILocation(line: 112, column: 40, scope: !1138)
!1153 = !DILocation(line: 112, column: 10, scope: !1138)
!1154 = !DILocation(line: 112, column: 8, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1138, file: !2, discriminator: 1)
!1156 = !DILocation(line: 113, column: 1, scope: !1132)
!1157 = distinct !DISubprogram(name: "String", linkageName: "_ZN6StringC2Edh", scope: !3, file: !2, line: 115, type: !60, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !59, variables: !1158)
!1158 = !{!1159, !1160, !1161, !1162}
!1159 = !DILocalVariable(name: "this", arg: 1, scope: !1157, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1160 = !DILocalVariable(name: "value", arg: 2, scope: !1157, file: !2, line: 115, type: !62)
!1161 = !DILocalVariable(name: "decimalPlaces", arg: 3, scope: !1157, file: !2, line: 115, type: !39)
!1162 = !DILocalVariable(name: "buf", scope: !1163, file: !2, line: 118, type: !1056)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 116, column: 1)
!1164 = !DILocation(line: 0, scope: !1157)
!1165 = !DILocation(line: 115, column: 23, scope: !1157)
!1166 = !DILocation(line: 115, column: 44, scope: !1157)
!1167 = !DILocation(line: 0, scope: !270, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 117, column: 2, scope: !1163)
!1169 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !1168)
!1170 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !1168)
!1171 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !1168)
!1172 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !1168)
!1173 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !1168)
!1174 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !1168)
!1175 = !DILocation(line: 118, column: 2, scope: !1163)
!1176 = !DILocation(line: 118, column: 7, scope: !1163)
!1177 = !DILocation(line: 119, column: 40, scope: !1163)
!1178 = !DILocation(line: 119, column: 10, scope: !1163)
!1179 = !DILocation(line: 119, column: 8, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1163, file: !2, discriminator: 1)
!1181 = !DILocation(line: 120, column: 1, scope: !1157)
!1182 = distinct !DISubprogram(name: "~String", linkageName: "_ZN6StringD2Ev", scope: !3, file: !2, line: 122, type: !64, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !63, variables: !1183)
!1183 = !{!1184}
!1184 = !DILocalVariable(name: "this", arg: 1, scope: !1182, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1185 = !DILocation(line: 0, scope: !1182)
!1186 = !DILocation(line: 124, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 123, column: 1)
!1188 = !DILocation(line: 124, column: 2, scope: !1187)
!1189 = !DILocation(line: 125, column: 1, scope: !1182)
!1190 = !DILocation(line: 0, scope: !340)
!1191 = !DILocation(line: 140, column: 6, scope: !346)
!1192 = !DILocation(line: 140, column: 6, scope: !340)
!1193 = !DILocation(line: 140, column: 14, scope: !349)
!1194 = !DILocation(line: 141, column: 9, scope: !340)
!1195 = !DILocation(line: 142, column: 13, scope: !340)
!1196 = !DILocation(line: 142, column: 17, scope: !340)
!1197 = !DILocation(line: 142, column: 2, scope: !340)
!1198 = !DILocation(line: 142, column: 11, scope: !340)
!1199 = !DILocation(line: 143, column: 1, scope: !340)
!1200 = !DILocation(line: 0, scope: !305)
!1201 = !DILocation(line: 145, column: 44, scope: !305)
!1202 = !DILocation(line: 147, column: 6, scope: !365)
!1203 = !DILocation(line: 147, column: 13, scope: !365)
!1204 = !DILocation(line: 147, column: 16, scope: !368)
!1205 = !DILocation(line: 147, column: 25, scope: !368)
!1206 = !DILocation(line: 147, column: 6, scope: !371)
!1207 = !DILocation(line: 0, scope: !313, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 148, column: 6, scope: !319)
!1209 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1208)
!1210 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1208)
!1211 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1208)
!1212 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1208)
!1213 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1208)
!1214 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1208)
!1215 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1208)
!1216 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1208)
!1217 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1208)
!1218 = !DILocation(line: 149, column: 7, scope: !331)
!1219 = !DILocation(line: 149, column: 11, scope: !331)
!1220 = !DILocation(line: 149, column: 7, scope: !332)
!1221 = !DILocation(line: 149, column: 27, scope: !336)
!1222 = !DILocation(line: 149, column: 17, scope: !336)
!1223 = !DILocation(line: 153, column: 1, scope: !305)
!1224 = !DILocation(line: 0, scope: !313)
!1225 = !DILocation(line: 155, column: 49, scope: !313)
!1226 = !DILocation(line: 157, column: 36, scope: !313)
!1227 = !DILocation(line: 157, column: 54, scope: !313)
!1228 = !DILocation(line: 157, column: 28, scope: !313)
!1229 = !DILocation(line: 157, column: 8, scope: !313)
!1230 = !DILocation(line: 158, column: 6, scope: !325)
!1231 = !DILocation(line: 158, column: 6, scope: !313)
!1232 = !DILocation(line: 159, column: 10, scope: !328)
!1233 = !DILocation(line: 160, column: 3, scope: !328)
!1234 = !DILocation(line: 160, column: 12, scope: !328)
!1235 = !DILocation(line: 161, column: 3, scope: !328)
!1236 = !DILocation(line: 164, column: 1, scope: !313)
!1237 = !DILocation(line: 0, scope: !532)
!1238 = !DILocation(line: 181, column: 50, scope: !532)
!1239 = !DILocation(line: 181, column: 69, scope: !532)
!1240 = !DILocation(line: 0, scope: !305, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 183, column: 7, scope: !543)
!1242 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1241)
!1243 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1241)
!1244 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1241)
!1245 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1241)
!1246 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1241)
!1247 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1241)
!1248 = !DILocation(line: 187, column: 2, scope: !532)
!1249 = !DILocation(line: 0, scope: !313, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1241)
!1251 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1250)
!1252 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1250)
!1253 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1250)
!1254 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1250)
!1255 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1250)
!1256 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1250)
!1257 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1250)
!1258 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1250)
!1259 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1250)
!1260 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1241)
!1261 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1241)
!1262 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1241)
!1263 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1241)
!1264 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1241)
!1265 = !DILocation(line: 0, scope: !340, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 184, column: 3, scope: !569)
!1267 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !1266)
!1268 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !1266)
!1269 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !1266)
!1270 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !1266)
!1271 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !1266)
!1272 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !1266)
!1273 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !1266)
!1274 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !1266)
!1275 = !DILocation(line: 185, column: 3, scope: !569)
!1276 = !DILocation(line: 188, column: 11, scope: !532)
!1277 = !DILocation(line: 187, column: 6, scope: !532)
!1278 = !DILocation(line: 188, column: 19, scope: !532)
!1279 = !DILocation(line: 188, column: 2, scope: !532)
!1280 = !DILocation(line: 189, column: 2, scope: !532)
!1281 = !DILocation(line: 190, column: 1, scope: !532)
!1282 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !3, file: !2, line: 258, type: !83, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !82, variables: !1283)
!1283 = !{!1284, !1285}
!1284 = !DILocalVariable(name: "this", arg: 1, scope: !1282, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1285 = !DILocalVariable(name: "s", arg: 2, scope: !1282, file: !2, line: 258, type: !26)
!1286 = !DILocation(line: 0, scope: !1282)
!1287 = !DILocation(line: 258, column: 44, scope: !1282)
!1288 = !DILocation(line: 260, column: 18, scope: !1282)
!1289 = !DILocation(line: 260, column: 28, scope: !1282)
!1290 = !DILocalVariable(name: "this", arg: 1, scope: !1291, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1291 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !3, file: !2, line: 263, type: !243, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !242, variables: !1292)
!1292 = !{!1290, !1293, !1294, !1295}
!1293 = !DILocalVariable(name: "cstr", arg: 2, scope: !1291, file: !2, line: 263, type: !21)
!1294 = !DILocalVariable(name: "length", arg: 3, scope: !1291, file: !2, line: 263, type: !10)
!1295 = !DILocalVariable(name: "newlen", scope: !1291, file: !2, line: 265, type: !10)
!1296 = !DILocation(line: 0, scope: !1291, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 260, column: 9, scope: !1282)
!1298 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1297)
!1299 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1297)
!1300 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1297)
!1301 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1297)
!1302 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1297)
!1303 = !DILocation(line: 266, column: 7, scope: !1304, inlinedAt: !1297)
!1304 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 266, column: 6)
!1305 = !DILocation(line: 266, column: 6, scope: !1291, inlinedAt: !1297)
!1306 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1297)
!1307 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 267, column: 6)
!1308 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1297)
!1309 = !DILocation(line: 0, scope: !305, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1297)
!1311 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 268, column: 6)
!1312 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1310)
!1313 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1310)
!1314 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1310)
!1315 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1310)
!1316 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1310)
!1317 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1310)
!1318 = !DILocation(line: 0, scope: !313, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1310)
!1320 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1319)
!1321 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1319)
!1322 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1319)
!1323 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1319)
!1324 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1319)
!1325 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1319)
!1326 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1319)
!1327 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1319)
!1328 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1319)
!1329 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1310)
!1330 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1310)
!1331 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1310)
!1332 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1310)
!1333 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1310)
!1334 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1297)
!1335 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1297)
!1336 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1297)
!1337 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1297)
!1338 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1297)
!1339 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1297)
!1340 = !DILocation(line: 260, column: 2, scope: !1282)
!1341 = !DILocation(line: 0, scope: !1291)
!1342 = !DILocation(line: 263, column: 42, scope: !1291)
!1343 = !DILocation(line: 263, column: 61, scope: !1291)
!1344 = !DILocation(line: 265, column: 24, scope: !1291)
!1345 = !DILocation(line: 265, column: 28, scope: !1291)
!1346 = !DILocation(line: 265, column: 15, scope: !1291)
!1347 = !DILocation(line: 266, column: 7, scope: !1304)
!1348 = !DILocation(line: 266, column: 6, scope: !1291)
!1349 = !DILocation(line: 267, column: 13, scope: !1307)
!1350 = !DILocation(line: 267, column: 6, scope: !1291)
!1351 = !DILocation(line: 0, scope: !305, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 268, column: 7, scope: !1311)
!1353 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1352)
!1354 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1352)
!1355 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1352)
!1356 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1352)
!1357 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1352)
!1358 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1352)
!1359 = !DILocation(line: 0, scope: !313, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1352)
!1361 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1360)
!1362 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1360)
!1363 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1360)
!1364 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1360)
!1365 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1360)
!1366 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1360)
!1367 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1360)
!1368 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1360)
!1369 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1360)
!1370 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1352)
!1371 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1352)
!1372 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1352)
!1373 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1352)
!1374 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1352)
!1375 = !DILocation(line: 269, column: 18, scope: !1291)
!1376 = !DILocation(line: 269, column: 9, scope: !1291)
!1377 = !DILocation(line: 269, column: 16, scope: !1291)
!1378 = !DILocation(line: 269, column: 2, scope: !1291)
!1379 = !DILocation(line: 270, column: 6, scope: !1291)
!1380 = !DILocation(line: 271, column: 2, scope: !1291)
!1381 = !DILocation(line: 272, column: 1, scope: !1291)
!1382 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !3, file: !2, line: 274, type: !86, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !85, variables: !1383)
!1383 = !{!1384, !1385}
!1384 = !DILocalVariable(name: "this", arg: 1, scope: !1382, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1385 = !DILocalVariable(name: "cstr", arg: 2, scope: !1382, file: !2, line: 274, type: !21)
!1386 = !DILocation(line: 0, scope: !1382)
!1387 = !DILocation(line: 274, column: 42, scope: !1382)
!1388 = !DILocation(line: 276, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 276, column: 6)
!1390 = !DILocation(line: 276, column: 6, scope: !1382)
!1391 = !DILocation(line: 277, column: 22, scope: !1382)
!1392 = !DILocation(line: 0, scope: !1291, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 277, column: 9, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1382, file: !2, discriminator: 1)
!1395 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1393)
!1396 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1393)
!1397 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1393)
!1398 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1393)
!1399 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1393)
!1400 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1393)
!1401 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1393)
!1402 = !DILocation(line: 0, scope: !305, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1393)
!1404 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1403)
!1405 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1403)
!1406 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1403)
!1407 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1403)
!1408 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1403)
!1409 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1403)
!1410 = !DILocation(line: 0, scope: !313, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1403)
!1412 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1411)
!1413 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1411)
!1414 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1411)
!1415 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1411)
!1416 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1411)
!1417 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1411)
!1418 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1411)
!1419 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1411)
!1420 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1411)
!1421 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1403)
!1422 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1403)
!1423 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1403)
!1424 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1403)
!1425 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1403)
!1426 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1393)
!1427 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1393)
!1428 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1393)
!1429 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1393)
!1430 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1393)
!1431 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1393)
!1432 = !DILocation(line: 278, column: 1, scope: !1382)
!1433 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !3, file: !2, line: 280, type: !89, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !88, variables: !1434)
!1434 = !{!1435, !1436, !1437}
!1435 = !DILocalVariable(name: "this", arg: 1, scope: !1433, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1436 = !DILocalVariable(name: "c", arg: 2, scope: !1433, file: !2, line: 280, type: !8)
!1437 = !DILocalVariable(name: "buf", scope: !1433, file: !2, line: 282, type: !600)
!1438 = !DILocation(line: 0, scope: !1433)
!1439 = !DILocation(line: 280, column: 35, scope: !1433)
!1440 = !DILocation(line: 282, column: 2, scope: !1433)
!1441 = !DILocation(line: 282, column: 7, scope: !1433)
!1442 = !DILocation(line: 283, column: 9, scope: !1433)
!1443 = !DILocation(line: 284, column: 2, scope: !1433)
!1444 = !DILocation(line: 284, column: 9, scope: !1433)
!1445 = !DILocation(line: 0, scope: !1291, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 285, column: 9, scope: !1433)
!1447 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1446)
!1448 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1446)
!1449 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1446)
!1450 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1446)
!1451 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1446)
!1452 = !DILocation(line: 0, scope: !305, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1446)
!1454 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1453)
!1455 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1453)
!1456 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1453)
!1457 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1453)
!1458 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1453)
!1459 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1453)
!1460 = !DILocation(line: 0, scope: !313, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1453)
!1462 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1461)
!1463 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1461)
!1464 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1461)
!1465 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1461)
!1466 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1461)
!1467 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1461)
!1468 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1461)
!1469 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1461)
!1470 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1461)
!1471 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1453)
!1472 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1453)
!1473 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1453)
!1474 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1453)
!1475 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1453)
!1476 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1446)
!1477 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1446)
!1478 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1446)
!1479 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1446)
!1480 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1446)
!1481 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1446)
!1482 = !DILocation(line: 286, column: 1, scope: !1433)
!1483 = !DILocation(line: 285, column: 2, scope: !1433)
!1484 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !3, file: !2, line: 288, type: !92, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !91, variables: !1485)
!1485 = !{!1486, !1487, !1488}
!1486 = !DILocalVariable(name: "this", arg: 1, scope: !1484, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1487 = !DILocalVariable(name: "num", arg: 2, scope: !1484, file: !2, line: 288, type: !39)
!1488 = !DILocalVariable(name: "buf", scope: !1484, file: !2, line: 290, type: !1489)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 4)
!1492 = !DILocation(line: 0, scope: !1484)
!1493 = !DILocation(line: 288, column: 44, scope: !1484)
!1494 = !DILocation(line: 290, column: 2, scope: !1484)
!1495 = !DILocation(line: 290, column: 7, scope: !1484)
!1496 = !DILocation(line: 291, column: 7, scope: !1484)
!1497 = !DILocation(line: 429, column: 17, scope: !834, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 291, column: 2, scope: !1484)
!1499 = !DILocation(line: 429, column: 30, scope: !834, inlinedAt: !1498)
!1500 = !DILocation(line: 429, column: 39, scope: !834, inlinedAt: !1498)
!1501 = !DILocation(line: 433, column: 9, scope: !845, inlinedAt: !1498)
!1502 = !DILocation(line: 292, column: 21, scope: !1484)
!1503 = !DILocation(line: 0, scope: !1291, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 292, column: 9, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1484, file: !2, discriminator: 1)
!1506 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1504)
!1507 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1504)
!1508 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1504)
!1509 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1504)
!1510 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1504)
!1511 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1504)
!1512 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1504)
!1513 = !DILocation(line: 0, scope: !305, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1504)
!1515 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1514)
!1516 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1514)
!1517 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1514)
!1518 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1514)
!1519 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1514)
!1520 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1514)
!1521 = !DILocation(line: 0, scope: !313, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1514)
!1523 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1522)
!1524 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1522)
!1525 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1522)
!1526 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1522)
!1527 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1522)
!1528 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1522)
!1529 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1522)
!1530 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1522)
!1531 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1522)
!1532 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1514)
!1533 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1514)
!1534 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1514)
!1535 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1514)
!1536 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1514)
!1537 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1504)
!1538 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1504)
!1539 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1504)
!1540 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1504)
!1541 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1504)
!1542 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1504)
!1543 = !DILocation(line: 293, column: 1, scope: !1484)
!1544 = !DILocation(line: 292, column: 2, scope: !1484)
!1545 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !3, file: !2, line: 295, type: !95, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !94, variables: !1546)
!1546 = !{!1547, !1548, !1549}
!1547 = !DILocalVariable(name: "this", arg: 1, scope: !1545, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1548 = !DILocalVariable(name: "num", arg: 2, scope: !1545, file: !2, line: 295, type: !43)
!1549 = !DILocalVariable(name: "buf", scope: !1545, file: !2, line: 297, type: !1550)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DISubrange(count: 8)
!1553 = !DILocation(line: 0, scope: !1545)
!1554 = !DILocation(line: 295, column: 34, scope: !1545)
!1555 = !DILocation(line: 297, column: 2, scope: !1545)
!1556 = !DILocation(line: 297, column: 7, scope: !1545)
!1557 = !DILocation(line: 429, column: 17, scope: !834, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 298, column: 2, scope: !1545)
!1559 = !DILocation(line: 429, column: 30, scope: !834, inlinedAt: !1558)
!1560 = !DILocation(line: 429, column: 39, scope: !834, inlinedAt: !1558)
!1561 = !DILocation(line: 433, column: 9, scope: !845, inlinedAt: !1558)
!1562 = !DILocation(line: 299, column: 21, scope: !1545)
!1563 = !DILocation(line: 0, scope: !1291, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 299, column: 9, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1545, file: !2, discriminator: 1)
!1566 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1564)
!1567 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1564)
!1568 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1564)
!1569 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1564)
!1570 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1564)
!1571 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1564)
!1572 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1564)
!1573 = !DILocation(line: 0, scope: !305, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1564)
!1575 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1574)
!1576 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1574)
!1577 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1574)
!1578 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1574)
!1579 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1574)
!1580 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1574)
!1581 = !DILocation(line: 0, scope: !313, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1574)
!1583 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1582)
!1584 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1582)
!1585 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1582)
!1586 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1582)
!1587 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1582)
!1588 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1582)
!1589 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1582)
!1590 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1582)
!1591 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1582)
!1592 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1574)
!1593 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1574)
!1594 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1574)
!1595 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1574)
!1596 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1574)
!1597 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1564)
!1598 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1564)
!1599 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1564)
!1600 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1564)
!1601 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1564)
!1602 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1564)
!1603 = !DILocation(line: 300, column: 1, scope: !1545)
!1604 = !DILocation(line: 299, column: 2, scope: !1545)
!1605 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !3, file: !2, line: 302, type: !67, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !97, variables: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DILocalVariable(name: "this", arg: 1, scope: !1605, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1608 = !DILocalVariable(name: "num", arg: 2, scope: !1605, file: !2, line: 302, type: !10)
!1609 = !DILocalVariable(name: "buf", scope: !1605, file: !2, line: 304, type: !1610)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 56, elements: !1611)
!1611 = !{!1612}
!1612 = !DISubrange(count: 7)
!1613 = !DILocation(line: 0, scope: !1605)
!1614 = !DILocation(line: 302, column: 43, scope: !1605)
!1615 = !DILocation(line: 304, column: 2, scope: !1605)
!1616 = !DILocation(line: 304, column: 7, scope: !1605)
!1617 = !DILocation(line: 517, column: 26, scope: !750, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 305, column: 2, scope: !1605)
!1619 = !DILocation(line: 517, column: 39, scope: !750, inlinedAt: !1618)
!1620 = !DILocation(line: 517, column: 48, scope: !750, inlinedAt: !1618)
!1621 = !DILocation(line: 521, column: 9, scope: !762, inlinedAt: !1618)
!1622 = !DILocation(line: 306, column: 21, scope: !1605)
!1623 = !DILocation(line: 0, scope: !1291, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 306, column: 9, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1605, file: !2, discriminator: 1)
!1626 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1624)
!1627 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1624)
!1628 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1624)
!1629 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1624)
!1630 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1624)
!1631 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1624)
!1632 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1624)
!1633 = !DILocation(line: 0, scope: !305, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1624)
!1635 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1634)
!1636 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1634)
!1637 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1634)
!1638 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1634)
!1639 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1634)
!1640 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1634)
!1641 = !DILocation(line: 0, scope: !313, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1634)
!1643 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1642)
!1644 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1642)
!1645 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1642)
!1646 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1642)
!1647 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1642)
!1648 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1642)
!1649 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1642)
!1650 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1642)
!1651 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1642)
!1652 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1634)
!1653 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1634)
!1654 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1634)
!1655 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1634)
!1656 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1634)
!1657 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1624)
!1658 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1624)
!1659 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1624)
!1660 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1624)
!1661 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1624)
!1662 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1624)
!1663 = !DILocation(line: 307, column: 1, scope: !1605)
!1664 = !DILocation(line: 306, column: 2, scope: !1605)
!1665 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !3, file: !2, line: 309, type: !99, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !98, variables: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DILocalVariable(name: "this", arg: 1, scope: !1665, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1668 = !DILocalVariable(name: "num", arg: 2, scope: !1665, file: !2, line: 309, type: !50)
!1669 = !DILocalVariable(name: "buf", scope: !1665, file: !2, line: 311, type: !1670)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 112, elements: !1671)
!1671 = !{!1672}
!1672 = !DISubrange(count: 14)
!1673 = !DILocation(line: 0, scope: !1665)
!1674 = !DILocation(line: 309, column: 35, scope: !1665)
!1675 = !DILocation(line: 311, column: 2, scope: !1665)
!1676 = !DILocation(line: 311, column: 7, scope: !1665)
!1677 = !DILocation(line: 474, column: 18, scope: !991, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 312, column: 2, scope: !1665)
!1679 = !DILocation(line: 474, column: 31, scope: !991, inlinedAt: !1678)
!1680 = !DILocation(line: 474, column: 40, scope: !991, inlinedAt: !1678)
!1681 = !DILocation(line: 478, column: 9, scope: !1002, inlinedAt: !1678)
!1682 = !DILocation(line: 313, column: 21, scope: !1665)
!1683 = !DILocation(line: 0, scope: !1291, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 313, column: 9, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1665, file: !2, discriminator: 1)
!1686 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1684)
!1687 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1684)
!1688 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1684)
!1689 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1684)
!1690 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1684)
!1691 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1684)
!1692 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1684)
!1693 = !DILocation(line: 0, scope: !305, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1684)
!1695 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1694)
!1696 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1694)
!1697 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1694)
!1698 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1694)
!1699 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1694)
!1700 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1694)
!1701 = !DILocation(line: 0, scope: !313, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1694)
!1703 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1702)
!1704 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1702)
!1705 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1702)
!1706 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1702)
!1707 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1702)
!1708 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1702)
!1709 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1702)
!1710 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1702)
!1711 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1702)
!1712 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1694)
!1713 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1694)
!1714 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1694)
!1715 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1694)
!1716 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1694)
!1717 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1684)
!1718 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1684)
!1719 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1684)
!1720 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1684)
!1721 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1684)
!1722 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1684)
!1723 = !DILocation(line: 314, column: 1, scope: !1665)
!1724 = !DILocation(line: 313, column: 2, scope: !1665)
!1725 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !3, file: !2, line: 316, type: !102, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !101, variables: !1726)
!1726 = !{!1727, !1728, !1729}
!1727 = !DILocalVariable(name: "this", arg: 1, scope: !1725, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1728 = !DILocalVariable(name: "num", arg: 2, scope: !1725, file: !2, line: 316, type: !54)
!1729 = !DILocalVariable(name: "buf", scope: !1725, file: !2, line: 318, type: !1730)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 104, elements: !1731)
!1731 = !{!1732}
!1732 = !DISubrange(count: 13)
!1733 = !DILocation(line: 0, scope: !1725)
!1734 = !DILocation(line: 316, column: 44, scope: !1725)
!1735 = !DILocation(line: 318, column: 2, scope: !1725)
!1736 = !DILocation(line: 318, column: 7, scope: !1725)
!1737 = !DILocation(line: 559, column: 28, scope: !1074, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 319, column: 2, scope: !1725)
!1739 = !DILocation(line: 559, column: 41, scope: !1074, inlinedAt: !1738)
!1740 = !DILocation(line: 559, column: 50, scope: !1074, inlinedAt: !1738)
!1741 = !DILocation(line: 563, column: 9, scope: !1085, inlinedAt: !1738)
!1742 = !DILocation(line: 320, column: 21, scope: !1725)
!1743 = !DILocation(line: 0, scope: !1291, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 320, column: 9, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1725, file: !2, discriminator: 1)
!1746 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1744)
!1747 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1744)
!1748 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1744)
!1749 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1744)
!1750 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1744)
!1751 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1744)
!1752 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1744)
!1753 = !DILocation(line: 0, scope: !305, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1744)
!1755 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1754)
!1756 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1754)
!1757 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1754)
!1758 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1754)
!1759 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1754)
!1760 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1754)
!1761 = !DILocation(line: 0, scope: !313, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1754)
!1763 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1762)
!1764 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1762)
!1765 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1762)
!1766 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1762)
!1767 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1762)
!1768 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1762)
!1769 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1762)
!1770 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1762)
!1771 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1762)
!1772 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1754)
!1773 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1754)
!1774 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1754)
!1775 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1754)
!1776 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1754)
!1777 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1744)
!1778 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1744)
!1779 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1744)
!1780 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1744)
!1781 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1744)
!1782 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1744)
!1783 = !DILocation(line: 321, column: 1, scope: !1725)
!1784 = !DILocation(line: 320, column: 2, scope: !1725)
!1785 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !3, file: !2, line: 323, type: !105, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !104, variables: !1786)
!1786 = !{!1787, !1788, !1789, !1793}
!1787 = !DILocalVariable(name: "this", arg: 1, scope: !1785, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1788 = !DILocalVariable(name: "num", arg: 2, scope: !1785, file: !2, line: 323, type: !58)
!1789 = !DILocalVariable(name: "buf", scope: !1785, file: !2, line: 325, type: !1790)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !1791)
!1791 = !{!1792}
!1792 = !DISubrange(count: 20)
!1793 = !DILocalVariable(name: "string", scope: !1785, file: !2, line: 326, type: !7)
!1794 = !DILocation(line: 0, scope: !1785)
!1795 = !DILocation(line: 323, column: 36, scope: !1785)
!1796 = !DILocation(line: 325, column: 2, scope: !1785)
!1797 = !DILocation(line: 325, column: 7, scope: !1785)
!1798 = !DILocation(line: 326, column: 17, scope: !1785)
!1799 = !DILocation(line: 326, column: 8, scope: !1785)
!1800 = !DILocation(line: 327, column: 24, scope: !1785)
!1801 = !DILocation(line: 0, scope: !1291, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 327, column: 9, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1785, file: !2, discriminator: 1)
!1804 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1802)
!1805 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1802)
!1806 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1802)
!1807 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1802)
!1808 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1802)
!1809 = !DILocation(line: 266, column: 7, scope: !1304, inlinedAt: !1802)
!1810 = !DILocation(line: 266, column: 6, scope: !1291, inlinedAt: !1802)
!1811 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1802)
!1812 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1802)
!1813 = !DILocation(line: 0, scope: !305, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1802)
!1815 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1814)
!1816 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1814)
!1817 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1814)
!1818 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1814)
!1819 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1814)
!1820 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1814)
!1821 = !DILocation(line: 0, scope: !313, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1814)
!1823 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1822)
!1824 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1822)
!1825 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1822)
!1826 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1822)
!1827 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1822)
!1828 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1822)
!1829 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1822)
!1830 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1822)
!1831 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1822)
!1832 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1814)
!1833 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1814)
!1834 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1814)
!1835 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1814)
!1836 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1814)
!1837 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1802)
!1838 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1802)
!1839 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1802)
!1840 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1802)
!1841 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1802)
!1842 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1802)
!1843 = !DILocation(line: 328, column: 1, scope: !1785)
!1844 = !DILocation(line: 327, column: 2, scope: !1785)
!1845 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !3, file: !2, line: 330, type: !108, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !107, variables: !1846)
!1846 = !{!1847, !1848, !1849, !1850}
!1847 = !DILocalVariable(name: "this", arg: 1, scope: !1845, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1848 = !DILocalVariable(name: "num", arg: 2, scope: !1845, file: !2, line: 330, type: !62)
!1849 = !DILocalVariable(name: "buf", scope: !1845, file: !2, line: 332, type: !1790)
!1850 = !DILocalVariable(name: "string", scope: !1845, file: !2, line: 333, type: !7)
!1851 = !DILocation(line: 0, scope: !1845)
!1852 = !DILocation(line: 330, column: 37, scope: !1845)
!1853 = !DILocation(line: 332, column: 2, scope: !1845)
!1854 = !DILocation(line: 332, column: 7, scope: !1845)
!1855 = !DILocation(line: 333, column: 17, scope: !1845)
!1856 = !DILocation(line: 333, column: 8, scope: !1845)
!1857 = !DILocation(line: 334, column: 24, scope: !1845)
!1858 = !DILocation(line: 0, scope: !1291, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 334, column: 9, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1845, file: !2, discriminator: 1)
!1861 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !1859)
!1862 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !1859)
!1863 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !1859)
!1864 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !1859)
!1865 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !1859)
!1866 = !DILocation(line: 266, column: 7, scope: !1304, inlinedAt: !1859)
!1867 = !DILocation(line: 266, column: 6, scope: !1291, inlinedAt: !1859)
!1868 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !1859)
!1869 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !1859)
!1870 = !DILocation(line: 0, scope: !305, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !1859)
!1872 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1871)
!1873 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1871)
!1874 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1871)
!1875 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1871)
!1876 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1871)
!1877 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1871)
!1878 = !DILocation(line: 0, scope: !313, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1871)
!1880 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1879)
!1881 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1879)
!1882 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1879)
!1883 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1879)
!1884 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1879)
!1885 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1879)
!1886 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1879)
!1887 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1879)
!1888 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1879)
!1889 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1871)
!1890 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1871)
!1891 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1871)
!1892 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1871)
!1893 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1871)
!1894 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !1859)
!1895 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !1859)
!1896 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !1859)
!1897 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !1859)
!1898 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !1859)
!1899 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !1859)
!1900 = !DILocation(line: 335, column: 1, scope: !1845)
!1901 = !DILocation(line: 334, column: 2, scope: !1845)
!1902 = distinct !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !3, file: !2, line: 337, type: !111, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !110, variables: !1903)
!1903 = !{!1904, !1905, !1906, !1907}
!1904 = !DILocalVariable(name: "this", arg: 1, scope: !1902, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!1905 = !DILocalVariable(name: "str", arg: 2, scope: !1902, file: !2, line: 337, type: !30)
!1906 = !DILocalVariable(name: "length", scope: !1902, file: !2, line: 340, type: !43)
!1907 = !DILocalVariable(name: "newlen", scope: !1902, file: !2, line: 342, type: !10)
!1908 = !DILocation(line: 0, scope: !1902)
!1909 = !DILocation(line: 337, column: 58, scope: !1902)
!1910 = !DILocation(line: 339, column: 7, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 339, column: 6)
!1912 = !DILocation(line: 339, column: 6, scope: !1902)
!1913 = !DILocation(line: 340, column: 24, scope: !1902)
!1914 = !DILocation(line: 1781, column: 47, scope: !521, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 340, column: 15, scope: !1902)
!1916 = !DILocation(line: 1783, column: 30, scope: !521, inlinedAt: !1915)
!1917 = !DILocation(line: 340, column: 6, scope: !1902)
!1918 = !DILocation(line: 341, column: 13, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 341, column: 6)
!1920 = !DILocation(line: 341, column: 6, scope: !1902)
!1921 = !DILocation(line: 342, column: 24, scope: !1902)
!1922 = !DILocation(line: 342, column: 28, scope: !1902)
!1923 = !DILocation(line: 342, column: 15, scope: !1902)
!1924 = !DILocation(line: 0, scope: !305, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 343, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 343, column: 6)
!1927 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !1925)
!1928 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !1925)
!1929 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !1925)
!1930 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !1925)
!1931 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !1925)
!1932 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !1925)
!1933 = !DILocation(line: 0, scope: !313, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !1925)
!1935 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !1934)
!1936 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !1934)
!1937 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !1934)
!1938 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !1934)
!1939 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !1934)
!1940 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !1934)
!1941 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !1934)
!1942 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !1934)
!1943 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !1934)
!1944 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !1925)
!1945 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !1925)
!1946 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !1925)
!1947 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !1925)
!1948 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !1925)
!1949 = !DILocation(line: 344, column: 20, scope: !1902)
!1950 = !DILocation(line: 344, column: 11, scope: !1902)
!1951 = !DILocation(line: 344, column: 18, scope: !1902)
!1952 = !DILocation(line: 344, column: 2, scope: !1902)
!1953 = !DILocation(line: 345, column: 6, scope: !1902)
!1954 = !DILocation(line: 346, column: 2, scope: !1902)
!1955 = !DILocation(line: 347, column: 1, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1902, file: !2, discriminator: 2)
!1957 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperRK6String", scope: !2, file: !2, line: 353, type: !1958, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !1997)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1960, !1995, !26}
!1960 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1961, size: 16)
!1961 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "StringSumHelper", file: !4, line: 213, size: 48, elements: !1962, identifier: "_ZTS15StringSumHelper")
!1962 = !{!1963, !1964, !1968, !1971, !1974, !1977, !1980, !1983, !1986, !1989, !1992}
!1963 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1961, baseType: !3, flags: DIFlagPublic)
!1964 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 216, type: !1965, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1967, !26}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!1968 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 217, type: !1969, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1967, !21}
!1971 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 218, type: !1972, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1967, !8}
!1974 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 219, type: !1975, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1967, !39}
!1977 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 220, type: !1978, isLocal: false, isDefinition: false, scopeLine: 220, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !1967, !43}
!1980 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 221, type: !1981, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1967, !10}
!1983 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 222, type: !1984, isLocal: false, isDefinition: false, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1967, !50}
!1986 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 223, type: !1987, isLocal: false, isDefinition: false, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1967, !54}
!1989 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 224, type: !1990, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1967, !58}
!1992 = !DISubprogram(name: "StringSumHelper", scope: !1961, file: !4, line: 225, type: !1993, isLocal: false, isDefinition: false, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1967, !62}
!1995 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1996, size: 16)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!1997 = !{!1998, !1999, !2000}
!1998 = !DILocalVariable(name: "lhs", arg: 1, scope: !1957, file: !2, line: 353, type: !1995)
!1999 = !DILocalVariable(name: "rhs", arg: 2, scope: !1957, file: !2, line: 353, type: !26)
!2000 = !DILocalVariable(name: "a", scope: !1957, file: !2, line: 355, type: !1960)
!2001 = !DILocation(line: 353, column: 54, scope: !1957)
!2002 = !DILocation(line: 353, column: 73, scope: !1957)
!2003 = !DILocation(line: 355, column: 19, scope: !1957)
!2004 = !DILocation(line: 356, column: 20, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1957, file: !2, line: 356, column: 6)
!2006 = !DILocation(line: 356, column: 32, scope: !2005)
!2007 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 356, column: 9, scope: !2005)
!2009 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !2008)
!2010 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !2008)
!2011 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !2008)
!2012 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !2008)
!2013 = !DILocation(line: 266, column: 7, scope: !1304, inlinedAt: !2008)
!2014 = !DILocation(line: 266, column: 6, scope: !1291, inlinedAt: !2008)
!2015 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 356, column: 40, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2005, file: !2, discriminator: 1)
!2018 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !2008)
!2019 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !2008)
!2020 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !2008)
!2022 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !2021)
!2023 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !2021)
!2024 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !2021)
!2025 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !2021)
!2026 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !2021)
!2027 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !2021)
!2029 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !2028)
!2030 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !2028)
!2031 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !2028)
!2032 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !2028)
!2033 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !2028)
!2034 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !2028)
!2035 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !2028)
!2036 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !2028)
!2037 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !2021)
!2038 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !2021)
!2039 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !2021)
!2040 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !2021)
!2041 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !2021)
!2042 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !2008)
!2043 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !2008)
!2044 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !2008)
!2045 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !2008)
!2046 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !2008)
!2047 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !2008)
!2048 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2016)
!2049 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2016)
!2050 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2016)
!2051 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2016)
!2052 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2016)
!2053 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2016)
!2054 = !DILocation(line: 356, column: 38, scope: !2017)
!2055 = !DILocation(line: 357, column: 2, scope: !1957)
!2056 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperPKc", scope: !2, file: !2, line: 360, type: !2057, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!1960, !1995, !21}
!2059 = !{!2060, !2061, !2062}
!2060 = !DILocalVariable(name: "lhs", arg: 1, scope: !2056, file: !2, line: 360, type: !1995)
!2061 = !DILocalVariable(name: "cstr", arg: 2, scope: !2056, file: !2, line: 360, type: !21)
!2062 = !DILocalVariable(name: "a", scope: !2056, file: !2, line: 362, type: !1960)
!2063 = !DILocation(line: 360, column: 54, scope: !2056)
!2064 = !DILocation(line: 360, column: 71, scope: !2056)
!2065 = !DILocation(line: 362, column: 19, scope: !2056)
!2066 = !DILocation(line: 363, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2056, file: !2, line: 363, column: 6)
!2068 = !DILocation(line: 363, column: 12, scope: !2067)
!2069 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 363, column: 48, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2067, file: !2, discriminator: 2)
!2072 = !DILocation(line: 363, column: 31, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2067, file: !2, discriminator: 1)
!2074 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 363, column: 18, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2067, file: !2, discriminator: 3)
!2077 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !2075)
!2078 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !2075)
!2079 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !2075)
!2080 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !2075)
!2081 = !DILocation(line: 267, column: 13, scope: !1307, inlinedAt: !2075)
!2082 = !DILocation(line: 267, column: 6, scope: !1291, inlinedAt: !2075)
!2083 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !2075)
!2085 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !2084)
!2086 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !2084)
!2087 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !2084)
!2088 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !2084)
!2089 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !2084)
!2090 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !2084)
!2092 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !2091)
!2093 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !2091)
!2094 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !2091)
!2095 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !2091)
!2096 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !2091)
!2097 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !2091)
!2098 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !2091)
!2099 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !2091)
!2100 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !2084)
!2101 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !2084)
!2102 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !2084)
!2103 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !2084)
!2104 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !2084)
!2105 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !2075)
!2106 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !2075)
!2107 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !2075)
!2108 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !2075)
!2109 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !2075)
!2110 = !DILocation(line: 271, column: 2, scope: !1291, inlinedAt: !2075)
!2111 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2070)
!2112 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2070)
!2113 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2070)
!2114 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2070)
!2115 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2070)
!2116 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2070)
!2117 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2070)
!2118 = !DILocation(line: 363, column: 46, scope: !2071)
!2119 = !DILocation(line: 364, column: 2, scope: !2056)
!2120 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperc", scope: !2, file: !2, line: 367, type: !2121, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!1960, !1995, !8}
!2123 = !{!2124, !2125, !2126}
!2124 = !DILocalVariable(name: "lhs", arg: 1, scope: !2120, file: !2, line: 367, type: !1995)
!2125 = !DILocalVariable(name: "c", arg: 2, scope: !2120, file: !2, line: 367, type: !8)
!2126 = !DILocalVariable(name: "a", scope: !2120, file: !2, line: 369, type: !1960)
!2127 = !DILocation(line: 282, column: 7, scope: !1433, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 370, column: 9, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2120, file: !2, line: 370, column: 6)
!2130 = !DILocation(line: 367, column: 54, scope: !2120)
!2131 = !DILocation(line: 367, column: 64, scope: !2120)
!2132 = !DILocation(line: 369, column: 19, scope: !2120)
!2133 = !DILocation(line: 280, column: 35, scope: !1433, inlinedAt: !2128)
!2134 = !DILocation(line: 282, column: 2, scope: !1433, inlinedAt: !2128)
!2135 = !DILocation(line: 283, column: 9, scope: !1433, inlinedAt: !2128)
!2136 = !DILocation(line: 284, column: 2, scope: !1433, inlinedAt: !2128)
!2137 = !DILocation(line: 284, column: 9, scope: !1433, inlinedAt: !2128)
!2138 = !DILocation(line: 263, column: 42, scope: !1291, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 285, column: 9, scope: !1433, inlinedAt: !2128)
!2140 = !DILocation(line: 263, column: 61, scope: !1291, inlinedAt: !2139)
!2141 = !DILocation(line: 265, column: 24, scope: !1291, inlinedAt: !2139)
!2142 = !DILocation(line: 265, column: 28, scope: !1291, inlinedAt: !2139)
!2143 = !DILocation(line: 265, column: 15, scope: !1291, inlinedAt: !2139)
!2144 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 268, column: 7, scope: !1311, inlinedAt: !2139)
!2146 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !2145)
!2147 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !2145)
!2148 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !2145)
!2149 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !2145)
!2150 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !2145)
!2151 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !2145)
!2153 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !2152)
!2154 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !2152)
!2155 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !2152)
!2156 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !2152)
!2157 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !2152)
!2158 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !2152)
!2159 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !2152)
!2160 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !2152)
!2161 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !2145)
!2162 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !2145)
!2163 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !2145)
!2164 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !2145)
!2165 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !2145)
!2166 = !DILocation(line: 269, column: 18, scope: !1291, inlinedAt: !2139)
!2167 = !DILocation(line: 269, column: 9, scope: !1291, inlinedAt: !2139)
!2168 = !DILocation(line: 269, column: 16, scope: !1291, inlinedAt: !2139)
!2169 = !DILocation(line: 269, column: 2, scope: !1291, inlinedAt: !2139)
!2170 = !DILocation(line: 270, column: 6, scope: !1291, inlinedAt: !2139)
!2171 = !DILocation(line: 286, column: 1, scope: !1433, inlinedAt: !2128)
!2172 = !DILocation(line: 370, column: 6, scope: !2120)
!2173 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 370, column: 22, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2129, file: !2, discriminator: 1)
!2176 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2174)
!2177 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2174)
!2178 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2174)
!2179 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2174)
!2180 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2174)
!2181 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2174)
!2182 = !DILocation(line: 370, column: 20, scope: !2175)
!2183 = !DILocation(line: 371, column: 2, scope: !2120)
!2184 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperh", scope: !2, file: !2, line: 374, type: !2185, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!1960, !1995, !39}
!2187 = !{!2188, !2189, !2190}
!2188 = !DILocalVariable(name: "lhs", arg: 1, scope: !2184, file: !2, line: 374, type: !1995)
!2189 = !DILocalVariable(name: "num", arg: 2, scope: !2184, file: !2, line: 374, type: !39)
!2190 = !DILocalVariable(name: "a", scope: !2184, file: !2, line: 376, type: !1960)
!2191 = !DILocation(line: 374, column: 54, scope: !2184)
!2192 = !DILocation(line: 374, column: 73, scope: !2184)
!2193 = !DILocation(line: 376, column: 19, scope: !2184)
!2194 = !DILocation(line: 377, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2184, file: !2, line: 377, column: 6)
!2196 = !DILocation(line: 377, column: 9, scope: !2195)
!2197 = !DILocation(line: 377, column: 6, scope: !2184)
!2198 = !DILocation(line: 0, scope: !340, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 377, column: 24, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2195, file: !2, discriminator: 1)
!2201 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2199)
!2202 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2199)
!2203 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2199)
!2204 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2199)
!2205 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2199)
!2206 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2199)
!2207 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2199)
!2208 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2199)
!2209 = !DILocation(line: 377, column: 22, scope: !2200)
!2210 = !DILocation(line: 378, column: 2, scope: !2184)
!2211 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperi", scope: !2, file: !2, line: 381, type: !2212, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!1960, !1995, !43}
!2214 = !{!2215, !2216, !2217}
!2215 = !DILocalVariable(name: "lhs", arg: 1, scope: !2211, file: !2, line: 381, type: !1995)
!2216 = !DILocalVariable(name: "num", arg: 2, scope: !2211, file: !2, line: 381, type: !43)
!2217 = !DILocalVariable(name: "a", scope: !2211, file: !2, line: 383, type: !1960)
!2218 = !DILocation(line: 381, column: 54, scope: !2211)
!2219 = !DILocation(line: 381, column: 63, scope: !2211)
!2220 = !DILocation(line: 383, column: 19, scope: !2211)
!2221 = !DILocation(line: 384, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2211, file: !2, line: 384, column: 6)
!2223 = !DILocation(line: 384, column: 9, scope: !2222)
!2224 = !DILocation(line: 384, column: 6, scope: !2211)
!2225 = !DILocation(line: 0, scope: !340, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 384, column: 24, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2222, file: !2, discriminator: 1)
!2228 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2226)
!2229 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2226)
!2230 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2226)
!2231 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2226)
!2232 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2226)
!2233 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2226)
!2234 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2226)
!2235 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2226)
!2236 = !DILocation(line: 384, column: 22, scope: !2227)
!2237 = !DILocation(line: 385, column: 2, scope: !2211)
!2238 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperj", scope: !2, file: !2, line: 388, type: !2239, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!1960, !1995, !10}
!2241 = !{!2242, !2243, !2244}
!2242 = !DILocalVariable(name: "lhs", arg: 1, scope: !2238, file: !2, line: 388, type: !1995)
!2243 = !DILocalVariable(name: "num", arg: 2, scope: !2238, file: !2, line: 388, type: !10)
!2244 = !DILocalVariable(name: "a", scope: !2238, file: !2, line: 390, type: !1960)
!2245 = !DILocation(line: 388, column: 54, scope: !2238)
!2246 = !DILocation(line: 388, column: 72, scope: !2238)
!2247 = !DILocation(line: 390, column: 19, scope: !2238)
!2248 = !DILocation(line: 391, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 391, column: 6)
!2250 = !DILocation(line: 391, column: 9, scope: !2249)
!2251 = !DILocation(line: 391, column: 6, scope: !2238)
!2252 = !DILocation(line: 0, scope: !340, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 391, column: 24, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2249, file: !2, discriminator: 1)
!2255 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2253)
!2256 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2253)
!2257 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2253)
!2258 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2253)
!2259 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2253)
!2260 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2253)
!2261 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2253)
!2262 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2253)
!2263 = !DILocation(line: 391, column: 22, scope: !2254)
!2264 = !DILocation(line: 392, column: 2, scope: !2238)
!2265 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperl", scope: !2, file: !2, line: 395, type: !2266, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!1960, !1995, !50}
!2268 = !{!2269, !2270, !2271}
!2269 = !DILocalVariable(name: "lhs", arg: 1, scope: !2265, file: !2, line: 395, type: !1995)
!2270 = !DILocalVariable(name: "num", arg: 2, scope: !2265, file: !2, line: 395, type: !50)
!2271 = !DILocalVariable(name: "a", scope: !2265, file: !2, line: 397, type: !1960)
!2272 = !DILocation(line: 395, column: 54, scope: !2265)
!2273 = !DILocation(line: 395, column: 64, scope: !2265)
!2274 = !DILocation(line: 397, column: 19, scope: !2265)
!2275 = !DILocation(line: 398, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 398, column: 6)
!2277 = !DILocation(line: 398, column: 9, scope: !2276)
!2278 = !DILocation(line: 398, column: 6, scope: !2265)
!2279 = !DILocation(line: 0, scope: !340, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 398, column: 24, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2276, file: !2, discriminator: 1)
!2282 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2280)
!2283 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2280)
!2284 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2280)
!2285 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2280)
!2286 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2280)
!2287 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2280)
!2288 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2280)
!2289 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2280)
!2290 = !DILocation(line: 398, column: 22, scope: !2281)
!2291 = !DILocation(line: 399, column: 2, scope: !2265)
!2292 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperm", scope: !2, file: !2, line: 402, type: !2293, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!1960, !1995, !54}
!2295 = !{!2296, !2297, !2298}
!2296 = !DILocalVariable(name: "lhs", arg: 1, scope: !2292, file: !2, line: 402, type: !1995)
!2297 = !DILocalVariable(name: "num", arg: 2, scope: !2292, file: !2, line: 402, type: !54)
!2298 = !DILocalVariable(name: "a", scope: !2292, file: !2, line: 404, type: !1960)
!2299 = !DILocation(line: 402, column: 54, scope: !2292)
!2300 = !DILocation(line: 402, column: 73, scope: !2292)
!2301 = !DILocation(line: 404, column: 19, scope: !2292)
!2302 = !DILocation(line: 405, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 405, column: 6)
!2304 = !DILocation(line: 405, column: 9, scope: !2303)
!2305 = !DILocation(line: 405, column: 6, scope: !2292)
!2306 = !DILocation(line: 0, scope: !340, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 405, column: 24, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2303, file: !2, discriminator: 1)
!2309 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2307)
!2310 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2307)
!2311 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2307)
!2312 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2307)
!2313 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2307)
!2314 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2307)
!2315 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2307)
!2316 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2307)
!2317 = !DILocation(line: 405, column: 22, scope: !2308)
!2318 = !DILocation(line: 406, column: 2, scope: !2292)
!2319 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperf", scope: !2, file: !2, line: 409, type: !2320, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!1960, !1995, !58}
!2322 = !{!2323, !2324, !2325}
!2323 = !DILocalVariable(name: "lhs", arg: 1, scope: !2319, file: !2, line: 409, type: !1995)
!2324 = !DILocalVariable(name: "num", arg: 2, scope: !2319, file: !2, line: 409, type: !58)
!2325 = !DILocalVariable(name: "a", scope: !2319, file: !2, line: 411, type: !1960)
!2326 = !DILocation(line: 409, column: 54, scope: !2319)
!2327 = !DILocation(line: 409, column: 65, scope: !2319)
!2328 = !DILocation(line: 411, column: 19, scope: !2319)
!2329 = !DILocation(line: 412, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 412, column: 6)
!2331 = !DILocation(line: 412, column: 9, scope: !2330)
!2332 = !DILocation(line: 412, column: 6, scope: !2319)
!2333 = !DILocation(line: 0, scope: !340, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 412, column: 24, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2330, file: !2, discriminator: 1)
!2336 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2334)
!2337 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2334)
!2338 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2334)
!2339 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2334)
!2340 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2334)
!2341 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2334)
!2342 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2334)
!2343 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2334)
!2344 = !DILocation(line: 412, column: 22, scope: !2335)
!2345 = !DILocation(line: 413, column: 2, scope: !2319)
!2346 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperd", scope: !2, file: !2, line: 416, type: !2347, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!1960, !1995, !62}
!2349 = !{!2350, !2351, !2352}
!2350 = !DILocalVariable(name: "lhs", arg: 1, scope: !2346, file: !2, line: 416, type: !1995)
!2351 = !DILocalVariable(name: "num", arg: 2, scope: !2346, file: !2, line: 416, type: !62)
!2352 = !DILocalVariable(name: "a", scope: !2346, file: !2, line: 418, type: !1960)
!2353 = !DILocation(line: 416, column: 54, scope: !2346)
!2354 = !DILocation(line: 416, column: 66, scope: !2346)
!2355 = !DILocation(line: 418, column: 19, scope: !2346)
!2356 = !DILocation(line: 419, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2346, file: !2, line: 419, column: 6)
!2358 = !DILocation(line: 419, column: 9, scope: !2357)
!2359 = !DILocation(line: 419, column: 6, scope: !2346)
!2360 = !DILocation(line: 0, scope: !340, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 419, column: 24, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2357, file: !2, discriminator: 1)
!2363 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2361)
!2364 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2361)
!2365 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2361)
!2366 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2361)
!2367 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2361)
!2368 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2361)
!2369 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2361)
!2370 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2361)
!2371 = !DILocation(line: 419, column: 22, scope: !2362)
!2372 = !DILocation(line: 420, column: 2, scope: !2346)
!2373 = distinct !DISubprogram(name: "operator+", linkageName: "_ZplRK15StringSumHelperPK19__FlashStringHelper", scope: !2, file: !2, line: 423, type: !2374, isLocal: false, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: true, unit: !251, variables: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!1960, !1995, !30}
!2376 = !{!2377, !2378, !2379}
!2377 = !DILocalVariable(name: "lhs", arg: 1, scope: !2373, file: !2, line: 423, type: !1995)
!2378 = !DILocalVariable(name: "rhs", arg: 2, scope: !2373, file: !2, line: 423, type: !30)
!2379 = !DILocalVariable(name: "a", scope: !2373, file: !2, line: 425, type: !1960)
!2380 = !DILocation(line: 423, column: 54, scope: !2373)
!2381 = !DILocation(line: 423, column: 86, scope: !2373)
!2382 = !DILocation(line: 425, column: 19, scope: !2373)
!2383 = !DILocation(line: 337, column: 58, scope: !1902, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 426, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2373, file: !2, line: 426, column: 6)
!2386 = !DILocation(line: 339, column: 7, scope: !1911, inlinedAt: !2384)
!2387 = !DILocation(line: 339, column: 6, scope: !1902, inlinedAt: !2384)
!2388 = !DILocation(line: 140, column: 6, scope: !346, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 426, column: 24, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2385, file: !2, discriminator: 1)
!2391 = !DILocation(line: 340, column: 24, scope: !1902, inlinedAt: !2384)
!2392 = !DILocation(line: 1781, column: 47, scope: !521, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 340, column: 15, scope: !1902, inlinedAt: !2384)
!2394 = !DILocation(line: 1783, column: 30, scope: !521, inlinedAt: !2393)
!2395 = !DILocation(line: 340, column: 6, scope: !1902, inlinedAt: !2384)
!2396 = !DILocation(line: 341, column: 13, scope: !1919, inlinedAt: !2384)
!2397 = !DILocation(line: 341, column: 6, scope: !1902, inlinedAt: !2384)
!2398 = !DILocation(line: 342, column: 24, scope: !1902, inlinedAt: !2384)
!2399 = !DILocation(line: 342, column: 28, scope: !1902, inlinedAt: !2384)
!2400 = !DILocation(line: 342, column: 15, scope: !1902, inlinedAt: !2384)
!2401 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 343, column: 7, scope: !1926, inlinedAt: !2384)
!2403 = !DILocation(line: 147, column: 6, scope: !365, inlinedAt: !2402)
!2404 = !DILocation(line: 147, column: 13, scope: !365, inlinedAt: !2402)
!2405 = !DILocation(line: 147, column: 16, scope: !368, inlinedAt: !2402)
!2406 = !DILocation(line: 147, column: 25, scope: !368, inlinedAt: !2402)
!2407 = !DILocation(line: 147, column: 6, scope: !371, inlinedAt: !2402)
!2408 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !2402)
!2410 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !2409)
!2411 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !2409)
!2412 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !2409)
!2413 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !2409)
!2414 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !2409)
!2415 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !2409)
!2416 = !DILocation(line: 160, column: 3, scope: !328, inlinedAt: !2409)
!2417 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !2409)
!2418 = !DILocation(line: 149, column: 7, scope: !331, inlinedAt: !2402)
!2419 = !DILocation(line: 149, column: 11, scope: !331, inlinedAt: !2402)
!2420 = !DILocation(line: 149, column: 7, scope: !332, inlinedAt: !2402)
!2421 = !DILocation(line: 149, column: 27, scope: !336, inlinedAt: !2402)
!2422 = !DILocation(line: 149, column: 17, scope: !336, inlinedAt: !2402)
!2423 = !DILocation(line: 344, column: 20, scope: !1902, inlinedAt: !2384)
!2424 = !DILocation(line: 344, column: 11, scope: !1902, inlinedAt: !2384)
!2425 = !DILocation(line: 344, column: 18, scope: !1902, inlinedAt: !2384)
!2426 = !DILocation(line: 344, column: 2, scope: !1902, inlinedAt: !2384)
!2427 = !DILocation(line: 345, column: 6, scope: !1902, inlinedAt: !2384)
!2428 = !DILocation(line: 346, column: 2, scope: !1902, inlinedAt: !2384)
!2429 = !DILocation(line: 140, column: 6, scope: !340, inlinedAt: !2389)
!2430 = !DILocation(line: 140, column: 14, scope: !349, inlinedAt: !2389)
!2431 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !2389)
!2432 = !DILocation(line: 142, column: 13, scope: !340, inlinedAt: !2389)
!2433 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !2389)
!2434 = !DILocation(line: 142, column: 2, scope: !340, inlinedAt: !2389)
!2435 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !2389)
!2436 = !DILocation(line: 426, column: 22, scope: !2390)
!2437 = !DILocation(line: 427, column: 2, scope: !2373)
!2438 = distinct !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !3, file: !2, line: 434, type: !146, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !145, variables: !2439)
!2439 = !{!2440, !2442}
!2440 = !DILocalVariable(name: "this", arg: 1, scope: !2438, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 16)
!2442 = !DILocalVariable(name: "s", arg: 2, scope: !2438, file: !2, line: 434, type: !26)
!2443 = !DILocation(line: 0, scope: !2438)
!2444 = !DILocation(line: 434, column: 37, scope: !2438)
!2445 = !DILocation(line: 436, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 436, column: 6)
!2447 = !DILocation(line: 436, column: 20, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2446, file: !2, discriminator: 1)
!2449 = !DILocation(line: 436, column: 18, scope: !2448)
!2450 = !DILocation(line: 436, column: 14, scope: !2446)
!2451 = !DILocation(line: 437, column: 16, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !2, line: 437, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2446, file: !2, line: 436, column: 28)
!2454 = !DILocation(line: 437, column: 21, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2452, file: !2, discriminator: 1)
!2456 = !DILocation(line: 437, column: 25, scope: !2455)
!2457 = !DILocation(line: 437, column: 7, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2453, file: !2, discriminator: 1)
!2459 = !DILocation(line: 437, column: 41, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2452, file: !2, discriminator: 2)
!2461 = !DILocation(line: 437, column: 39, scope: !2460)
!2462 = !DILocation(line: 437, column: 30, scope: !2460)
!2463 = !DILocation(line: 438, column: 14, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2453, file: !2, line: 438, column: 7)
!2465 = !DILocation(line: 438, column: 17, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2464, file: !2, discriminator: 1)
!2467 = !DILocation(line: 438, column: 21, scope: !2466)
!2468 = !DILocation(line: 438, column: 7, scope: !2458)
!2469 = !DILocation(line: 438, column: 33, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2464, file: !2, discriminator: 2)
!2471 = !DILocation(line: 438, column: 26, scope: !2470)
!2472 = !DILocation(line: 441, column: 9, scope: !2438)
!2473 = !DILocation(line: 441, column: 2, scope: !2438)
!2474 = !DILocation(line: 442, column: 1, scope: !2438)
!2475 = distinct !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !3, file: !2, line: 444, type: !149, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !148, variables: !2476)
!2476 = !{!2477, !2478}
!2477 = !DILocalVariable(name: "this", arg: 1, scope: !2475, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2478 = !DILocalVariable(name: "s2", arg: 2, scope: !2475, file: !2, line: 444, type: !26)
!2479 = !DILocation(line: 0, scope: !2475)
!2480 = !DILocation(line: 444, column: 44, scope: !2475)
!2481 = !DILocation(line: 446, column: 10, scope: !2475)
!2482 = !DILocation(line: 446, column: 20, scope: !2475)
!2483 = !DILocation(line: 446, column: 14, scope: !2475)
!2484 = !DILocation(line: 446, column: 24, scope: !2475)
!2485 = !DILocation(line: 0, scope: !2438, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 446, column: 27, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2475, file: !2, discriminator: 1)
!2488 = !DILocation(line: 434, column: 37, scope: !2438, inlinedAt: !2486)
!2489 = !DILocation(line: 436, column: 7, scope: !2446, inlinedAt: !2486)
!2490 = !DILocation(line: 436, column: 20, scope: !2448, inlinedAt: !2486)
!2491 = !DILocation(line: 436, column: 18, scope: !2448, inlinedAt: !2486)
!2492 = !DILocation(line: 436, column: 14, scope: !2446, inlinedAt: !2486)
!2493 = !DILocation(line: 437, column: 16, scope: !2452, inlinedAt: !2486)
!2494 = !DILocation(line: 437, column: 25, scope: !2455, inlinedAt: !2486)
!2495 = !DILocation(line: 437, column: 41, scope: !2460, inlinedAt: !2486)
!2496 = !DILocation(line: 437, column: 39, scope: !2460, inlinedAt: !2486)
!2497 = !DILocation(line: 437, column: 30, scope: !2460, inlinedAt: !2486)
!2498 = !DILocation(line: 438, column: 14, scope: !2464, inlinedAt: !2486)
!2499 = !DILocation(line: 438, column: 33, scope: !2470, inlinedAt: !2486)
!2500 = !DILocation(line: 438, column: 26, scope: !2470, inlinedAt: !2486)
!2501 = !DILocation(line: 441, column: 9, scope: !2438, inlinedAt: !2486)
!2502 = !DILocation(line: 441, column: 2, scope: !2438, inlinedAt: !2486)
!2503 = !DILocation(line: 446, column: 41, scope: !2487)
!2504 = !DILocation(line: 446, column: 9, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2475, file: !2, discriminator: 2)
!2506 = !DILocation(line: 446, column: 2, scope: !2505)
!2507 = distinct !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !3, file: !2, line: 449, type: !152, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !151, variables: !2508)
!2508 = !{!2509, !2510}
!2509 = !DILocalVariable(name: "this", arg: 1, scope: !2507, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2510 = !DILocalVariable(name: "cstr", arg: 2, scope: !2507, file: !2, line: 449, type: !21)
!2511 = !DILocation(line: 0, scope: !2507)
!2512 = !DILocation(line: 449, column: 42, scope: !2507)
!2513 = !DILocation(line: 451, column: 6, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 451, column: 6)
!2515 = !DILocation(line: 451, column: 10, scope: !2514)
!2516 = !DILocation(line: 451, column: 6, scope: !2507)
!2517 = !DILocation(line: 451, column: 37, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2514, file: !2, discriminator: 1)
!2519 = !DILocation(line: 451, column: 40, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2514, file: !2, discriminator: 2)
!2521 = !DILocation(line: 451, column: 46, scope: !2520)
!2522 = !DILocation(line: 451, column: 37, scope: !2520)
!2523 = !DILocation(line: 452, column: 6, scope: !2507)
!2524 = !DILocation(line: 452, column: 27, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !2526, file: !2, discriminator: 1)
!2526 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 452, column: 6)
!2527 = !DILocation(line: 452, column: 37, scope: !2525)
!2528 = !DILocation(line: 452, column: 20, scope: !2525)
!2529 = !DILocation(line: 453, column: 9, scope: !2507)
!2530 = !DILocation(line: 453, column: 30, scope: !2507)
!2531 = !DILocation(line: 453, column: 2, scope: !2507)
!2532 = !DILocation(line: 454, column: 1, scope: !2507)
!2533 = distinct !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !3, file: !2, line: 456, type: !149, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !158, variables: !2534)
!2534 = !{!2535, !2536}
!2535 = !DILocalVariable(name: "this", arg: 1, scope: !2533, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2536 = !DILocalVariable(name: "rhs", arg: 2, scope: !2533, file: !2, line: 456, type: !26)
!2537 = !DILocation(line: 0, scope: !2533)
!2538 = !DILocation(line: 456, column: 47, scope: !2533)
!2539 = !DILocation(line: 0, scope: !2438, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 458, column: 9, scope: !2533)
!2541 = !DILocation(line: 434, column: 37, scope: !2438, inlinedAt: !2540)
!2542 = !DILocation(line: 436, column: 7, scope: !2446, inlinedAt: !2540)
!2543 = !DILocation(line: 436, column: 20, scope: !2448, inlinedAt: !2540)
!2544 = !DILocation(line: 436, column: 18, scope: !2448, inlinedAt: !2540)
!2545 = !DILocation(line: 436, column: 14, scope: !2446, inlinedAt: !2540)
!2546 = !DILocation(line: 437, column: 16, scope: !2452, inlinedAt: !2540)
!2547 = !DILocation(line: 437, column: 21, scope: !2455, inlinedAt: !2540)
!2548 = !DILocation(line: 437, column: 25, scope: !2455, inlinedAt: !2540)
!2549 = !DILocation(line: 437, column: 7, scope: !2458, inlinedAt: !2540)
!2550 = !DILocation(line: 437, column: 41, scope: !2460, inlinedAt: !2540)
!2551 = !DILocation(line: 437, column: 39, scope: !2460, inlinedAt: !2540)
!2552 = !DILocation(line: 437, column: 30, scope: !2460, inlinedAt: !2540)
!2553 = !DILocation(line: 438, column: 14, scope: !2464, inlinedAt: !2540)
!2554 = !DILocation(line: 441, column: 9, scope: !2438, inlinedAt: !2540)
!2555 = !DILocation(line: 441, column: 2, scope: !2438, inlinedAt: !2540)
!2556 = distinct !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !3, file: !2, line: 461, type: !149, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !159, variables: !2557)
!2557 = !{!2558, !2559}
!2558 = !DILocalVariable(name: "this", arg: 1, scope: !2556, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2559 = !DILocalVariable(name: "rhs", arg: 2, scope: !2556, file: !2, line: 461, type: !26)
!2560 = !DILocation(line: 0, scope: !2556)
!2561 = !DILocation(line: 461, column: 47, scope: !2556)
!2562 = !DILocation(line: 0, scope: !2438, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 463, column: 9, scope: !2556)
!2564 = !DILocation(line: 434, column: 37, scope: !2438, inlinedAt: !2563)
!2565 = !DILocation(line: 436, column: 7, scope: !2446, inlinedAt: !2563)
!2566 = !DILocation(line: 436, column: 20, scope: !2448, inlinedAt: !2563)
!2567 = !DILocation(line: 436, column: 18, scope: !2448, inlinedAt: !2563)
!2568 = !DILocation(line: 436, column: 14, scope: !2446, inlinedAt: !2563)
!2569 = !DILocation(line: 437, column: 16, scope: !2452, inlinedAt: !2563)
!2570 = !DILocation(line: 437, column: 21, scope: !2455, inlinedAt: !2563)
!2571 = !DILocation(line: 437, column: 25, scope: !2455, inlinedAt: !2563)
!2572 = !DILocation(line: 437, column: 7, scope: !2458, inlinedAt: !2563)
!2573 = !DILocation(line: 437, column: 41, scope: !2460, inlinedAt: !2563)
!2574 = !DILocation(line: 437, column: 39, scope: !2460, inlinedAt: !2563)
!2575 = !DILocation(line: 437, column: 30, scope: !2460, inlinedAt: !2563)
!2576 = !DILocation(line: 438, column: 14, scope: !2464, inlinedAt: !2563)
!2577 = !DILocation(line: 438, column: 17, scope: !2466, inlinedAt: !2563)
!2578 = !DILocation(line: 438, column: 21, scope: !2466, inlinedAt: !2563)
!2579 = !DILocation(line: 438, column: 7, scope: !2458, inlinedAt: !2563)
!2580 = !DILocation(line: 438, column: 33, scope: !2470, inlinedAt: !2563)
!2581 = !DILocation(line: 438, column: 26, scope: !2470, inlinedAt: !2563)
!2582 = !DILocation(line: 441, column: 9, scope: !2438, inlinedAt: !2563)
!2583 = !DILocation(line: 441, column: 2, scope: !2438, inlinedAt: !2563)
!2584 = !DILocation(line: 463, column: 24, scope: !2556)
!2585 = !DILocation(line: 463, column: 9, scope: !2556)
!2586 = !DILocation(line: 463, column: 2, scope: !2556)
!2587 = distinct !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !3, file: !2, line: 466, type: !149, isLocal: false, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !160, variables: !2588)
!2588 = !{!2589, !2590}
!2589 = !DILocalVariable(name: "this", arg: 1, scope: !2587, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2590 = !DILocalVariable(name: "rhs", arg: 2, scope: !2587, file: !2, line: 466, type: !26)
!2591 = !DILocation(line: 0, scope: !2587)
!2592 = !DILocation(line: 466, column: 48, scope: !2587)
!2593 = !DILocation(line: 0, scope: !2438, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 468, column: 9, scope: !2587)
!2595 = !DILocation(line: 434, column: 37, scope: !2438, inlinedAt: !2594)
!2596 = !DILocation(line: 436, column: 7, scope: !2446, inlinedAt: !2594)
!2597 = !DILocation(line: 436, column: 20, scope: !2448, inlinedAt: !2594)
!2598 = !DILocation(line: 436, column: 18, scope: !2448, inlinedAt: !2594)
!2599 = !DILocation(line: 436, column: 14, scope: !2446, inlinedAt: !2594)
!2600 = !DILocation(line: 437, column: 16, scope: !2452, inlinedAt: !2594)
!2601 = !DILocation(line: 437, column: 21, scope: !2455, inlinedAt: !2594)
!2602 = !DILocation(line: 437, column: 25, scope: !2455, inlinedAt: !2594)
!2603 = !DILocation(line: 437, column: 7, scope: !2458, inlinedAt: !2594)
!2604 = !DILocation(line: 437, column: 41, scope: !2460, inlinedAt: !2594)
!2605 = !DILocation(line: 437, column: 39, scope: !2460, inlinedAt: !2594)
!2606 = !DILocation(line: 437, column: 30, scope: !2460, inlinedAt: !2594)
!2607 = !DILocation(line: 438, column: 14, scope: !2464, inlinedAt: !2594)
!2608 = !DILocation(line: 438, column: 17, scope: !2466, inlinedAt: !2594)
!2609 = !DILocation(line: 438, column: 21, scope: !2466, inlinedAt: !2594)
!2610 = !DILocation(line: 438, column: 7, scope: !2458, inlinedAt: !2594)
!2611 = !DILocation(line: 438, column: 33, scope: !2470, inlinedAt: !2594)
!2612 = !DILocation(line: 438, column: 26, scope: !2470, inlinedAt: !2594)
!2613 = !DILocation(line: 441, column: 9, scope: !2438, inlinedAt: !2594)
!2614 = !DILocation(line: 441, column: 2, scope: !2438, inlinedAt: !2594)
!2615 = !DILocation(line: 468, column: 24, scope: !2587)
!2616 = !DILocation(line: 468, column: 9, scope: !2587)
!2617 = !DILocation(line: 468, column: 2, scope: !2587)
!2618 = distinct !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !3, file: !2, line: 471, type: !149, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !161, variables: !2619)
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "this", arg: 1, scope: !2618, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2621 = !DILocalVariable(name: "rhs", arg: 2, scope: !2618, file: !2, line: 471, type: !26)
!2622 = !DILocation(line: 0, scope: !2618)
!2623 = !DILocation(line: 471, column: 48, scope: !2618)
!2624 = !DILocation(line: 0, scope: !2438, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 473, column: 9, scope: !2618)
!2626 = !DILocation(line: 434, column: 37, scope: !2438, inlinedAt: !2625)
!2627 = !DILocation(line: 436, column: 7, scope: !2446, inlinedAt: !2625)
!2628 = !DILocation(line: 436, column: 20, scope: !2448, inlinedAt: !2625)
!2629 = !DILocation(line: 436, column: 18, scope: !2448, inlinedAt: !2625)
!2630 = !DILocation(line: 436, column: 14, scope: !2446, inlinedAt: !2625)
!2631 = !DILocation(line: 437, column: 16, scope: !2452, inlinedAt: !2625)
!2632 = !DILocation(line: 437, column: 21, scope: !2455, inlinedAt: !2625)
!2633 = !DILocation(line: 437, column: 25, scope: !2455, inlinedAt: !2625)
!2634 = !DILocation(line: 437, column: 7, scope: !2458, inlinedAt: !2625)
!2635 = !DILocation(line: 437, column: 41, scope: !2460, inlinedAt: !2625)
!2636 = !DILocation(line: 437, column: 39, scope: !2460, inlinedAt: !2625)
!2637 = !DILocation(line: 437, column: 30, scope: !2460, inlinedAt: !2625)
!2638 = !DILocation(line: 441, column: 9, scope: !2438, inlinedAt: !2625)
!2639 = !DILocation(line: 441, column: 2, scope: !2438, inlinedAt: !2625)
!2640 = !DILocation(line: 473, column: 9, scope: !2618)
!2641 = !DILocation(line: 473, column: 2, scope: !2618)
!2642 = distinct !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !3, file: !2, line: 476, type: !149, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !162, variables: !2643)
!2643 = !{!2644, !2645, !2646, !2647}
!2644 = !DILocalVariable(name: "this", arg: 1, scope: !2642, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2645 = !DILocalVariable(name: "s2", arg: 2, scope: !2642, file: !2, line: 476, type: !26)
!2646 = !DILocalVariable(name: "p1", scope: !2642, file: !2, line: 481, type: !21)
!2647 = !DILocalVariable(name: "p2", scope: !2642, file: !2, line: 482, type: !21)
!2648 = !DILocation(line: 0, scope: !2642)
!2649 = !DILocation(line: 476, column: 55, scope: !2642)
!2650 = !DILocation(line: 478, column: 11, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2642, file: !2, line: 478, column: 6)
!2652 = !DILocation(line: 478, column: 6, scope: !2642)
!2653 = !DILocation(line: 479, column: 6, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2642, file: !2, line: 479, column: 6)
!2655 = !DILocation(line: 479, column: 16, scope: !2654)
!2656 = !DILocation(line: 479, column: 10, scope: !2654)
!2657 = !DILocation(line: 479, column: 6, scope: !2642)
!2658 = !DILocation(line: 480, column: 10, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2642, file: !2, line: 480, column: 6)
!2660 = !DILocation(line: 480, column: 6, scope: !2642)
!2661 = !DILocation(line: 481, column: 19, scope: !2642)
!2662 = !DILocation(line: 481, column: 14, scope: !2642)
!2663 = !DILocation(line: 482, column: 22, scope: !2642)
!2664 = !DILocation(line: 482, column: 14, scope: !2642)
!2665 = !DILocation(line: 483, column: 2, scope: !2642)
!2666 = !DILocation(line: 483, column: 9, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2642, file: !2, discriminator: 1)
!2668 = !DILocation(line: 483, column: 2, scope: !2667)
!2669 = !DILocation(line: 484, column: 18, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 484, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2642, file: !2, line: 483, column: 14)
!2672 = !DILocation(line: 484, column: 15, scope: !2670)
!2673 = !DILocation(line: 484, column: 7, scope: !2670)
!2674 = !DILocation(line: 484, column: 36, scope: !2670)
!2675 = !DILocation(line: 484, column: 33, scope: !2670)
!2676 = !DILocation(line: 484, column: 25, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2670, file: !2, discriminator: 2)
!2678 = !DILocation(line: 484, column: 22, scope: !2670)
!2679 = !DILocation(line: 484, column: 7, scope: !2671)
!2680 = distinct !{!2680, !2665, !2681}
!2681 = !DILocation(line: 485, column: 2, scope: !2642)
!2682 = !DILocation(line: 487, column: 1, scope: !2667)
!2683 = distinct !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !3, file: !2, line: 489, type: !149, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !163, variables: !2684)
!2684 = !{!2685, !2686}
!2685 = !DILocalVariable(name: "this", arg: 1, scope: !2683, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2686 = !DILocalVariable(name: "s2", arg: 2, scope: !2683, file: !2, line: 489, type: !26)
!2687 = !DILocation(line: 0, scope: !2683)
!2688 = !DILocation(line: 489, column: 49, scope: !2683)
!2689 = !DILocation(line: 491, column: 6, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2683, file: !2, line: 491, column: 6)
!2691 = !DILocation(line: 491, column: 15, scope: !2690)
!2692 = !DILocation(line: 491, column: 10, scope: !2690)
!2693 = !DILocation(line: 491, column: 6, scope: !2683)
!2694 = !DILocalVariable(name: "this", arg: 1, scope: !2695, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2695 = distinct !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !3, file: !2, line: 495, type: !165, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !164, variables: !2696)
!2696 = !{!2694, !2697, !2698}
!2697 = !DILocalVariable(name: "s2", arg: 2, scope: !2695, file: !2, line: 495, type: !26)
!2698 = !DILocalVariable(name: "offset", arg: 3, scope: !2695, file: !2, line: 495, type: !10)
!2699 = !DILocation(line: 0, scope: !2695, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 492, column: 9, scope: !2683)
!2701 = !DILocation(line: 495, column: 49, scope: !2695, inlinedAt: !2700)
!2702 = !DILocation(line: 495, column: 66, scope: !2695, inlinedAt: !2700)
!2703 = !DILocation(line: 497, column: 32, scope: !2704, inlinedAt: !2700)
!2704 = !DILexicalBlockFile(scope: !2705, file: !2, discriminator: 1)
!2705 = distinct !DILexicalBlock(scope: !2695, file: !2, line: 497, column: 6)
!2706 = !DILocation(line: 497, column: 39, scope: !2704, inlinedAt: !2700)
!2707 = !DILocation(line: 497, column: 46, scope: !2708, inlinedAt: !2700)
!2708 = !DILexicalBlockFile(scope: !2705, file: !2, discriminator: 2)
!2709 = !DILocation(line: 497, column: 43, scope: !2708, inlinedAt: !2700)
!2710 = !DILocation(line: 497, column: 6, scope: !2711, inlinedAt: !2700)
!2711 = !DILexicalBlockFile(scope: !2695, file: !2, discriminator: 2)
!2712 = !DILocation(line: 498, column: 9, scope: !2695, inlinedAt: !2700)
!2713 = !DILocation(line: 498, column: 55, scope: !2695, inlinedAt: !2700)
!2714 = !DILocation(line: 498, column: 2, scope: !2695, inlinedAt: !2700)
!2715 = !DILocation(line: 493, column: 1, scope: !2683)
!2716 = !DILocation(line: 0, scope: !2695)
!2717 = !DILocation(line: 495, column: 49, scope: !2695)
!2718 = !DILocation(line: 495, column: 66, scope: !2695)
!2719 = !DILocation(line: 497, column: 15, scope: !2705)
!2720 = !DILocation(line: 497, column: 24, scope: !2705)
!2721 = !DILocation(line: 497, column: 19, scope: !2705)
!2722 = !DILocation(line: 497, column: 13, scope: !2705)
!2723 = !DILocation(line: 497, column: 28, scope: !2705)
!2724 = !DILocation(line: 497, column: 32, scope: !2704)
!2725 = !DILocation(line: 497, column: 39, scope: !2704)
!2726 = !DILocation(line: 497, column: 46, scope: !2708)
!2727 = !DILocation(line: 497, column: 43, scope: !2708)
!2728 = !DILocation(line: 497, column: 6, scope: !2711)
!2729 = !DILocation(line: 498, column: 19, scope: !2695)
!2730 = !DILocation(line: 498, column: 9, scope: !2695)
!2731 = !DILocation(line: 498, column: 55, scope: !2695)
!2732 = !DILocation(line: 498, column: 2, scope: !2695)
!2733 = !DILocation(line: 499, column: 1, scope: !2695)
!2734 = distinct !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !3, file: !2, line: 501, type: !149, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !167, variables: !2735)
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "this", arg: 1, scope: !2734, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2737 = !DILocalVariable(name: "s2", arg: 2, scope: !2734, file: !2, line: 501, type: !26)
!2738 = !DILocation(line: 0, scope: !2734)
!2739 = !DILocation(line: 501, column: 47, scope: !2734)
!2740 = !DILocation(line: 503, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 503, column: 7)
!2742 = !DILocation(line: 503, column: 16, scope: !2741)
!2743 = !DILocation(line: 503, column: 11, scope: !2741)
!2744 = !DILocation(line: 503, column: 20, scope: !2741)
!2745 = !DILocation(line: 503, column: 24, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2741, file: !2, discriminator: 1)
!2747 = !DILocation(line: 503, column: 31, scope: !2746)
!2748 = !DILocation(line: 503, column: 38, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2741, file: !2, discriminator: 2)
!2750 = !DILocation(line: 503, column: 35, scope: !2749)
!2751 = !DILocation(line: 503, column: 7, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2734, file: !2, discriminator: 2)
!2753 = !DILocation(line: 504, column: 28, scope: !2734)
!2754 = !DILocation(line: 504, column: 17, scope: !2734)
!2755 = !DILocation(line: 504, column: 9, scope: !2734)
!2756 = !DILocation(line: 504, column: 50, scope: !2734)
!2757 = !DILocation(line: 504, column: 2, scope: !2734)
!2758 = !DILocation(line: 505, column: 1, scope: !2734)
!2759 = distinct !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !3, file: !2, line: 511, type: !169, isLocal: false, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !168, variables: !2760)
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "this", arg: 1, scope: !2759, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2762 = !DILocalVariable(name: "loc", arg: 2, scope: !2759, file: !2, line: 511, type: !10)
!2763 = !DILocation(line: 0, scope: !2759)
!2764 = !DILocation(line: 511, column: 34, scope: !2759)
!2765 = !DILocalVariable(name: "this", arg: 1, scope: !2766, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2766 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !3, file: !2, line: 531, type: !169, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !174, variables: !2767)
!2767 = !{!2765, !2768}
!2768 = !DILocalVariable(name: "index", arg: 2, scope: !2766, file: !2, line: 531, type: !10)
!2769 = !DILocation(line: 0, scope: !2766, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 513, column: 9, scope: !2759)
!2771 = !DILocation(line: 531, column: 39, scope: !2766, inlinedAt: !2770)
!2772 = !DILocation(line: 533, column: 15, scope: !2773, inlinedAt: !2770)
!2773 = distinct !DILexicalBlock(scope: !2766, file: !2, line: 533, column: 6)
!2774 = !DILocation(line: 533, column: 12, scope: !2773, inlinedAt: !2770)
!2775 = !DILocation(line: 533, column: 19, scope: !2773, inlinedAt: !2770)
!2776 = !DILocation(line: 533, column: 23, scope: !2777, inlinedAt: !2770)
!2777 = !DILexicalBlockFile(scope: !2773, file: !2, discriminator: 1)
!2778 = !DILocation(line: 533, column: 6, scope: !2779, inlinedAt: !2770)
!2779 = !DILexicalBlockFile(scope: !2766, file: !2, discriminator: 1)
!2780 = !DILocation(line: 534, column: 9, scope: !2766, inlinedAt: !2770)
!2781 = !DILocation(line: 534, column: 2, scope: !2766, inlinedAt: !2770)
!2782 = !DILocation(line: 513, column: 2, scope: !2759)
!2783 = !DILocation(line: 0, scope: !2766)
!2784 = !DILocation(line: 531, column: 39, scope: !2766)
!2785 = !DILocation(line: 533, column: 15, scope: !2773)
!2786 = !DILocation(line: 533, column: 12, scope: !2773)
!2787 = !DILocation(line: 533, column: 19, scope: !2773)
!2788 = !DILocation(line: 533, column: 23, scope: !2777)
!2789 = !DILocation(line: 533, column: 6, scope: !2779)
!2790 = !DILocation(line: 534, column: 9, scope: !2766)
!2791 = !DILocation(line: 534, column: 2, scope: !2766)
!2792 = !DILocation(line: 535, column: 1, scope: !2766)
!2793 = distinct !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !3, file: !2, line: 516, type: !172, isLocal: false, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !171, variables: !2794)
!2794 = !{!2795, !2796, !2797}
!2795 = !DILocalVariable(name: "this", arg: 1, scope: !2793, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!2796 = !DILocalVariable(name: "loc", arg: 2, scope: !2793, file: !2, line: 516, type: !10)
!2797 = !DILocalVariable(name: "c", arg: 3, scope: !2793, file: !2, line: 516, type: !8)
!2798 = !DILocation(line: 0, scope: !2793)
!2799 = !DILocation(line: 516, column: 37, scope: !2793)
!2800 = !DILocation(line: 516, column: 47, scope: !2793)
!2801 = !DILocation(line: 518, column: 12, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 518, column: 6)
!2803 = !DILocation(line: 518, column: 10, scope: !2802)
!2804 = !DILocation(line: 518, column: 6, scope: !2793)
!2805 = !DILocation(line: 518, column: 17, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2802, file: !2, discriminator: 1)
!2807 = !DILocation(line: 518, column: 29, scope: !2806)
!2808 = !DILocation(line: 519, column: 1, scope: !2793)
!2809 = !DILocation(line: 0, scope: !1)
!2810 = !DILocation(line: 521, column: 40, scope: !1)
!2811 = !DILocation(line: 524, column: 15, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !1, file: !2, line: 524, column: 6)
!2813 = !DILocation(line: 524, column: 12, scope: !2812)
!2814 = !DILocation(line: 524, column: 19, scope: !2812)
!2815 = !DILocation(line: 524, column: 23, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2812, file: !2, discriminator: 1)
!2817 = !DILocation(line: 524, column: 6, scope: !2818)
!2818 = !DILexicalBlockFile(scope: !1, file: !2, discriminator: 1)
!2819 = !DILocation(line: 525, column: 23, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2812, file: !2, line: 524, column: 31)
!2821 = !DILocation(line: 526, column: 3, scope: !2820)
!2822 = !DILocation(line: 528, column: 9, scope: !1)
!2823 = !DILocation(line: 528, column: 2, scope: !1)
!2824 = !DILocation(line: 529, column: 1, scope: !1)
!2825 = distinct !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !3, file: !2, line: 537, type: !180, isLocal: false, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !179, variables: !2826)
!2826 = !{!2827, !2828, !2829, !2830, !2831}
!2827 = !DILocalVariable(name: "this", arg: 1, scope: !2825, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2828 = !DILocalVariable(name: "buf", arg: 2, scope: !2825, file: !2, line: 537, type: !182)
!2829 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2825, file: !2, line: 537, type: !10)
!2830 = !DILocalVariable(name: "index", arg: 4, scope: !2825, file: !2, line: 537, type: !10)
!2831 = !DILocalVariable(name: "n", scope: !2825, file: !2, line: 544, type: !10)
!2832 = !DILocation(line: 0, scope: !2825)
!2833 = !DILocation(line: 537, column: 38, scope: !2825)
!2834 = !DILocation(line: 537, column: 56, scope: !2825)
!2835 = !DILocation(line: 537, column: 78, scope: !2825)
!2836 = !DILocation(line: 539, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2825, file: !2, line: 539, column: 6)
!2838 = !DILocation(line: 539, column: 19, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2837, file: !2, discriminator: 1)
!2840 = !DILocation(line: 539, column: 15, scope: !2837)
!2841 = !DILocation(line: 540, column: 15, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2825, file: !2, line: 540, column: 6)
!2843 = !DILocation(line: 540, column: 12, scope: !2842)
!2844 = !DILocation(line: 540, column: 6, scope: !2825)
!2845 = !DILocation(line: 544, column: 27, scope: !2825)
!2846 = !DILocation(line: 544, column: 15, scope: !2825)
!2847 = !DILocation(line: 545, column: 14, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2825, file: !2, line: 545, column: 6)
!2849 = !DILocation(line: 545, column: 8, scope: !2848)
!2850 = !DILocation(line: 545, column: 6, scope: !2825)
!2851 = !DILocation(line: 546, column: 23, scope: !2825)
!2852 = !DILocation(line: 546, column: 30, scope: !2825)
!2853 = !DILocation(line: 546, column: 2, scope: !2825)
!2854 = !DILocation(line: 547, column: 2, scope: !2825)
!2855 = !DILocation(line: 548, column: 1, scope: !2825)
!2856 = !DILocation(line: 547, column: 9, scope: !2825)
!2857 = !DILocation(line: 548, column: 1, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2825, file: !2, discriminator: 1)
!2859 = distinct !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !3, file: !2, line: 554, type: !196, isLocal: false, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !195, variables: !2860)
!2860 = !{!2861, !2862}
!2861 = !DILocalVariable(name: "this", arg: 1, scope: !2859, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2862 = !DILocalVariable(name: "c", arg: 2, scope: !2859, file: !2, line: 554, type: !8)
!2863 = !DILocation(line: 0, scope: !2859)
!2864 = !DILocation(line: 554, column: 26, scope: !2859)
!2865 = !DILocalVariable(name: "this", arg: 1, scope: !2866, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2866 = distinct !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !3, file: !2, line: 559, type: !199, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !198, variables: !2867)
!2867 = !{!2865, !2868, !2869, !2870}
!2868 = !DILocalVariable(name: "ch", arg: 2, scope: !2866, file: !2, line: 559, type: !8)
!2869 = !DILocalVariable(name: "fromIndex", arg: 3, scope: !2866, file: !2, line: 559, type: !10)
!2870 = !DILocalVariable(name: "temp", scope: !2866, file: !2, line: 562, type: !21)
!2871 = !DILocation(line: 0, scope: !2866, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 556, column: 9, scope: !2859)
!2873 = !DILocation(line: 559, column: 27, scope: !2866, inlinedAt: !2872)
!2874 = !DILocation(line: 559, column: 44, scope: !2866, inlinedAt: !2872)
!2875 = !DILocation(line: 561, column: 19, scope: !2876, inlinedAt: !2872)
!2876 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 561, column: 6)
!2877 = !DILocation(line: 561, column: 16, scope: !2876, inlinedAt: !2872)
!2878 = !DILocation(line: 561, column: 6, scope: !2866, inlinedAt: !2872)
!2879 = !DILocation(line: 562, column: 28, scope: !2866, inlinedAt: !2872)
!2880 = !DILocation(line: 562, column: 48, scope: !2866, inlinedAt: !2872)
!2881 = !DILocation(line: 562, column: 21, scope: !2866, inlinedAt: !2872)
!2882 = !DILocation(line: 562, column: 14, scope: !2866, inlinedAt: !2872)
!2883 = !DILocation(line: 563, column: 11, scope: !2884, inlinedAt: !2872)
!2884 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 563, column: 6)
!2885 = !DILocation(line: 563, column: 6, scope: !2866, inlinedAt: !2872)
!2886 = !DILocation(line: 564, column: 14, scope: !2866, inlinedAt: !2872)
!2887 = !DILocation(line: 564, column: 2, scope: !2866, inlinedAt: !2872)
!2888 = !DILocation(line: 556, column: 2, scope: !2859)
!2889 = !DILocation(line: 0, scope: !2866)
!2890 = !DILocation(line: 559, column: 27, scope: !2866)
!2891 = !DILocation(line: 559, column: 44, scope: !2866)
!2892 = !DILocation(line: 561, column: 19, scope: !2876)
!2893 = !DILocation(line: 561, column: 16, scope: !2876)
!2894 = !DILocation(line: 561, column: 6, scope: !2866)
!2895 = !DILocation(line: 562, column: 28, scope: !2866)
!2896 = !DILocation(line: 562, column: 35, scope: !2866)
!2897 = !DILocation(line: 562, column: 48, scope: !2866)
!2898 = !DILocation(line: 562, column: 21, scope: !2866)
!2899 = !DILocation(line: 562, column: 14, scope: !2866)
!2900 = !DILocation(line: 563, column: 11, scope: !2884)
!2901 = !DILocation(line: 563, column: 6, scope: !2866)
!2902 = !DILocation(line: 564, column: 14, scope: !2866)
!2903 = !DILocation(line: 564, column: 2, scope: !2866)
!2904 = !DILocation(line: 565, column: 1, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !2866, file: !2, discriminator: 1)
!2906 = distinct !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !3, file: !2, line: 567, type: !146, isLocal: false, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !201, variables: !2907)
!2907 = !{!2908, !2909}
!2908 = !DILocalVariable(name: "this", arg: 1, scope: !2906, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2909 = !DILocalVariable(name: "s2", arg: 2, scope: !2906, file: !2, line: 567, type: !26)
!2910 = !DILocation(line: 0, scope: !2906)
!2911 = !DILocation(line: 567, column: 35, scope: !2906)
!2912 = !DILocalVariable(name: "this", arg: 1, scope: !2913, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2913 = distinct !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !3, file: !2, line: 572, type: !203, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !202, variables: !2914)
!2914 = !{!2912, !2915, !2916, !2917}
!2915 = !DILocalVariable(name: "s2", arg: 2, scope: !2913, file: !2, line: 572, type: !26)
!2916 = !DILocalVariable(name: "fromIndex", arg: 3, scope: !2913, file: !2, line: 572, type: !10)
!2917 = !DILocalVariable(name: "found", scope: !2913, file: !2, line: 575, type: !21)
!2918 = !DILocation(line: 0, scope: !2913, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 569, column: 9, scope: !2906)
!2920 = !DILocation(line: 572, column: 35, scope: !2913, inlinedAt: !2919)
!2921 = !DILocation(line: 572, column: 52, scope: !2913, inlinedAt: !2919)
!2922 = !DILocation(line: 574, column: 19, scope: !2923, inlinedAt: !2919)
!2923 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 574, column: 6)
!2924 = !DILocation(line: 574, column: 16, scope: !2923, inlinedAt: !2919)
!2925 = !DILocation(line: 574, column: 6, scope: !2913, inlinedAt: !2919)
!2926 = !DILocation(line: 575, column: 29, scope: !2913, inlinedAt: !2919)
!2927 = !DILocation(line: 575, column: 52, scope: !2913, inlinedAt: !2919)
!2928 = !DILocation(line: 575, column: 22, scope: !2913, inlinedAt: !2919)
!2929 = !DILocation(line: 575, column: 14, scope: !2913, inlinedAt: !2919)
!2930 = !DILocation(line: 576, column: 12, scope: !2931, inlinedAt: !2919)
!2931 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 576, column: 6)
!2932 = !DILocation(line: 576, column: 6, scope: !2913, inlinedAt: !2919)
!2933 = !DILocation(line: 577, column: 15, scope: !2913, inlinedAt: !2919)
!2934 = !DILocation(line: 577, column: 2, scope: !2913, inlinedAt: !2919)
!2935 = !DILocation(line: 569, column: 2, scope: !2906)
!2936 = !DILocation(line: 0, scope: !2913)
!2937 = !DILocation(line: 572, column: 35, scope: !2913)
!2938 = !DILocation(line: 572, column: 52, scope: !2913)
!2939 = !DILocation(line: 574, column: 19, scope: !2923)
!2940 = !DILocation(line: 574, column: 16, scope: !2923)
!2941 = !DILocation(line: 574, column: 6, scope: !2913)
!2942 = !DILocation(line: 575, column: 29, scope: !2913)
!2943 = !DILocation(line: 575, column: 36, scope: !2913)
!2944 = !DILocation(line: 575, column: 52, scope: !2913)
!2945 = !DILocation(line: 575, column: 22, scope: !2913)
!2946 = !DILocation(line: 575, column: 14, scope: !2913)
!2947 = !DILocation(line: 576, column: 12, scope: !2931)
!2948 = !DILocation(line: 576, column: 6, scope: !2913)
!2949 = !DILocation(line: 577, column: 15, scope: !2913)
!2950 = !DILocation(line: 577, column: 2, scope: !2913)
!2951 = !DILocation(line: 578, column: 1, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2913, file: !2, discriminator: 1)
!2953 = distinct !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !3, file: !2, line: 580, type: !196, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !205, variables: !2954)
!2954 = !{!2955, !2956}
!2955 = !DILocalVariable(name: "this", arg: 1, scope: !2953, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2956 = !DILocalVariable(name: "theChar", arg: 2, scope: !2953, file: !2, line: 580, type: !8)
!2957 = !DILocation(line: 0, scope: !2953)
!2958 = !DILocation(line: 580, column: 31, scope: !2953)
!2959 = !DILocation(line: 582, column: 30, scope: !2953)
!2960 = !DILocalVariable(name: "this", arg: 1, scope: !2961, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!2961 = distinct !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !3, file: !2, line: 585, type: !199, isLocal: false, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !206, variables: !2962)
!2962 = !{!2960, !2963, !2964, !2965, !2966}
!2963 = !DILocalVariable(name: "ch", arg: 2, scope: !2961, file: !2, line: 585, type: !8)
!2964 = !DILocalVariable(name: "fromIndex", arg: 3, scope: !2961, file: !2, line: 585, type: !10)
!2965 = !DILocalVariable(name: "tempchar", scope: !2961, file: !2, line: 588, type: !8)
!2966 = !DILocalVariable(name: "temp", scope: !2961, file: !2, line: 590, type: !7)
!2967 = !DILocation(line: 0, scope: !2961, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 582, column: 9, scope: !2953)
!2969 = !DILocation(line: 585, column: 30, scope: !2961, inlinedAt: !2968)
!2970 = !DILocation(line: 587, column: 16, scope: !2971, inlinedAt: !2968)
!2971 = distinct !DILexicalBlock(scope: !2961, file: !2, line: 587, column: 6)
!2972 = !DILocation(line: 587, column: 6, scope: !2961, inlinedAt: !2968)
!2973 = !DILocation(line: 588, column: 18, scope: !2961, inlinedAt: !2968)
!2974 = !DILocation(line: 588, column: 7, scope: !2961, inlinedAt: !2968)
!2975 = !DILocation(line: 589, column: 24, scope: !2961, inlinedAt: !2968)
!2976 = !DILocation(line: 590, column: 24, scope: !2961, inlinedAt: !2968)
!2977 = !DILocation(line: 590, column: 32, scope: !2961, inlinedAt: !2968)
!2978 = !DILocation(line: 590, column: 15, scope: !2961, inlinedAt: !2968)
!2979 = !DILocation(line: 590, column: 8, scope: !2961, inlinedAt: !2968)
!2980 = !DILocation(line: 591, column: 2, scope: !2961, inlinedAt: !2968)
!2981 = !DILocation(line: 591, column: 24, scope: !2961, inlinedAt: !2968)
!2982 = !DILocation(line: 592, column: 11, scope: !2983, inlinedAt: !2968)
!2983 = distinct !DILexicalBlock(scope: !2961, file: !2, line: 592, column: 6)
!2984 = !DILocation(line: 592, column: 6, scope: !2961, inlinedAt: !2968)
!2985 = !DILocation(line: 593, column: 16, scope: !2961, inlinedAt: !2968)
!2986 = !DILocation(line: 593, column: 14, scope: !2961, inlinedAt: !2968)
!2987 = !DILocation(line: 593, column: 2, scope: !2961, inlinedAt: !2968)
!2988 = !DILocation(line: 582, column: 2, scope: !2953)
!2989 = !DILocation(line: 0, scope: !2961)
!2990 = !DILocation(line: 585, column: 30, scope: !2961)
!2991 = !DILocation(line: 585, column: 47, scope: !2961)
!2992 = !DILocation(line: 587, column: 19, scope: !2971)
!2993 = !DILocation(line: 587, column: 16, scope: !2971)
!2994 = !DILocation(line: 587, column: 6, scope: !2961)
!2995 = !DILocation(line: 588, column: 18, scope: !2961)
!2996 = !DILocation(line: 588, column: 35, scope: !2961)
!2997 = !DILocation(line: 588, column: 7, scope: !2961)
!2998 = !DILocation(line: 589, column: 24, scope: !2961)
!2999 = !DILocation(line: 590, column: 24, scope: !2961)
!3000 = !DILocation(line: 590, column: 32, scope: !2961)
!3001 = !DILocation(line: 590, column: 15, scope: !2961)
!3002 = !DILocation(line: 590, column: 8, scope: !2961)
!3003 = !DILocation(line: 591, column: 2, scope: !2961)
!3004 = !DILocation(line: 591, column: 24, scope: !2961)
!3005 = !DILocation(line: 592, column: 11, scope: !2983)
!3006 = !DILocation(line: 592, column: 6, scope: !2961)
!3007 = !DILocation(line: 593, column: 16, scope: !2961)
!3008 = !DILocation(line: 593, column: 14, scope: !2961)
!3009 = !DILocation(line: 593, column: 2, scope: !2961)
!3010 = !DILocation(line: 594, column: 1, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !2961, file: !2, discriminator: 1)
!3012 = distinct !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !3, file: !2, line: 596, type: !146, isLocal: false, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !207, variables: !3013)
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "this", arg: 1, scope: !3012, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!3015 = !DILocalVariable(name: "s2", arg: 2, scope: !3012, file: !2, line: 596, type: !26)
!3016 = !DILocation(line: 0, scope: !3012)
!3017 = !DILocation(line: 596, column: 39, scope: !3012)
!3018 = !DILocation(line: 598, column: 25, scope: !3012)
!3019 = !DILocation(line: 598, column: 34, scope: !3012)
!3020 = !DILocation(line: 598, column: 29, scope: !3012)
!3021 = !DILocalVariable(name: "this", arg: 1, scope: !3022, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!3022 = distinct !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !3, file: !2, line: 601, type: !203, isLocal: false, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !208, variables: !3023)
!3023 = !{!3021, !3024, !3025, !3026, !3027}
!3024 = !DILocalVariable(name: "s2", arg: 2, scope: !3022, file: !2, line: 601, type: !26)
!3025 = !DILocalVariable(name: "fromIndex", arg: 3, scope: !3022, file: !2, line: 601, type: !10)
!3026 = !DILocalVariable(name: "found", scope: !3022, file: !2, line: 605, type: !43)
!3027 = !DILocalVariable(name: "p", scope: !3028, file: !2, line: 606, type: !7)
!3028 = distinct !DILexicalBlock(scope: !3022, file: !2, line: 606, column: 2)
!3029 = !DILocation(line: 0, scope: !3022, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 598, column: 9, scope: !3012)
!3031 = !DILocation(line: 601, column: 39, scope: !3022, inlinedAt: !3030)
!3032 = !DILocation(line: 601, column: 56, scope: !3022, inlinedAt: !3030)
!3033 = !DILocation(line: 603, column: 15, scope: !3034, inlinedAt: !3030)
!3034 = distinct !DILexicalBlock(scope: !3022, file: !2, line: 603, column: 8)
!3035 = !DILocation(line: 603, column: 20, scope: !3034, inlinedAt: !3030)
!3036 = !DILocation(line: 603, column: 27, scope: !3037, inlinedAt: !3030)
!3037 = !DILexicalBlockFile(scope: !3034, file: !2, discriminator: 1)
!3038 = !DILocation(line: 603, column: 42, scope: !3039, inlinedAt: !3030)
!3039 = !DILexicalBlockFile(scope: !3034, file: !2, discriminator: 2)
!3040 = !DILocation(line: 603, column: 32, scope: !3037, inlinedAt: !3030)
!3041 = !DILocation(line: 604, column: 16, scope: !3042, inlinedAt: !3030)
!3042 = distinct !DILexicalBlock(scope: !3022, file: !2, line: 604, column: 6)
!3043 = !DILocation(line: 604, column: 40, scope: !3044, inlinedAt: !3030)
!3044 = !DILexicalBlockFile(scope: !3042, file: !2, discriminator: 1)
!3045 = !DILocation(line: 604, column: 6, scope: !3022, inlinedAt: !3030)
!3046 = !DILocation(line: 605, column: 6, scope: !3022, inlinedAt: !3030)
!3047 = !DILocation(line: 606, column: 17, scope: !3028, inlinedAt: !3030)
!3048 = !DILocation(line: 606, column: 13, scope: !3028, inlinedAt: !3030)
!3049 = !DILocation(line: 606, column: 27, scope: !3050, inlinedAt: !3030)
!3050 = !DILexicalBlockFile(scope: !3051, file: !2, discriminator: 1)
!3051 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 606, column: 2)
!3052 = !DILocation(line: 606, column: 2, scope: !3053, inlinedAt: !3030)
!3053 = !DILexicalBlockFile(scope: !3028, file: !2, discriminator: 1)
!3054 = !DILocation(line: 607, column: 20, scope: !3055, inlinedAt: !3030)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !2, line: 606, column: 55)
!3056 = !DILocation(line: 609, column: 24, scope: !3057, inlinedAt: !3030)
!3057 = distinct !DILexicalBlock(scope: !3055, file: !2, line: 609, column: 7)
!3058 = !DILocation(line: 606, column: 37, scope: !3050, inlinedAt: !3030)
!3059 = !DILocation(line: 607, column: 7, scope: !3055, inlinedAt: !3030)
!3060 = !DILocation(line: 608, column: 8, scope: !3061, inlinedAt: !3030)
!3061 = distinct !DILexicalBlock(scope: !3055, file: !2, line: 608, column: 7)
!3062 = !DILocation(line: 608, column: 7, scope: !3055, inlinedAt: !3030)
!3063 = !DILocation(line: 609, column: 34, scope: !3057, inlinedAt: !3030)
!3064 = !DILocation(line: 609, column: 7, scope: !3055, inlinedAt: !3030)
!3065 = !DILocation(line: 606, column: 51, scope: !3066, inlinedAt: !3030)
!3066 = !DILexicalBlockFile(scope: !3051, file: !2, discriminator: 3)
!3067 = distinct !{!3067, !3068, !3069}
!3068 = !DILocation(line: 606, column: 2, scope: !3028)
!3069 = !DILocation(line: 610, column: 2, scope: !3028)
!3070 = !DILocation(line: 598, column: 2, scope: !3012)
!3071 = !DILocation(line: 0, scope: !3022)
!3072 = !DILocation(line: 601, column: 39, scope: !3022)
!3073 = !DILocation(line: 601, column: 56, scope: !3022)
!3074 = !DILocation(line: 603, column: 11, scope: !3034)
!3075 = !DILocation(line: 603, column: 15, scope: !3034)
!3076 = !DILocation(line: 603, column: 20, scope: !3034)
!3077 = !DILocation(line: 603, column: 23, scope: !3037)
!3078 = !DILocation(line: 603, column: 27, scope: !3037)
!3079 = !DILocation(line: 603, column: 42, scope: !3039)
!3080 = !DILocation(line: 603, column: 32, scope: !3037)
!3081 = !DILocation(line: 604, column: 16, scope: !3042)
!3082 = !DILocation(line: 604, column: 40, scope: !3044)
!3083 = !DILocation(line: 604, column: 6, scope: !3022)
!3084 = !DILocation(line: 605, column: 6, scope: !3022)
!3085 = !DILocation(line: 606, column: 17, scope: !3028)
!3086 = !DILocation(line: 606, column: 13, scope: !3028)
!3087 = !DILocation(line: 606, column: 27, scope: !3050)
!3088 = !DILocation(line: 606, column: 2, scope: !3053)
!3089 = !DILocation(line: 607, column: 20, scope: !3055)
!3090 = !DILocation(line: 609, column: 24, scope: !3057)
!3091 = !DILocation(line: 606, column: 37, scope: !3050)
!3092 = !DILocation(line: 607, column: 7, scope: !3055)
!3093 = !DILocation(line: 608, column: 8, scope: !3061)
!3094 = !DILocation(line: 608, column: 7, scope: !3055)
!3095 = !DILocation(line: 609, column: 34, scope: !3057)
!3096 = !DILocation(line: 609, column: 7, scope: !3055)
!3097 = !DILocation(line: 606, column: 51, scope: !3066)
!3098 = !DILocation(line: 612, column: 1, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3022, file: !2, discriminator: 1)
!3100 = distinct !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !3, file: !2, line: 614, type: !213, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !212, variables: !3101)
!3101 = !{!3102, !3103, !3104, !3105, !3108, !3109}
!3102 = !DILocalVariable(name: "this", arg: 1, scope: !3100, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!3103 = !DILocalVariable(name: "left", arg: 2, scope: !3100, file: !2, line: 614, type: !10)
!3104 = !DILocalVariable(name: "right", arg: 3, scope: !3100, file: !2, line: 614, type: !10)
!3105 = !DILocalVariable(name: "temp", scope: !3106, file: !2, line: 617, type: !10)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !2, line: 616, column: 20)
!3107 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 616, column: 6)
!3108 = !DILocalVariable(name: "out", scope: !3100, file: !2, line: 621, type: !3)
!3109 = !DILocalVariable(name: "temp", scope: !3100, file: !2, line: 624, type: !8)
!3110 = !DILocation(line: 0, scope: !3100)
!3111 = !DILocation(line: 614, column: 39, scope: !3100)
!3112 = !DILocation(line: 614, column: 58, scope: !3100)
!3113 = !DILocation(line: 616, column: 11, scope: !3107)
!3114 = !DILocation(line: 616, column: 6, scope: !3100)
!3115 = !DIExpression(DW_OP_deref)
!3116 = !DILocation(line: 621, column: 9, scope: !3100)
!3117 = !DILocation(line: 0, scope: !262, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 621, column: 9, scope: !3100)
!3119 = !DILocation(line: 0, scope: !270, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 30, column: 2, scope: !274, inlinedAt: !3118)
!3121 = !DILocation(line: 133, column: 2, scope: !270, inlinedAt: !3120)
!3122 = !DILocation(line: 133, column: 9, scope: !270, inlinedAt: !3120)
!3123 = !DILocation(line: 134, column: 2, scope: !270, inlinedAt: !3120)
!3124 = !DILocation(line: 134, column: 11, scope: !270, inlinedAt: !3120)
!3125 = !DILocation(line: 135, column: 2, scope: !270, inlinedAt: !3120)
!3126 = !DILocation(line: 135, column: 6, scope: !270, inlinedAt: !3120)
!3127 = !DILocation(line: 0, scope: !295, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 31, column: 12, scope: !301, inlinedAt: !3118)
!3129 = !DILocation(line: 170, column: 54, scope: !295, inlinedAt: !3128)
!3130 = !DILocation(line: 0, scope: !305, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 172, column: 7, scope: !310, inlinedAt: !3128)
!3132 = !DILocation(line: 145, column: 44, scope: !305, inlinedAt: !3131)
!3133 = !DILocation(line: 0, scope: !313, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 148, column: 6, scope: !319, inlinedAt: !3131)
!3135 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !3134)
!3136 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !3134)
!3137 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !3134)
!3138 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !3134)
!3139 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !3134)
!3140 = !DILocation(line: 0, scope: !340, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 173, column: 3, scope: !344, inlinedAt: !3128)
!3142 = !DILocation(line: 141, column: 9, scope: !340, inlinedAt: !3141)
!3143 = !DILocation(line: 142, column: 17, scope: !340, inlinedAt: !3141)
!3144 = !DILocation(line: 142, column: 11, scope: !340, inlinedAt: !3141)
!3145 = !DILocation(line: 174, column: 3, scope: !344, inlinedAt: !3128)
!3146 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !3134)
!3147 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !3134)
!3148 = !DILocation(line: 176, column: 6, scope: !295, inlinedAt: !3128)
!3149 = !DILocation(line: 177, column: 2, scope: !295, inlinedAt: !3128)
!3150 = !DILocation(line: 178, column: 2, scope: !295, inlinedAt: !3128)
!3151 = !DILocation(line: 622, column: 14, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 622, column: 6)
!3153 = !DILocation(line: 622, column: 11, scope: !3152)
!3154 = !DILocation(line: 622, column: 6, scope: !3100)
!3155 = !DILocation(line: 623, column: 12, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 623, column: 6)
!3157 = !DILocation(line: 623, column: 6, scope: !3100)
!3158 = !DILocation(line: 624, column: 14, scope: !3100)
!3159 = !DILocation(line: 624, column: 7, scope: !3100)
!3160 = !DILocation(line: 625, column: 16, scope: !3100)
!3161 = !DILocation(line: 626, column: 8, scope: !3100)
!3162 = !DILocation(line: 626, column: 15, scope: !3100)
!3163 = !DILocation(line: 626, column: 6, scope: !3100)
!3164 = !DILocation(line: 627, column: 2, scope: !3100)
!3165 = !DILocation(line: 627, column: 16, scope: !3100)
!3166 = !DILocation(line: 629, column: 1, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3100, file: !2, discriminator: 3)
!3168 = distinct !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !3, file: !2, line: 635, type: !216, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !215, variables: !3169)
!3169 = !{!3170, !3171, !3172, !3173}
!3170 = !DILocalVariable(name: "this", arg: 1, scope: !3168, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!3171 = !DILocalVariable(name: "find", arg: 2, scope: !3168, file: !2, line: 635, type: !8)
!3172 = !DILocalVariable(name: "replace", arg: 3, scope: !3168, file: !2, line: 635, type: !8)
!3173 = !DILocalVariable(name: "p", scope: !3174, file: !2, line: 638, type: !7)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 638, column: 2)
!3175 = !DILocation(line: 0, scope: !3168)
!3176 = !DILocation(line: 635, column: 27, scope: !3168)
!3177 = !DILocation(line: 635, column: 38, scope: !3168)
!3178 = !DILocation(line: 637, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 637, column: 6)
!3180 = !DILocation(line: 637, column: 6, scope: !3168)
!3181 = !DILocation(line: 638, column: 13, scope: !3174)
!3182 = !DILocation(line: 638, column: 25, scope: !3183)
!3183 = !DILexicalBlockFile(scope: !3184, file: !2, discriminator: 1)
!3184 = distinct !DILexicalBlock(scope: !3174, file: !2, line: 638, column: 2)
!3185 = !DILocation(line: 638, column: 2, scope: !3186)
!3186 = !DILexicalBlockFile(scope: !3174, file: !2, discriminator: 1)
!3187 = !DILocation(line: 639, column: 10, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !2, line: 639, column: 7)
!3189 = distinct !DILexicalBlock(scope: !3184, file: !2, line: 638, column: 34)
!3190 = !DILocation(line: 639, column: 7, scope: !3189)
!3191 = !DILocation(line: 639, column: 22, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !3188, file: !2, discriminator: 1)
!3193 = !DILocation(line: 639, column: 19, scope: !3192)
!3194 = !DILocation(line: 638, column: 30, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !3184, file: !2, discriminator: 3)
!3196 = distinct !{!3196, !3197, !3198}
!3197 = !DILocation(line: 638, column: 2, scope: !3174)
!3198 = !DILocation(line: 640, column: 2, scope: !3174)
!3199 = !DILocation(line: 641, column: 1, scope: !3168)
!3200 = distinct !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !3, file: !2, line: 643, type: !219, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !218, variables: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3212, !3214, !3216}
!3202 = !DILocalVariable(name: "this", arg: 1, scope: !3200, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!3203 = !DILocalVariable(name: "find", arg: 2, scope: !3200, file: !2, line: 643, type: !26)
!3204 = !DILocalVariable(name: "replace", arg: 3, scope: !3200, file: !2, line: 643, type: !26)
!3205 = !DILocalVariable(name: "diff", scope: !3200, file: !2, line: 646, type: !43)
!3206 = !DILocalVariable(name: "readFrom", scope: !3200, file: !2, line: 647, type: !7)
!3207 = !DILocalVariable(name: "foundAt", scope: !3200, file: !2, line: 648, type: !7)
!3208 = !DILocalVariable(name: "writeTo", scope: !3209, file: !2, line: 655, type: !7)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !2, line: 654, column: 23)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !2, line: 654, column: 13)
!3211 = distinct !DILexicalBlock(scope: !3200, file: !2, line: 649, column: 6)
!3212 = !DILocalVariable(name: "n", scope: !3213, file: !2, line: 657, type: !10)
!3213 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 656, column: 61)
!3214 = !DILocalVariable(name: "size", scope: !3215, file: !2, line: 667, type: !10)
!3215 = distinct !DILexicalBlock(scope: !3210, file: !2, line: 666, column: 9)
!3216 = !DILocalVariable(name: "index", scope: !3215, file: !2, line: 674, type: !43)
!3217 = !DILocation(line: 0, scope: !3200)
!3218 = !DILocation(line: 643, column: 36, scope: !3200)
!3219 = !DILocation(line: 643, column: 56, scope: !3200)
!3220 = !DILocation(line: 645, column: 6, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3200, file: !2, line: 645, column: 6)
!3222 = !DILocation(line: 645, column: 10, scope: !3221)
!3223 = !DILocation(line: 645, column: 15, scope: !3221)
!3224 = !DILocation(line: 645, column: 23, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3221, file: !2, discriminator: 1)
!3226 = !DILocation(line: 645, column: 27, scope: !3225)
!3227 = !DILocation(line: 645, column: 6, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3200, file: !2, discriminator: 1)
!3229 = !DILocation(line: 646, column: 21, scope: !3200)
!3230 = !DILocation(line: 646, column: 25, scope: !3200)
!3231 = !DILocation(line: 646, column: 6, scope: !3200)
!3232 = !DILocation(line: 647, column: 19, scope: !3200)
!3233 = !DILocation(line: 647, column: 8, scope: !3200)
!3234 = !DILocation(line: 649, column: 11, scope: !3211)
!3235 = !DILocation(line: 649, column: 6, scope: !3200)
!3236 = !DILocation(line: 650, column: 43, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !3238, file: !2, discriminator: 1)
!3238 = distinct !DILexicalBlock(scope: !3211, file: !2, line: 649, column: 17)
!3239 = !DILocation(line: 650, column: 21, scope: !3237)
!3240 = !DILocation(line: 648, column: 8, scope: !3200)
!3241 = !DILocation(line: 650, column: 52, scope: !3237)
!3242 = !DILocation(line: 650, column: 3, scope: !3237)
!3243 = !DILocation(line: 651, column: 28, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3238, file: !2, line: 650, column: 61)
!3245 = !DILocation(line: 651, column: 44, scope: !3244)
!3246 = !DILocation(line: 651, column: 4, scope: !3244)
!3247 = !DILocation(line: 652, column: 33, scope: !3244)
!3248 = !DILocation(line: 652, column: 23, scope: !3244)
!3249 = distinct !{!3249, !3250, !3251}
!3250 = !DILocation(line: 650, column: 3, scope: !3238)
!3251 = !DILocation(line: 653, column: 3, scope: !3238)
!3252 = !DILocation(line: 654, column: 18, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3210, file: !2, discriminator: 1)
!3254 = !DILocation(line: 656, column: 21, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !3209, file: !2, discriminator: 1)
!3256 = !DILocation(line: 654, column: 13, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !3211, file: !2, discriminator: 1)
!3258 = !DILocation(line: 667, column: 16, scope: !3215)
!3259 = !DILocation(line: 668, column: 3, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3215, file: !2, discriminator: 1)
!3261 = !DILocation(line: 669, column: 23, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3215, file: !2, line: 668, column: 61)
!3263 = !DILocation(line: 655, column: 9, scope: !3209)
!3264 = !DILocation(line: 656, column: 3, scope: !3255)
!3265 = !DILocation(line: 660, column: 28, scope: !3213)
!3266 = !DILocation(line: 657, column: 29, scope: !3213)
!3267 = !DILocation(line: 657, column: 17, scope: !3213)
!3268 = !DILocation(line: 658, column: 4, scope: !3213)
!3269 = !DILocation(line: 659, column: 12, scope: !3213)
!3270 = !DILocation(line: 660, column: 44, scope: !3213)
!3271 = !DILocation(line: 660, column: 4, scope: !3213)
!3272 = !DILocation(line: 661, column: 23, scope: !3213)
!3273 = !DILocation(line: 661, column: 12, scope: !3213)
!3274 = !DILocation(line: 662, column: 30, scope: !3213)
!3275 = !DILocation(line: 662, column: 23, scope: !3213)
!3276 = !DILocation(line: 663, column: 8, scope: !3213)
!3277 = !DILocation(line: 656, column: 43, scope: !3255)
!3278 = !DILocation(line: 656, column: 52, scope: !3255)
!3279 = distinct !{!3279, !3280, !3281}
!3280 = !DILocation(line: 656, column: 3, scope: !3209)
!3281 = !DILocation(line: 664, column: 3, scope: !3209)
!3282 = !DILocation(line: 665, column: 3, scope: !3209)
!3283 = !DILocation(line: 666, column: 2, scope: !3209)
!3284 = !DILocation(line: 670, column: 9, scope: !3262)
!3285 = !DILocation(line: 668, column: 21, scope: !3260)
!3286 = !DILocation(line: 668, column: 52, scope: !3260)
!3287 = distinct !{!3287, !3288, !3289}
!3288 = !DILocation(line: 668, column: 3, scope: !3215)
!3289 = !DILocation(line: 671, column: 3, scope: !3215)
!3290 = !DILocation(line: 672, column: 12, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3215, file: !2, line: 672, column: 7)
!3292 = !DILocation(line: 672, column: 7, scope: !3215)
!3293 = !DILocation(line: 673, column: 14, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3215, file: !2, line: 673, column: 7)
!3295 = !DILocation(line: 673, column: 12, scope: !3294)
!3296 = !DILocation(line: 673, column: 23, scope: !3294)
!3297 = !DILocation(line: 0, scope: !313, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 673, column: 27, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3294, file: !2, discriminator: 1)
!3300 = !DILocation(line: 155, column: 49, scope: !313, inlinedAt: !3298)
!3301 = !DILocation(line: 157, column: 54, scope: !313, inlinedAt: !3298)
!3302 = !DILocation(line: 157, column: 28, scope: !313, inlinedAt: !3298)
!3303 = !DILocation(line: 157, column: 8, scope: !313, inlinedAt: !3298)
!3304 = !DILocation(line: 158, column: 6, scope: !325, inlinedAt: !3298)
!3305 = !DILocation(line: 158, column: 6, scope: !313, inlinedAt: !3298)
!3306 = !DILocation(line: 159, column: 10, scope: !328, inlinedAt: !3298)
!3307 = !DILocation(line: 160, column: 12, scope: !328, inlinedAt: !3298)
!3308 = !DILocation(line: 674, column: 15, scope: !3215)
!3309 = !DILocation(line: 673, column: 7, scope: !3260)
!3310 = !DILocation(line: 674, column: 19, scope: !3215)
!3311 = !DILocation(line: 674, column: 7, scope: !3215)
!3312 = !DILocation(line: 675, column: 16, scope: !3260)
!3313 = !DILocation(line: 675, column: 21, scope: !3260)
!3314 = !DILocation(line: 680, column: 35, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3215, file: !2, line: 675, column: 65)
!3316 = !DILocation(line: 0, scope: !3022, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 675, column: 33, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3215, file: !2, discriminator: 2)
!3319 = !DILocation(line: 601, column: 39, scope: !3022, inlinedAt: !3317)
!3320 = !DILocation(line: 601, column: 56, scope: !3022, inlinedAt: !3317)
!3321 = !DILocation(line: 603, column: 11, scope: !3034, inlinedAt: !3317)
!3322 = !DILocation(line: 603, column: 15, scope: !3034, inlinedAt: !3317)
!3323 = !DILocation(line: 603, column: 20, scope: !3034, inlinedAt: !3317)
!3324 = !DILocation(line: 603, column: 23, scope: !3037, inlinedAt: !3317)
!3325 = !DILocation(line: 603, column: 27, scope: !3037, inlinedAt: !3317)
!3326 = !DILocation(line: 603, column: 42, scope: !3039, inlinedAt: !3317)
!3327 = !DILocation(line: 603, column: 32, scope: !3037, inlinedAt: !3317)
!3328 = !DILocation(line: 604, column: 16, scope: !3042, inlinedAt: !3317)
!3329 = !DILocation(line: 604, column: 40, scope: !3044, inlinedAt: !3317)
!3330 = !DILocation(line: 604, column: 6, scope: !3022, inlinedAt: !3317)
!3331 = !DILocation(line: 605, column: 6, scope: !3022, inlinedAt: !3317)
!3332 = !DILocation(line: 606, column: 17, scope: !3028, inlinedAt: !3317)
!3333 = !DILocation(line: 606, column: 13, scope: !3028, inlinedAt: !3317)
!3334 = !DILocation(line: 606, column: 27, scope: !3050, inlinedAt: !3317)
!3335 = !DILocation(line: 606, column: 2, scope: !3053, inlinedAt: !3317)
!3336 = !DILocation(line: 607, column: 20, scope: !3055, inlinedAt: !3317)
!3337 = !DILocation(line: 609, column: 24, scope: !3057, inlinedAt: !3317)
!3338 = !DILocation(line: 606, column: 37, scope: !3050, inlinedAt: !3317)
!3339 = !DILocation(line: 607, column: 7, scope: !3055, inlinedAt: !3317)
!3340 = !DILocation(line: 608, column: 8, scope: !3061, inlinedAt: !3317)
!3341 = !DILocation(line: 608, column: 7, scope: !3055, inlinedAt: !3317)
!3342 = !DILocation(line: 609, column: 34, scope: !3057, inlinedAt: !3317)
!3343 = !DILocation(line: 609, column: 7, scope: !3055, inlinedAt: !3317)
!3344 = !DILocation(line: 606, column: 51, scope: !3066, inlinedAt: !3317)
!3345 = !DILocation(line: 675, column: 59, scope: !3318)
!3346 = !DILocation(line: 675, column: 3, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !3215, file: !2, discriminator: 3)
!3348 = !DILocation(line: 676, column: 22, scope: !3315)
!3349 = !DILocation(line: 676, column: 30, scope: !3315)
!3350 = !DILocation(line: 677, column: 21, scope: !3315)
!3351 = !DILocation(line: 677, column: 55, scope: !3315)
!3352 = !DILocation(line: 677, column: 43, scope: !3315)
!3353 = !DILocation(line: 677, column: 4, scope: !3315)
!3354 = !DILocation(line: 678, column: 8, scope: !3315)
!3355 = !DILocation(line: 679, column: 4, scope: !3315)
!3356 = !DILocation(line: 679, column: 16, scope: !3315)
!3357 = !DILocation(line: 680, column: 11, scope: !3315)
!3358 = !DILocation(line: 680, column: 18, scope: !3315)
!3359 = !DILocation(line: 680, column: 51, scope: !3315)
!3360 = !DILocation(line: 680, column: 4, scope: !3315)
!3361 = distinct !{!3361, !3362, !3363}
!3362 = !DILocation(line: 675, column: 3, scope: !3215)
!3363 = !DILocation(line: 682, column: 3, scope: !3215)
!3364 = !DILocation(line: 684, column: 1, scope: !3365)
!3365 = !DILexicalBlockFile(scope: !3200, file: !2, discriminator: 2)
!3366 = distinct !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !3, file: !2, line: 686, type: !222, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !221, variables: !3367)
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "this", arg: 1, scope: !3366, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!3369 = !DILocalVariable(name: "index", arg: 2, scope: !3366, file: !2, line: 686, type: !10)
!3370 = !DILocation(line: 0, scope: !3366)
!3371 = !DILocation(line: 686, column: 34, scope: !3366)
!3372 = !DILocalVariable(name: "this", arg: 1, scope: !3373, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!3373 = distinct !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !3, file: !2, line: 693, type: !225, isLocal: false, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !224, variables: !3374)
!3374 = !{!3372, !3375, !3376, !3377}
!3375 = !DILocalVariable(name: "index", arg: 2, scope: !3373, file: !2, line: 693, type: !10)
!3376 = !DILocalVariable(name: "count", arg: 3, scope: !3373, file: !2, line: 693, type: !10)
!3377 = !DILocalVariable(name: "writeTo", scope: !3373, file: !2, line: 697, type: !7)
!3378 = !DILocation(line: 0, scope: !3373, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 690, column: 2, scope: !3366)
!3380 = !DILocation(line: 693, column: 34, scope: !3373, inlinedAt: !3379)
!3381 = !DILocation(line: 693, column: 54, scope: !3373, inlinedAt: !3379)
!3382 = !DILocation(line: 694, column: 15, scope: !3383, inlinedAt: !3379)
!3383 = distinct !DILexicalBlock(scope: !3373, file: !2, line: 694, column: 6)
!3384 = !DILocation(line: 694, column: 12, scope: !3383, inlinedAt: !3379)
!3385 = !DILocation(line: 694, column: 6, scope: !3373, inlinedAt: !3379)
!3386 = !DILocation(line: 696, column: 18, scope: !3387, inlinedAt: !3379)
!3387 = distinct !DILexicalBlock(scope: !3373, file: !2, line: 696, column: 6)
!3388 = !DILocation(line: 697, column: 18, scope: !3373, inlinedAt: !3379)
!3389 = !DILocation(line: 697, column: 25, scope: !3373, inlinedAt: !3379)
!3390 = !DILocation(line: 697, column: 8, scope: !3373, inlinedAt: !3379)
!3391 = !DILocation(line: 698, column: 6, scope: !3373, inlinedAt: !3379)
!3392 = !DILocation(line: 699, column: 34, scope: !3373, inlinedAt: !3379)
!3393 = !DILocation(line: 699, column: 2, scope: !3373, inlinedAt: !3379)
!3394 = !DILocation(line: 700, column: 2, scope: !3373, inlinedAt: !3379)
!3395 = !DILocation(line: 700, column: 9, scope: !3373, inlinedAt: !3379)
!3396 = !DILocation(line: 700, column: 14, scope: !3373, inlinedAt: !3379)
!3397 = !DILocation(line: 701, column: 1, scope: !3373, inlinedAt: !3379)
!3398 = !DILocation(line: 691, column: 1, scope: !3366)
!3399 = !DILocation(line: 0, scope: !3373)
!3400 = !DILocation(line: 693, column: 34, scope: !3373)
!3401 = !DILocation(line: 693, column: 54, scope: !3373)
!3402 = !DILocation(line: 694, column: 15, scope: !3383)
!3403 = !DILocation(line: 694, column: 12, scope: !3383)
!3404 = !DILocation(line: 695, column: 12, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3373, file: !2, line: 695, column: 6)
!3406 = !DILocation(line: 694, column: 6, scope: !3373)
!3407 = !DILocation(line: 696, column: 18, scope: !3387)
!3408 = !DILocation(line: 696, column: 12, scope: !3387)
!3409 = !DILocation(line: 696, column: 6, scope: !3373)
!3410 = !DILocation(line: 697, column: 18, scope: !3373)
!3411 = !DILocation(line: 697, column: 25, scope: !3373)
!3412 = !DILocation(line: 697, column: 8, scope: !3373)
!3413 = !DILocation(line: 698, column: 12, scope: !3373)
!3414 = !DILocation(line: 698, column: 6, scope: !3373)
!3415 = !DILocation(line: 699, column: 34, scope: !3373)
!3416 = !DILocation(line: 699, column: 46, scope: !3373)
!3417 = !DILocation(line: 699, column: 2, scope: !3373)
!3418 = !DILocation(line: 700, column: 2, scope: !3373)
!3419 = !DILocation(line: 700, column: 9, scope: !3373)
!3420 = !DILocation(line: 700, column: 14, scope: !3373)
!3421 = !DILocation(line: 701, column: 1, scope: !3373)
!3422 = !DILocation(line: 701, column: 1, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3373, file: !2, discriminator: 1)
!3424 = distinct !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !3, file: !2, line: 703, type: !64, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !227, variables: !3425)
!3425 = !{!3426, !3427}
!3426 = !DILocalVariable(name: "this", arg: 1, scope: !3424, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!3427 = !DILocalVariable(name: "p", scope: !3428, file: !2, line: 706, type: !7)
!3428 = distinct !DILexicalBlock(scope: !3424, file: !2, line: 706, column: 2)
!3429 = !DILocation(line: 0, scope: !3424)
!3430 = !DILocation(line: 705, column: 7, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3424, file: !2, line: 705, column: 6)
!3432 = !DILocation(line: 705, column: 6, scope: !3424)
!3433 = !DILocation(line: 706, column: 13, scope: !3428)
!3434 = !DILocation(line: 706, column: 25, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !3436, file: !2, discriminator: 1)
!3436 = distinct !DILexicalBlock(scope: !3428, file: !2, line: 706, column: 2)
!3437 = !DILocation(line: 706, column: 2, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3428, file: !2, discriminator: 1)
!3439 = !DILocation(line: 707, column: 16, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !2, line: 706, column: 34)
!3441 = !DILocation(line: 707, column: 8, scope: !3440)
!3442 = !DILocation(line: 707, column: 6, scope: !3440)
!3443 = !DILocation(line: 706, column: 30, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3436, file: !2, discriminator: 3)
!3445 = distinct !{!3445, !3446, !3447}
!3446 = !DILocation(line: 706, column: 2, scope: !3428)
!3447 = !DILocation(line: 708, column: 2, scope: !3428)
!3448 = !DILocation(line: 709, column: 1, scope: !3424)
!3449 = distinct !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !3, file: !2, line: 711, type: !64, isLocal: false, isDefinition: true, scopeLine: 712, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !228, variables: !3450)
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "this", arg: 1, scope: !3449, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!3452 = !DILocalVariable(name: "p", scope: !3453, file: !2, line: 714, type: !7)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !2, line: 714, column: 2)
!3454 = !DILocation(line: 0, scope: !3449)
!3455 = !DILocation(line: 713, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3449, file: !2, line: 713, column: 6)
!3457 = !DILocation(line: 713, column: 6, scope: !3449)
!3458 = !DILocation(line: 714, column: 13, scope: !3453)
!3459 = !DILocation(line: 714, column: 25, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3461, file: !2, discriminator: 1)
!3461 = distinct !DILexicalBlock(scope: !3453, file: !2, line: 714, column: 2)
!3462 = !DILocation(line: 714, column: 2, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !3453, file: !2, discriminator: 1)
!3464 = !DILocation(line: 715, column: 16, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !2, line: 714, column: 34)
!3466 = !DILocation(line: 715, column: 8, scope: !3465)
!3467 = !DILocation(line: 715, column: 6, scope: !3465)
!3468 = !DILocation(line: 714, column: 30, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !3461, file: !2, discriminator: 3)
!3470 = distinct !{!3470, !3471, !3472}
!3471 = !DILocation(line: 714, column: 2, scope: !3453)
!3472 = !DILocation(line: 716, column: 2, scope: !3453)
!3473 = !DILocation(line: 717, column: 1, scope: !3449)
!3474 = distinct !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !3, file: !2, line: 719, type: !64, isLocal: false, isDefinition: true, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !229, variables: !3475)
!3475 = !{!3476, !3477, !3478}
!3476 = !DILocalVariable(name: "this", arg: 1, scope: !3474, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!3477 = !DILocalVariable(name: "begin", scope: !3474, file: !2, line: 722, type: !7)
!3478 = !DILocalVariable(name: "end", scope: !3474, file: !2, line: 724, type: !7)
!3479 = !DILocation(line: 0, scope: !3474)
!3480 = !DILocation(line: 721, column: 7, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3474, file: !2, line: 721, column: 6)
!3482 = !DILocation(line: 721, column: 14, scope: !3481)
!3483 = !DILocation(line: 721, column: 17, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3481, file: !2, discriminator: 1)
!3485 = !DILocation(line: 721, column: 21, scope: !3484)
!3486 = !DILocation(line: 721, column: 6, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3474, file: !2, discriminator: 1)
!3488 = !DILocation(line: 722, column: 8, scope: !3474)
!3489 = !DILocation(line: 723, column: 17, scope: !3487)
!3490 = !DILocation(line: 723, column: 9, scope: !3487)
!3491 = !DILocation(line: 723, column: 31, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3474, file: !2, discriminator: 2)
!3493 = !DILocation(line: 723, column: 2, scope: !3487)
!3494 = distinct !{!3494, !3495, !3496}
!3495 = !DILocation(line: 723, column: 2, scope: !3474)
!3496 = !DILocation(line: 723, column: 31, scope: !3474)
!3497 = !DILocation(line: 724, column: 21, scope: !3474)
!3498 = !DILocation(line: 725, column: 2, scope: !3474)
!3499 = !DILocation(line: 724, column: 27, scope: !3474)
!3500 = !DILocation(line: 724, column: 8, scope: !3474)
!3501 = !DILocation(line: 725, column: 17, scope: !3487)
!3502 = !DILocation(line: 725, column: 9, scope: !3487)
!3503 = !DILocation(line: 725, column: 30, scope: !3492)
!3504 = !DILocation(line: 725, column: 23, scope: !3487)
!3505 = !DILocation(line: 725, column: 2, scope: !3506)
!3506 = !DILexicalBlockFile(scope: !3474, file: !2, discriminator: 3)
!3507 = distinct !{!3507, !3498, !3508}
!3508 = !DILocation(line: 725, column: 43, scope: !3474)
!3509 = !DILocation(line: 726, column: 16, scope: !3474)
!3510 = !DILocation(line: 726, column: 6, scope: !3474)
!3511 = !DILocation(line: 727, column: 12, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3474, file: !2, line: 727, column: 6)
!3513 = !DILocation(line: 727, column: 6, scope: !3474)
!3514 = !DILocation(line: 727, column: 22, scope: !3512)
!3515 = !DILocation(line: 728, column: 2, scope: !3474)
!3516 = !DILocation(line: 728, column: 9, scope: !3474)
!3517 = !DILocation(line: 727, column: 22, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3512, file: !2, discriminator: 1)
!3519 = !DILocation(line: 728, column: 14, scope: !3474)
!3520 = !DILocation(line: 729, column: 1, scope: !3474)
!3521 = !DILocation(line: 729, column: 1, scope: !3487)
!3522 = distinct !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !3, file: !2, line: 735, type: !231, isLocal: false, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !230, variables: !3523)
!3523 = !{!3524}
!3524 = !DILocalVariable(name: "this", arg: 1, scope: !3522, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!3525 = !DILocation(line: 0, scope: !3522)
!3526 = !DILocation(line: 737, column: 6, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3522, file: !2, line: 737, column: 6)
!3528 = !DILocation(line: 737, column: 6, scope: !3522)
!3529 = !DILocation(line: 737, column: 21, scope: !3530)
!3530 = !DILexicalBlockFile(scope: !3527, file: !2, discriminator: 1)
!3531 = !DILocation(line: 737, column: 14, scope: !3530)
!3532 = !DILocation(line: 739, column: 1, scope: !3522)
!3533 = distinct !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !3, file: !2, line: 741, type: !234, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !233, variables: !3534)
!3534 = !{!3535}
!3535 = !DILocalVariable(name: "this", arg: 1, scope: !3533, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!3536 = !DILocation(line: 0, scope: !3533)
!3537 = !DILocalVariable(name: "this", arg: 1, scope: !3538, type: !2441, flags: DIFlagArtificial | DIFlagObjectPointer)
!3538 = distinct !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !3, file: !2, line: 746, type: !237, isLocal: false, isDefinition: true, scopeLine: 747, flags: DIFlagPrototyped, isOptimized: true, unit: !251, declaration: !236, variables: !3539)
!3539 = !{!3537}
!3540 = !DILocation(line: 0, scope: !3538, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 743, column: 15, scope: !3533)
!3542 = !DILocation(line: 748, column: 6, scope: !3543, inlinedAt: !3541)
!3543 = distinct !DILexicalBlock(scope: !3538, file: !2, line: 748, column: 6)
!3544 = !DILocation(line: 748, column: 6, scope: !3538, inlinedAt: !3541)
!3545 = !DILocation(line: 748, column: 21, scope: !3546, inlinedAt: !3541)
!3546 = !DILexicalBlockFile(scope: !3543, file: !2, discriminator: 1)
!3547 = !DILocation(line: 748, column: 14, scope: !3546, inlinedAt: !3541)
!3548 = !DILocation(line: 743, column: 2, scope: !3533)
!3549 = !DILocation(line: 0, scope: !3538)
!3550 = !DILocation(line: 748, column: 6, scope: !3543)
!3551 = !DILocation(line: 748, column: 6, scope: !3538)
!3552 = !DILocation(line: 748, column: 21, scope: !3546)
!3553 = !DILocation(line: 748, column: 14, scope: !3546)
!3554 = !DILocation(line: 750, column: 1, scope: !3538)
