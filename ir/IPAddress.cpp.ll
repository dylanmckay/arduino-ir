; ModuleID = 'Arduino/IPAddress.cpp'
source_filename = "Arduino/IPAddress.cpp"
target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-n8"
target triple = "avr-atmel-none"

%class.IPAddress = type <{ %class.Printable, %union.anon }>
%class.Printable = type { i32 (...)** }
%union.anon = type { i32 }
%class.Print = type { i32 (...)**, i16 }

$_ZTS9Printable = comdat any

$_ZTI9Printable = comdat any

@_ZL11INADDR_NONE = internal global %class.IPAddress zeroinitializer, align 2, !dbg !0
@_ZTV9IPAddress = unnamed_addr constant [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9IPAddress to i8*), i8* bitcast (i16 (%class.IPAddress*, %class.Print*)* @_ZNK9IPAddress7printToER5Print to i8*)], align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS9IPAddress = constant [11 x i8] c"9IPAddress\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS9Printable = linkonce_odr constant [11 x i8] c"9Printable\00", comdat
@_ZTI9Printable = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i16 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9Printable, i32 0, i32 0) }, comdat
@_ZTI9IPAddress = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i16 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9IPAddress, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI9Printable to i8*) }
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_IPAddress.cpp, i8* null }]

@_ZN9IPAddressC1Ev = alias void (%class.IPAddress*), void (%class.IPAddress*)* @_ZN9IPAddressC2Ev
@_ZN9IPAddressC1Ehhhh = alias void (%class.IPAddress*, i8, i8, i8, i8), void (%class.IPAddress*, i8, i8, i8, i8)* @_ZN9IPAddressC2Ehhhh
@_ZN9IPAddressC1Em = alias void (%class.IPAddress*, i32), void (%class.IPAddress*, i32)* @_ZN9IPAddressC2Em
@_ZN9IPAddressC1EPKh = alias void (%class.IPAddress*, i8*), void (%class.IPAddress*, i8*)* @_ZN9IPAddressC2EPKh

; Function Attrs: argmemonly nounwind
declare {}* @llvm.invariant.start.p0i8(i64, i8* nocapture) #0

; Function Attrs: nounwind
define void @_ZN9IPAddressC2Ev(%class.IPAddress* nocapture %this) unnamed_addr #1 align 2 !dbg !344 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !346, metadata !348), !dbg !349
  %0 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 0, i32 0, !dbg !350
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV9IPAddress, i16 0, i16 2) to i32 (...)**), i32 (...)*** %0, align 1, !dbg !350, !tbaa !351
  %dword = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1, i32 0, !dbg !354
  store i32 0, i32* %dword, align 1, !dbg !356, !tbaa !357
  ret void, !dbg !360
}

; Function Attrs: nounwind
define void @_ZN9IPAddressC2Ehhhh(%class.IPAddress* nocapture %this, i8 zeroext %first_octet, i8 zeroext %second_octet, i8 zeroext %third_octet, i8 zeroext %fourth_octet) unnamed_addr #1 align 2 !dbg !361 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !363, metadata !348), !dbg !368
  tail call void @llvm.dbg.value(metadata i8 %first_octet, i64 0, metadata !364, metadata !348), !dbg !369
  tail call void @llvm.dbg.value(metadata i8 %second_octet, i64 0, metadata !365, metadata !348), !dbg !370
  tail call void @llvm.dbg.value(metadata i8 %third_octet, i64 0, metadata !366, metadata !348), !dbg !371
  tail call void @llvm.dbg.value(metadata i8 %fourth_octet, i64 0, metadata !367, metadata !348), !dbg !372
  %0 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 0, i32 0, !dbg !373
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV9IPAddress, i16 0, i16 2) to i32 (...)**), i32 (...)*** %0, align 1, !dbg !373, !tbaa !351
  %_address2 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1, !dbg !374
  %bytes = bitcast %union.anon* %_address2 to [4 x i8]*, !dbg !376
  %arrayidx = bitcast %union.anon* %_address2 to i8*, !dbg !374
  store i8 %first_octet, i8* %arrayidx, align 1, !dbg !377, !tbaa !378
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i16 0, i16 1, !dbg !379
  store i8 %second_octet, i8* %arrayidx5, align 1, !dbg !380, !tbaa !378
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i16 0, i16 2, !dbg !381
  store i8 %third_octet, i8* %arrayidx8, align 1, !dbg !382, !tbaa !378
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i16 0, i16 3, !dbg !383
  store i8 %fourth_octet, i8* %arrayidx11, align 1, !dbg !384, !tbaa !378
  ret void, !dbg !385
}

; Function Attrs: nounwind
define void @_ZN9IPAddressC2Em(%class.IPAddress* nocapture %this, i32 %address) unnamed_addr #1 align 2 !dbg !386 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !388, metadata !348), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %address, i64 0, metadata !389, metadata !348), !dbg !391
  %0 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 0, i32 0, !dbg !392
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV9IPAddress, i16 0, i16 2) to i32 (...)**), i32 (...)*** %0, align 1, !dbg !392, !tbaa !351
  %dword = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1, i32 0, !dbg !393
  store i32 %address, i32* %dword, align 1, !dbg !395, !tbaa !357
  ret void, !dbg !396
}

; Function Attrs: nounwind
define void @_ZN9IPAddressC2EPKh(%class.IPAddress* nocapture %this, i8* nocapture readonly %address) unnamed_addr #1 align 2 !dbg !397 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !399, metadata !348), !dbg !401
  tail call void @llvm.dbg.value(metadata i8* %address, i64 0, metadata !400, metadata !348), !dbg !402
  %0 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 0, i32 0, !dbg !403
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV9IPAddress, i16 0, i16 2) to i32 (...)**), i32 (...)*** %0, align 1, !dbg !403, !tbaa !351
  %1 = bitcast i8* %address to i32*, !dbg !404
  %2 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1, i32 0, !dbg !404
  %3 = load i32, i32* %1, align 1, !dbg !404
  store i32 %3, i32* %2, align 1, !dbg !404
  ret void, !dbg !406
}

; Function Attrs: nounwind
define zeroext i1 @_ZN9IPAddress10fromStringEPKc(%class.IPAddress* nocapture %this, i8* nocapture readonly %address) local_unnamed_addr #1 align 2 !dbg !407 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !409, metadata !348), !dbg !416
  tail call void @llvm.dbg.value(metadata i8* %address, i64 0, metadata !410, metadata !348), !dbg !417
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !411, metadata !348), !dbg !418
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !413, metadata !348), !dbg !419
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1, !dbg !420
  %bytes = bitcast %union.anon* %_address to [4 x i8]*, !dbg !424
  br label %while.cond.outer, !dbg !425

while.cond.outer:                                 ; preds = %if.end13, %entry
  %address.addr.0.ph = phi i8* [ %incdec.ptr, %if.end13 ], [ %address, %entry ]
  %dots.0.ph = phi i8 [ %inc, %if.end13 ], [ 0, %entry ]
  br label %while.cond, !dbg !419

while.cond:                                       ; preds = %while.cond.outer, %if.then
  %address.addr.0 = phi i8* [ %incdec.ptr, %if.then ], [ %address.addr.0.ph, %while.cond.outer ]
  %acc.0 = phi i16 [ %add, %if.then ], [ 0, %while.cond.outer ]
  tail call void @llvm.dbg.value(metadata i8 %dots.0.ph, i64 0, metadata !413, metadata !348), !dbg !419
  tail call void @llvm.dbg.value(metadata i16 %acc.0, i64 0, metadata !411, metadata !348), !dbg !418
  tail call void @llvm.dbg.value(metadata i8* %address.addr.0, i64 0, metadata !410, metadata !348), !dbg !417
  %0 = load i8, i8* %address.addr.0, align 1, !dbg !426, !tbaa !378
  %tobool = icmp eq i8 %0, 0, !dbg !426
  br i1 %tobool, label %while.end, label %while.body, !dbg !428

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %address.addr.0, i16 1, !dbg !429
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !410, metadata !348), !dbg !417
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !414, metadata !348), !dbg !430
  %.off = add i8 %0, -48, !dbg !431
  %1 = icmp ult i8 %.off, 10, !dbg !431
  br i1 %1, label %if.then, label %if.else, !dbg !431

if.then:                                          ; preds = %while.body
  %conv = sext i8 %0 to i16, !dbg !432
  %mul = mul i16 %acc.0, 10, !dbg !433
  %sub = add i16 %mul, -48, !dbg !435
  %add = add i16 %sub, %conv, !dbg !436
  tail call void @llvm.dbg.value(metadata i16 %add, i64 0, metadata !411, metadata !348), !dbg !418
  %cmp5 = icmp ugt i16 %add, 255, !dbg !437
  br i1 %cmp5, label %cleanup26.loopexit, label %while.cond, !dbg !439

if.else:                                          ; preds = %while.body
  %cmp8 = icmp ne i8 %0, 46, !dbg !440
  %cmp11 = icmp eq i8 %dots.0.ph, 3, !dbg !441
  %or.cond38 = or i1 %cmp11, %cmp8, !dbg !443
  br i1 %or.cond38, label %cleanup26.loopexit71, label %if.end13, !dbg !443

if.end13:                                         ; preds = %if.else
  %conv10 = zext i8 %dots.0.ph to i16, !dbg !444
  %conv14 = trunc i16 %acc.0 to i8, !dbg !445
  %inc = add i8 %dots.0.ph, 1, !dbg !446
  tail call void @llvm.dbg.value(metadata i8 %inc, i64 0, metadata !413, metadata !348), !dbg !419
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i16 0, i16 %conv10, !dbg !420
  store i8 %conv14, i8* %arrayidx, align 1, !dbg !447, !tbaa !378
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !411, metadata !348), !dbg !418
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  %cmp19 = icmp eq i8 %dots.0.ph, 3, !dbg !448
  br i1 %cmp19, label %if.end21, label %cleanup26, !dbg !450

if.end21:                                         ; preds = %while.end
  %conv22 = trunc i16 %acc.0 to i8, !dbg !451
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i16 0, i16 3, !dbg !452
  store i8 %conv22, i8* %arrayidx25, align 1, !dbg !453, !tbaa !378
  br label %cleanup26, !dbg !454

cleanup26.loopexit:                               ; preds = %if.then
  br label %cleanup26, !dbg !455

cleanup26.loopexit71:                             ; preds = %if.else
  br label %cleanup26, !dbg !455

cleanup26:                                        ; preds = %cleanup26.loopexit71, %cleanup26.loopexit, %while.end, %if.end21
  %retval.2 = phi i1 [ true, %if.end21 ], [ false, %while.end ], [ false, %cleanup26.loopexit ], [ false, %cleanup26.loopexit71 ]
  ret i1 %retval.2, !dbg !455
}

; Function Attrs: nounwind
define dereferenceable(6) %class.IPAddress* @_ZN9IPAddressaSEPKh(%class.IPAddress* returned %this, i8* nocapture readonly %address) local_unnamed_addr #1 align 2 !dbg !456 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !458, metadata !348), !dbg !460
  tail call void @llvm.dbg.value(metadata i8* %address, i64 0, metadata !459, metadata !348), !dbg !461
  %0 = bitcast i8* %address to i32*, !dbg !462
  %1 = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1, i32 0, !dbg !462
  %2 = load i32, i32* %0, align 1, !dbg !462
  store i32 %2, i32* %1, align 1, !dbg !462
  ret %class.IPAddress* %this, !dbg !463
}

; Function Attrs: nounwind
define dereferenceable(6) %class.IPAddress* @_ZN9IPAddressaSEm(%class.IPAddress* returned %this, i32 %address) local_unnamed_addr #1 align 2 !dbg !464 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !466, metadata !348), !dbg !468
  tail call void @llvm.dbg.value(metadata i32 %address, i64 0, metadata !467, metadata !348), !dbg !469
  %dword = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1, i32 0, !dbg !470
  store i32 %address, i32* %dword, align 1, !dbg !471, !tbaa !357
  ret %class.IPAddress* %this, !dbg !472
}

; Function Attrs: nounwind readonly
define zeroext i1 @_ZNK9IPAddresseqEPKh(%class.IPAddress* readonly %this, i8* readonly %addr) local_unnamed_addr #2 align 2 !dbg !473 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !475, metadata !348), !dbg !478
  tail call void @llvm.dbg.value(metadata i8* %addr, i64 0, metadata !477, metadata !348), !dbg !479
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1, !dbg !480
  %arraydecay = bitcast %union.anon* %_address to i8*, !dbg !480
  %call = tail call i16 @memcmp(i8* %addr, i8* %arraydecay, i16 4) #7, !dbg !481
  %cmp = icmp eq i16 %call, 0, !dbg !482
  ret i1 %cmp, !dbg !483
}

; Function Attrs: nounwind readonly
declare i16 @memcmp(i8*, i8*, i16) local_unnamed_addr #3

define i16 @_ZNK9IPAddress7printToER5Print(%class.IPAddress* nocapture readonly %this, %class.Print* dereferenceable(4) %p) unnamed_addr #4 align 2 !dbg !484 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* %this, i64 0, metadata !486, metadata !348), !dbg !491
  tail call void @llvm.dbg.value(metadata %class.Print* %p, i64 0, metadata !487, metadata !348), !dbg !492
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !488, metadata !348), !dbg !493
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !489, metadata !348), !dbg !494
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !489, metadata !348), !dbg !494
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !488, metadata !348), !dbg !493
  %_address = getelementptr inbounds %class.IPAddress, %class.IPAddress* %this, i16 0, i32 1
  %bytes = bitcast %union.anon* %_address to [4 x i8]*
  %arrayidx = bitcast %union.anon* %_address to i8*, !dbg !495
  %0 = load i8, i8* %arrayidx, align 1, !dbg !495, !tbaa !378
  %call = tail call i16 @_ZN5Print5printEhi(%class.Print* nonnull %p, i8 zeroext %0, i16 10), !dbg !498
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !488, metadata !348), !dbg !493
  %call2 = tail call i16 @_ZN5Print5printEc(%class.Print* nonnull %p, i8 signext 46), !dbg !499
  %add3 = add i16 %call, %call2, !dbg !500
  tail call void @llvm.dbg.value(metadata i16 %add3, i64 0, metadata !488, metadata !348), !dbg !493
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !489, metadata !348), !dbg !494
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !489, metadata !348), !dbg !494
  tail call void @llvm.dbg.value(metadata i16 %add3, i64 0, metadata !488, metadata !348), !dbg !493
  %arrayidx.1 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i16 0, i16 1, !dbg !495
  %1 = load i8, i8* %arrayidx.1, align 1, !dbg !495, !tbaa !378
  %call.1 = tail call i16 @_ZN5Print5printEhi(%class.Print* nonnull %p, i8 zeroext %1, i16 10), !dbg !498
  %add.1 = add i16 %call.1, %add3, !dbg !501
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !488, metadata !348), !dbg !493
  %call2.1 = tail call i16 @_ZN5Print5printEc(%class.Print* nonnull %p, i8 signext 46), !dbg !499
  %add3.1 = add i16 %add.1, %call2.1, !dbg !500
  tail call void @llvm.dbg.value(metadata i16 %add3, i64 0, metadata !488, metadata !348), !dbg !493
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !489, metadata !348), !dbg !494
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !489, metadata !348), !dbg !494
  tail call void @llvm.dbg.value(metadata i16 %add3, i64 0, metadata !488, metadata !348), !dbg !493
  %arrayidx.2 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i16 0, i16 2, !dbg !495
  %2 = load i8, i8* %arrayidx.2, align 1, !dbg !495, !tbaa !378
  %call.2 = tail call i16 @_ZN5Print5printEhi(%class.Print* nonnull %p, i8 zeroext %2, i16 10), !dbg !498
  %add.2 = add i16 %call.2, %add3.1, !dbg !501
  tail call void @llvm.dbg.value(metadata i16 %call, i64 0, metadata !488, metadata !348), !dbg !493
  %call2.2 = tail call i16 @_ZN5Print5printEc(%class.Print* nonnull %p, i8 signext 46), !dbg !499
  %add3.2 = add i16 %add.2, %call2.2, !dbg !500
  tail call void @llvm.dbg.value(metadata i16 %add3, i64 0, metadata !488, metadata !348), !dbg !493
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !489, metadata !348), !dbg !494
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !489, metadata !348), !dbg !494
  tail call void @llvm.dbg.value(metadata i16 %add3, i64 0, metadata !488, metadata !348), !dbg !493
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %bytes, i16 0, i16 3, !dbg !502
  %3 = load i8, i8* %arrayidx6, align 1, !dbg !502, !tbaa !378
  %call7 = tail call i16 @_ZN5Print5printEhi(%class.Print* nonnull %p, i8 zeroext %3, i16 10), !dbg !503
  %add8 = add i16 %call7, %add3.2, !dbg !504
  tail call void @llvm.dbg.value(metadata i16 %add8, i64 0, metadata !488, metadata !348), !dbg !493
  ret i16 %add8, !dbg !505
}

declare i16 @_ZN5Print5printEhi(%class.Print*, i8 zeroext, i16) local_unnamed_addr #5

declare i16 @_ZN5Print5printEc(%class.Print*, i8 signext) local_unnamed_addr #5

; Function Attrs: nounwind
define internal void @_GLOBAL__sub_I_IPAddress.cpp() #1 !dbg !506 {
entry:
  tail call void @llvm.dbg.value(metadata %class.IPAddress* @_ZL11INADDR_NONE, i64 0, metadata !363, metadata !348) #8, !dbg !508
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !364, metadata !348) #8, !dbg !514
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !365, metadata !348) #8, !dbg !515
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !366, metadata !348) #8, !dbg !516
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !367, metadata !348) #8, !dbg !517
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @_ZTV9IPAddress, i16 0, i16 2) to i32 (...)**), i32 (...)*** getelementptr inbounds (%class.IPAddress, %class.IPAddress* @_ZL11INADDR_NONE, i16 0, i32 0, i32 0), align 2, !dbg !518, !tbaa !351
  store i8 0, i8* bitcast (%union.anon* getelementptr inbounds (%class.IPAddress, %class.IPAddress* @_ZL11INADDR_NONE, i16 0, i32 1) to i8*), align 2, !dbg !519, !tbaa !378
  store i8 0, i8* getelementptr ([4 x i8], [4 x i8]* bitcast (%union.anon* getelementptr inbounds (%class.IPAddress, %class.IPAddress* @_ZL11INADDR_NONE, i16 0, i32 1) to [4 x i8]*), i16 0, i16 1), align 1, !dbg !520, !tbaa !378
  store i8 0, i8* getelementptr ([4 x i8], [4 x i8]* bitcast (%union.anon* getelementptr inbounds (%class.IPAddress, %class.IPAddress* @_ZL11INADDR_NONE, i16 0, i32 1) to [4 x i8]*), i16 0, i16 2), align 2, !dbg !521, !tbaa !378
  store i8 0, i8* getelementptr ([4 x i8], [4 x i8]* bitcast (%union.anon* getelementptr inbounds (%class.IPAddress, %class.IPAddress* @_ZL11INADDR_NONE, i16 0, i32 1) to [4 x i8]*), i16 0, i16 3), align 1, !dbg !522, !tbaa !378
  %0 = tail call {}* @llvm.invariant.start.p0i8(i64 6, i8* bitcast (%class.IPAddress* @_ZL11INADDR_NONE to i8*)) #8, !dbg !523
  ret void
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!341, !342}
!llvm.ident = !{!343}

!0 = distinct !DIGlobalVariable(name: "INADDR_NONE", linkageName: "_ZL11INADDR_NONE", scope: !1, file: !5, line: 76, type: !6, isLocal: true, isDefinition: true)
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, globals: !4)
!2 = !DIFile(filename: "Arduino/IPAddress.cpp", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!3 = !{}
!4 = !{!0}
!5 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino/IPAddress.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "IPAddress", file: !5, line: 29, size: 48, elements: !8, vtableHolder: !10, identifier: "_ZTS9IPAddress")
!8 = !{!9, !30, !43, !48, !51, !54, !57, !62, !69, !313, !317, !321, !324, !327, !331, !335, !338}
!9 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !7, baseType: !10, flags: DIFlagPublic)
!10 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printable", file: !11, line: 33, size: 16, elements: !12, vtableHolder: !10, identifier: "_ZTS9Printable")
!11 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino/Printable.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!12 = !{!13, !19}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Printable", scope: !11, file: !11, baseType: !14, size: 16, flags: DIFlagArtificial)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 16)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !16, size: 16)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 16, encoding: DW_ATE_signed)
!19 = !DISubprogram(name: "printTo", linkageName: "_ZNK9Printable7printToER5Print", scope: !10, file: !11, line: 36, type: !20, isLocal: false, isDefinition: false, scopeLine: 36, containingType: !10, virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 62, baseType: !24)
!23 = !DIFile(filename: "/Users/dylan/projects/builds/llvm/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!24 = !DIBasicType(name: "unsigned int", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !28, size: 16)
!28 = !DICompositeType(tag: DW_TAG_class_type, name: "Print", file: !29, line: 34, size: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5Print")
!29 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino/Print.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_address", scope: !7, file: !5, line: 34, baseType: !31, size: 32, offset: 16)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7, file: !5, line: 31, size: 32, elements: !32, identifier: "_ZTSN9IPAddressUt_E")
!32 = !{!33, !40}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !31, file: !5, line: 32, baseType: !34, size: 32)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !38)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !36, line: 126, baseType: !37)
!36 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdint.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !31, file: !5, line: 33, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !36, line: 130, baseType: !42)
!42 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !DISubprogram(name: "raw_address", linkageName: "_ZN9IPAddress11raw_addressEv", scope: !7, file: !5, line: 40, type: !44, isLocal: false, isDefinition: false, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 16)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!48 = !DISubprogram(name: "IPAddress", scope: !7, file: !5, line: 44, type: !49, isLocal: false, isDefinition: false, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !47}
!51 = !DISubprogram(name: "IPAddress", scope: !7, file: !5, line: 45, type: !52, isLocal: false, isDefinition: false, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !47, !35, !35, !35, !35}
!54 = !DISubprogram(name: "IPAddress", scope: !7, file: !5, line: 46, type: !55, isLocal: false, isDefinition: false, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !47, !41}
!57 = !DISubprogram(name: "IPAddress", scope: !7, file: !5, line: 47, type: !58, isLocal: false, isDefinition: false, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !47, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 16)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!62 = !DISubprogram(name: "fromString", linkageName: "_ZN9IPAddress10fromStringEPKc", scope: !7, file: !5, line: 49, type: !63, isLocal: false, isDefinition: false, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !47, !66}
!65 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 16)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DISubprogram(name: "fromString", linkageName: "_ZN9IPAddress10fromStringERK6String", scope: !7, file: !5, line: 50, type: !70, isLocal: false, isDefinition: false, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!70 = !DISubroutineType(types: !71)
!71 = !{!65, !47, !72}
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 16)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "String", file: !75, line: 45, size: 48, elements: !76, identifier: "_ZTS6String")
!75 = !DIFile(filename: "/Applications/Arduino.app/Contents/Java/hardware/arduino/avr/cores/arduino/WString.h", directory: "/Users/dylan/projects/llvm-project/standalone-arduino")
!76 = !{!77, !79, !80, !81, !85, !89, !92, !98, !101, !104, !107, !110, !114, !117, !121, !125, !128, !131, !134, !138, !141, !144, !147, !150, !153, !156, !159, !160, !163, !166, !169, !172, !175, !176, !177, !180, !183, !186, !189, !192, !195, !198, !201, !202, !207, !210, !213, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !229, !230, !233, !236, !237, !241, !245, !248, !251, !254, !255, !256, !257, !260, !263, !264, !267, !268, !269, !270, !271, !274, !277, !280, !283, !286, !289, !290, !291, !292, !295, !298, !301, !302, !303, !304, !307, !310}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !74, file: !75, line: 196, baseType: !78, size: 16, flags: DIFlagProtected)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 16)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !74, file: !75, line: 197, baseType: !24, size: 16, offset: 16, flags: DIFlagProtected)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !74, file: !75, line: 198, baseType: !24, size: 16, offset: 32, flags: DIFlagProtected)
!81 = !DISubprogram(name: "StringIfHelper", linkageName: "_ZNK6String14StringIfHelperEv", scope: !74, file: !75, line: 51, type: !82, isLocal: false, isDefinition: false, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!85 = !DISubprogram(name: "String", scope: !74, file: !75, line: 59, type: !86, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88, !66}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = !DISubprogram(name: "String", scope: !74, file: !75, line: 60, type: !90, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !88, !72}
!92 = !DISubprogram(name: "String", scope: !74, file: !75, line: 61, type: !93, isLocal: false, isDefinition: false, scopeLine: 61, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !88, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DICompositeType(tag: DW_TAG_class_type, name: "__FlashStringHelper", file: !75, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS19__FlashStringHelper")
!98 = !DISubprogram(name: "String", scope: !74, file: !75, line: 66, type: !99, isLocal: false, isDefinition: false, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !88, !68}
!101 = !DISubprogram(name: "String", scope: !74, file: !75, line: 67, type: !102, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !88, !37, !37}
!104 = !DISubprogram(name: "String", scope: !74, file: !75, line: 68, type: !105, isLocal: false, isDefinition: false, scopeLine: 68, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !88, !18, !37}
!107 = !DISubprogram(name: "String", scope: !74, file: !75, line: 69, type: !108, isLocal: false, isDefinition: false, scopeLine: 69, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !88, !24, !37}
!110 = !DISubprogram(name: "String", scope: !74, file: !75, line: 70, type: !111, isLocal: false, isDefinition: false, scopeLine: 70, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !88, !113, !37}
!113 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!114 = !DISubprogram(name: "String", scope: !74, file: !75, line: 71, type: !115, isLocal: false, isDefinition: false, scopeLine: 71, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !88, !42, !37}
!117 = !DISubprogram(name: "String", scope: !74, file: !75, line: 72, type: !118, isLocal: false, isDefinition: false, scopeLine: 72, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !88, !120, !37}
!120 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!121 = !DISubprogram(name: "String", scope: !74, file: !75, line: 73, type: !122, isLocal: false, isDefinition: false, scopeLine: 73, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !88, !124, !37}
!124 = !DIBasicType(name: "double", size: 32, encoding: DW_ATE_float)
!125 = !DISubprogram(name: "~String", scope: !74, file: !75, line: 74, type: !126, isLocal: false, isDefinition: false, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !88}
!128 = !DISubprogram(name: "reserve", linkageName: "_ZN6String7reserveEj", scope: !74, file: !75, line: 80, type: !129, isLocal: false, isDefinition: false, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!129 = !DISubroutineType(types: !130)
!130 = !{!37, !88, !24}
!131 = !DISubprogram(name: "length", linkageName: "_ZNK6String6lengthEv", scope: !74, file: !75, line: 81, type: !132, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!132 = !DISubroutineType(types: !133)
!133 = !{!24, !84}
!134 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSERKS_", scope: !74, file: !75, line: 86, type: !135, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !88, !72}
!137 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !74, size: 16)
!138 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPKc", scope: !74, file: !75, line: 87, type: !139, isLocal: false, isDefinition: false, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!139 = !DISubroutineType(types: !140)
!140 = !{!137, !88, !66}
!141 = !DISubprogram(name: "operator=", linkageName: "_ZN6StringaSEPK19__FlashStringHelper", scope: !74, file: !75, line: 88, type: !142, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!142 = !DISubroutineType(types: !143)
!143 = !{!137, !88, !95}
!144 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatERKS_", scope: !74, file: !75, line: 99, type: !145, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!145 = !DISubroutineType(types: !146)
!146 = !{!37, !88, !72}
!147 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKc", scope: !74, file: !75, line: 100, type: !148, isLocal: false, isDefinition: false, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!148 = !DISubroutineType(types: !149)
!149 = !{!37, !88, !66}
!150 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEc", scope: !74, file: !75, line: 101, type: !151, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!151 = !DISubroutineType(types: !152)
!152 = !{!37, !88, !68}
!153 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEh", scope: !74, file: !75, line: 102, type: !154, isLocal: false, isDefinition: false, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!154 = !DISubroutineType(types: !155)
!155 = !{!37, !88, !37}
!156 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEi", scope: !74, file: !75, line: 103, type: !157, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!157 = !DISubroutineType(types: !158)
!158 = !{!37, !88, !18}
!159 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEj", scope: !74, file: !75, line: 104, type: !129, isLocal: false, isDefinition: false, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!160 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEl", scope: !74, file: !75, line: 105, type: !161, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!161 = !DISubroutineType(types: !162)
!162 = !{!37, !88, !113}
!163 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEm", scope: !74, file: !75, line: 106, type: !164, isLocal: false, isDefinition: false, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!164 = !DISubroutineType(types: !165)
!165 = !{!37, !88, !42}
!166 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEf", scope: !74, file: !75, line: 107, type: !167, isLocal: false, isDefinition: false, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!167 = !DISubroutineType(types: !168)
!168 = !{!37, !88, !120}
!169 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEd", scope: !74, file: !75, line: 108, type: !170, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!170 = !DISubroutineType(types: !171)
!171 = !{!37, !88, !124}
!172 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPK19__FlashStringHelper", scope: !74, file: !75, line: 109, type: !173, isLocal: false, isDefinition: false, scopeLine: 109, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!173 = !DISubroutineType(types: !174)
!174 = !{!37, !88, !95}
!175 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLERKS_", scope: !74, file: !75, line: 113, type: !135, isLocal: false, isDefinition: false, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!176 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPKc", scope: !74, file: !75, line: 114, type: !139, isLocal: false, isDefinition: false, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!177 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEc", scope: !74, file: !75, line: 115, type: !178, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!178 = !DISubroutineType(types: !179)
!179 = !{!137, !88, !68}
!180 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEh", scope: !74, file: !75, line: 116, type: !181, isLocal: false, isDefinition: false, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!181 = !DISubroutineType(types: !182)
!182 = !{!137, !88, !37}
!183 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEi", scope: !74, file: !75, line: 117, type: !184, isLocal: false, isDefinition: false, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!184 = !DISubroutineType(types: !185)
!185 = !{!137, !88, !18}
!186 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEj", scope: !74, file: !75, line: 118, type: !187, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!187 = !DISubroutineType(types: !188)
!188 = !{!137, !88, !24}
!189 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEl", scope: !74, file: !75, line: 119, type: !190, isLocal: false, isDefinition: false, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!190 = !DISubroutineType(types: !191)
!191 = !{!137, !88, !113}
!192 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEm", scope: !74, file: !75, line: 120, type: !193, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!193 = !DISubroutineType(types: !194)
!194 = !{!137, !88, !42}
!195 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEf", scope: !74, file: !75, line: 121, type: !196, isLocal: false, isDefinition: false, scopeLine: 121, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!196 = !DISubroutineType(types: !197)
!197 = !{!137, !88, !120}
!198 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEd", scope: !74, file: !75, line: 122, type: !199, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!199 = !DISubroutineType(types: !200)
!200 = !{!137, !88, !124}
!201 = !DISubprogram(name: "operator+=", linkageName: "_ZN6StringpLEPK19__FlashStringHelper", scope: !74, file: !75, line: 123, type: !142, isLocal: false, isDefinition: false, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!202 = !DISubprogram(name: "operator void (String::*)() const", linkageName: "_ZNK6StringcvMS_KFvvEEv", scope: !74, file: !75, line: 138, type: !203, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !84}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringIfHelperType", scope: !74, file: !75, line: 50, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !82, size: 32, extraData: !74)
!207 = !DISubprogram(name: "compareTo", linkageName: "_ZNK6String9compareToERKS_", scope: !74, file: !75, line: 139, type: !208, isLocal: false, isDefinition: false, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!208 = !DISubroutineType(types: !209)
!209 = !{!18, !84, !72}
!210 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsERKS_", scope: !74, file: !75, line: 140, type: !211, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!211 = !DISubroutineType(types: !212)
!212 = !{!37, !84, !72}
!213 = !DISubprogram(name: "equals", linkageName: "_ZNK6String6equalsEPKc", scope: !74, file: !75, line: 141, type: !214, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!214 = !DISubroutineType(types: !215)
!215 = !{!37, !84, !66}
!216 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqERKS_", scope: !74, file: !75, line: 142, type: !211, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!217 = !DISubprogram(name: "operator==", linkageName: "_ZNK6StringeqEPKc", scope: !74, file: !75, line: 143, type: !214, isLocal: false, isDefinition: false, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!218 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneERKS_", scope: !74, file: !75, line: 144, type: !211, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!219 = !DISubprogram(name: "operator!=", linkageName: "_ZNK6StringneEPKc", scope: !74, file: !75, line: 145, type: !214, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!220 = !DISubprogram(name: "operator<", linkageName: "_ZNK6StringltERKS_", scope: !74, file: !75, line: 146, type: !211, isLocal: false, isDefinition: false, scopeLine: 146, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!221 = !DISubprogram(name: "operator>", linkageName: "_ZNK6StringgtERKS_", scope: !74, file: !75, line: 147, type: !211, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!222 = !DISubprogram(name: "operator<=", linkageName: "_ZNK6StringleERKS_", scope: !74, file: !75, line: 148, type: !211, isLocal: false, isDefinition: false, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!223 = !DISubprogram(name: "operator>=", linkageName: "_ZNK6StringgeERKS_", scope: !74, file: !75, line: 149, type: !211, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!224 = !DISubprogram(name: "equalsIgnoreCase", linkageName: "_ZNK6String16equalsIgnoreCaseERKS_", scope: !74, file: !75, line: 150, type: !211, isLocal: false, isDefinition: false, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!225 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_", scope: !74, file: !75, line: 151, type: !211, isLocal: false, isDefinition: false, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!226 = !DISubprogram(name: "startsWith", linkageName: "_ZNK6String10startsWithERKS_j", scope: !74, file: !75, line: 152, type: !227, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!227 = !DISubroutineType(types: !228)
!228 = !{!37, !84, !72, !24}
!229 = !DISubprogram(name: "endsWith", linkageName: "_ZNK6String8endsWithERKS_", scope: !74, file: !75, line: 153, type: !211, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!230 = !DISubprogram(name: "charAt", linkageName: "_ZNK6String6charAtEj", scope: !74, file: !75, line: 156, type: !231, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!231 = !DISubroutineType(types: !232)
!232 = !{!68, !84, !24}
!233 = !DISubprogram(name: "setCharAt", linkageName: "_ZN6String9setCharAtEjc", scope: !74, file: !75, line: 157, type: !234, isLocal: false, isDefinition: false, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !88, !24, !68}
!236 = !DISubprogram(name: "operator[]", linkageName: "_ZNK6StringixEj", scope: !74, file: !75, line: 158, type: !231, isLocal: false, isDefinition: false, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!237 = !DISubprogram(name: "operator[]", linkageName: "_ZN6StringixEj", scope: !74, file: !75, line: 159, type: !238, isLocal: false, isDefinition: false, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !88, !24}
!240 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !68, size: 16)
!241 = !DISubprogram(name: "getBytes", linkageName: "_ZNK6String8getBytesEPhjj", scope: !74, file: !75, line: 160, type: !242, isLocal: false, isDefinition: false, scopeLine: 160, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !84, !244, !24, !24}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 16)
!245 = !DISubprogram(name: "toCharArray", linkageName: "_ZNK6String11toCharArrayEPcjj", scope: !74, file: !75, line: 161, type: !246, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !84, !78, !24, !24}
!248 = !DISubprogram(name: "c_str", linkageName: "_ZNK6String5c_strEv", scope: !74, file: !75, line: 163, type: !249, isLocal: false, isDefinition: false, scopeLine: 163, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!249 = !DISubroutineType(types: !250)
!250 = !{!66, !84}
!251 = !DISubprogram(name: "begin", linkageName: "_ZN6String5beginEv", scope: !74, file: !75, line: 164, type: !252, isLocal: false, isDefinition: false, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!252 = !DISubroutineType(types: !253)
!253 = !{!78, !88}
!254 = !DISubprogram(name: "end", linkageName: "_ZN6String3endEv", scope: !74, file: !75, line: 165, type: !252, isLocal: false, isDefinition: false, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!255 = !DISubprogram(name: "begin", linkageName: "_ZNK6String5beginEv", scope: !74, file: !75, line: 166, type: !249, isLocal: false, isDefinition: false, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!256 = !DISubprogram(name: "end", linkageName: "_ZNK6String3endEv", scope: !74, file: !75, line: 167, type: !249, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!257 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEc", scope: !74, file: !75, line: 170, type: !258, isLocal: false, isDefinition: false, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!258 = !DISubroutineType(types: !259)
!259 = !{!18, !84, !68}
!260 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfEcj", scope: !74, file: !75, line: 171, type: !261, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!261 = !DISubroutineType(types: !262)
!262 = !{!18, !84, !68, !24}
!263 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_", scope: !74, file: !75, line: 172, type: !208, isLocal: false, isDefinition: false, scopeLine: 172, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!264 = !DISubprogram(name: "indexOf", linkageName: "_ZNK6String7indexOfERKS_j", scope: !74, file: !75, line: 173, type: !265, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!265 = !DISubroutineType(types: !266)
!266 = !{!18, !84, !72, !24}
!267 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEc", scope: !74, file: !75, line: 174, type: !258, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!268 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfEcj", scope: !74, file: !75, line: 175, type: !261, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!269 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_", scope: !74, file: !75, line: 176, type: !208, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!270 = !DISubprogram(name: "lastIndexOf", linkageName: "_ZNK6String11lastIndexOfERKS_j", scope: !74, file: !75, line: 177, type: !265, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!271 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEj", scope: !74, file: !75, line: 178, type: !272, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!272 = !DISubroutineType(types: !273)
!273 = !{!74, !84, !24}
!274 = !DISubprogram(name: "substring", linkageName: "_ZNK6String9substringEjj", scope: !74, file: !75, line: 179, type: !275, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!275 = !DISubroutineType(types: !276)
!276 = !{!74, !84, !24, !24}
!277 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceEcc", scope: !74, file: !75, line: 182, type: !278, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !88, !68, !68}
!280 = !DISubprogram(name: "replace", linkageName: "_ZN6String7replaceERKS_S1_", scope: !74, file: !75, line: 183, type: !281, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !88, !72, !72}
!283 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEj", scope: !74, file: !75, line: 184, type: !284, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !88, !24}
!286 = !DISubprogram(name: "remove", linkageName: "_ZN6String6removeEjj", scope: !74, file: !75, line: 185, type: !287, isLocal: false, isDefinition: false, scopeLine: 185, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !88, !24, !24}
!289 = !DISubprogram(name: "toLowerCase", linkageName: "_ZN6String11toLowerCaseEv", scope: !74, file: !75, line: 186, type: !126, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!290 = !DISubprogram(name: "toUpperCase", linkageName: "_ZN6String11toUpperCaseEv", scope: !74, file: !75, line: 187, type: !126, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!291 = !DISubprogram(name: "trim", linkageName: "_ZN6String4trimEv", scope: !74, file: !75, line: 188, type: !126, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!292 = !DISubprogram(name: "toInt", linkageName: "_ZNK6String5toIntEv", scope: !74, file: !75, line: 191, type: !293, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!293 = !DISubroutineType(types: !294)
!294 = !{!113, !84}
!295 = !DISubprogram(name: "toFloat", linkageName: "_ZNK6String7toFloatEv", scope: !74, file: !75, line: 192, type: !296, isLocal: false, isDefinition: false, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!296 = !DISubroutineType(types: !297)
!297 = !{!120, !84}
!298 = !DISubprogram(name: "toDouble", linkageName: "_ZNK6String8toDoubleEv", scope: !74, file: !75, line: 193, type: !299, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!299 = !DISubroutineType(types: !300)
!300 = !{!124, !84}
!301 = !DISubprogram(name: "init", linkageName: "_ZN6String4initEv", scope: !74, file: !75, line: 200, type: !126, isLocal: false, isDefinition: false, scopeLine: 200, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!302 = !DISubprogram(name: "invalidate", linkageName: "_ZN6String10invalidateEv", scope: !74, file: !75, line: 201, type: !126, isLocal: false, isDefinition: false, scopeLine: 201, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!303 = !DISubprogram(name: "changeBuffer", linkageName: "_ZN6String12changeBufferEj", scope: !74, file: !75, line: 202, type: !129, isLocal: false, isDefinition: false, scopeLine: 202, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!304 = !DISubprogram(name: "concat", linkageName: "_ZN6String6concatEPKcj", scope: !74, file: !75, line: 203, type: !305, isLocal: false, isDefinition: false, scopeLine: 203, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!305 = !DISubroutineType(types: !306)
!306 = !{!37, !88, !66, !24}
!307 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPKcj", scope: !74, file: !75, line: 206, type: !308, isLocal: false, isDefinition: false, scopeLine: 206, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!308 = !DISubroutineType(types: !309)
!309 = !{!137, !88, !66, !24}
!310 = !DISubprogram(name: "copy", linkageName: "_ZN6String4copyEPK19__FlashStringHelperj", scope: !74, file: !75, line: 207, type: !311, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: true)
!311 = !DISubroutineType(types: !312)
!312 = !{!137, !88, !95, !24}
!313 = !DISubprogram(name: "operator unsigned long", linkageName: "_ZNK9IPAddresscvmEv", scope: !7, file: !5, line: 54, type: !314, isLocal: false, isDefinition: false, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!314 = !DISubroutineType(types: !315)
!315 = !{!41, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 16, flags: DIFlagArtificial | DIFlagObjectPointer)
!317 = !DISubprogram(name: "operator==", linkageName: "_ZNK9IPAddresseqERKS_", scope: !7, file: !5, line: 55, type: !318, isLocal: false, isDefinition: false, scopeLine: 55, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!318 = !DISubroutineType(types: !319)
!319 = !{!65, !316, !320}
!320 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 16)
!321 = !DISubprogram(name: "operator==", linkageName: "_ZNK9IPAddresseqEPKh", scope: !7, file: !5, line: 56, type: !322, isLocal: false, isDefinition: false, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!322 = !DISubroutineType(types: !323)
!323 = !{!65, !316, !60}
!324 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9IPAddressixEi", scope: !7, file: !5, line: 59, type: !325, isLocal: false, isDefinition: false, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!325 = !DISubroutineType(types: !326)
!326 = !{!35, !316, !18}
!327 = !DISubprogram(name: "operator[]", linkageName: "_ZN9IPAddressixEi", scope: !7, file: !5, line: 60, type: !328, isLocal: false, isDefinition: false, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !47, !18}
!330 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 16)
!331 = !DISubprogram(name: "operator=", linkageName: "_ZN9IPAddressaSEPKh", scope: !7, file: !5, line: 63, type: !332, isLocal: false, isDefinition: false, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !47, !60}
!334 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 16)
!335 = !DISubprogram(name: "operator=", linkageName: "_ZN9IPAddressaSEm", scope: !7, file: !5, line: 64, type: !336, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!336 = !DISubroutineType(types: !337)
!337 = !{!334, !47, !41}
!338 = !DISubprogram(name: "printTo", linkageName: "_ZNK9IPAddress7printToER5Print", scope: !7, file: !5, line: 66, type: !339, isLocal: false, isDefinition: false, scopeLine: 66, containingType: !7, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!339 = !DISubroutineType(types: !340)
!340 = !{!22, !316, !27}
!341 = !{i32 2, !"Dwarf Version", i32 4}
!342 = !{i32 2, !"Debug Info Version", i32 3}
!343 = !{!"clang version 4.0.0 (trunk 289351) (llvm/trunk 289369)"}
!344 = distinct !DISubprogram(name: "IPAddress", linkageName: "_ZN9IPAddressC2Ev", scope: !7, file: !2, line: 23, type: !49, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !48, variables: !345)
!345 = !{!346}
!346 = !DILocalVariable(name: "this", arg: 1, scope: !344, type: !347, flags: DIFlagArtificial | DIFlagObjectPointer)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 16)
!348 = !DIExpression()
!349 = !DILocation(line: 0, scope: !344)
!350 = !DILocation(line: 24, column: 1, scope: !344)
!351 = !{!352, !352, i64 0}
!352 = !{!"vtable pointer", !353, i64 0}
!353 = !{!"Simple C++ TBAA"}
!354 = !DILocation(line: 25, column: 14, scope: !355)
!355 = distinct !DILexicalBlock(scope: !344, file: !2, line: 24, column: 1)
!356 = !DILocation(line: 25, column: 20, scope: !355)
!357 = !{!358, !358, i64 0}
!358 = !{!"long", !359, i64 0}
!359 = !{!"omnipotent char", !353, i64 0}
!360 = !DILocation(line: 26, column: 1, scope: !344)
!361 = distinct !DISubprogram(name: "IPAddress", linkageName: "_ZN9IPAddressC2Ehhhh", scope: !7, file: !2, line: 28, type: !52, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !51, variables: !362)
!362 = !{!363, !364, !365, !366, !367}
!363 = !DILocalVariable(name: "this", arg: 1, scope: !361, type: !347, flags: DIFlagArtificial | DIFlagObjectPointer)
!364 = !DILocalVariable(name: "first_octet", arg: 2, scope: !361, file: !2, line: 28, type: !35)
!365 = !DILocalVariable(name: "second_octet", arg: 3, scope: !361, file: !2, line: 28, type: !35)
!366 = !DILocalVariable(name: "third_octet", arg: 4, scope: !361, file: !2, line: 28, type: !35)
!367 = !DILocalVariable(name: "fourth_octet", arg: 5, scope: !361, file: !2, line: 28, type: !35)
!368 = !DILocation(line: 0, scope: !361)
!369 = !DILocation(line: 28, column: 30, scope: !361)
!370 = !DILocation(line: 28, column: 51, scope: !361)
!371 = !DILocation(line: 28, column: 73, scope: !361)
!372 = !DILocation(line: 28, column: 94, scope: !361)
!373 = !DILocation(line: 29, column: 1, scope: !361)
!374 = !DILocation(line: 30, column: 5, scope: !375)
!375 = distinct !DILexicalBlock(scope: !361, file: !2, line: 29, column: 1)
!376 = !DILocation(line: 30, column: 14, scope: !375)
!377 = !DILocation(line: 30, column: 23, scope: !375)
!378 = !{!359, !359, i64 0}
!379 = !DILocation(line: 31, column: 5, scope: !375)
!380 = !DILocation(line: 31, column: 23, scope: !375)
!381 = !DILocation(line: 32, column: 5, scope: !375)
!382 = !DILocation(line: 32, column: 23, scope: !375)
!383 = !DILocation(line: 33, column: 5, scope: !375)
!384 = !DILocation(line: 33, column: 23, scope: !375)
!385 = !DILocation(line: 34, column: 1, scope: !361)
!386 = distinct !DISubprogram(name: "IPAddress", linkageName: "_ZN9IPAddressC2Em", scope: !7, file: !2, line: 36, type: !55, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !54, variables: !387)
!387 = !{!388, !389}
!388 = !DILocalVariable(name: "this", arg: 1, scope: !386, type: !347, flags: DIFlagArtificial | DIFlagObjectPointer)
!389 = !DILocalVariable(name: "address", arg: 2, scope: !386, file: !2, line: 36, type: !41)
!390 = !DILocation(line: 0, scope: !386)
!391 = !DILocation(line: 36, column: 31, scope: !386)
!392 = !DILocation(line: 37, column: 1, scope: !386)
!393 = !DILocation(line: 38, column: 14, scope: !394)
!394 = distinct !DILexicalBlock(scope: !386, file: !2, line: 37, column: 1)
!395 = !DILocation(line: 38, column: 20, scope: !394)
!396 = !DILocation(line: 39, column: 1, scope: !386)
!397 = distinct !DISubprogram(name: "IPAddress", linkageName: "_ZN9IPAddressC2EPKh", scope: !7, file: !2, line: 41, type: !58, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !57, variables: !398)
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "this", arg: 1, scope: !397, type: !347, flags: DIFlagArtificial | DIFlagObjectPointer)
!400 = !DILocalVariable(name: "address", arg: 2, scope: !397, file: !2, line: 41, type: !60)
!401 = !DILocation(line: 0, scope: !397)
!402 = !DILocation(line: 41, column: 37, scope: !397)
!403 = !DILocation(line: 42, column: 1, scope: !397)
!404 = !DILocation(line: 43, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !2, line: 42, column: 1)
!406 = !DILocation(line: 44, column: 1, scope: !397)
!407 = distinct !DISubprogram(name: "fromString", linkageName: "_ZN9IPAddress10fromStringEPKc", scope: !7, file: !2, line: 46, type: !63, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !62, variables: !408)
!408 = !{!409, !410, !411, !413, !414}
!409 = !DILocalVariable(name: "this", arg: 1, scope: !407, type: !347, flags: DIFlagArtificial | DIFlagObjectPointer)
!410 = !DILocalVariable(name: "address", arg: 2, scope: !407, file: !2, line: 46, type: !66)
!411 = !DILocalVariable(name: "acc", scope: !407, file: !2, line: 50, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !36, line: 128, baseType: !24)
!413 = !DILocalVariable(name: "dots", scope: !407, file: !2, line: 51, type: !35)
!414 = !DILocalVariable(name: "c", scope: !415, file: !2, line: 55, type: !68)
!415 = distinct !DILexicalBlock(scope: !407, file: !2, line: 54, column: 5)
!416 = !DILocation(line: 0, scope: !407)
!417 = !DILocation(line: 46, column: 40, scope: !407)
!418 = !DILocation(line: 50, column: 14, scope: !407)
!419 = !DILocation(line: 51, column: 13, scope: !407)
!420 = !DILocation(line: 70, column: 13, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !2, line: 65, column: 9)
!422 = distinct !DILexicalBlock(scope: !423, file: !2, line: 64, column: 18)
!423 = distinct !DILexicalBlock(scope: !415, file: !2, line: 56, column: 13)
!424 = !DILocation(line: 70, column: 22, scope: !421)
!425 = !DILocation(line: 53, column: 5, scope: !407)
!426 = !DILocation(line: 53, column: 12, scope: !427)
!427 = !DILexicalBlockFile(scope: !407, file: !2, discriminator: 1)
!428 = !DILocation(line: 53, column: 5, scope: !427)
!429 = !DILocation(line: 55, column: 26, scope: !415)
!430 = !DILocation(line: 55, column: 14, scope: !415)
!431 = !DILocation(line: 56, column: 22, scope: !423)
!432 = !DILocation(line: 56, column: 13, scope: !423)
!433 = !DILocation(line: 58, column: 23, scope: !434)
!434 = distinct !DILexicalBlock(scope: !423, file: !2, line: 57, column: 9)
!435 = !DILocation(line: 58, column: 33, scope: !434)
!436 = !DILocation(line: 58, column: 28, scope: !434)
!437 = !DILocation(line: 59, column: 21, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !2, line: 59, column: 17)
!439 = !DILocation(line: 59, column: 17, scope: !434)
!440 = !DILocation(line: 64, column: 20, scope: !422)
!441 = !DILocation(line: 66, column: 22, scope: !442)
!442 = distinct !DILexicalBlock(scope: !421, file: !2, line: 66, column: 17)
!443 = !DILocation(line: 64, column: 18, scope: !423)
!444 = !DILocation(line: 66, column: 17, scope: !442)
!445 = !DILocation(line: 70, column: 38, scope: !421)
!446 = !DILocation(line: 70, column: 32, scope: !421)
!447 = !DILocation(line: 70, column: 36, scope: !421)
!448 = !DILocation(line: 80, column: 14, scope: !449)
!449 = distinct !DILexicalBlock(scope: !407, file: !2, line: 80, column: 9)
!450 = !DILocation(line: 80, column: 9, scope: !407)
!451 = !DILocation(line: 84, column: 25, scope: !407)
!452 = !DILocation(line: 84, column: 5, scope: !407)
!453 = !DILocation(line: 84, column: 23, scope: !407)
!454 = !DILocation(line: 85, column: 5, scope: !407)
!455 = !DILocation(line: 86, column: 1, scope: !407)
!456 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN9IPAddressaSEPKh", scope: !7, file: !2, line: 88, type: !332, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !331, variables: !457)
!457 = !{!458, !459}
!458 = !DILocalVariable(name: "this", arg: 1, scope: !456, type: !347, flags: DIFlagArtificial | DIFlagObjectPointer)
!459 = !DILocalVariable(name: "address", arg: 2, scope: !456, file: !2, line: 88, type: !60)
!460 = !DILocation(line: 0, scope: !456)
!461 = !DILocation(line: 88, column: 48, scope: !456)
!462 = !DILocation(line: 90, column: 5, scope: !456)
!463 = !DILocation(line: 91, column: 5, scope: !456)
!464 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN9IPAddressaSEm", scope: !7, file: !2, line: 94, type: !336, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !335, variables: !465)
!465 = !{!466, !467}
!466 = !DILocalVariable(name: "this", arg: 1, scope: !464, type: !347, flags: DIFlagArtificial | DIFlagObjectPointer)
!467 = !DILocalVariable(name: "address", arg: 2, scope: !464, file: !2, line: 94, type: !41)
!468 = !DILocation(line: 0, scope: !464)
!469 = !DILocation(line: 94, column: 42, scope: !464)
!470 = !DILocation(line: 96, column: 14, scope: !464)
!471 = !DILocation(line: 96, column: 20, scope: !464)
!472 = !DILocation(line: 97, column: 5, scope: !464)
!473 = distinct !DISubprogram(name: "operator==", linkageName: "_ZNK9IPAddresseqEPKh", scope: !7, file: !2, line: 100, type: !322, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !321, variables: !474)
!474 = !{!475, !477}
!475 = !DILocalVariable(name: "this", arg: 1, scope: !473, type: !476, flags: DIFlagArtificial | DIFlagObjectPointer)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 16)
!477 = !DILocalVariable(name: "addr", arg: 2, scope: !473, file: !2, line: 100, type: !60)
!478 = !DILocation(line: 0, scope: !473)
!479 = !DILocation(line: 100, column: 43, scope: !473)
!480 = !DILocation(line: 102, column: 25, scope: !473)
!481 = !DILocation(line: 102, column: 12, scope: !473)
!482 = !DILocation(line: 102, column: 65, scope: !473)
!483 = !DILocation(line: 102, column: 5, scope: !473)
!484 = distinct !DISubprogram(name: "printTo", linkageName: "_ZNK9IPAddress7printToER5Print", scope: !7, file: !2, line: 105, type: !339, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !1, declaration: !338, variables: !485)
!485 = !{!486, !487, !488, !489}
!486 = !DILocalVariable(name: "this", arg: 1, scope: !484, type: !476, flags: DIFlagArtificial | DIFlagObjectPointer)
!487 = !DILocalVariable(name: "p", arg: 2, scope: !484, file: !2, line: 105, type: !27)
!488 = !DILocalVariable(name: "n", scope: !484, file: !2, line: 107, type: !22)
!489 = !DILocalVariable(name: "i", scope: !490, file: !2, line: 108, type: !18)
!490 = distinct !DILexicalBlock(scope: !484, file: !2, line: 108, column: 5)
!491 = !DILocation(line: 0, scope: !484)
!492 = !DILocation(line: 105, column: 34, scope: !484)
!493 = !DILocation(line: 107, column: 12, scope: !484)
!494 = !DILocation(line: 108, column: 14, scope: !490)
!495 = !DILocation(line: 110, column: 22, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !2, line: 109, column: 5)
!497 = distinct !DILexicalBlock(scope: !490, file: !2, line: 108, column: 5)
!498 = !DILocation(line: 110, column: 16, scope: !496)
!499 = !DILocation(line: 111, column: 16, scope: !496)
!500 = !DILocation(line: 111, column: 11, scope: !496)
!501 = !DILocation(line: 110, column: 11, scope: !496)
!502 = !DILocation(line: 113, column: 18, scope: !484)
!503 = !DILocation(line: 113, column: 12, scope: !484)
!504 = !DILocation(line: 113, column: 7, scope: !484)
!505 = !DILocation(line: 114, column: 5, scope: !484)
!506 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_IPAddress.cpp", scope: !2, file: !2, type: !507, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: true, unit: !1, variables: !3)
!507 = !DISubroutineType(types: !3)
!508 = !DILocation(line: 0, scope: !361, inlinedAt: !509)
!509 = distinct !DILocation(line: 76, column: 17, scope: !510, inlinedAt: !513)
!510 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !5, file: !5, line: 76, type: !511, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !1, variables: !3)
!511 = !DISubroutineType(types: !512)
!512 = !{null}
!513 = distinct !DILocation(line: 0, scope: !506)
!514 = !DILocation(line: 28, column: 30, scope: !361, inlinedAt: !509)
!515 = !DILocation(line: 28, column: 51, scope: !361, inlinedAt: !509)
!516 = !DILocation(line: 28, column: 73, scope: !361, inlinedAt: !509)
!517 = !DILocation(line: 28, column: 94, scope: !361, inlinedAt: !509)
!518 = !DILocation(line: 29, column: 1, scope: !361, inlinedAt: !509)
!519 = !DILocation(line: 30, column: 23, scope: !375, inlinedAt: !509)
!520 = !DILocation(line: 31, column: 23, scope: !375, inlinedAt: !509)
!521 = !DILocation(line: 32, column: 23, scope: !375, inlinedAt: !509)
!522 = !DILocation(line: 33, column: 23, scope: !375, inlinedAt: !509)
!523 = !DILocation(line: 76, column: 17, scope: !510, inlinedAt: !513)
