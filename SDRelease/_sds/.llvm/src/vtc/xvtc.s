; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XVtc = type { %struct.XVtc_Config, i32, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8* }
%struct.XVtc_Config = type { i16, i32 }
%struct.XVtc_Polarity = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.XVtc_SourceSelect = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.XVtc_HoriOffsets = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.XVtc_Signal = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.XVtc_Timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }

@Xil_AssertStatus = external global i32
@.str = private unnamed_addr constant [52 x i8] c"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c\00", align 1

; Function Attrs: nounwind
define i32 @XVtc_CfgInitialize(%struct.XVtc* %InstancePtr, %struct.XVtc_Config* %CfgPtr, i32 %EffectiveAddr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XVtc*, align 4
  %3 = alloca %struct.XVtc_Config*, align 4
  %4 = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %2}, metadata !292), !dbg !293
  store %struct.XVtc_Config* %CfgPtr, %struct.XVtc_Config** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Config** %3}, metadata !294), !dbg !295
  store i32 %EffectiveAddr, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !296), !dbg !297
  %5 = load %struct.XVtc** %2, align 4, !dbg !298
  %6 = icmp ne %struct.XVtc* %5, null, !dbg !298
  br i1 %6, label %7, label %8, !dbg !298

; <label>:7                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !301
  br label %9, !dbg !301

; <label>:8                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 229), !dbg !304
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !304
  store i32 0, i32* %1, !dbg !304
  br label %49, !dbg !304

; <label>:9                                       ; preds = %7
  %10 = load %struct.XVtc_Config** %3, align 4, !dbg !307
  %11 = icmp ne %struct.XVtc_Config* %10, null, !dbg !307
  br i1 %11, label %12, label %13, !dbg !307

; <label>:12                                      ; preds = %9
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !310
  br label %14, !dbg !310

; <label>:13                                      ; preds = %9
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 230), !dbg !313
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !313
  store i32 0, i32* %1, !dbg !313
  br label %49, !dbg !313

; <label>:14                                      ; preds = %12
  %15 = load i32* %4, align 4, !dbg !316
  %16 = inttoptr i32 %15 to i32*, !dbg !316
  %17 = icmp ne i32* %16, null, !dbg !316
  br i1 %17, label %18, label %19, !dbg !316

; <label>:18                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !319
  br label %20, !dbg !319

; <label>:19                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 231), !dbg !322
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !322
  store i32 0, i32* %1, !dbg !322
  br label %49, !dbg !322

; <label>:20                                      ; preds = %18
  %21 = load %struct.XVtc** %2, align 4, !dbg !325
  %22 = bitcast %struct.XVtc* %21 to i8*, !dbg !325
  call void @llvm.memset.p0i8.i32(i8* %22, i8 0, i32 52, i32 1, i1 false), !dbg !325
  %23 = load %struct.XVtc** %2, align 4, !dbg !326
  %24 = getelementptr inbounds %struct.XVtc* %23, i32 0, i32 0, !dbg !326
  %25 = bitcast %struct.XVtc_Config* %24 to i8*, !dbg !326
  %26 = load %struct.XVtc_Config** %3, align 4, !dbg !326
  %27 = bitcast %struct.XVtc_Config* %26 to i8*, !dbg !326
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %27, i32 8, i32 1, i1 false), !dbg !326
  %28 = load i32* %4, align 4, !dbg !327
  %29 = load %struct.XVtc** %2, align 4, !dbg !327
  %30 = getelementptr inbounds %struct.XVtc* %29, i32 0, i32 0, !dbg !327
  %31 = getelementptr inbounds %struct.XVtc_Config* %30, i32 0, i32 1, !dbg !327
  store i32 %28, i32* %31, align 4, !dbg !327
  %32 = load %struct.XVtc** %2, align 4, !dbg !328
  %33 = getelementptr inbounds %struct.XVtc* %32, i32 0, i32 2, !dbg !328
  store void (i8*, i32)* bitcast (void (i8*)* @StubCallBack to void (i8*, i32)*), void (i8*, i32)** %33, align 4, !dbg !328
  %34 = load %struct.XVtc** %2, align 4, !dbg !329
  %35 = getelementptr inbounds %struct.XVtc* %34, i32 0, i32 4, !dbg !329
  store void (i8*, i32)* bitcast (void (i8*)* @StubCallBack to void (i8*, i32)*), void (i8*, i32)** %35, align 4, !dbg !329
  %36 = load %struct.XVtc** %2, align 4, !dbg !330
  %37 = getelementptr inbounds %struct.XVtc* %36, i32 0, i32 6, !dbg !330
  store void (i8*, i32)* bitcast (void (i8*)* @StubCallBack to void (i8*, i32)*), void (i8*, i32)** %37, align 4, !dbg !330
  %38 = load %struct.XVtc** %2, align 4, !dbg !331
  %39 = getelementptr inbounds %struct.XVtc* %38, i32 0, i32 8, !dbg !331
  store void (i8*, i32)* bitcast (void (i8*)* @StubCallBack to void (i8*, i32)*), void (i8*, i32)** %39, align 4, !dbg !331
  %40 = load %struct.XVtc** %2, align 4, !dbg !332
  %41 = getelementptr inbounds %struct.XVtc* %40, i32 0, i32 10, !dbg !332
  store void (i8*, i32)* @StubErrCallBack, void (i8*, i32)** %41, align 4, !dbg !332
  %42 = load %struct.XVtc** %2, align 4, !dbg !333
  %43 = getelementptr inbounds %struct.XVtc* %42, i32 0, i32 0, !dbg !333
  %44 = getelementptr inbounds %struct.XVtc_Config* %43, i32 0, i32 1, !dbg !333
  %45 = load i32* %44, align 4, !dbg !333
  %46 = add i32 %45, 0, !dbg !333
  call void @Xil_Out32(i32 %46, i32 -2147483648), !dbg !333
  %47 = load %struct.XVtc** %2, align 4, !dbg !334
  %48 = getelementptr inbounds %struct.XVtc* %47, i32 0, i32 1, !dbg !334
  store i32 286331153, i32* %48, align 4, !dbg !334
  store i32 0, i32* %1, !dbg !335
  br label %49, !dbg !335

; <label>:49                                      ; preds = %20, %19, %13, %8
  %50 = load i32* %1, !dbg !336
  ret i32 %50, !dbg !336
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @Xil_Assert(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind
define internal void @StubCallBack(i8* %CallBackRef) #0 {
  %1 = alloca i8*, align 4
  store i8* %CallBackRef, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !337), !dbg !338
  %2 = load i8** %1, align 4, !dbg !339
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2599), !dbg !340
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !340
  ret void, !dbg !342
}

; Function Attrs: nounwind
define internal void @StubErrCallBack(i8* %CallBackRef, i32 %ErrorMask) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  store i8* %CallBackRef, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !343), !dbg !344
  store i32 %ErrorMask, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !345), !dbg !346
  %3 = load i8** %1, align 4, !dbg !347
  %4 = load i32* %2, align 4, !dbg !348
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2626), !dbg !349
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !349
  ret void, !dbg !351
}

declare void @Xil_Out32(i32, i32) #2

; Function Attrs: nounwind
define void @XVtc_EnableGenerator(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %CtrlRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !352), !dbg !353
  call void @llvm.dbg.declare(metadata !{i32* %CtrlRegValue}, metadata !354), !dbg !355
  %2 = load %struct.XVtc** %1, align 4, !dbg !356
  %3 = icmp ne %struct.XVtc* %2, null, !dbg !356
  br i1 %3, label %4, label %5, !dbg !356

; <label>:4                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !359
  br label %6, !dbg !359

; <label>:5                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 275), !dbg !362
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !362
  br label %28, !dbg !362

; <label>:6                                       ; preds = %4
  %7 = load %struct.XVtc** %1, align 4, !dbg !365
  %8 = getelementptr inbounds %struct.XVtc* %7, i32 0, i32 1, !dbg !365
  %9 = load i32* %8, align 4, !dbg !365
  %10 = icmp eq i32 %9, 286331153, !dbg !365
  br i1 %10, label %11, label %12, !dbg !365

; <label>:11                                      ; preds = %6
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !368
  br label %13, !dbg !368

; <label>:12                                      ; preds = %6
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 276), !dbg !371
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !371
  br label %28, !dbg !371

; <label>:13                                      ; preds = %11
  %14 = load %struct.XVtc** %1, align 4, !dbg !374
  %15 = getelementptr inbounds %struct.XVtc* %14, i32 0, i32 0, !dbg !374
  %16 = getelementptr inbounds %struct.XVtc_Config* %15, i32 0, i32 1, !dbg !374
  %17 = load i32* %16, align 4, !dbg !374
  %18 = add i32 %17, 0, !dbg !374
  %19 = call i32 @Xil_In32(i32 %18), !dbg !374
  store i32 %19, i32* %CtrlRegValue, align 4, !dbg !374
  %20 = load i32* %CtrlRegValue, align 4, !dbg !375
  %21 = or i32 %20, 4, !dbg !375
  store i32 %21, i32* %CtrlRegValue, align 4, !dbg !375
  %22 = load %struct.XVtc** %1, align 4, !dbg !376
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !376
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !376
  %25 = load i32* %24, align 4, !dbg !376
  %26 = add i32 %25, 0, !dbg !376
  %27 = load i32* %CtrlRegValue, align 4, !dbg !376
  call void @Xil_Out32(i32 %26, i32 %27), !dbg !376
  br label %28, !dbg !377

; <label>:28                                      ; preds = %13, %12, %5
  ret void, !dbg !378
}

declare i32 @Xil_In32(i32) #2

; Function Attrs: nounwind
define void @XVtc_EnableDetector(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %CtrlRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !380), !dbg !381
  call void @llvm.dbg.declare(metadata !{i32* %CtrlRegValue}, metadata !382), !dbg !383
  %2 = load %struct.XVtc** %1, align 4, !dbg !384
  %3 = icmp ne %struct.XVtc* %2, null, !dbg !384
  br i1 %3, label %4, label %5, !dbg !384

; <label>:4                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !387
  br label %6, !dbg !387

; <label>:5                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 307), !dbg !390
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !390
  br label %28, !dbg !390

; <label>:6                                       ; preds = %4
  %7 = load %struct.XVtc** %1, align 4, !dbg !393
  %8 = getelementptr inbounds %struct.XVtc* %7, i32 0, i32 1, !dbg !393
  %9 = load i32* %8, align 4, !dbg !393
  %10 = icmp eq i32 %9, 286331153, !dbg !393
  br i1 %10, label %11, label %12, !dbg !393

; <label>:11                                      ; preds = %6
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !396
  br label %13, !dbg !396

; <label>:12                                      ; preds = %6
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 308), !dbg !399
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !399
  br label %28, !dbg !399

; <label>:13                                      ; preds = %11
  %14 = load %struct.XVtc** %1, align 4, !dbg !402
  %15 = getelementptr inbounds %struct.XVtc* %14, i32 0, i32 0, !dbg !402
  %16 = getelementptr inbounds %struct.XVtc_Config* %15, i32 0, i32 1, !dbg !402
  %17 = load i32* %16, align 4, !dbg !402
  %18 = add i32 %17, 0, !dbg !402
  %19 = call i32 @Xil_In32(i32 %18), !dbg !402
  store i32 %19, i32* %CtrlRegValue, align 4, !dbg !402
  %20 = load i32* %CtrlRegValue, align 4, !dbg !403
  %21 = or i32 %20, 8, !dbg !403
  store i32 %21, i32* %CtrlRegValue, align 4, !dbg !403
  %22 = load %struct.XVtc** %1, align 4, !dbg !404
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !404
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !404
  %25 = load i32* %24, align 4, !dbg !404
  %26 = add i32 %25, 0, !dbg !404
  %27 = load i32* %CtrlRegValue, align 4, !dbg !404
  call void @Xil_Out32(i32 %26, i32 %27), !dbg !404
  br label %28, !dbg !405

; <label>:28                                      ; preds = %13, %12, %5
  ret void, !dbg !406
}

; Function Attrs: nounwind
define void @XVtc_Enable(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %CtrlRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !408), !dbg !409
  call void @llvm.dbg.declare(metadata !{i32* %CtrlRegValue}, metadata !410), !dbg !411
  %2 = load %struct.XVtc** %1, align 4, !dbg !412
  %3 = icmp ne %struct.XVtc* %2, null, !dbg !412
  br i1 %3, label %4, label %5, !dbg !412

; <label>:4                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !415
  br label %6, !dbg !415

; <label>:5                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 340), !dbg !418
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !418
  br label %28, !dbg !418

; <label>:6                                       ; preds = %4
  %7 = load %struct.XVtc** %1, align 4, !dbg !421
  %8 = getelementptr inbounds %struct.XVtc* %7, i32 0, i32 1, !dbg !421
  %9 = load i32* %8, align 4, !dbg !421
  %10 = icmp eq i32 %9, 286331153, !dbg !421
  br i1 %10, label %11, label %12, !dbg !421

; <label>:11                                      ; preds = %6
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !424
  br label %13, !dbg !424

; <label>:12                                      ; preds = %6
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 341), !dbg !427
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !427
  br label %28, !dbg !427

; <label>:13                                      ; preds = %11
  %14 = load %struct.XVtc** %1, align 4, !dbg !430
  %15 = getelementptr inbounds %struct.XVtc* %14, i32 0, i32 0, !dbg !430
  %16 = getelementptr inbounds %struct.XVtc_Config* %15, i32 0, i32 1, !dbg !430
  %17 = load i32* %16, align 4, !dbg !430
  %18 = add i32 %17, 0, !dbg !430
  %19 = call i32 @Xil_In32(i32 %18), !dbg !430
  store i32 %19, i32* %CtrlRegValue, align 4, !dbg !430
  %20 = load i32* %CtrlRegValue, align 4, !dbg !431
  %21 = or i32 %20, 1, !dbg !431
  store i32 %21, i32* %CtrlRegValue, align 4, !dbg !431
  %22 = load %struct.XVtc** %1, align 4, !dbg !432
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !432
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !432
  %25 = load i32* %24, align 4, !dbg !432
  %26 = add i32 %25, 0, !dbg !432
  %27 = load i32* %CtrlRegValue, align 4, !dbg !432
  call void @Xil_Out32(i32 %26, i32 %27), !dbg !432
  br label %28, !dbg !433

; <label>:28                                      ; preds = %13, %12, %5
  ret void, !dbg !434
}

; Function Attrs: nounwind
define void @XVtc_DisableGenerator(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %CtrlRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !436), !dbg !437
  call void @llvm.dbg.declare(metadata !{i32* %CtrlRegValue}, metadata !438), !dbg !439
  %2 = load %struct.XVtc** %1, align 4, !dbg !440
  %3 = icmp ne %struct.XVtc* %2, null, !dbg !440
  br i1 %3, label %4, label %5, !dbg !440

; <label>:4                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !443
  br label %6, !dbg !443

; <label>:5                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 372), !dbg !446
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !446
  br label %28, !dbg !446

; <label>:6                                       ; preds = %4
  %7 = load %struct.XVtc** %1, align 4, !dbg !449
  %8 = getelementptr inbounds %struct.XVtc* %7, i32 0, i32 1, !dbg !449
  %9 = load i32* %8, align 4, !dbg !449
  %10 = icmp eq i32 %9, 286331153, !dbg !449
  br i1 %10, label %11, label %12, !dbg !449

; <label>:11                                      ; preds = %6
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !452
  br label %13, !dbg !452

; <label>:12                                      ; preds = %6
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 373), !dbg !455
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !455
  br label %28, !dbg !455

; <label>:13                                      ; preds = %11
  %14 = load %struct.XVtc** %1, align 4, !dbg !458
  %15 = getelementptr inbounds %struct.XVtc* %14, i32 0, i32 0, !dbg !458
  %16 = getelementptr inbounds %struct.XVtc_Config* %15, i32 0, i32 1, !dbg !458
  %17 = load i32* %16, align 4, !dbg !458
  %18 = add i32 %17, 0, !dbg !458
  %19 = call i32 @Xil_In32(i32 %18), !dbg !458
  store i32 %19, i32* %CtrlRegValue, align 4, !dbg !458
  %20 = load i32* %CtrlRegValue, align 4, !dbg !459
  %21 = and i32 %20, -5, !dbg !459
  store i32 %21, i32* %CtrlRegValue, align 4, !dbg !459
  %22 = load %struct.XVtc** %1, align 4, !dbg !460
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !460
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !460
  %25 = load i32* %24, align 4, !dbg !460
  %26 = add i32 %25, 0, !dbg !460
  %27 = load i32* %CtrlRegValue, align 4, !dbg !460
  call void @Xil_Out32(i32 %26, i32 %27), !dbg !460
  br label %28, !dbg !461

; <label>:28                                      ; preds = %13, %12, %5
  ret void, !dbg !462
}

; Function Attrs: nounwind
define void @XVtc_DisableDetector(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %CtrlRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !464), !dbg !465
  call void @llvm.dbg.declare(metadata !{i32* %CtrlRegValue}, metadata !466), !dbg !467
  %2 = load %struct.XVtc** %1, align 4, !dbg !468
  %3 = icmp ne %struct.XVtc* %2, null, !dbg !468
  br i1 %3, label %4, label %5, !dbg !468

; <label>:4                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !471
  br label %6, !dbg !471

; <label>:5                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 406), !dbg !474
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !474
  br label %28, !dbg !474

; <label>:6                                       ; preds = %4
  %7 = load %struct.XVtc** %1, align 4, !dbg !477
  %8 = getelementptr inbounds %struct.XVtc* %7, i32 0, i32 1, !dbg !477
  %9 = load i32* %8, align 4, !dbg !477
  %10 = icmp eq i32 %9, 286331153, !dbg !477
  br i1 %10, label %11, label %12, !dbg !477

; <label>:11                                      ; preds = %6
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !480
  br label %13, !dbg !480

; <label>:12                                      ; preds = %6
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 407), !dbg !483
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !483
  br label %28, !dbg !483

; <label>:13                                      ; preds = %11
  %14 = load %struct.XVtc** %1, align 4, !dbg !486
  %15 = getelementptr inbounds %struct.XVtc* %14, i32 0, i32 0, !dbg !486
  %16 = getelementptr inbounds %struct.XVtc_Config* %15, i32 0, i32 1, !dbg !486
  %17 = load i32* %16, align 4, !dbg !486
  %18 = add i32 %17, 0, !dbg !486
  %19 = call i32 @Xil_In32(i32 %18), !dbg !486
  store i32 %19, i32* %CtrlRegValue, align 4, !dbg !486
  %20 = load i32* %CtrlRegValue, align 4, !dbg !487
  %21 = and i32 %20, -9, !dbg !487
  store i32 %21, i32* %CtrlRegValue, align 4, !dbg !487
  %22 = load %struct.XVtc** %1, align 4, !dbg !488
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !488
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !488
  %25 = load i32* %24, align 4, !dbg !488
  %26 = add i32 %25, 0, !dbg !488
  %27 = load i32* %CtrlRegValue, align 4, !dbg !488
  call void @Xil_Out32(i32 %26, i32 %27), !dbg !488
  br label %28, !dbg !489

; <label>:28                                      ; preds = %13, %12, %5
  ret void, !dbg !490
}

; Function Attrs: nounwind
define void @XVtc_Disable(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %CtrlRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !492), !dbg !493
  call void @llvm.dbg.declare(metadata !{i32* %CtrlRegValue}, metadata !494), !dbg !495
  %2 = load %struct.XVtc** %1, align 4, !dbg !496
  %3 = icmp ne %struct.XVtc* %2, null, !dbg !496
  br i1 %3, label %4, label %5, !dbg !496

; <label>:4                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !499
  br label %6, !dbg !499

; <label>:5                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 441), !dbg !502
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !502
  br label %28, !dbg !502

; <label>:6                                       ; preds = %4
  %7 = load %struct.XVtc** %1, align 4, !dbg !505
  %8 = getelementptr inbounds %struct.XVtc* %7, i32 0, i32 1, !dbg !505
  %9 = load i32* %8, align 4, !dbg !505
  %10 = icmp eq i32 %9, 286331153, !dbg !505
  br i1 %10, label %11, label %12, !dbg !505

; <label>:11                                      ; preds = %6
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !508
  br label %13, !dbg !508

; <label>:12                                      ; preds = %6
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 442), !dbg !511
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !511
  br label %28, !dbg !511

; <label>:13                                      ; preds = %11
  %14 = load %struct.XVtc** %1, align 4, !dbg !514
  %15 = getelementptr inbounds %struct.XVtc* %14, i32 0, i32 0, !dbg !514
  %16 = getelementptr inbounds %struct.XVtc_Config* %15, i32 0, i32 1, !dbg !514
  %17 = load i32* %16, align 4, !dbg !514
  %18 = add i32 %17, 0, !dbg !514
  %19 = call i32 @Xil_In32(i32 %18), !dbg !514
  store i32 %19, i32* %CtrlRegValue, align 4, !dbg !514
  %20 = load i32* %CtrlRegValue, align 4, !dbg !515
  %21 = and i32 %20, -2, !dbg !515
  store i32 %21, i32* %CtrlRegValue, align 4, !dbg !515
  %22 = load %struct.XVtc** %1, align 4, !dbg !516
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !516
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !516
  %25 = load i32* %24, align 4, !dbg !516
  %26 = add i32 %25, 0, !dbg !516
  %27 = load i32* %CtrlRegValue, align 4, !dbg !516
  call void @Xil_Out32(i32 %26, i32 %27), !dbg !516
  br label %28, !dbg !517

; <label>:28                                      ; preds = %13, %12, %5
  ret void, !dbg !518
}

; Function Attrs: nounwind
define void @XVtc_SetPolarity(%struct.XVtc* %InstancePtr, %struct.XVtc_Polarity* %PolarityPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Polarity*, align 4
  %PolRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !520), !dbg !521
  store %struct.XVtc_Polarity* %PolarityPtr, %struct.XVtc_Polarity** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Polarity** %2}, metadata !522), !dbg !523
  call void @llvm.dbg.declare(metadata !{i32* %PolRegValue}, metadata !524), !dbg !525
  %3 = load %struct.XVtc** %1, align 4, !dbg !526
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !526
  br i1 %4, label %5, label %6, !dbg !526

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !529
  br label %7, !dbg !529

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 475), !dbg !532
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !532
  br label %90, !dbg !532

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !535
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !535
  %10 = load i32* %9, align 4, !dbg !535
  %11 = icmp eq i32 %10, 286331153, !dbg !535
  br i1 %11, label %12, label %13, !dbg !535

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !538
  br label %14, !dbg !538

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 476), !dbg !541
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !541
  br label %90, !dbg !541

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Polarity** %2, align 4, !dbg !544
  %16 = icmp ne %struct.XVtc_Polarity* %15, null, !dbg !544
  br i1 %16, label %17, label %18, !dbg !544

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !547
  br label %19, !dbg !547

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 477), !dbg !550
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !550
  br label %90, !dbg !550

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc** %1, align 4, !dbg !553
  %21 = getelementptr inbounds %struct.XVtc* %20, i32 0, i32 0, !dbg !553
  %22 = getelementptr inbounds %struct.XVtc_Config* %21, i32 0, i32 1, !dbg !553
  %23 = load i32* %22, align 4, !dbg !553
  %24 = add i32 %23, 108, !dbg !553
  %25 = call i32 @Xil_In32(i32 %24), !dbg !553
  store i32 %25, i32* %PolRegValue, align 4, !dbg !553
  %26 = load i32* %PolRegValue, align 4, !dbg !554
  %27 = and i32 %26, -128, !dbg !554
  store i32 %27, i32* %PolRegValue, align 4, !dbg !554
  %28 = load %struct.XVtc_Polarity** %2, align 4, !dbg !555
  %29 = getelementptr inbounds %struct.XVtc_Polarity* %28, i32 0, i32 0, !dbg !555
  %30 = load i8* %29, align 1, !dbg !555
  %31 = icmp ne i8 %30, 0, !dbg !555
  br i1 %31, label %32, label %35, !dbg !555

; <label>:32                                      ; preds = %19
  %33 = load i32* %PolRegValue, align 4, !dbg !557
  %34 = or i32 %33, 32, !dbg !557
  store i32 %34, i32* %PolRegValue, align 4, !dbg !557
  br label %35, !dbg !557

; <label>:35                                      ; preds = %32, %19
  %36 = load %struct.XVtc_Polarity** %2, align 4, !dbg !558
  %37 = getelementptr inbounds %struct.XVtc_Polarity* %36, i32 0, i32 1, !dbg !558
  %38 = load i8* %37, align 1, !dbg !558
  %39 = icmp ne i8 %38, 0, !dbg !558
  br i1 %39, label %40, label %43, !dbg !558

; <label>:40                                      ; preds = %35
  %41 = load i32* %PolRegValue, align 4, !dbg !560
  %42 = or i32 %41, 16, !dbg !560
  store i32 %42, i32* %PolRegValue, align 4, !dbg !560
  br label %43, !dbg !560

; <label>:43                                      ; preds = %40, %35
  %44 = load %struct.XVtc_Polarity** %2, align 4, !dbg !561
  %45 = getelementptr inbounds %struct.XVtc_Polarity* %44, i32 0, i32 2, !dbg !561
  %46 = load i8* %45, align 1, !dbg !561
  %47 = icmp ne i8 %46, 0, !dbg !561
  br i1 %47, label %48, label %51, !dbg !561

; <label>:48                                      ; preds = %43
  %49 = load i32* %PolRegValue, align 4, !dbg !563
  %50 = or i32 %49, 64, !dbg !563
  store i32 %50, i32* %PolRegValue, align 4, !dbg !563
  br label %51, !dbg !563

; <label>:51                                      ; preds = %48, %43
  %52 = load %struct.XVtc_Polarity** %2, align 4, !dbg !564
  %53 = getelementptr inbounds %struct.XVtc_Polarity* %52, i32 0, i32 3, !dbg !564
  %54 = load i8* %53, align 1, !dbg !564
  %55 = icmp ne i8 %54, 0, !dbg !564
  br i1 %55, label %56, label %59, !dbg !564

; <label>:56                                      ; preds = %51
  %57 = load i32* %PolRegValue, align 4, !dbg !566
  %58 = or i32 %57, 1, !dbg !566
  store i32 %58, i32* %PolRegValue, align 4, !dbg !566
  br label %59, !dbg !566

; <label>:59                                      ; preds = %56, %51
  %60 = load %struct.XVtc_Polarity** %2, align 4, !dbg !567
  %61 = getelementptr inbounds %struct.XVtc_Polarity* %60, i32 0, i32 4, !dbg !567
  %62 = load i8* %61, align 1, !dbg !567
  %63 = icmp ne i8 %62, 0, !dbg !567
  br i1 %63, label %64, label %67, !dbg !567

; <label>:64                                      ; preds = %59
  %65 = load i32* %PolRegValue, align 4, !dbg !569
  %66 = or i32 %65, 4, !dbg !569
  store i32 %66, i32* %PolRegValue, align 4, !dbg !569
  br label %67, !dbg !569

; <label>:67                                      ; preds = %64, %59
  %68 = load %struct.XVtc_Polarity** %2, align 4, !dbg !570
  %69 = getelementptr inbounds %struct.XVtc_Polarity* %68, i32 0, i32 5, !dbg !570
  %70 = load i8* %69, align 1, !dbg !570
  %71 = icmp ne i8 %70, 0, !dbg !570
  br i1 %71, label %72, label %75, !dbg !570

; <label>:72                                      ; preds = %67
  %73 = load i32* %PolRegValue, align 4, !dbg !572
  %74 = or i32 %73, 2, !dbg !572
  store i32 %74, i32* %PolRegValue, align 4, !dbg !572
  br label %75, !dbg !572

; <label>:75                                      ; preds = %72, %67
  %76 = load %struct.XVtc_Polarity** %2, align 4, !dbg !573
  %77 = getelementptr inbounds %struct.XVtc_Polarity* %76, i32 0, i32 6, !dbg !573
  %78 = load i8* %77, align 1, !dbg !573
  %79 = icmp ne i8 %78, 0, !dbg !573
  br i1 %79, label %80, label %83, !dbg !573

; <label>:80                                      ; preds = %75
  %81 = load i32* %PolRegValue, align 4, !dbg !575
  %82 = or i32 %81, 8, !dbg !575
  store i32 %82, i32* %PolRegValue, align 4, !dbg !575
  br label %83, !dbg !575

; <label>:83                                      ; preds = %80, %75
  %84 = load %struct.XVtc** %1, align 4, !dbg !576
  %85 = getelementptr inbounds %struct.XVtc* %84, i32 0, i32 0, !dbg !576
  %86 = getelementptr inbounds %struct.XVtc_Config* %85, i32 0, i32 1, !dbg !576
  %87 = load i32* %86, align 4, !dbg !576
  %88 = add i32 %87, 108, !dbg !576
  %89 = load i32* %PolRegValue, align 4, !dbg !576
  call void @Xil_Out32(i32 %88, i32 %89), !dbg !576
  br label %90, !dbg !577

; <label>:90                                      ; preds = %83, %18, %13, %6
  ret void, !dbg !578
}

; Function Attrs: nounwind
define void @XVtc_GetPolarity(%struct.XVtc* %InstancePtr, %struct.XVtc_Polarity* %PolarityPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Polarity*, align 4
  %PolRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !580), !dbg !581
  store %struct.XVtc_Polarity* %PolarityPtr, %struct.XVtc_Polarity** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Polarity** %2}, metadata !582), !dbg !583
  call void @llvm.dbg.declare(metadata !{i32* %PolRegValue}, metadata !584), !dbg !585
  %3 = load %struct.XVtc** %1, align 4, !dbg !586
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !586
  br i1 %4, label %5, label %6, !dbg !586

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !589
  br label %7, !dbg !589

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 535), !dbg !592
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !592
  br label %76, !dbg !592

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !595
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !595
  %10 = load i32* %9, align 4, !dbg !595
  %11 = icmp eq i32 %10, 286331153, !dbg !595
  br i1 %11, label %12, label %13, !dbg !595

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !598
  br label %14, !dbg !598

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 536), !dbg !601
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !601
  br label %76, !dbg !601

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Polarity** %2, align 4, !dbg !604
  %16 = icmp ne %struct.XVtc_Polarity* %15, null, !dbg !604
  br i1 %16, label %17, label %18, !dbg !604

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !607
  br label %19, !dbg !607

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 537), !dbg !610
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !610
  br label %76, !dbg !610

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc_Polarity** %2, align 4, !dbg !613
  %21 = bitcast %struct.XVtc_Polarity* %20 to i8*, !dbg !613
  call void @llvm.memset.p0i8.i32(i8* %21, i8 0, i32 7, i32 1, i1 false), !dbg !613
  %22 = load %struct.XVtc** %1, align 4, !dbg !614
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !614
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !614
  %25 = load i32* %24, align 4, !dbg !614
  %26 = add i32 %25, 108, !dbg !614
  %27 = call i32 @Xil_In32(i32 %26), !dbg !614
  store i32 %27, i32* %PolRegValue, align 4, !dbg !614
  %28 = load i32* %PolRegValue, align 4, !dbg !615
  %29 = and i32 %28, 32, !dbg !615
  %30 = icmp ne i32 %29, 0, !dbg !615
  br i1 %30, label %31, label %34, !dbg !615

; <label>:31                                      ; preds = %19
  %32 = load %struct.XVtc_Polarity** %2, align 4, !dbg !617
  %33 = getelementptr inbounds %struct.XVtc_Polarity* %32, i32 0, i32 0, !dbg !617
  store i8 1, i8* %33, align 1, !dbg !617
  br label %34, !dbg !617

; <label>:34                                      ; preds = %31, %19
  %35 = load i32* %PolRegValue, align 4, !dbg !618
  %36 = and i32 %35, 16, !dbg !618
  %37 = icmp ne i32 %36, 0, !dbg !618
  br i1 %37, label %38, label %41, !dbg !618

; <label>:38                                      ; preds = %34
  %39 = load %struct.XVtc_Polarity** %2, align 4, !dbg !620
  %40 = getelementptr inbounds %struct.XVtc_Polarity* %39, i32 0, i32 1, !dbg !620
  store i8 1, i8* %40, align 1, !dbg !620
  br label %41, !dbg !620

; <label>:41                                      ; preds = %38, %34
  %42 = load i32* %PolRegValue, align 4, !dbg !621
  %43 = and i32 %42, 64, !dbg !621
  %44 = icmp ne i32 %43, 0, !dbg !621
  br i1 %44, label %45, label %48, !dbg !621

; <label>:45                                      ; preds = %41
  %46 = load %struct.XVtc_Polarity** %2, align 4, !dbg !623
  %47 = getelementptr inbounds %struct.XVtc_Polarity* %46, i32 0, i32 2, !dbg !623
  store i8 1, i8* %47, align 1, !dbg !623
  br label %48, !dbg !623

; <label>:48                                      ; preds = %45, %41
  %49 = load i32* %PolRegValue, align 4, !dbg !624
  %50 = and i32 %49, 1, !dbg !624
  %51 = icmp ne i32 %50, 0, !dbg !624
  br i1 %51, label %52, label %55, !dbg !624

; <label>:52                                      ; preds = %48
  %53 = load %struct.XVtc_Polarity** %2, align 4, !dbg !626
  %54 = getelementptr inbounds %struct.XVtc_Polarity* %53, i32 0, i32 3, !dbg !626
  store i8 1, i8* %54, align 1, !dbg !626
  br label %55, !dbg !626

; <label>:55                                      ; preds = %52, %48
  %56 = load i32* %PolRegValue, align 4, !dbg !627
  %57 = and i32 %56, 4, !dbg !627
  %58 = icmp ne i32 %57, 0, !dbg !627
  br i1 %58, label %59, label %62, !dbg !627

; <label>:59                                      ; preds = %55
  %60 = load %struct.XVtc_Polarity** %2, align 4, !dbg !629
  %61 = getelementptr inbounds %struct.XVtc_Polarity* %60, i32 0, i32 4, !dbg !629
  store i8 1, i8* %61, align 1, !dbg !629
  br label %62, !dbg !629

; <label>:62                                      ; preds = %59, %55
  %63 = load i32* %PolRegValue, align 4, !dbg !630
  %64 = and i32 %63, 2, !dbg !630
  %65 = icmp ne i32 %64, 0, !dbg !630
  br i1 %65, label %66, label %69, !dbg !630

; <label>:66                                      ; preds = %62
  %67 = load %struct.XVtc_Polarity** %2, align 4, !dbg !632
  %68 = getelementptr inbounds %struct.XVtc_Polarity* %67, i32 0, i32 5, !dbg !632
  store i8 1, i8* %68, align 1, !dbg !632
  br label %69, !dbg !632

; <label>:69                                      ; preds = %66, %62
  %70 = load i32* %PolRegValue, align 4, !dbg !633
  %71 = and i32 %70, 8, !dbg !633
  %72 = icmp ne i32 %71, 0, !dbg !633
  br i1 %72, label %73, label %76, !dbg !633

; <label>:73                                      ; preds = %69
  %74 = load %struct.XVtc_Polarity** %2, align 4, !dbg !635
  %75 = getelementptr inbounds %struct.XVtc_Polarity* %74, i32 0, i32 6, !dbg !635
  store i8 1, i8* %75, align 1, !dbg !635
  br label %76, !dbg !635

; <label>:76                                      ; preds = %6, %13, %18, %73, %69
  ret void, !dbg !636
}

; Function Attrs: nounwind
define void @XVtc_GetDetectorPolarity(%struct.XVtc* %InstancePtr, %struct.XVtc_Polarity* %PolarityPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Polarity*, align 4
  %PolRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !637), !dbg !638
  store %struct.XVtc_Polarity* %PolarityPtr, %struct.XVtc_Polarity** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Polarity** %2}, metadata !639), !dbg !640
  call void @llvm.dbg.declare(metadata !{i32* %PolRegValue}, metadata !641), !dbg !642
  %3 = load %struct.XVtc** %1, align 4, !dbg !643
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !643
  br i1 %4, label %5, label %6, !dbg !643

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !646
  br label %7, !dbg !646

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 592), !dbg !649
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !649
  br label %76, !dbg !649

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !652
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !652
  %10 = load i32* %9, align 4, !dbg !652
  %11 = icmp eq i32 %10, 286331153, !dbg !652
  br i1 %11, label %12, label %13, !dbg !652

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !655
  br label %14, !dbg !655

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 593), !dbg !658
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !658
  br label %76, !dbg !658

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Polarity** %2, align 4, !dbg !661
  %16 = icmp ne %struct.XVtc_Polarity* %15, null, !dbg !661
  br i1 %16, label %17, label %18, !dbg !661

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !664
  br label %19, !dbg !664

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 594), !dbg !667
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !667
  br label %76, !dbg !667

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc_Polarity** %2, align 4, !dbg !670
  %21 = bitcast %struct.XVtc_Polarity* %20 to i8*, !dbg !670
  call void @llvm.memset.p0i8.i32(i8* %21, i8 0, i32 7, i32 1, i1 false), !dbg !670
  %22 = load %struct.XVtc** %1, align 4, !dbg !671
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !671
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !671
  %25 = load i32* %24, align 4, !dbg !671
  %26 = add i32 %25, 44, !dbg !671
  %27 = call i32 @Xil_In32(i32 %26), !dbg !671
  store i32 %27, i32* %PolRegValue, align 4, !dbg !671
  %28 = load i32* %PolRegValue, align 4, !dbg !672
  %29 = and i32 %28, 32, !dbg !672
  %30 = icmp ne i32 %29, 0, !dbg !672
  br i1 %30, label %31, label %34, !dbg !672

; <label>:31                                      ; preds = %19
  %32 = load %struct.XVtc_Polarity** %2, align 4, !dbg !674
  %33 = getelementptr inbounds %struct.XVtc_Polarity* %32, i32 0, i32 0, !dbg !674
  store i8 1, i8* %33, align 1, !dbg !674
  br label %34, !dbg !674

; <label>:34                                      ; preds = %31, %19
  %35 = load i32* %PolRegValue, align 4, !dbg !675
  %36 = and i32 %35, 16, !dbg !675
  %37 = icmp ne i32 %36, 0, !dbg !675
  br i1 %37, label %38, label %41, !dbg !675

; <label>:38                                      ; preds = %34
  %39 = load %struct.XVtc_Polarity** %2, align 4, !dbg !677
  %40 = getelementptr inbounds %struct.XVtc_Polarity* %39, i32 0, i32 1, !dbg !677
  store i8 1, i8* %40, align 1, !dbg !677
  br label %41, !dbg !677

; <label>:41                                      ; preds = %38, %34
  %42 = load i32* %PolRegValue, align 4, !dbg !678
  %43 = and i32 %42, 64, !dbg !678
  %44 = icmp ne i32 %43, 0, !dbg !678
  br i1 %44, label %45, label %48, !dbg !678

; <label>:45                                      ; preds = %41
  %46 = load %struct.XVtc_Polarity** %2, align 4, !dbg !680
  %47 = getelementptr inbounds %struct.XVtc_Polarity* %46, i32 0, i32 2, !dbg !680
  store i8 1, i8* %47, align 1, !dbg !680
  br label %48, !dbg !680

; <label>:48                                      ; preds = %45, %41
  %49 = load i32* %PolRegValue, align 4, !dbg !681
  %50 = and i32 %49, 1, !dbg !681
  %51 = icmp ne i32 %50, 0, !dbg !681
  br i1 %51, label %52, label %55, !dbg !681

; <label>:52                                      ; preds = %48
  %53 = load %struct.XVtc_Polarity** %2, align 4, !dbg !683
  %54 = getelementptr inbounds %struct.XVtc_Polarity* %53, i32 0, i32 3, !dbg !683
  store i8 1, i8* %54, align 1, !dbg !683
  br label %55, !dbg !683

; <label>:55                                      ; preds = %52, %48
  %56 = load i32* %PolRegValue, align 4, !dbg !684
  %57 = and i32 %56, 4, !dbg !684
  %58 = icmp ne i32 %57, 0, !dbg !684
  br i1 %58, label %59, label %62, !dbg !684

; <label>:59                                      ; preds = %55
  %60 = load %struct.XVtc_Polarity** %2, align 4, !dbg !686
  %61 = getelementptr inbounds %struct.XVtc_Polarity* %60, i32 0, i32 4, !dbg !686
  store i8 1, i8* %61, align 1, !dbg !686
  br label %62, !dbg !686

; <label>:62                                      ; preds = %59, %55
  %63 = load i32* %PolRegValue, align 4, !dbg !687
  %64 = and i32 %63, 2, !dbg !687
  %65 = icmp ne i32 %64, 0, !dbg !687
  br i1 %65, label %66, label %69, !dbg !687

; <label>:66                                      ; preds = %62
  %67 = load %struct.XVtc_Polarity** %2, align 4, !dbg !689
  %68 = getelementptr inbounds %struct.XVtc_Polarity* %67, i32 0, i32 5, !dbg !689
  store i8 1, i8* %68, align 1, !dbg !689
  br label %69, !dbg !689

; <label>:69                                      ; preds = %66, %62
  %70 = load i32* %PolRegValue, align 4, !dbg !690
  %71 = and i32 %70, 8, !dbg !690
  %72 = icmp ne i32 %71, 0, !dbg !690
  br i1 %72, label %73, label %76, !dbg !690

; <label>:73                                      ; preds = %69
  %74 = load %struct.XVtc_Polarity** %2, align 4, !dbg !692
  %75 = getelementptr inbounds %struct.XVtc_Polarity* %74, i32 0, i32 6, !dbg !692
  store i8 1, i8* %75, align 1, !dbg !692
  br label %76, !dbg !692

; <label>:76                                      ; preds = %6, %13, %18, %73, %69
  ret void, !dbg !693
}

; Function Attrs: nounwind
define void @XVtc_SetSource(%struct.XVtc* %InstancePtr, %struct.XVtc_SourceSelect* %SourcePtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_SourceSelect*, align 4
  %CtrlRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !694), !dbg !695
  store %struct.XVtc_SourceSelect* %SourcePtr, %struct.XVtc_SourceSelect** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_SourceSelect** %2}, metadata !696), !dbg !697
  call void @llvm.dbg.declare(metadata !{i32* %CtrlRegValue}, metadata !698), !dbg !699
  %3 = load %struct.XVtc** %1, align 4, !dbg !700
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !700
  br i1 %4, label %5, label %6, !dbg !700

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !703
  br label %7, !dbg !703

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 648), !dbg !706
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !706
  br label %178, !dbg !706

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !709
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !709
  %10 = load i32* %9, align 4, !dbg !709
  %11 = icmp eq i32 %10, 286331153, !dbg !709
  br i1 %11, label %12, label %13, !dbg !709

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !712
  br label %14, !dbg !712

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 649), !dbg !715
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !715
  br label %178, !dbg !715

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !718
  %16 = icmp ne %struct.XVtc_SourceSelect* %15, null, !dbg !718
  br i1 %16, label %17, label %18, !dbg !718

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !721
  br label %19, !dbg !721

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 650), !dbg !724
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !724
  br label %178, !dbg !724

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc** %1, align 4, !dbg !727
  %21 = getelementptr inbounds %struct.XVtc* %20, i32 0, i32 0, !dbg !727
  %22 = getelementptr inbounds %struct.XVtc_Config* %21, i32 0, i32 1, !dbg !727
  %23 = load i32* %22, align 4, !dbg !727
  %24 = add i32 %23, 0, !dbg !727
  %25 = call i32 @Xil_In32(i32 %24), !dbg !727
  store i32 %25, i32* %CtrlRegValue, align 4, !dbg !727
  %26 = load i32* %CtrlRegValue, align 4, !dbg !728
  %27 = and i32 %26, -66973441, !dbg !728
  store i32 %27, i32* %CtrlRegValue, align 4, !dbg !728
  %28 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !729
  %29 = getelementptr inbounds %struct.XVtc_SourceSelect* %28, i32 0, i32 0, !dbg !729
  %30 = load i8* %29, align 1, !dbg !729
  %31 = icmp ne i8 %30, 0, !dbg !729
  br i1 %31, label %32, label %35, !dbg !729

; <label>:32                                      ; preds = %19
  %33 = load i32* %CtrlRegValue, align 4, !dbg !731
  %34 = or i32 %33, 67108864, !dbg !731
  store i32 %34, i32* %CtrlRegValue, align 4, !dbg !731
  br label %35, !dbg !731

; <label>:35                                      ; preds = %32, %19
  %36 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !732
  %37 = getelementptr inbounds %struct.XVtc_SourceSelect* %36, i32 0, i32 1, !dbg !732
  %38 = load i8* %37, align 1, !dbg !732
  %39 = icmp ne i8 %38, 0, !dbg !732
  br i1 %39, label %40, label %43, !dbg !732

; <label>:40                                      ; preds = %35
  %41 = load i32* %CtrlRegValue, align 4, !dbg !734
  %42 = or i32 %41, 33554432, !dbg !734
  store i32 %42, i32* %CtrlRegValue, align 4, !dbg !734
  br label %43, !dbg !734

; <label>:43                                      ; preds = %40, %35
  %44 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !735
  %45 = getelementptr inbounds %struct.XVtc_SourceSelect* %44, i32 0, i32 2, !dbg !735
  %46 = load i8* %45, align 1, !dbg !735
  %47 = icmp ne i8 %46, 0, !dbg !735
  br i1 %47, label %48, label %51, !dbg !735

; <label>:48                                      ; preds = %43
  %49 = load i32* %CtrlRegValue, align 4, !dbg !737
  %50 = or i32 %49, 16777216, !dbg !737
  store i32 %50, i32* %CtrlRegValue, align 4, !dbg !737
  br label %51, !dbg !737

; <label>:51                                      ; preds = %48, %43
  %52 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !738
  %53 = getelementptr inbounds %struct.XVtc_SourceSelect* %52, i32 0, i32 3, !dbg !738
  %54 = load i8* %53, align 1, !dbg !738
  %55 = icmp ne i8 %54, 0, !dbg !738
  br i1 %55, label %56, label %59, !dbg !738

; <label>:56                                      ; preds = %51
  %57 = load i32* %CtrlRegValue, align 4, !dbg !740
  %58 = or i32 %57, 8388608, !dbg !740
  store i32 %58, i32* %CtrlRegValue, align 4, !dbg !740
  br label %59, !dbg !740

; <label>:59                                      ; preds = %56, %51
  %60 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !741
  %61 = getelementptr inbounds %struct.XVtc_SourceSelect* %60, i32 0, i32 4, !dbg !741
  %62 = load i8* %61, align 1, !dbg !741
  %63 = icmp ne i8 %62, 0, !dbg !741
  br i1 %63, label %64, label %67, !dbg !741

; <label>:64                                      ; preds = %59
  %65 = load i32* %CtrlRegValue, align 4, !dbg !743
  %66 = or i32 %65, 4194304, !dbg !743
  store i32 %66, i32* %CtrlRegValue, align 4, !dbg !743
  br label %67, !dbg !743

; <label>:67                                      ; preds = %64, %59
  %68 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !744
  %69 = getelementptr inbounds %struct.XVtc_SourceSelect* %68, i32 0, i32 5, !dbg !744
  %70 = load i8* %69, align 1, !dbg !744
  %71 = icmp ne i8 %70, 0, !dbg !744
  br i1 %71, label %72, label %75, !dbg !744

; <label>:72                                      ; preds = %67
  %73 = load i32* %CtrlRegValue, align 4, !dbg !746
  %74 = or i32 %73, 2097152, !dbg !746
  store i32 %74, i32* %CtrlRegValue, align 4, !dbg !746
  br label %75, !dbg !746

; <label>:75                                      ; preds = %72, %67
  %76 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !747
  %77 = getelementptr inbounds %struct.XVtc_SourceSelect* %76, i32 0, i32 6, !dbg !747
  %78 = load i8* %77, align 1, !dbg !747
  %79 = icmp ne i8 %78, 0, !dbg !747
  br i1 %79, label %80, label %83, !dbg !747

; <label>:80                                      ; preds = %75
  %81 = load i32* %CtrlRegValue, align 4, !dbg !749
  %82 = or i32 %81, 1048576, !dbg !749
  store i32 %82, i32* %CtrlRegValue, align 4, !dbg !749
  br label %83, !dbg !749

; <label>:83                                      ; preds = %80, %75
  %84 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !750
  %85 = getelementptr inbounds %struct.XVtc_SourceSelect* %84, i32 0, i32 7, !dbg !750
  %86 = load i8* %85, align 1, !dbg !750
  %87 = icmp ne i8 %86, 0, !dbg !750
  br i1 %87, label %88, label %91, !dbg !750

; <label>:88                                      ; preds = %83
  %89 = load i32* %CtrlRegValue, align 4, !dbg !752
  %90 = or i32 %89, 262144, !dbg !752
  store i32 %90, i32* %CtrlRegValue, align 4, !dbg !752
  br label %91, !dbg !752

; <label>:91                                      ; preds = %88, %83
  %92 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !753
  %93 = getelementptr inbounds %struct.XVtc_SourceSelect* %92, i32 0, i32 8, !dbg !753
  %94 = load i8* %93, align 1, !dbg !753
  %95 = icmp ne i8 %94, 0, !dbg !753
  br i1 %95, label %96, label %99, !dbg !753

; <label>:96                                      ; preds = %91
  %97 = load i32* %CtrlRegValue, align 4, !dbg !755
  %98 = or i32 %97, 131072, !dbg !755
  store i32 %98, i32* %CtrlRegValue, align 4, !dbg !755
  br label %99, !dbg !755

; <label>:99                                      ; preds = %96, %91
  %100 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !756
  %101 = getelementptr inbounds %struct.XVtc_SourceSelect* %100, i32 0, i32 9, !dbg !756
  %102 = load i8* %101, align 1, !dbg !756
  %103 = icmp ne i8 %102, 0, !dbg !756
  br i1 %103, label %104, label %107, !dbg !756

; <label>:104                                     ; preds = %99
  %105 = load i32* %CtrlRegValue, align 4, !dbg !758
  %106 = or i32 %105, 65536, !dbg !758
  store i32 %106, i32* %CtrlRegValue, align 4, !dbg !758
  br label %107, !dbg !758

; <label>:107                                     ; preds = %104, %99
  %108 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !759
  %109 = getelementptr inbounds %struct.XVtc_SourceSelect* %108, i32 0, i32 10, !dbg !759
  %110 = load i8* %109, align 1, !dbg !759
  %111 = icmp ne i8 %110, 0, !dbg !759
  br i1 %111, label %112, label %115, !dbg !759

; <label>:112                                     ; preds = %107
  %113 = load i32* %CtrlRegValue, align 4, !dbg !761
  %114 = or i32 %113, 32768, !dbg !761
  store i32 %114, i32* %CtrlRegValue, align 4, !dbg !761
  br label %115, !dbg !761

; <label>:115                                     ; preds = %112, %107
  %116 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !762
  %117 = getelementptr inbounds %struct.XVtc_SourceSelect* %116, i32 0, i32 11, !dbg !762
  %118 = load i8* %117, align 1, !dbg !762
  %119 = icmp ne i8 %118, 0, !dbg !762
  br i1 %119, label %120, label %123, !dbg !762

; <label>:120                                     ; preds = %115
  %121 = load i32* %CtrlRegValue, align 4, !dbg !764
  %122 = or i32 %121, 16384, !dbg !764
  store i32 %122, i32* %CtrlRegValue, align 4, !dbg !764
  br label %123, !dbg !764

; <label>:123                                     ; preds = %120, %115
  %124 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !765
  %125 = getelementptr inbounds %struct.XVtc_SourceSelect* %124, i32 0, i32 12, !dbg !765
  %126 = load i8* %125, align 1, !dbg !765
  %127 = icmp ne i8 %126, 0, !dbg !765
  br i1 %127, label %128, label %131, !dbg !765

; <label>:128                                     ; preds = %123
  %129 = load i32* %CtrlRegValue, align 4, !dbg !767
  %130 = or i32 %129, 8192, !dbg !767
  store i32 %130, i32* %CtrlRegValue, align 4, !dbg !767
  br label %131, !dbg !767

; <label>:131                                     ; preds = %128, %123
  %132 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !768
  %133 = getelementptr inbounds %struct.XVtc_SourceSelect* %132, i32 0, i32 14, !dbg !768
  %134 = load i8* %133, align 1, !dbg !768
  %135 = icmp ne i8 %134, 0, !dbg !768
  br i1 %135, label %136, label %139, !dbg !768

; <label>:136                                     ; preds = %131
  %137 = load i32* %CtrlRegValue, align 4, !dbg !770
  %138 = or i32 %137, 2048, !dbg !770
  store i32 %138, i32* %CtrlRegValue, align 4, !dbg !770
  br label %139, !dbg !770

; <label>:139                                     ; preds = %136, %131
  %140 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !771
  %141 = getelementptr inbounds %struct.XVtc_SourceSelect* %140, i32 0, i32 15, !dbg !771
  %142 = load i8* %141, align 1, !dbg !771
  %143 = icmp ne i8 %142, 0, !dbg !771
  br i1 %143, label %144, label %147, !dbg !771

; <label>:144                                     ; preds = %139
  %145 = load i32* %CtrlRegValue, align 4, !dbg !773
  %146 = or i32 %145, 1024, !dbg !773
  store i32 %146, i32* %CtrlRegValue, align 4, !dbg !773
  br label %147, !dbg !773

; <label>:147                                     ; preds = %144, %139
  %148 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !774
  %149 = getelementptr inbounds %struct.XVtc_SourceSelect* %148, i32 0, i32 16, !dbg !774
  %150 = load i8* %149, align 1, !dbg !774
  %151 = icmp ne i8 %150, 0, !dbg !774
  br i1 %151, label %152, label %155, !dbg !774

; <label>:152                                     ; preds = %147
  %153 = load i32* %CtrlRegValue, align 4, !dbg !776
  %154 = or i32 %153, 512, !dbg !776
  store i32 %154, i32* %CtrlRegValue, align 4, !dbg !776
  br label %155, !dbg !776

; <label>:155                                     ; preds = %152, %147
  %156 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !777
  %157 = getelementptr inbounds %struct.XVtc_SourceSelect* %156, i32 0, i32 17, !dbg !777
  %158 = load i8* %157, align 1, !dbg !777
  %159 = icmp ne i8 %158, 0, !dbg !777
  br i1 %159, label %160, label %163, !dbg !777

; <label>:160                                     ; preds = %155
  %161 = load i32* %CtrlRegValue, align 4, !dbg !779
  %162 = or i32 %161, 256, !dbg !779
  store i32 %162, i32* %CtrlRegValue, align 4, !dbg !779
  br label %163, !dbg !779

; <label>:163                                     ; preds = %160, %155
  %164 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !780
  %165 = getelementptr inbounds %struct.XVtc_SourceSelect* %164, i32 0, i32 18, !dbg !780
  %166 = load i8* %165, align 1, !dbg !780
  %167 = icmp ne i8 %166, 0, !dbg !780
  br i1 %167, label %168, label %171, !dbg !780

; <label>:168                                     ; preds = %163
  %169 = load i32* %CtrlRegValue, align 4, !dbg !782
  %170 = or i32 %169, 524288, !dbg !782
  store i32 %170, i32* %CtrlRegValue, align 4, !dbg !782
  br label %171, !dbg !782

; <label>:171                                     ; preds = %168, %163
  %172 = load %struct.XVtc** %1, align 4, !dbg !783
  %173 = getelementptr inbounds %struct.XVtc* %172, i32 0, i32 0, !dbg !783
  %174 = getelementptr inbounds %struct.XVtc_Config* %173, i32 0, i32 1, !dbg !783
  %175 = load i32* %174, align 4, !dbg !783
  %176 = add i32 %175, 0, !dbg !783
  %177 = load i32* %CtrlRegValue, align 4, !dbg !783
  call void @Xil_Out32(i32 %176, i32 %177), !dbg !783
  br label %178, !dbg !784

; <label>:178                                     ; preds = %171, %18, %13, %6
  ret void, !dbg !785
}

; Function Attrs: nounwind
define void @XVtc_GetSource(%struct.XVtc* %InstancePtr, %struct.XVtc_SourceSelect* %SourcePtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_SourceSelect*, align 4
  %CtrlRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !787), !dbg !788
  store %struct.XVtc_SourceSelect* %SourcePtr, %struct.XVtc_SourceSelect** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_SourceSelect** %2}, metadata !789), !dbg !790
  call void @llvm.dbg.declare(metadata !{i32* %CtrlRegValue}, metadata !791), !dbg !792
  %3 = load %struct.XVtc** %1, align 4, !dbg !793
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !793
  br i1 %4, label %5, label %6, !dbg !793

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !796
  br label %7, !dbg !796

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 743), !dbg !799
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !799
  br label %153, !dbg !799

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !802
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !802
  %10 = load i32* %9, align 4, !dbg !802
  %11 = icmp eq i32 %10, 286331153, !dbg !802
  br i1 %11, label %12, label %13, !dbg !802

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !805
  br label %14, !dbg !805

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 744), !dbg !808
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !808
  br label %153, !dbg !808

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !811
  %16 = icmp ne %struct.XVtc_SourceSelect* %15, null, !dbg !811
  br i1 %16, label %17, label %18, !dbg !811

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !814
  br label %19, !dbg !814

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 745), !dbg !817
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !817
  br label %153, !dbg !817

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !820
  %21 = bitcast %struct.XVtc_SourceSelect* %20 to i8*, !dbg !820
  call void @llvm.memset.p0i8.i32(i8* %21, i8 0, i32 19, i32 1, i1 false), !dbg !820
  %22 = load %struct.XVtc** %1, align 4, !dbg !821
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !821
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !821
  %25 = load i32* %24, align 4, !dbg !821
  %26 = add i32 %25, 0, !dbg !821
  %27 = call i32 @Xil_In32(i32 %26), !dbg !821
  store i32 %27, i32* %CtrlRegValue, align 4, !dbg !821
  %28 = load i32* %CtrlRegValue, align 4, !dbg !822
  %29 = and i32 %28, 67108864, !dbg !822
  %30 = icmp ne i32 %29, 0, !dbg !822
  br i1 %30, label %31, label %34, !dbg !822

; <label>:31                                      ; preds = %19
  %32 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !824
  %33 = getelementptr inbounds %struct.XVtc_SourceSelect* %32, i32 0, i32 0, !dbg !824
  store i8 1, i8* %33, align 1, !dbg !824
  br label %34, !dbg !824

; <label>:34                                      ; preds = %31, %19
  %35 = load i32* %CtrlRegValue, align 4, !dbg !825
  %36 = and i32 %35, 33554432, !dbg !825
  %37 = icmp ne i32 %36, 0, !dbg !825
  br i1 %37, label %38, label %41, !dbg !825

; <label>:38                                      ; preds = %34
  %39 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !827
  %40 = getelementptr inbounds %struct.XVtc_SourceSelect* %39, i32 0, i32 1, !dbg !827
  store i8 1, i8* %40, align 1, !dbg !827
  br label %41, !dbg !827

; <label>:41                                      ; preds = %38, %34
  %42 = load i32* %CtrlRegValue, align 4, !dbg !828
  %43 = and i32 %42, 16777216, !dbg !828
  %44 = icmp ne i32 %43, 0, !dbg !828
  br i1 %44, label %45, label %48, !dbg !828

; <label>:45                                      ; preds = %41
  %46 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !830
  %47 = getelementptr inbounds %struct.XVtc_SourceSelect* %46, i32 0, i32 2, !dbg !830
  store i8 1, i8* %47, align 1, !dbg !830
  br label %48, !dbg !830

; <label>:48                                      ; preds = %45, %41
  %49 = load i32* %CtrlRegValue, align 4, !dbg !831
  %50 = and i32 %49, 8388608, !dbg !831
  %51 = icmp ne i32 %50, 0, !dbg !831
  br i1 %51, label %52, label %55, !dbg !831

; <label>:52                                      ; preds = %48
  %53 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !833
  %54 = getelementptr inbounds %struct.XVtc_SourceSelect* %53, i32 0, i32 3, !dbg !833
  store i8 1, i8* %54, align 1, !dbg !833
  br label %55, !dbg !833

; <label>:55                                      ; preds = %52, %48
  %56 = load i32* %CtrlRegValue, align 4, !dbg !834
  %57 = and i32 %56, 4194304, !dbg !834
  %58 = icmp ne i32 %57, 0, !dbg !834
  br i1 %58, label %59, label %62, !dbg !834

; <label>:59                                      ; preds = %55
  %60 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !836
  %61 = getelementptr inbounds %struct.XVtc_SourceSelect* %60, i32 0, i32 4, !dbg !836
  store i8 1, i8* %61, align 1, !dbg !836
  br label %62, !dbg !836

; <label>:62                                      ; preds = %59, %55
  %63 = load i32* %CtrlRegValue, align 4, !dbg !837
  %64 = and i32 %63, 2097152, !dbg !837
  %65 = icmp ne i32 %64, 0, !dbg !837
  br i1 %65, label %66, label %69, !dbg !837

; <label>:66                                      ; preds = %62
  %67 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !839
  %68 = getelementptr inbounds %struct.XVtc_SourceSelect* %67, i32 0, i32 5, !dbg !839
  store i8 1, i8* %68, align 1, !dbg !839
  br label %69, !dbg !839

; <label>:69                                      ; preds = %66, %62
  %70 = load i32* %CtrlRegValue, align 4, !dbg !840
  %71 = and i32 %70, 1048576, !dbg !840
  %72 = icmp ne i32 %71, 0, !dbg !840
  br i1 %72, label %73, label %76, !dbg !840

; <label>:73                                      ; preds = %69
  %74 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !842
  %75 = getelementptr inbounds %struct.XVtc_SourceSelect* %74, i32 0, i32 6, !dbg !842
  store i8 1, i8* %75, align 1, !dbg !842
  br label %76, !dbg !842

; <label>:76                                      ; preds = %73, %69
  %77 = load i32* %CtrlRegValue, align 4, !dbg !843
  %78 = and i32 %77, 262144, !dbg !843
  %79 = icmp ne i32 %78, 0, !dbg !843
  br i1 %79, label %80, label %83, !dbg !843

; <label>:80                                      ; preds = %76
  %81 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !845
  %82 = getelementptr inbounds %struct.XVtc_SourceSelect* %81, i32 0, i32 7, !dbg !845
  store i8 1, i8* %82, align 1, !dbg !845
  br label %83, !dbg !845

; <label>:83                                      ; preds = %80, %76
  %84 = load i32* %CtrlRegValue, align 4, !dbg !846
  %85 = and i32 %84, 131072, !dbg !846
  %86 = icmp ne i32 %85, 0, !dbg !846
  br i1 %86, label %87, label %90, !dbg !846

; <label>:87                                      ; preds = %83
  %88 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !848
  %89 = getelementptr inbounds %struct.XVtc_SourceSelect* %88, i32 0, i32 8, !dbg !848
  store i8 1, i8* %89, align 1, !dbg !848
  br label %90, !dbg !848

; <label>:90                                      ; preds = %87, %83
  %91 = load i32* %CtrlRegValue, align 4, !dbg !849
  %92 = and i32 %91, 65536, !dbg !849
  %93 = icmp ne i32 %92, 0, !dbg !849
  br i1 %93, label %94, label %97, !dbg !849

; <label>:94                                      ; preds = %90
  %95 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !851
  %96 = getelementptr inbounds %struct.XVtc_SourceSelect* %95, i32 0, i32 9, !dbg !851
  store i8 1, i8* %96, align 1, !dbg !851
  br label %97, !dbg !851

; <label>:97                                      ; preds = %94, %90
  %98 = load i32* %CtrlRegValue, align 4, !dbg !852
  %99 = and i32 %98, 32768, !dbg !852
  %100 = icmp ne i32 %99, 0, !dbg !852
  br i1 %100, label %101, label %104, !dbg !852

; <label>:101                                     ; preds = %97
  %102 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !854
  %103 = getelementptr inbounds %struct.XVtc_SourceSelect* %102, i32 0, i32 10, !dbg !854
  store i8 1, i8* %103, align 1, !dbg !854
  br label %104, !dbg !854

; <label>:104                                     ; preds = %101, %97
  %105 = load i32* %CtrlRegValue, align 4, !dbg !855
  %106 = and i32 %105, 16384, !dbg !855
  %107 = icmp ne i32 %106, 0, !dbg !855
  br i1 %107, label %108, label %111, !dbg !855

; <label>:108                                     ; preds = %104
  %109 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !857
  %110 = getelementptr inbounds %struct.XVtc_SourceSelect* %109, i32 0, i32 11, !dbg !857
  store i8 1, i8* %110, align 1, !dbg !857
  br label %111, !dbg !857

; <label>:111                                     ; preds = %108, %104
  %112 = load i32* %CtrlRegValue, align 4, !dbg !858
  %113 = and i32 %112, 8192, !dbg !858
  %114 = icmp ne i32 %113, 0, !dbg !858
  br i1 %114, label %115, label %118, !dbg !858

; <label>:115                                     ; preds = %111
  %116 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !860
  %117 = getelementptr inbounds %struct.XVtc_SourceSelect* %116, i32 0, i32 12, !dbg !860
  store i8 1, i8* %117, align 1, !dbg !860
  br label %118, !dbg !860

; <label>:118                                     ; preds = %115, %111
  %119 = load i32* %CtrlRegValue, align 4, !dbg !861
  %120 = and i32 %119, 2048, !dbg !861
  %121 = icmp ne i32 %120, 0, !dbg !861
  br i1 %121, label %122, label %125, !dbg !861

; <label>:122                                     ; preds = %118
  %123 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !863
  %124 = getelementptr inbounds %struct.XVtc_SourceSelect* %123, i32 0, i32 14, !dbg !863
  store i8 1, i8* %124, align 1, !dbg !863
  br label %125, !dbg !863

; <label>:125                                     ; preds = %122, %118
  %126 = load i32* %CtrlRegValue, align 4, !dbg !864
  %127 = and i32 %126, 1024, !dbg !864
  %128 = icmp ne i32 %127, 0, !dbg !864
  br i1 %128, label %129, label %132, !dbg !864

; <label>:129                                     ; preds = %125
  %130 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !866
  %131 = getelementptr inbounds %struct.XVtc_SourceSelect* %130, i32 0, i32 15, !dbg !866
  store i8 1, i8* %131, align 1, !dbg !866
  br label %132, !dbg !866

; <label>:132                                     ; preds = %129, %125
  %133 = load i32* %CtrlRegValue, align 4, !dbg !867
  %134 = and i32 %133, 512, !dbg !867
  %135 = icmp ne i32 %134, 0, !dbg !867
  br i1 %135, label %136, label %139, !dbg !867

; <label>:136                                     ; preds = %132
  %137 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !869
  %138 = getelementptr inbounds %struct.XVtc_SourceSelect* %137, i32 0, i32 16, !dbg !869
  store i8 1, i8* %138, align 1, !dbg !869
  br label %139, !dbg !869

; <label>:139                                     ; preds = %136, %132
  %140 = load i32* %CtrlRegValue, align 4, !dbg !870
  %141 = and i32 %140, 256, !dbg !870
  %142 = icmp ne i32 %141, 0, !dbg !870
  br i1 %142, label %143, label %146, !dbg !870

; <label>:143                                     ; preds = %139
  %144 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !872
  %145 = getelementptr inbounds %struct.XVtc_SourceSelect* %144, i32 0, i32 17, !dbg !872
  store i8 1, i8* %145, align 1, !dbg !872
  br label %146, !dbg !872

; <label>:146                                     ; preds = %143, %139
  %147 = load i32* %CtrlRegValue, align 4, !dbg !873
  %148 = and i32 %147, 524288, !dbg !873
  %149 = icmp ne i32 %148, 0, !dbg !873
  br i1 %149, label %150, label %153, !dbg !873

; <label>:150                                     ; preds = %146
  %151 = load %struct.XVtc_SourceSelect** %2, align 4, !dbg !875
  %152 = getelementptr inbounds %struct.XVtc_SourceSelect* %151, i32 0, i32 18, !dbg !875
  store i8 1, i8* %152, align 1, !dbg !875
  br label %153, !dbg !875

; <label>:153                                     ; preds = %6, %13, %18, %150, %146
  ret void, !dbg !876
}

; Function Attrs: nounwind
define void @XVtc_SetSkipLine(%struct.XVtc* %InstancePtr, i32 %GeneratorChromaSkip) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i32, align 4
  %FrameEncodeRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !877), !dbg !878
  store i32 %GeneratorChromaSkip, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !879), !dbg !880
  call void @llvm.dbg.declare(metadata !{i32* %FrameEncodeRegValue}, metadata !881), !dbg !882
  %3 = load %struct.XVtc** %1, align 4, !dbg !883
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !883
  br i1 %4, label %5, label %6, !dbg !883

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !886
  br label %7, !dbg !886

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 818), !dbg !889
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !889
  br label %35, !dbg !889

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !892
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !892
  %10 = load i32* %9, align 4, !dbg !892
  %11 = icmp eq i32 %10, 286331153, !dbg !892
  br i1 %11, label %12, label %13, !dbg !892

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !895
  br label %14, !dbg !895

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 819), !dbg !898
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !898
  br label %35, !dbg !898

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc** %1, align 4, !dbg !901
  %16 = getelementptr inbounds %struct.XVtc* %15, i32 0, i32 0, !dbg !901
  %17 = getelementptr inbounds %struct.XVtc_Config* %16, i32 0, i32 1, !dbg !901
  %18 = load i32* %17, align 4, !dbg !901
  %19 = add i32 %18, 104, !dbg !901
  %20 = call i32 @Xil_In32(i32 %19), !dbg !901
  store i32 %20, i32* %FrameEncodeRegValue, align 4, !dbg !901
  %21 = load i32* %FrameEncodeRegValue, align 4, !dbg !902
  %22 = and i32 %21, -2, !dbg !902
  store i32 %22, i32* %FrameEncodeRegValue, align 4, !dbg !902
  %23 = load i32* %2, align 4, !dbg !903
  %24 = icmp ne i32 %23, 0, !dbg !903
  br i1 %24, label %25, label %28, !dbg !903

; <label>:25                                      ; preds = %14
  %26 = load i32* %FrameEncodeRegValue, align 4, !dbg !905
  %27 = or i32 %26, 1, !dbg !905
  store i32 %27, i32* %FrameEncodeRegValue, align 4, !dbg !905
  br label %28, !dbg !905

; <label>:28                                      ; preds = %25, %14
  %29 = load %struct.XVtc** %1, align 4, !dbg !906
  %30 = getelementptr inbounds %struct.XVtc* %29, i32 0, i32 0, !dbg !906
  %31 = getelementptr inbounds %struct.XVtc_Config* %30, i32 0, i32 1, !dbg !906
  %32 = load i32* %31, align 4, !dbg !906
  %33 = add i32 %32, 104, !dbg !906
  %34 = load i32* %FrameEncodeRegValue, align 4, !dbg !906
  call void @Xil_Out32(i32 %33, i32 %34), !dbg !906
  br label %35, !dbg !907

; <label>:35                                      ; preds = %28, %13, %6
  ret void, !dbg !908
}

; Function Attrs: nounwind
define void @XVtc_GetSkipLine(%struct.XVtc* %InstancePtr, i32* %GeneratorChromaSkipPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i32*, align 4
  %FrameEncodeRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !910), !dbg !911
  store i32* %GeneratorChromaSkipPtr, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !912), !dbg !913
  call void @llvm.dbg.declare(metadata !{i32* %FrameEncodeRegValue}, metadata !914), !dbg !915
  %3 = load %struct.XVtc** %1, align 4, !dbg !916
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !916
  br i1 %4, label %5, label %6, !dbg !916

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !919
  br label %7, !dbg !919

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 860), !dbg !922
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !922
  br label %33, !dbg !922

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !925
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !925
  %10 = load i32* %9, align 4, !dbg !925
  %11 = icmp eq i32 %10, 286331153, !dbg !925
  br i1 %11, label %12, label %13, !dbg !925

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !928
  br label %14, !dbg !928

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 861), !dbg !931
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !931
  br label %33, !dbg !931

; <label>:14                                      ; preds = %12
  %15 = load i32** %2, align 4, !dbg !934
  %16 = icmp ne i32* %15, null, !dbg !934
  br i1 %16, label %17, label %18, !dbg !934

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !937
  br label %19, !dbg !937

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 862), !dbg !940
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !940
  br label %33, !dbg !940

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc** %1, align 4, !dbg !943
  %21 = getelementptr inbounds %struct.XVtc* %20, i32 0, i32 0, !dbg !943
  %22 = getelementptr inbounds %struct.XVtc_Config* %21, i32 0, i32 1, !dbg !943
  %23 = load i32* %22, align 4, !dbg !943
  %24 = add i32 %23, 104, !dbg !943
  %25 = call i32 @Xil_In32(i32 %24), !dbg !943
  store i32 %25, i32* %FrameEncodeRegValue, align 4, !dbg !943
  %26 = load i32* %FrameEncodeRegValue, align 4, !dbg !944
  %27 = and i32 %26, 1, !dbg !944
  %28 = icmp ne i32 %27, 0, !dbg !944
  br i1 %28, label %29, label %31, !dbg !944

; <label>:29                                      ; preds = %19
  %30 = load i32** %2, align 4, !dbg !946
  store i32 1, i32* %30, align 4, !dbg !946
  br label %33, !dbg !946

; <label>:31                                      ; preds = %19
  %32 = load i32** %2, align 4, !dbg !947
  store i32 0, i32* %32, align 4, !dbg !947
  br label %33

; <label>:33                                      ; preds = %6, %13, %18, %31, %29
  ret void, !dbg !948
}

; Function Attrs: nounwind
define void @XVtc_SetSkipPixel(%struct.XVtc* %InstancePtr, i32 %GeneratorChromaSkip) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i32, align 4
  %FrameEncodeRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !949), !dbg !950
  store i32 %GeneratorChromaSkip, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !951), !dbg !952
  call void @llvm.dbg.declare(metadata !{i32* %FrameEncodeRegValue}, metadata !953), !dbg !954
  %3 = load %struct.XVtc** %1, align 4, !dbg !955
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !955
  br i1 %4, label %5, label %6, !dbg !955

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !958
  br label %7, !dbg !958

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 899), !dbg !961
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !961
  br label %35, !dbg !961

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !964
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !964
  %10 = load i32* %9, align 4, !dbg !964
  %11 = icmp eq i32 %10, 286331153, !dbg !964
  br i1 %11, label %12, label %13, !dbg !964

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !967
  br label %14, !dbg !967

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 900), !dbg !970
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !970
  br label %35, !dbg !970

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc** %1, align 4, !dbg !973
  %16 = getelementptr inbounds %struct.XVtc* %15, i32 0, i32 0, !dbg !973
  %17 = getelementptr inbounds %struct.XVtc_Config* %16, i32 0, i32 1, !dbg !973
  %18 = load i32* %17, align 4, !dbg !973
  %19 = add i32 %18, 104, !dbg !973
  %20 = call i32 @Xil_In32(i32 %19), !dbg !973
  store i32 %20, i32* %FrameEncodeRegValue, align 4, !dbg !973
  %21 = load i32* %FrameEncodeRegValue, align 4, !dbg !974
  %22 = and i32 %21, -513, !dbg !974
  store i32 %22, i32* %FrameEncodeRegValue, align 4, !dbg !974
  %23 = load i32* %2, align 4, !dbg !975
  %24 = icmp ne i32 %23, 0, !dbg !975
  br i1 %24, label %25, label %28, !dbg !975

; <label>:25                                      ; preds = %14
  %26 = load i32* %FrameEncodeRegValue, align 4, !dbg !977
  %27 = or i32 %26, 512, !dbg !977
  store i32 %27, i32* %FrameEncodeRegValue, align 4, !dbg !977
  br label %28, !dbg !977

; <label>:28                                      ; preds = %25, %14
  %29 = load %struct.XVtc** %1, align 4, !dbg !978
  %30 = getelementptr inbounds %struct.XVtc* %29, i32 0, i32 0, !dbg !978
  %31 = getelementptr inbounds %struct.XVtc_Config* %30, i32 0, i32 1, !dbg !978
  %32 = load i32* %31, align 4, !dbg !978
  %33 = add i32 %32, 104, !dbg !978
  %34 = load i32* %FrameEncodeRegValue, align 4, !dbg !978
  call void @Xil_Out32(i32 %33, i32 %34), !dbg !978
  br label %35, !dbg !979

; <label>:35                                      ; preds = %28, %13, %6
  ret void, !dbg !980
}

; Function Attrs: nounwind
define void @XVtc_GetSkipPixel(%struct.XVtc* %InstancePtr, i32* %GeneratorChromaSkipPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i32*, align 4
  %FrameEncodeRegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !982), !dbg !983
  store i32* %GeneratorChromaSkipPtr, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !984), !dbg !985
  call void @llvm.dbg.declare(metadata !{i32* %FrameEncodeRegValue}, metadata !986), !dbg !987
  %3 = load %struct.XVtc** %1, align 4, !dbg !988
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !988
  br i1 %4, label %5, label %6, !dbg !988

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !991
  br label %7, !dbg !991

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 941), !dbg !994
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !994
  br label %33, !dbg !994

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !997
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !997
  %10 = load i32* %9, align 4, !dbg !997
  %11 = icmp eq i32 %10, 286331153, !dbg !997
  br i1 %11, label %12, label %13, !dbg !997

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1000
  br label %14, !dbg !1000

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 942), !dbg !1003
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1003
  br label %33, !dbg !1003

; <label>:14                                      ; preds = %12
  %15 = load i32** %2, align 4, !dbg !1006
  %16 = icmp ne i32* %15, null, !dbg !1006
  br i1 %16, label %17, label %18, !dbg !1006

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1009
  br label %19, !dbg !1009

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 943), !dbg !1012
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1012
  br label %33, !dbg !1012

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc** %1, align 4, !dbg !1015
  %21 = getelementptr inbounds %struct.XVtc* %20, i32 0, i32 0, !dbg !1015
  %22 = getelementptr inbounds %struct.XVtc_Config* %21, i32 0, i32 1, !dbg !1015
  %23 = load i32* %22, align 4, !dbg !1015
  %24 = add i32 %23, 104, !dbg !1015
  %25 = call i32 @Xil_In32(i32 %24), !dbg !1015
  store i32 %25, i32* %FrameEncodeRegValue, align 4, !dbg !1015
  %26 = load i32* %FrameEncodeRegValue, align 4, !dbg !1016
  %27 = and i32 %26, 512, !dbg !1016
  %28 = icmp ne i32 %27, 0, !dbg !1016
  br i1 %28, label %29, label %31, !dbg !1016

; <label>:29                                      ; preds = %19
  %30 = load i32** %2, align 4, !dbg !1018
  store i32 1, i32* %30, align 4, !dbg !1018
  br label %33, !dbg !1018

; <label>:31                                      ; preds = %19
  %32 = load i32** %2, align 4, !dbg !1019
  store i32 0, i32* %32, align 4, !dbg !1019
  br label %33

; <label>:33                                      ; preds = %6, %13, %18, %31, %29
  ret void, !dbg !1020
}

; Function Attrs: nounwind
define void @XVtc_SetDelay(%struct.XVtc* %InstancePtr, i32 %VertDelay, i32 %HoriDelay) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %RegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1021), !dbg !1022
  store i32 %VertDelay, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1023), !dbg !1024
  store i32 %HoriDelay, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1025), !dbg !1026
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1027), !dbg !1028
  %4 = load %struct.XVtc** %1, align 4, !dbg !1029
  %5 = icmp ne %struct.XVtc* %4, null, !dbg !1029
  br i1 %5, label %6, label %7, !dbg !1029

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1032
  br label %8, !dbg !1032

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 981), !dbg !1035
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1035
  br label %49, !dbg !1035

; <label>:8                                       ; preds = %6
  %9 = load %struct.XVtc** %1, align 4, !dbg !1038
  %10 = getelementptr inbounds %struct.XVtc* %9, i32 0, i32 1, !dbg !1038
  %11 = load i32* %10, align 4, !dbg !1038
  %12 = icmp eq i32 %11, 286331153, !dbg !1038
  br i1 %12, label %13, label %14, !dbg !1038

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1041
  br label %15, !dbg !1041

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 982), !dbg !1044
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1044
  br label %49, !dbg !1044

; <label>:15                                      ; preds = %13
  %16 = load i32* %2, align 4, !dbg !1047
  %17 = icmp sge i32 %16, 0, !dbg !1047
  br i1 %17, label %18, label %19, !dbg !1047

; <label>:18                                      ; preds = %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1050
  br label %20, !dbg !1050

; <label>:19                                      ; preds = %15
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 983), !dbg !1053
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1053
  br label %49, !dbg !1053

; <label>:20                                      ; preds = %18
  %21 = load i32* %3, align 4, !dbg !1056
  %22 = icmp sge i32 %21, 0, !dbg !1056
  br i1 %22, label %23, label %24, !dbg !1056

; <label>:23                                      ; preds = %20
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1059
  br label %25, !dbg !1059

; <label>:24                                      ; preds = %20
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 984), !dbg !1062
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1062
  br label %49, !dbg !1062

; <label>:25                                      ; preds = %23
  %26 = load i32* %2, align 4, !dbg !1065
  %27 = icmp sle i32 %26, 4095, !dbg !1065
  br i1 %27, label %28, label %29, !dbg !1065

; <label>:28                                      ; preds = %25
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1068
  br label %30, !dbg !1068

; <label>:29                                      ; preds = %25
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 985), !dbg !1071
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1071
  br label %49, !dbg !1071

; <label>:30                                      ; preds = %28
  %31 = load i32* %3, align 4, !dbg !1074
  %32 = icmp sle i32 %31, 4095, !dbg !1074
  br i1 %32, label %33, label %34, !dbg !1074

; <label>:33                                      ; preds = %30
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1077
  br label %35, !dbg !1077

; <label>:34                                      ; preds = %30
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 986), !dbg !1080
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1080
  br label %49, !dbg !1080

; <label>:35                                      ; preds = %33
  %36 = load i32* %3, align 4, !dbg !1083
  %37 = and i32 %36, 8191, !dbg !1083
  store i32 %37, i32* %RegValue, align 4, !dbg !1083
  %38 = load i32* %2, align 4, !dbg !1084
  %39 = shl i32 %38, 16, !dbg !1084
  %40 = and i32 %39, 536805376, !dbg !1084
  %41 = load i32* %RegValue, align 4, !dbg !1084
  %42 = or i32 %41, %40, !dbg !1084
  store i32 %42, i32* %RegValue, align 4, !dbg !1084
  %43 = load %struct.XVtc** %1, align 4, !dbg !1085
  %44 = getelementptr inbounds %struct.XVtc* %43, i32 0, i32 0, !dbg !1085
  %45 = getelementptr inbounds %struct.XVtc_Config* %44, i32 0, i32 1, !dbg !1085
  %46 = load i32* %45, align 4, !dbg !1085
  %47 = add i32 %46, 320, !dbg !1085
  %48 = load i32* %RegValue, align 4, !dbg !1085
  call void @Xil_Out32(i32 %47, i32 %48), !dbg !1085
  br label %49, !dbg !1086

; <label>:49                                      ; preds = %35, %34, %29, %24, %19, %14, %7
  ret void, !dbg !1087
}

; Function Attrs: nounwind
define void @XVtc_GetDelay(%struct.XVtc* %InstancePtr, i32* %VertDelayPtr, i32* %HoriDelayPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i32*, align 4
  %3 = alloca i32*, align 4
  %RegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1089), !dbg !1090
  store i32* %VertDelayPtr, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !1091), !dbg !1092
  store i32* %HoriDelayPtr, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1093), !dbg !1094
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1095), !dbg !1096
  %4 = load %struct.XVtc** %1, align 4, !dbg !1097
  %5 = icmp ne %struct.XVtc* %4, null, !dbg !1097
  br i1 %5, label %6, label %7, !dbg !1097

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1100
  br label %8, !dbg !1100

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1022), !dbg !1103
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1103
  br label %39, !dbg !1103

; <label>:8                                       ; preds = %6
  %9 = load %struct.XVtc** %1, align 4, !dbg !1106
  %10 = getelementptr inbounds %struct.XVtc* %9, i32 0, i32 1, !dbg !1106
  %11 = load i32* %10, align 4, !dbg !1106
  %12 = icmp eq i32 %11, 286331153, !dbg !1106
  br i1 %12, label %13, label %14, !dbg !1106

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1109
  br label %15, !dbg !1109

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1023), !dbg !1112
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1112
  br label %39, !dbg !1112

; <label>:15                                      ; preds = %13
  %16 = load i32** %2, align 4, !dbg !1115
  %17 = icmp ne i32* %16, null, !dbg !1115
  br i1 %17, label %18, label %19, !dbg !1115

; <label>:18                                      ; preds = %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1118
  br label %20, !dbg !1118

; <label>:19                                      ; preds = %15
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1024), !dbg !1121
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1121
  br label %39, !dbg !1121

; <label>:20                                      ; preds = %18
  %21 = load i32** %3, align 4, !dbg !1124
  %22 = icmp ne i32* %21, null, !dbg !1124
  br i1 %22, label %23, label %24, !dbg !1124

; <label>:23                                      ; preds = %20
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1127
  br label %25, !dbg !1127

; <label>:24                                      ; preds = %20
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1025), !dbg !1130
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1130
  br label %39, !dbg !1130

; <label>:25                                      ; preds = %23
  %26 = load %struct.XVtc** %1, align 4, !dbg !1133
  %27 = getelementptr inbounds %struct.XVtc* %26, i32 0, i32 0, !dbg !1133
  %28 = getelementptr inbounds %struct.XVtc_Config* %27, i32 0, i32 1, !dbg !1133
  %29 = load i32* %28, align 4, !dbg !1133
  %30 = add i32 %29, 320, !dbg !1133
  %31 = call i32 @Xil_In32(i32 %30), !dbg !1133
  store i32 %31, i32* %RegValue, align 4, !dbg !1133
  %32 = load i32* %RegValue, align 4, !dbg !1134
  %33 = and i32 %32, 8191, !dbg !1134
  %34 = load i32** %3, align 4, !dbg !1134
  store i32 %33, i32* %34, align 4, !dbg !1134
  %35 = load i32* %RegValue, align 4, !dbg !1135
  %36 = and i32 %35, 536805376, !dbg !1135
  %37 = lshr i32 %36, 16, !dbg !1135
  %38 = load i32** %2, align 4, !dbg !1135
  store i32 %37, i32* %38, align 4, !dbg !1135
  br label %39, !dbg !1136

; <label>:39                                      ; preds = %25, %24, %19, %14, %7
  ret void, !dbg !1137
}

; Function Attrs: nounwind
define void @XVtc_SetFSync(%struct.XVtc* %InstancePtr, i16 zeroext %FrameSyncIndex, i16 zeroext %VertStart, i16 zeroext %HoriStart) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %RegValue = alloca i32, align 4
  %RegAddress = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1139), !dbg !1140
  store i16 %FrameSyncIndex, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !1141), !dbg !1142
  store i16 %VertStart, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !1143), !dbg !1144
  store i16 %HoriStart, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !1145), !dbg !1146
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1147), !dbg !1148
  call void @llvm.dbg.declare(metadata !{i32* %RegAddress}, metadata !1149), !dbg !1150
  %5 = load %struct.XVtc** %1, align 4, !dbg !1151
  %6 = icmp ne %struct.XVtc* %5, null, !dbg !1151
  br i1 %6, label %7, label %8, !dbg !1151

; <label>:7                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1154
  br label %9, !dbg !1154

; <label>:8                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1064), !dbg !1157
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1157
  br label %55, !dbg !1157

; <label>:9                                       ; preds = %7
  %10 = load %struct.XVtc** %1, align 4, !dbg !1160
  %11 = getelementptr inbounds %struct.XVtc* %10, i32 0, i32 1, !dbg !1160
  %12 = load i32* %11, align 4, !dbg !1160
  %13 = icmp eq i32 %12, 286331153, !dbg !1160
  br i1 %13, label %14, label %15, !dbg !1160

; <label>:14                                      ; preds = %9
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1163
  br label %16, !dbg !1163

; <label>:15                                      ; preds = %9
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1065), !dbg !1166
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1166
  br label %55, !dbg !1166

; <label>:16                                      ; preds = %14
  %17 = load i16* %2, align 2, !dbg !1169
  %18 = zext i16 %17 to i32, !dbg !1169
  %19 = icmp sle i32 %18, 15, !dbg !1169
  br i1 %19, label %20, label %21, !dbg !1169

; <label>:20                                      ; preds = %16
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1172
  br label %22, !dbg !1172

; <label>:21                                      ; preds = %16
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1066), !dbg !1175
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1175
  br label %55, !dbg !1175

; <label>:22                                      ; preds = %20
  %23 = load i16* %3, align 2, !dbg !1178
  %24 = zext i16 %23 to i32, !dbg !1178
  %25 = icmp sle i32 %24, 4095, !dbg !1178
  br i1 %25, label %26, label %27, !dbg !1178

; <label>:26                                      ; preds = %22
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1181
  br label %28, !dbg !1181

; <label>:27                                      ; preds = %22
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1067), !dbg !1184
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1184
  br label %55, !dbg !1184

; <label>:28                                      ; preds = %26
  %29 = load i16* %4, align 2, !dbg !1187
  %30 = zext i16 %29 to i32, !dbg !1187
  %31 = icmp sle i32 %30, 4095, !dbg !1187
  br i1 %31, label %32, label %33, !dbg !1187

; <label>:32                                      ; preds = %28
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1190
  br label %34, !dbg !1190

; <label>:33                                      ; preds = %28
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1068), !dbg !1193
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1193
  br label %55, !dbg !1193

; <label>:34                                      ; preds = %32
  %35 = load i16* %4, align 2, !dbg !1196
  %36 = zext i16 %35 to i32, !dbg !1196
  %37 = and i32 %36, 8191, !dbg !1196
  store i32 %37, i32* %RegValue, align 4, !dbg !1196
  %38 = load i16* %3, align 2, !dbg !1197
  %39 = zext i16 %38 to i32, !dbg !1197
  %40 = shl i32 %39, 16, !dbg !1197
  %41 = and i32 %40, 536805376, !dbg !1197
  %42 = load i32* %RegValue, align 4, !dbg !1197
  %43 = or i32 %42, %41, !dbg !1197
  store i32 %43, i32* %RegValue, align 4, !dbg !1197
  %44 = load i16* %2, align 2, !dbg !1198
  %45 = zext i16 %44 to i32, !dbg !1198
  %46 = mul nsw i32 %45, 4, !dbg !1198
  %47 = add nsw i32 256, %46, !dbg !1198
  store i32 %47, i32* %RegAddress, align 4, !dbg !1198
  %48 = load %struct.XVtc** %1, align 4, !dbg !1199
  %49 = getelementptr inbounds %struct.XVtc* %48, i32 0, i32 0, !dbg !1199
  %50 = getelementptr inbounds %struct.XVtc_Config* %49, i32 0, i32 1, !dbg !1199
  %51 = load i32* %50, align 4, !dbg !1199
  %52 = load i32* %RegAddress, align 4, !dbg !1199
  %53 = add i32 %51, %52, !dbg !1199
  %54 = load i32* %RegValue, align 4, !dbg !1199
  call void @Xil_Out32(i32 %53, i32 %54), !dbg !1199
  br label %55, !dbg !1200

; <label>:55                                      ; preds = %34, %33, %27, %21, %15, %8
  ret void, !dbg !1201
}

; Function Attrs: nounwind
define void @XVtc_GetFSync(%struct.XVtc* %InstancePtr, i16 zeroext %FrameSyncIndex, i16* %VertStartPtr, i16* %HoriStartPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16*, align 4
  %4 = alloca i16*, align 4
  %RegValue = alloca i32, align 4
  %RegAddress = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1203), !dbg !1204
  store i16 %FrameSyncIndex, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !1205), !dbg !1206
  store i16* %VertStartPtr, i16** %3, align 4
  call void @llvm.dbg.declare(metadata !{i16** %3}, metadata !1207), !dbg !1208
  store i16* %HoriStartPtr, i16** %4, align 4
  call void @llvm.dbg.declare(metadata !{i16** %4}, metadata !1209), !dbg !1210
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1211), !dbg !1212
  call void @llvm.dbg.declare(metadata !{i32* %RegAddress}, metadata !1213), !dbg !1214
  %5 = load %struct.XVtc** %1, align 4, !dbg !1215
  %6 = icmp ne %struct.XVtc* %5, null, !dbg !1215
  br i1 %6, label %7, label %8, !dbg !1215

; <label>:7                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1218
  br label %9, !dbg !1218

; <label>:8                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1108), !dbg !1221
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1221
  br label %53, !dbg !1221

; <label>:9                                       ; preds = %7
  %10 = load %struct.XVtc** %1, align 4, !dbg !1224
  %11 = getelementptr inbounds %struct.XVtc* %10, i32 0, i32 1, !dbg !1224
  %12 = load i32* %11, align 4, !dbg !1224
  %13 = icmp eq i32 %12, 286331153, !dbg !1224
  br i1 %13, label %14, label %15, !dbg !1224

; <label>:14                                      ; preds = %9
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1227
  br label %16, !dbg !1227

; <label>:15                                      ; preds = %9
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1109), !dbg !1230
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1230
  br label %53, !dbg !1230

; <label>:16                                      ; preds = %14
  %17 = load i16* %2, align 2, !dbg !1233
  %18 = zext i16 %17 to i32, !dbg !1233
  %19 = icmp sle i32 %18, 15, !dbg !1233
  br i1 %19, label %20, label %21, !dbg !1233

; <label>:20                                      ; preds = %16
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1236
  br label %22, !dbg !1236

; <label>:21                                      ; preds = %16
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1110), !dbg !1239
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1239
  br label %53, !dbg !1239

; <label>:22                                      ; preds = %20
  %23 = load i16** %3, align 4, !dbg !1242
  %24 = icmp ne i16* %23, null, !dbg !1242
  br i1 %24, label %25, label %26, !dbg !1242

; <label>:25                                      ; preds = %22
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1245
  br label %27, !dbg !1245

; <label>:26                                      ; preds = %22
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1111), !dbg !1248
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1248
  br label %53, !dbg !1248

; <label>:27                                      ; preds = %25
  %28 = load i16** %3, align 4, !dbg !1251
  %29 = icmp ne i16* %28, null, !dbg !1251
  br i1 %29, label %30, label %31, !dbg !1251

; <label>:30                                      ; preds = %27
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1254
  br label %32, !dbg !1254

; <label>:31                                      ; preds = %27
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1112), !dbg !1257
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1257
  br label %53, !dbg !1257

; <label>:32                                      ; preds = %30
  %33 = load i16* %2, align 2, !dbg !1260
  %34 = zext i16 %33 to i32, !dbg !1260
  %35 = mul nsw i32 %34, 4, !dbg !1260
  %36 = add nsw i32 256, %35, !dbg !1260
  store i32 %36, i32* %RegAddress, align 4, !dbg !1260
  %37 = load %struct.XVtc** %1, align 4, !dbg !1261
  %38 = getelementptr inbounds %struct.XVtc* %37, i32 0, i32 0, !dbg !1261
  %39 = getelementptr inbounds %struct.XVtc_Config* %38, i32 0, i32 1, !dbg !1261
  %40 = load i32* %39, align 4, !dbg !1261
  %41 = load i32* %RegAddress, align 4, !dbg !1261
  %42 = add i32 %40, %41, !dbg !1261
  %43 = call i32 @Xil_In32(i32 %42), !dbg !1261
  store i32 %43, i32* %RegValue, align 4, !dbg !1261
  %44 = load i32* %RegValue, align 4, !dbg !1262
  %45 = and i32 %44, 8191, !dbg !1262
  %46 = trunc i32 %45 to i16, !dbg !1262
  %47 = load i16** %4, align 4, !dbg !1262
  store i16 %46, i16* %47, align 2, !dbg !1262
  %48 = load i32* %RegValue, align 4, !dbg !1263
  %49 = and i32 %48, 536805376, !dbg !1263
  %50 = lshr i32 %49, 16, !dbg !1263
  %51 = trunc i32 %50 to i16, !dbg !1263
  %52 = load i16** %3, align 4, !dbg !1263
  store i16 %51, i16* %52, align 2, !dbg !1263
  br label %53, !dbg !1264

; <label>:53                                      ; preds = %32, %31, %26, %21, %15, %8
  ret void, !dbg !1265
}

; Function Attrs: nounwind
define void @XVtc_SetGeneratorHoriOffset(%struct.XVtc* %InstancePtr, %struct.XVtc_HoriOffsets* %HoriOffsets) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_HoriOffsets*, align 4
  %RegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1267), !dbg !1268
  store %struct.XVtc_HoriOffsets* %HoriOffsets, %struct.XVtc_HoriOffsets** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets** %2}, metadata !1269), !dbg !1270
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1271), !dbg !1272
  %3 = load %struct.XVtc** %1, align 4, !dbg !1273
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !1273
  br i1 %4, label %5, label %6, !dbg !1273

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1276
  br label %7, !dbg !1276

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1143), !dbg !1279
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1279
  br label %96, !dbg !1279

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !1282
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !1282
  %10 = load i32* %9, align 4, !dbg !1282
  %11 = icmp eq i32 %10, 286331153, !dbg !1282
  br i1 %11, label %12, label %13, !dbg !1282

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1285
  br label %14, !dbg !1285

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1144), !dbg !1288
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1288
  br label %96, !dbg !1288

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1291
  %16 = icmp ne %struct.XVtc_HoriOffsets* %15, null, !dbg !1291
  br i1 %16, label %17, label %18, !dbg !1291

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1294
  br label %19, !dbg !1294

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1145), !dbg !1297
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1297
  br label %96, !dbg !1297

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1300
  %21 = getelementptr inbounds %struct.XVtc_HoriOffsets* %20, i32 0, i32 0, !dbg !1300
  %22 = load i16* %21, align 2, !dbg !1300
  %23 = zext i16 %22 to i32, !dbg !1300
  %24 = and i32 %23, 8191, !dbg !1300
  store i32 %24, i32* %RegValue, align 4, !dbg !1300
  %25 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1301
  %26 = getelementptr inbounds %struct.XVtc_HoriOffsets* %25, i32 0, i32 1, !dbg !1301
  %27 = load i16* %26, align 2, !dbg !1301
  %28 = zext i16 %27 to i32, !dbg !1301
  %29 = shl i32 %28, 16, !dbg !1301
  %30 = and i32 %29, 536805376, !dbg !1301
  %31 = load i32* %RegValue, align 4, !dbg !1301
  %32 = or i32 %31, %30, !dbg !1301
  store i32 %32, i32* %RegValue, align 4, !dbg !1301
  %33 = load %struct.XVtc** %1, align 4, !dbg !1302
  %34 = getelementptr inbounds %struct.XVtc* %33, i32 0, i32 0, !dbg !1302
  %35 = getelementptr inbounds %struct.XVtc_Config* %34, i32 0, i32 1, !dbg !1302
  %36 = load i32* %35, align 4, !dbg !1302
  %37 = add i32 %36, 124, !dbg !1302
  %38 = load i32* %RegValue, align 4, !dbg !1302
  call void @Xil_Out32(i32 %37, i32 %38), !dbg !1302
  %39 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1303
  %40 = getelementptr inbounds %struct.XVtc_HoriOffsets* %39, i32 0, i32 2, !dbg !1303
  %41 = load i16* %40, align 2, !dbg !1303
  %42 = zext i16 %41 to i32, !dbg !1303
  %43 = and i32 %42, 8191, !dbg !1303
  store i32 %43, i32* %RegValue, align 4, !dbg !1303
  %44 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1304
  %45 = getelementptr inbounds %struct.XVtc_HoriOffsets* %44, i32 0, i32 3, !dbg !1304
  %46 = load i16* %45, align 2, !dbg !1304
  %47 = zext i16 %46 to i32, !dbg !1304
  %48 = shl i32 %47, 16, !dbg !1304
  %49 = and i32 %48, 536805376, !dbg !1304
  %50 = load i32* %RegValue, align 4, !dbg !1304
  %51 = or i32 %50, %49, !dbg !1304
  store i32 %51, i32* %RegValue, align 4, !dbg !1304
  %52 = load %struct.XVtc** %1, align 4, !dbg !1305
  %53 = getelementptr inbounds %struct.XVtc* %52, i32 0, i32 0, !dbg !1305
  %54 = getelementptr inbounds %struct.XVtc_Config* %53, i32 0, i32 1, !dbg !1305
  %55 = load i32* %54, align 4, !dbg !1305
  %56 = add i32 %55, 132, !dbg !1305
  %57 = load i32* %RegValue, align 4, !dbg !1305
  call void @Xil_Out32(i32 %56, i32 %57), !dbg !1305
  %58 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1306
  %59 = getelementptr inbounds %struct.XVtc_HoriOffsets* %58, i32 0, i32 4, !dbg !1306
  %60 = load i16* %59, align 2, !dbg !1306
  %61 = zext i16 %60 to i32, !dbg !1306
  %62 = and i32 %61, 8191, !dbg !1306
  store i32 %62, i32* %RegValue, align 4, !dbg !1306
  %63 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1307
  %64 = getelementptr inbounds %struct.XVtc_HoriOffsets* %63, i32 0, i32 5, !dbg !1307
  %65 = load i16* %64, align 2, !dbg !1307
  %66 = zext i16 %65 to i32, !dbg !1307
  %67 = shl i32 %66, 16, !dbg !1307
  %68 = and i32 %67, 536805376, !dbg !1307
  %69 = load i32* %RegValue, align 4, !dbg !1307
  %70 = or i32 %69, %68, !dbg !1307
  store i32 %70, i32* %RegValue, align 4, !dbg !1307
  %71 = load %struct.XVtc** %1, align 4, !dbg !1308
  %72 = getelementptr inbounds %struct.XVtc* %71, i32 0, i32 0, !dbg !1308
  %73 = getelementptr inbounds %struct.XVtc_Config* %72, i32 0, i32 1, !dbg !1308
  %74 = load i32* %73, align 4, !dbg !1308
  %75 = add i32 %74, 136, !dbg !1308
  %76 = load i32* %RegValue, align 4, !dbg !1308
  call void @Xil_Out32(i32 %75, i32 %76), !dbg !1308
  %77 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1309
  %78 = getelementptr inbounds %struct.XVtc_HoriOffsets* %77, i32 0, i32 6, !dbg !1309
  %79 = load i16* %78, align 2, !dbg !1309
  %80 = zext i16 %79 to i32, !dbg !1309
  %81 = and i32 %80, 8191, !dbg !1309
  store i32 %81, i32* %RegValue, align 4, !dbg !1309
  %82 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1310
  %83 = getelementptr inbounds %struct.XVtc_HoriOffsets* %82, i32 0, i32 7, !dbg !1310
  %84 = load i16* %83, align 2, !dbg !1310
  %85 = zext i16 %84 to i32, !dbg !1310
  %86 = shl i32 %85, 16, !dbg !1310
  %87 = and i32 %86, 536805376, !dbg !1310
  %88 = load i32* %RegValue, align 4, !dbg !1310
  %89 = or i32 %88, %87, !dbg !1310
  store i32 %89, i32* %RegValue, align 4, !dbg !1310
  %90 = load %struct.XVtc** %1, align 4, !dbg !1311
  %91 = getelementptr inbounds %struct.XVtc* %90, i32 0, i32 0, !dbg !1311
  %92 = getelementptr inbounds %struct.XVtc_Config* %91, i32 0, i32 1, !dbg !1311
  %93 = load i32* %92, align 4, !dbg !1311
  %94 = add i32 %93, 144, !dbg !1311
  %95 = load i32* %RegValue, align 4, !dbg !1311
  call void @Xil_Out32(i32 %94, i32 %95), !dbg !1311
  br label %96, !dbg !1312

; <label>:96                                      ; preds = %19, %18, %13, %6
  ret void, !dbg !1313
}

; Function Attrs: nounwind
define void @XVtc_GetGeneratorHoriOffset(%struct.XVtc* %InstancePtr, %struct.XVtc_HoriOffsets* %HoriOffsets) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_HoriOffsets*, align 4
  %RegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1315), !dbg !1316
  store %struct.XVtc_HoriOffsets* %HoriOffsets, %struct.XVtc_HoriOffsets** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets** %2}, metadata !1317), !dbg !1318
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1319), !dbg !1320
  %3 = load %struct.XVtc** %1, align 4, !dbg !1321
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !1321
  br i1 %4, label %5, label %6, !dbg !1321

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1324
  br label %7, !dbg !1324

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1208), !dbg !1327
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1327
  br label %88, !dbg !1327

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !1330
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !1330
  %10 = load i32* %9, align 4, !dbg !1330
  %11 = icmp eq i32 %10, 286331153, !dbg !1330
  br i1 %11, label %12, label %13, !dbg !1330

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1333
  br label %14, !dbg !1333

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1209), !dbg !1336
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1336
  br label %88, !dbg !1336

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1339
  %16 = icmp ne %struct.XVtc_HoriOffsets* %15, null, !dbg !1339
  br i1 %16, label %17, label %18, !dbg !1339

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1342
  br label %19, !dbg !1342

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1210), !dbg !1345
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1345
  br label %88, !dbg !1345

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc** %1, align 4, !dbg !1348
  %21 = getelementptr inbounds %struct.XVtc* %20, i32 0, i32 0, !dbg !1348
  %22 = getelementptr inbounds %struct.XVtc_Config* %21, i32 0, i32 1, !dbg !1348
  %23 = load i32* %22, align 4, !dbg !1348
  %24 = add i32 %23, 124, !dbg !1348
  %25 = call i32 @Xil_In32(i32 %24), !dbg !1348
  store i32 %25, i32* %RegValue, align 4, !dbg !1348
  %26 = load i32* %RegValue, align 4, !dbg !1349
  %27 = and i32 %26, 8191, !dbg !1349
  %28 = trunc i32 %27 to i16, !dbg !1349
  %29 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1349
  %30 = getelementptr inbounds %struct.XVtc_HoriOffsets* %29, i32 0, i32 0, !dbg !1349
  store i16 %28, i16* %30, align 2, !dbg !1349
  %31 = load i32* %RegValue, align 4, !dbg !1350
  %32 = and i32 %31, 536805376, !dbg !1350
  %33 = lshr i32 %32, 16, !dbg !1350
  %34 = trunc i32 %33 to i16, !dbg !1350
  %35 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1350
  %36 = getelementptr inbounds %struct.XVtc_HoriOffsets* %35, i32 0, i32 1, !dbg !1350
  store i16 %34, i16* %36, align 2, !dbg !1350
  %37 = load %struct.XVtc** %1, align 4, !dbg !1351
  %38 = getelementptr inbounds %struct.XVtc* %37, i32 0, i32 0, !dbg !1351
  %39 = getelementptr inbounds %struct.XVtc_Config* %38, i32 0, i32 1, !dbg !1351
  %40 = load i32* %39, align 4, !dbg !1351
  %41 = add i32 %40, 132, !dbg !1351
  %42 = call i32 @Xil_In32(i32 %41), !dbg !1351
  store i32 %42, i32* %RegValue, align 4, !dbg !1351
  %43 = load i32* %RegValue, align 4, !dbg !1352
  %44 = and i32 %43, 8191, !dbg !1352
  %45 = trunc i32 %44 to i16, !dbg !1352
  %46 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1352
  %47 = getelementptr inbounds %struct.XVtc_HoriOffsets* %46, i32 0, i32 2, !dbg !1352
  store i16 %45, i16* %47, align 2, !dbg !1352
  %48 = load i32* %RegValue, align 4, !dbg !1353
  %49 = and i32 %48, 536805376, !dbg !1353
  %50 = lshr i32 %49, 16, !dbg !1353
  %51 = trunc i32 %50 to i16, !dbg !1353
  %52 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1353
  %53 = getelementptr inbounds %struct.XVtc_HoriOffsets* %52, i32 0, i32 3, !dbg !1353
  store i16 %51, i16* %53, align 2, !dbg !1353
  %54 = load %struct.XVtc** %1, align 4, !dbg !1354
  %55 = getelementptr inbounds %struct.XVtc* %54, i32 0, i32 0, !dbg !1354
  %56 = getelementptr inbounds %struct.XVtc_Config* %55, i32 0, i32 1, !dbg !1354
  %57 = load i32* %56, align 4, !dbg !1354
  %58 = add i32 %57, 136, !dbg !1354
  %59 = call i32 @Xil_In32(i32 %58), !dbg !1354
  store i32 %59, i32* %RegValue, align 4, !dbg !1354
  %60 = load i32* %RegValue, align 4, !dbg !1355
  %61 = and i32 %60, 8191, !dbg !1355
  %62 = trunc i32 %61 to i16, !dbg !1355
  %63 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1355
  %64 = getelementptr inbounds %struct.XVtc_HoriOffsets* %63, i32 0, i32 4, !dbg !1355
  store i16 %62, i16* %64, align 2, !dbg !1355
  %65 = load i32* %RegValue, align 4, !dbg !1356
  %66 = and i32 %65, 536805376, !dbg !1356
  %67 = lshr i32 %66, 16, !dbg !1356
  %68 = trunc i32 %67 to i16, !dbg !1356
  %69 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1356
  %70 = getelementptr inbounds %struct.XVtc_HoriOffsets* %69, i32 0, i32 5, !dbg !1356
  store i16 %68, i16* %70, align 2, !dbg !1356
  %71 = load %struct.XVtc** %1, align 4, !dbg !1357
  %72 = getelementptr inbounds %struct.XVtc* %71, i32 0, i32 0, !dbg !1357
  %73 = getelementptr inbounds %struct.XVtc_Config* %72, i32 0, i32 1, !dbg !1357
  %74 = load i32* %73, align 4, !dbg !1357
  %75 = add i32 %74, 144, !dbg !1357
  %76 = call i32 @Xil_In32(i32 %75), !dbg !1357
  store i32 %76, i32* %RegValue, align 4, !dbg !1357
  %77 = load i32* %RegValue, align 4, !dbg !1358
  %78 = and i32 %77, 8191, !dbg !1358
  %79 = trunc i32 %78 to i16, !dbg !1358
  %80 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1358
  %81 = getelementptr inbounds %struct.XVtc_HoriOffsets* %80, i32 0, i32 6, !dbg !1358
  store i16 %79, i16* %81, align 2, !dbg !1358
  %82 = load i32* %RegValue, align 4, !dbg !1359
  %83 = and i32 %82, 536805376, !dbg !1359
  %84 = lshr i32 %83, 16, !dbg !1359
  %85 = trunc i32 %84 to i16, !dbg !1359
  %86 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1359
  %87 = getelementptr inbounds %struct.XVtc_HoriOffsets* %86, i32 0, i32 7, !dbg !1359
  store i16 %85, i16* %87, align 2, !dbg !1359
  br label %88, !dbg !1360

; <label>:88                                      ; preds = %19, %18, %13, %6
  ret void, !dbg !1361
}

; Function Attrs: nounwind
define void @XVtc_GetDetectorHoriOffset(%struct.XVtc* %InstancePtr, %struct.XVtc_HoriOffsets* %HoriOffsets) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_HoriOffsets*, align 4
  %RegValue = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1363), !dbg !1364
  store %struct.XVtc_HoriOffsets* %HoriOffsets, %struct.XVtc_HoriOffsets** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets** %2}, metadata !1365), !dbg !1366
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1367), !dbg !1368
  %3 = load %struct.XVtc** %1, align 4, !dbg !1369
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !1369
  br i1 %4, label %5, label %6, !dbg !1369

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1372
  br label %7, !dbg !1372

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1265), !dbg !1375
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1375
  br label %88, !dbg !1375

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !1378
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !1378
  %10 = load i32* %9, align 4, !dbg !1378
  %11 = icmp eq i32 %10, 286331153, !dbg !1378
  br i1 %11, label %12, label %13, !dbg !1378

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1381
  br label %14, !dbg !1381

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1266), !dbg !1384
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1384
  br label %88, !dbg !1384

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1387
  %16 = icmp ne %struct.XVtc_HoriOffsets* %15, null, !dbg !1387
  br i1 %16, label %17, label %18, !dbg !1387

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1390
  br label %19, !dbg !1390

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1267), !dbg !1393
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1393
  br label %88, !dbg !1393

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc** %1, align 4, !dbg !1396
  %21 = getelementptr inbounds %struct.XVtc* %20, i32 0, i32 0, !dbg !1396
  %22 = getelementptr inbounds %struct.XVtc_Config* %21, i32 0, i32 1, !dbg !1396
  %23 = load i32* %22, align 4, !dbg !1396
  %24 = add i32 %23, 60, !dbg !1396
  %25 = call i32 @Xil_In32(i32 %24), !dbg !1396
  store i32 %25, i32* %RegValue, align 4, !dbg !1396
  %26 = load i32* %RegValue, align 4, !dbg !1397
  %27 = and i32 %26, 8191, !dbg !1397
  %28 = trunc i32 %27 to i16, !dbg !1397
  %29 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1397
  %30 = getelementptr inbounds %struct.XVtc_HoriOffsets* %29, i32 0, i32 0, !dbg !1397
  store i16 %28, i16* %30, align 2, !dbg !1397
  %31 = load i32* %RegValue, align 4, !dbg !1398
  %32 = and i32 %31, 536805376, !dbg !1398
  %33 = lshr i32 %32, 16, !dbg !1398
  %34 = trunc i32 %33 to i16, !dbg !1398
  %35 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1398
  %36 = getelementptr inbounds %struct.XVtc_HoriOffsets* %35, i32 0, i32 1, !dbg !1398
  store i16 %34, i16* %36, align 2, !dbg !1398
  %37 = load %struct.XVtc** %1, align 4, !dbg !1399
  %38 = getelementptr inbounds %struct.XVtc* %37, i32 0, i32 0, !dbg !1399
  %39 = getelementptr inbounds %struct.XVtc_Config* %38, i32 0, i32 1, !dbg !1399
  %40 = load i32* %39, align 4, !dbg !1399
  %41 = add i32 %40, 68, !dbg !1399
  %42 = call i32 @Xil_In32(i32 %41), !dbg !1399
  store i32 %42, i32* %RegValue, align 4, !dbg !1399
  %43 = load i32* %RegValue, align 4, !dbg !1400
  %44 = and i32 %43, 8191, !dbg !1400
  %45 = trunc i32 %44 to i16, !dbg !1400
  %46 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1400
  %47 = getelementptr inbounds %struct.XVtc_HoriOffsets* %46, i32 0, i32 2, !dbg !1400
  store i16 %45, i16* %47, align 2, !dbg !1400
  %48 = load i32* %RegValue, align 4, !dbg !1401
  %49 = and i32 %48, 536805376, !dbg !1401
  %50 = lshr i32 %49, 16, !dbg !1401
  %51 = trunc i32 %50 to i16, !dbg !1401
  %52 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1401
  %53 = getelementptr inbounds %struct.XVtc_HoriOffsets* %52, i32 0, i32 3, !dbg !1401
  store i16 %51, i16* %53, align 2, !dbg !1401
  %54 = load %struct.XVtc** %1, align 4, !dbg !1402
  %55 = getelementptr inbounds %struct.XVtc* %54, i32 0, i32 0, !dbg !1402
  %56 = getelementptr inbounds %struct.XVtc_Config* %55, i32 0, i32 1, !dbg !1402
  %57 = load i32* %56, align 4, !dbg !1402
  %58 = add i32 %57, 72, !dbg !1402
  %59 = call i32 @Xil_In32(i32 %58), !dbg !1402
  store i32 %59, i32* %RegValue, align 4, !dbg !1402
  %60 = load i32* %RegValue, align 4, !dbg !1403
  %61 = and i32 %60, 8191, !dbg !1403
  %62 = trunc i32 %61 to i16, !dbg !1403
  %63 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1403
  %64 = getelementptr inbounds %struct.XVtc_HoriOffsets* %63, i32 0, i32 4, !dbg !1403
  store i16 %62, i16* %64, align 2, !dbg !1403
  %65 = load i32* %RegValue, align 4, !dbg !1404
  %66 = and i32 %65, 536805376, !dbg !1404
  %67 = lshr i32 %66, 16, !dbg !1404
  %68 = trunc i32 %67 to i16, !dbg !1404
  %69 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1404
  %70 = getelementptr inbounds %struct.XVtc_HoriOffsets* %69, i32 0, i32 5, !dbg !1404
  store i16 %68, i16* %70, align 2, !dbg !1404
  %71 = load %struct.XVtc** %1, align 4, !dbg !1405
  %72 = getelementptr inbounds %struct.XVtc* %71, i32 0, i32 0, !dbg !1405
  %73 = getelementptr inbounds %struct.XVtc_Config* %72, i32 0, i32 1, !dbg !1405
  %74 = load i32* %73, align 4, !dbg !1405
  %75 = add i32 %74, 80, !dbg !1405
  %76 = call i32 @Xil_In32(i32 %75), !dbg !1405
  store i32 %76, i32* %RegValue, align 4, !dbg !1405
  %77 = load i32* %RegValue, align 4, !dbg !1406
  %78 = and i32 %77, 8191, !dbg !1406
  %79 = trunc i32 %78 to i16, !dbg !1406
  %80 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1406
  %81 = getelementptr inbounds %struct.XVtc_HoriOffsets* %80, i32 0, i32 6, !dbg !1406
  store i16 %79, i16* %81, align 2, !dbg !1406
  %82 = load i32* %RegValue, align 4, !dbg !1407
  %83 = and i32 %82, 536805376, !dbg !1407
  %84 = lshr i32 %83, 16, !dbg !1407
  %85 = trunc i32 %84 to i16, !dbg !1407
  %86 = load %struct.XVtc_HoriOffsets** %2, align 4, !dbg !1407
  %87 = getelementptr inbounds %struct.XVtc_HoriOffsets* %86, i32 0, i32 7, !dbg !1407
  store i16 %85, i16* %87, align 2, !dbg !1407
  br label %88, !dbg !1408

; <label>:88                                      ; preds = %19, %18, %13, %6
  ret void, !dbg !1409
}

; Function Attrs: nounwind
define void @XVtc_SetGenerator(%struct.XVtc* %InstancePtr, %struct.XVtc_Signal* %SignalCfgPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Signal*, align 4
  %RegValue = alloca i32, align 4
  %r_htotal = alloca i32, align 4
  %r_vtotal = alloca i32, align 4
  %r_hactive = alloca i32, align 4
  %r_vactive = alloca i32, align 4
  %SCPtr = alloca %struct.XVtc_Signal*, align 4
  %horiOffsets = alloca %struct.XVtc_HoriOffsets, align 2
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1411), !dbg !1412
  store %struct.XVtc_Signal* %SignalCfgPtr, %struct.XVtc_Signal** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal** %2}, metadata !1413), !dbg !1414
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1415), !dbg !1416
  call void @llvm.dbg.declare(metadata !{i32* %r_htotal}, metadata !1417), !dbg !1418
  call void @llvm.dbg.declare(metadata !{i32* %r_vtotal}, metadata !1419), !dbg !1420
  call void @llvm.dbg.declare(metadata !{i32* %r_hactive}, metadata !1421), !dbg !1422
  call void @llvm.dbg.declare(metadata !{i32* %r_vactive}, metadata !1423), !dbg !1424
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal** %SCPtr}, metadata !1425), !dbg !1426
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets* %horiOffsets}, metadata !1427), !dbg !1428
  %3 = load %struct.XVtc** %1, align 4, !dbg !1429
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !1429
  br i1 %4, label %5, label %6, !dbg !1429

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1432
  br label %7, !dbg !1432

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1322), !dbg !1435
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1435
  br label %419, !dbg !1435

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !1438
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !1438
  %10 = load i32* %9, align 4, !dbg !1438
  %11 = icmp eq i32 %10, 286331153, !dbg !1438
  br i1 %11, label %12, label %13, !dbg !1438

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1441
  br label %14, !dbg !1441

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1323), !dbg !1444
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1444
  br label %419, !dbg !1444

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Signal** %2, align 4, !dbg !1447
  %16 = icmp ne %struct.XVtc_Signal* %15, null, !dbg !1447
  br i1 %16, label %17, label %18, !dbg !1447

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1450
  br label %19, !dbg !1450

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1324), !dbg !1453
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1453
  br label %419, !dbg !1453

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc_Signal** %2, align 4, !dbg !1456
  store %struct.XVtc_Signal* %20, %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1456
  %21 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1457
  %22 = getelementptr inbounds %struct.XVtc_Signal* %21, i32 0, i32 0, !dbg !1457
  %23 = load i16* %22, align 2, !dbg !1457
  %24 = zext i16 %23 to i32, !dbg !1457
  %25 = icmp eq i32 %24, 0, !dbg !1457
  br i1 %25, label %26, label %241, !dbg !1457

; <label>:26                                      ; preds = %19
  %27 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1459
  %28 = getelementptr inbounds %struct.XVtc_Signal* %27, i32 0, i32 1, !dbg !1459
  %29 = load i16* %28, align 2, !dbg !1459
  %30 = zext i16 %29 to i32, !dbg !1459
  %31 = add nsw i32 %30, 1, !dbg !1459
  store i32 %31, i32* %r_htotal, align 4, !dbg !1459
  %32 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1461
  %33 = getelementptr inbounds %struct.XVtc_Signal* %32, i32 0, i32 6, !dbg !1461
  %34 = load i16* %33, align 2, !dbg !1461
  %35 = zext i16 %34 to i32, !dbg !1461
  %36 = add nsw i32 %35, 1, !dbg !1461
  store i32 %36, i32* %r_vtotal, align 4, !dbg !1461
  %37 = load i32* %r_htotal, align 4, !dbg !1462
  %38 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1462
  %39 = getelementptr inbounds %struct.XVtc_Signal* %38, i32 0, i32 5, !dbg !1462
  %40 = load i16* %39, align 2, !dbg !1462
  %41 = zext i16 %40 to i32, !dbg !1462
  %42 = sub i32 %37, %41, !dbg !1462
  store i32 %42, i32* %r_hactive, align 4, !dbg !1462
  %43 = load i32* %r_vtotal, align 4, !dbg !1463
  %44 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1463
  %45 = getelementptr inbounds %struct.XVtc_Signal* %44, i32 0, i32 10, !dbg !1463
  %46 = load i16* %45, align 2, !dbg !1463
  %47 = zext i16 %46 to i32, !dbg !1463
  %48 = sub i32 %43, %47, !dbg !1463
  store i32 %48, i32* %r_vactive, align 4, !dbg !1463
  %49 = load i32* %r_htotal, align 4, !dbg !1464
  %50 = and i32 %49, 8191, !dbg !1464
  store i32 %50, i32* %RegValue, align 4, !dbg !1464
  %51 = load %struct.XVtc** %1, align 4, !dbg !1465
  %52 = getelementptr inbounds %struct.XVtc* %51, i32 0, i32 0, !dbg !1465
  %53 = getelementptr inbounds %struct.XVtc_Config* %52, i32 0, i32 1, !dbg !1465
  %54 = load i32* %53, align 4, !dbg !1465
  %55 = add i32 %54, 112, !dbg !1465
  %56 = load i32* %RegValue, align 4, !dbg !1465
  call void @Xil_Out32(i32 %55, i32 %56), !dbg !1465
  %57 = load i32* %r_vtotal, align 4, !dbg !1466
  %58 = and i32 %57, 8191, !dbg !1466
  store i32 %58, i32* %RegValue, align 4, !dbg !1466
  %59 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1467
  %60 = getelementptr inbounds %struct.XVtc_Signal* %59, i32 0, i32 12, !dbg !1467
  %61 = load i16* %60, align 2, !dbg !1467
  %62 = zext i16 %61 to i32, !dbg !1467
  %63 = add nsw i32 %62, 1, !dbg !1467
  %64 = shl i32 %63, 16, !dbg !1467
  %65 = and i32 %64, 536805376, !dbg !1467
  %66 = load i32* %RegValue, align 4, !dbg !1467
  %67 = or i32 %66, %65, !dbg !1467
  store i32 %67, i32* %RegValue, align 4, !dbg !1467
  %68 = load %struct.XVtc** %1, align 4, !dbg !1468
  %69 = getelementptr inbounds %struct.XVtc* %68, i32 0, i32 0, !dbg !1468
  %70 = getelementptr inbounds %struct.XVtc_Config* %69, i32 0, i32 1, !dbg !1468
  %71 = load i32* %70, align 4, !dbg !1468
  %72 = add i32 %71, 116, !dbg !1468
  %73 = load i32* %RegValue, align 4, !dbg !1468
  call void @Xil_Out32(i32 %72, i32 %73), !dbg !1468
  %74 = load i32* %r_hactive, align 4, !dbg !1469
  %75 = and i32 %74, 8191, !dbg !1469
  store i32 %75, i32* %RegValue, align 4, !dbg !1469
  %76 = load i32* %r_vactive, align 4, !dbg !1470
  %77 = shl i32 %76, 16, !dbg !1470
  %78 = and i32 %77, 536805376, !dbg !1470
  %79 = load i32* %RegValue, align 4, !dbg !1470
  %80 = or i32 %79, %78, !dbg !1470
  store i32 %80, i32* %RegValue, align 4, !dbg !1470
  %81 = load %struct.XVtc** %1, align 4, !dbg !1471
  %82 = getelementptr inbounds %struct.XVtc* %81, i32 0, i32 0, !dbg !1471
  %83 = getelementptr inbounds %struct.XVtc_Config* %82, i32 0, i32 1, !dbg !1471
  %84 = load i32* %83, align 4, !dbg !1471
  %85 = add i32 %84, 96, !dbg !1471
  %86 = load i32* %RegValue, align 4, !dbg !1471
  call void @Xil_Out32(i32 %85, i32 %86), !dbg !1471
  %87 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1472
  %88 = getelementptr inbounds %struct.XVtc_Signal* %87, i32 0, i32 3, !dbg !1472
  %89 = load i16* %88, align 2, !dbg !1472
  %90 = zext i16 %89 to i32, !dbg !1472
  %91 = load i32* %r_hactive, align 4, !dbg !1472
  %92 = add i32 %90, %91, !dbg !1472
  %93 = and i32 %92, 8191, !dbg !1472
  store i32 %93, i32* %RegValue, align 4, !dbg !1472
  %94 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1473
  %95 = getelementptr inbounds %struct.XVtc_Signal* %94, i32 0, i32 4, !dbg !1473
  %96 = load i16* %95, align 2, !dbg !1473
  %97 = zext i16 %96 to i32, !dbg !1473
  %98 = load i32* %r_hactive, align 4, !dbg !1473
  %99 = add i32 %97, %98, !dbg !1473
  %100 = shl i32 %99, 16, !dbg !1473
  %101 = and i32 %100, 536805376, !dbg !1473
  %102 = load i32* %RegValue, align 4, !dbg !1473
  %103 = or i32 %102, %101, !dbg !1473
  store i32 %103, i32* %RegValue, align 4, !dbg !1473
  %104 = load %struct.XVtc** %1, align 4, !dbg !1474
  %105 = getelementptr inbounds %struct.XVtc* %104, i32 0, i32 0, !dbg !1474
  %106 = getelementptr inbounds %struct.XVtc_Config* %105, i32 0, i32 1, !dbg !1474
  %107 = load i32* %106, align 4, !dbg !1474
  %108 = add i32 %107, 120, !dbg !1474
  %109 = load i32* %RegValue, align 4, !dbg !1474
  call void @Xil_Out32(i32 %108, i32 %109), !dbg !1474
  %110 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1475
  %111 = getelementptr inbounds %struct.XVtc_Signal* %110, i32 0, i32 8, !dbg !1475
  %112 = load i16* %111, align 2, !dbg !1475
  %113 = zext i16 %112 to i32, !dbg !1475
  %114 = load i32* %r_vactive, align 4, !dbg !1475
  %115 = add i32 %113, %114, !dbg !1475
  %116 = sub i32 %115, 1, !dbg !1475
  %117 = and i32 %116, 8191, !dbg !1475
  store i32 %117, i32* %RegValue, align 4, !dbg !1475
  %118 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1476
  %119 = getelementptr inbounds %struct.XVtc_Signal* %118, i32 0, i32 9, !dbg !1476
  %120 = load i16* %119, align 2, !dbg !1476
  %121 = zext i16 %120 to i32, !dbg !1476
  %122 = load i32* %r_vactive, align 4, !dbg !1476
  %123 = add i32 %121, %122, !dbg !1476
  %124 = sub i32 %123, 1, !dbg !1476
  %125 = shl i32 %124, 16, !dbg !1476
  %126 = and i32 %125, 536805376, !dbg !1476
  %127 = load i32* %RegValue, align 4, !dbg !1476
  %128 = or i32 %127, %126, !dbg !1476
  store i32 %128, i32* %RegValue, align 4, !dbg !1476
  %129 = load %struct.XVtc** %1, align 4, !dbg !1477
  %130 = getelementptr inbounds %struct.XVtc* %129, i32 0, i32 0, !dbg !1477
  %131 = getelementptr inbounds %struct.XVtc_Config* %130, i32 0, i32 1, !dbg !1477
  %132 = load i32* %131, align 4, !dbg !1477
  %133 = add i32 %132, 128, !dbg !1477
  %134 = load i32* %RegValue, align 4, !dbg !1477
  call void @Xil_Out32(i32 %133, i32 %134), !dbg !1477
  %135 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1478
  %136 = getelementptr inbounds %struct.XVtc_Signal* %135, i32 0, i32 14, !dbg !1478
  %137 = load i16* %136, align 2, !dbg !1478
  %138 = zext i16 %137 to i32, !dbg !1478
  %139 = load i32* %r_vactive, align 4, !dbg !1478
  %140 = add i32 %138, %139, !dbg !1478
  %141 = sub i32 %140, 1, !dbg !1478
  %142 = and i32 %141, 8191, !dbg !1478
  store i32 %142, i32* %RegValue, align 4, !dbg !1478
  %143 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1479
  %144 = getelementptr inbounds %struct.XVtc_Signal* %143, i32 0, i32 15, !dbg !1479
  %145 = load i16* %144, align 2, !dbg !1479
  %146 = zext i16 %145 to i32, !dbg !1479
  %147 = load i32* %r_vactive, align 4, !dbg !1479
  %148 = add i32 %146, %147, !dbg !1479
  %149 = sub i32 %148, 1, !dbg !1479
  %150 = shl i32 %149, 16, !dbg !1479
  %151 = and i32 %150, 536805376, !dbg !1479
  %152 = load i32* %RegValue, align 4, !dbg !1479
  %153 = or i32 %152, %151, !dbg !1479
  store i32 %153, i32* %RegValue, align 4, !dbg !1479
  %154 = load %struct.XVtc** %1, align 4, !dbg !1480
  %155 = getelementptr inbounds %struct.XVtc* %154, i32 0, i32 0, !dbg !1480
  %156 = getelementptr inbounds %struct.XVtc_Config* %155, i32 0, i32 1, !dbg !1480
  %157 = load i32* %156, align 4, !dbg !1480
  %158 = add i32 %157, 140, !dbg !1480
  %159 = load i32* %RegValue, align 4, !dbg !1480
  call void @Xil_Out32(i32 %158, i32 %159), !dbg !1480
  %160 = load %struct.XVtc** %1, align 4, !dbg !1481
  %161 = getelementptr inbounds %struct.XVtc* %160, i32 0, i32 0, !dbg !1481
  %162 = getelementptr inbounds %struct.XVtc_Config* %161, i32 0, i32 1, !dbg !1481
  %163 = load i32* %162, align 4, !dbg !1481
  %164 = add i32 %163, 104, !dbg !1481
  %165 = call i32 @Xil_In32(i32 %164), !dbg !1481
  store i32 %165, i32* %RegValue, align 4, !dbg !1481
  %166 = load i32* %RegValue, align 4, !dbg !1482
  %167 = and i32 %166, -257, !dbg !1482
  store i32 %167, i32* %RegValue, align 4, !dbg !1482
  %168 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1483
  %169 = getelementptr inbounds %struct.XVtc_Signal* %168, i32 0, i32 11, !dbg !1483
  %170 = load i16* %169, align 2, !dbg !1483
  %171 = zext i16 %170 to i32, !dbg !1483
  %172 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1483
  %173 = getelementptr inbounds %struct.XVtc_Signal* %172, i32 0, i32 10, !dbg !1483
  %174 = load i16* %173, align 2, !dbg !1483
  %175 = zext i16 %174 to i32, !dbg !1483
  %176 = sub nsw i32 %171, %175, !dbg !1483
  %177 = shl i32 %176, 8, !dbg !1483
  %178 = and i32 %177, 256, !dbg !1483
  %179 = load i32* %RegValue, align 4, !dbg !1483
  %180 = or i32 %178, %179, !dbg !1483
  store i32 %180, i32* %RegValue, align 4, !dbg !1483
  %181 = load i32* %RegValue, align 4, !dbg !1484
  %182 = and i32 %181, -65, !dbg !1484
  store i32 %182, i32* %RegValue, align 4, !dbg !1484
  %183 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1485
  %184 = getelementptr inbounds %struct.XVtc_Signal* %183, i32 0, i32 18, !dbg !1485
  %185 = load i8* %184, align 1, !dbg !1485
  %186 = zext i8 %185 to i32, !dbg !1485
  %187 = shl i32 %186, 6, !dbg !1485
  %188 = and i32 %187, 64, !dbg !1485
  %189 = load i32* %RegValue, align 4, !dbg !1485
  %190 = or i32 %189, %188, !dbg !1485
  store i32 %190, i32* %RegValue, align 4, !dbg !1485
  %191 = load %struct.XVtc** %1, align 4, !dbg !1486
  %192 = getelementptr inbounds %struct.XVtc* %191, i32 0, i32 0, !dbg !1486
  %193 = getelementptr inbounds %struct.XVtc_Config* %192, i32 0, i32 1, !dbg !1486
  %194 = load i32* %193, align 4, !dbg !1486
  %195 = add i32 %194, 104, !dbg !1486
  %196 = load i32* %RegValue, align 4, !dbg !1486
  call void @Xil_Out32(i32 %195, i32 %196), !dbg !1486
  %197 = load i32* %r_hactive, align 4, !dbg !1487
  %198 = trunc i32 %197 to i16, !dbg !1487
  %199 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 0, !dbg !1487
  store i16 %198, i16* %199, align 2, !dbg !1487
  %200 = load i32* %r_hactive, align 4, !dbg !1488
  %201 = trunc i32 %200 to i16, !dbg !1488
  %202 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 1, !dbg !1488
  store i16 %201, i16* %202, align 2, !dbg !1488
  %203 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1489
  %204 = getelementptr inbounds %struct.XVtc_Signal* %203, i32 0, i32 3, !dbg !1489
  %205 = load i16* %204, align 2, !dbg !1489
  %206 = zext i16 %205 to i32, !dbg !1489
  %207 = load i32* %r_hactive, align 4, !dbg !1489
  %208 = add i32 %206, %207, !dbg !1489
  %209 = trunc i32 %208 to i16, !dbg !1489
  %210 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 2, !dbg !1489
  store i16 %209, i16* %210, align 2, !dbg !1489
  %211 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1490
  %212 = getelementptr inbounds %struct.XVtc_Signal* %211, i32 0, i32 3, !dbg !1490
  %213 = load i16* %212, align 2, !dbg !1490
  %214 = zext i16 %213 to i32, !dbg !1490
  %215 = load i32* %r_hactive, align 4, !dbg !1490
  %216 = add i32 %214, %215, !dbg !1490
  %217 = trunc i32 %216 to i16, !dbg !1490
  %218 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 3, !dbg !1490
  store i16 %217, i16* %218, align 2, !dbg !1490
  %219 = load i32* %r_hactive, align 4, !dbg !1491
  %220 = trunc i32 %219 to i16, !dbg !1491
  %221 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 4, !dbg !1491
  store i16 %220, i16* %221, align 2, !dbg !1491
  %222 = load i32* %r_hactive, align 4, !dbg !1492
  %223 = trunc i32 %222 to i16, !dbg !1492
  %224 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 5, !dbg !1492
  store i16 %223, i16* %224, align 2, !dbg !1492
  %225 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1493
  %226 = getelementptr inbounds %struct.XVtc_Signal* %225, i32 0, i32 3, !dbg !1493
  %227 = load i16* %226, align 2, !dbg !1493
  %228 = zext i16 %227 to i32, !dbg !1493
  %229 = load i32* %r_hactive, align 4, !dbg !1493
  %230 = add i32 %228, %229, !dbg !1493
  %231 = trunc i32 %230 to i16, !dbg !1493
  %232 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 6, !dbg !1493
  store i16 %231, i16* %232, align 2, !dbg !1493
  %233 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1494
  %234 = getelementptr inbounds %struct.XVtc_Signal* %233, i32 0, i32 3, !dbg !1494
  %235 = load i16* %234, align 2, !dbg !1494
  %236 = zext i16 %235 to i32, !dbg !1494
  %237 = load i32* %r_hactive, align 4, !dbg !1494
  %238 = add i32 %236, %237, !dbg !1494
  %239 = trunc i32 %238 to i16, !dbg !1494
  %240 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 7, !dbg !1494
  store i16 %239, i16* %240, align 2, !dbg !1494
  br label %417, !dbg !1495

; <label>:241                                     ; preds = %19
  %242 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1496
  %243 = getelementptr inbounds %struct.XVtc_Signal* %242, i32 0, i32 1, !dbg !1496
  %244 = load i16* %243, align 2, !dbg !1496
  %245 = zext i16 %244 to i32, !dbg !1496
  store i32 %245, i32* %r_htotal, align 4, !dbg !1496
  %246 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1498
  %247 = getelementptr inbounds %struct.XVtc_Signal* %246, i32 0, i32 6, !dbg !1498
  %248 = load i16* %247, align 2, !dbg !1498
  %249 = zext i16 %248 to i32, !dbg !1498
  store i32 %249, i32* %r_vtotal, align 4, !dbg !1498
  %250 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1499
  %251 = getelementptr inbounds %struct.XVtc_Signal* %250, i32 0, i32 2, !dbg !1499
  %252 = load i16* %251, align 2, !dbg !1499
  %253 = zext i16 %252 to i32, !dbg !1499
  store i32 %253, i32* %r_hactive, align 4, !dbg !1499
  %254 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1500
  %255 = getelementptr inbounds %struct.XVtc_Signal* %254, i32 0, i32 7, !dbg !1500
  %256 = load i16* %255, align 2, !dbg !1500
  %257 = zext i16 %256 to i32, !dbg !1500
  store i32 %257, i32* %r_vactive, align 4, !dbg !1500
  %258 = load i32* %r_htotal, align 4, !dbg !1501
  %259 = and i32 %258, 8191, !dbg !1501
  store i32 %259, i32* %RegValue, align 4, !dbg !1501
  %260 = load %struct.XVtc** %1, align 4, !dbg !1502
  %261 = getelementptr inbounds %struct.XVtc* %260, i32 0, i32 0, !dbg !1502
  %262 = getelementptr inbounds %struct.XVtc_Config* %261, i32 0, i32 1, !dbg !1502
  %263 = load i32* %262, align 4, !dbg !1502
  %264 = add i32 %263, 112, !dbg !1502
  %265 = load i32* %RegValue, align 4, !dbg !1502
  call void @Xil_Out32(i32 %264, i32 %265), !dbg !1502
  %266 = load i32* %r_vtotal, align 4, !dbg !1503
  %267 = and i32 %266, 8191, !dbg !1503
  store i32 %267, i32* %RegValue, align 4, !dbg !1503
  %268 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1504
  %269 = getelementptr inbounds %struct.XVtc_Signal* %268, i32 0, i32 12, !dbg !1504
  %270 = load i16* %269, align 2, !dbg !1504
  %271 = zext i16 %270 to i32, !dbg !1504
  %272 = shl i32 %271, 16, !dbg !1504
  %273 = and i32 %272, 536805376, !dbg !1504
  %274 = load i32* %RegValue, align 4, !dbg !1504
  %275 = or i32 %274, %273, !dbg !1504
  store i32 %275, i32* %RegValue, align 4, !dbg !1504
  %276 = load %struct.XVtc** %1, align 4, !dbg !1505
  %277 = getelementptr inbounds %struct.XVtc* %276, i32 0, i32 0, !dbg !1505
  %278 = getelementptr inbounds %struct.XVtc_Config* %277, i32 0, i32 1, !dbg !1505
  %279 = load i32* %278, align 4, !dbg !1505
  %280 = add i32 %279, 116, !dbg !1505
  %281 = load i32* %RegValue, align 4, !dbg !1505
  call void @Xil_Out32(i32 %280, i32 %281), !dbg !1505
  %282 = load i32* %r_hactive, align 4, !dbg !1506
  %283 = and i32 %282, 8191, !dbg !1506
  store i32 %283, i32* %RegValue, align 4, !dbg !1506
  %284 = load i32* %r_vactive, align 4, !dbg !1507
  %285 = shl i32 %284, 16, !dbg !1507
  %286 = and i32 %285, 536805376, !dbg !1507
  %287 = load i32* %RegValue, align 4, !dbg !1507
  %288 = or i32 %287, %286, !dbg !1507
  store i32 %288, i32* %RegValue, align 4, !dbg !1507
  %289 = load %struct.XVtc** %1, align 4, !dbg !1508
  %290 = getelementptr inbounds %struct.XVtc* %289, i32 0, i32 0, !dbg !1508
  %291 = getelementptr inbounds %struct.XVtc_Config* %290, i32 0, i32 1, !dbg !1508
  %292 = load i32* %291, align 4, !dbg !1508
  %293 = add i32 %292, 96, !dbg !1508
  %294 = load i32* %RegValue, align 4, !dbg !1508
  call void @Xil_Out32(i32 %293, i32 %294), !dbg !1508
  %295 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1509
  %296 = getelementptr inbounds %struct.XVtc_Signal* %295, i32 0, i32 3, !dbg !1509
  %297 = load i16* %296, align 2, !dbg !1509
  %298 = zext i16 %297 to i32, !dbg !1509
  %299 = and i32 %298, 8191, !dbg !1509
  store i32 %299, i32* %RegValue, align 4, !dbg !1509
  %300 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1510
  %301 = getelementptr inbounds %struct.XVtc_Signal* %300, i32 0, i32 4, !dbg !1510
  %302 = load i16* %301, align 2, !dbg !1510
  %303 = zext i16 %302 to i32, !dbg !1510
  %304 = shl i32 %303, 16, !dbg !1510
  %305 = and i32 %304, 536805376, !dbg !1510
  %306 = load i32* %RegValue, align 4, !dbg !1510
  %307 = or i32 %306, %305, !dbg !1510
  store i32 %307, i32* %RegValue, align 4, !dbg !1510
  %308 = load %struct.XVtc** %1, align 4, !dbg !1511
  %309 = getelementptr inbounds %struct.XVtc* %308, i32 0, i32 0, !dbg !1511
  %310 = getelementptr inbounds %struct.XVtc_Config* %309, i32 0, i32 1, !dbg !1511
  %311 = load i32* %310, align 4, !dbg !1511
  %312 = add i32 %311, 120, !dbg !1511
  %313 = load i32* %RegValue, align 4, !dbg !1511
  call void @Xil_Out32(i32 %312, i32 %313), !dbg !1511
  %314 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1512
  %315 = getelementptr inbounds %struct.XVtc_Signal* %314, i32 0, i32 8, !dbg !1512
  %316 = load i16* %315, align 2, !dbg !1512
  %317 = zext i16 %316 to i32, !dbg !1512
  %318 = and i32 %317, 8191, !dbg !1512
  store i32 %318, i32* %RegValue, align 4, !dbg !1512
  %319 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1513
  %320 = getelementptr inbounds %struct.XVtc_Signal* %319, i32 0, i32 9, !dbg !1513
  %321 = load i16* %320, align 2, !dbg !1513
  %322 = zext i16 %321 to i32, !dbg !1513
  %323 = shl i32 %322, 16, !dbg !1513
  %324 = and i32 %323, 536805376, !dbg !1513
  %325 = load i32* %RegValue, align 4, !dbg !1513
  %326 = or i32 %325, %324, !dbg !1513
  store i32 %326, i32* %RegValue, align 4, !dbg !1513
  %327 = load %struct.XVtc** %1, align 4, !dbg !1514
  %328 = getelementptr inbounds %struct.XVtc* %327, i32 0, i32 0, !dbg !1514
  %329 = getelementptr inbounds %struct.XVtc_Config* %328, i32 0, i32 1, !dbg !1514
  %330 = load i32* %329, align 4, !dbg !1514
  %331 = add i32 %330, 128, !dbg !1514
  %332 = load i32* %RegValue, align 4, !dbg !1514
  call void @Xil_Out32(i32 %331, i32 %332), !dbg !1514
  %333 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1515
  %334 = getelementptr inbounds %struct.XVtc_Signal* %333, i32 0, i32 14, !dbg !1515
  %335 = load i16* %334, align 2, !dbg !1515
  %336 = zext i16 %335 to i32, !dbg !1515
  %337 = and i32 %336, 8191, !dbg !1515
  store i32 %337, i32* %RegValue, align 4, !dbg !1515
  %338 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1516
  %339 = getelementptr inbounds %struct.XVtc_Signal* %338, i32 0, i32 15, !dbg !1516
  %340 = load i16* %339, align 2, !dbg !1516
  %341 = zext i16 %340 to i32, !dbg !1516
  %342 = shl i32 %341, 16, !dbg !1516
  %343 = and i32 %342, 536805376, !dbg !1516
  %344 = load i32* %RegValue, align 4, !dbg !1516
  %345 = or i32 %344, %343, !dbg !1516
  store i32 %345, i32* %RegValue, align 4, !dbg !1516
  %346 = load %struct.XVtc** %1, align 4, !dbg !1517
  %347 = getelementptr inbounds %struct.XVtc* %346, i32 0, i32 0, !dbg !1517
  %348 = getelementptr inbounds %struct.XVtc_Config* %347, i32 0, i32 1, !dbg !1517
  %349 = load i32* %348, align 4, !dbg !1517
  %350 = add i32 %349, 140, !dbg !1517
  %351 = load i32* %RegValue, align 4, !dbg !1517
  call void @Xil_Out32(i32 %350, i32 %351), !dbg !1517
  %352 = load %struct.XVtc** %1, align 4, !dbg !1518
  %353 = getelementptr inbounds %struct.XVtc* %352, i32 0, i32 0, !dbg !1518
  %354 = getelementptr inbounds %struct.XVtc_Config* %353, i32 0, i32 1, !dbg !1518
  %355 = load i32* %354, align 4, !dbg !1518
  %356 = add i32 %355, 104, !dbg !1518
  %357 = call i32 @Xil_In32(i32 %356), !dbg !1518
  store i32 %357, i32* %RegValue, align 4, !dbg !1518
  %358 = load i32* %RegValue, align 4, !dbg !1519
  %359 = and i32 %358, -257, !dbg !1519
  store i32 %359, i32* %RegValue, align 4, !dbg !1519
  %360 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1520
  %361 = getelementptr inbounds %struct.XVtc_Signal* %360, i32 0, i32 11, !dbg !1520
  %362 = load i16* %361, align 2, !dbg !1520
  %363 = zext i16 %362 to i32, !dbg !1520
  %364 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1520
  %365 = getelementptr inbounds %struct.XVtc_Signal* %364, i32 0, i32 10, !dbg !1520
  %366 = load i16* %365, align 2, !dbg !1520
  %367 = zext i16 %366 to i32, !dbg !1520
  %368 = sub nsw i32 %363, %367, !dbg !1520
  %369 = shl i32 %368, 8, !dbg !1520
  %370 = and i32 %369, 256, !dbg !1520
  %371 = load i32* %RegValue, align 4, !dbg !1520
  %372 = or i32 %370, %371, !dbg !1520
  store i32 %372, i32* %RegValue, align 4, !dbg !1520
  %373 = load i32* %RegValue, align 4, !dbg !1521
  %374 = and i32 %373, -65, !dbg !1521
  store i32 %374, i32* %RegValue, align 4, !dbg !1521
  %375 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1522
  %376 = getelementptr inbounds %struct.XVtc_Signal* %375, i32 0, i32 18, !dbg !1522
  %377 = load i8* %376, align 1, !dbg !1522
  %378 = zext i8 %377 to i32, !dbg !1522
  %379 = shl i32 %378, 6, !dbg !1522
  %380 = and i32 %379, 64, !dbg !1522
  %381 = load i32* %RegValue, align 4, !dbg !1522
  %382 = or i32 %381, %380, !dbg !1522
  store i32 %382, i32* %RegValue, align 4, !dbg !1522
  %383 = load %struct.XVtc** %1, align 4, !dbg !1523
  %384 = getelementptr inbounds %struct.XVtc* %383, i32 0, i32 0, !dbg !1523
  %385 = getelementptr inbounds %struct.XVtc_Config* %384, i32 0, i32 1, !dbg !1523
  %386 = load i32* %385, align 4, !dbg !1523
  %387 = add i32 %386, 104, !dbg !1523
  %388 = load i32* %RegValue, align 4, !dbg !1523
  call void @Xil_Out32(i32 %387, i32 %388), !dbg !1523
  %389 = load i32* %r_hactive, align 4, !dbg !1524
  %390 = trunc i32 %389 to i16, !dbg !1524
  %391 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 0, !dbg !1524
  store i16 %390, i16* %391, align 2, !dbg !1524
  %392 = load i32* %r_hactive, align 4, !dbg !1525
  %393 = trunc i32 %392 to i16, !dbg !1525
  %394 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 1, !dbg !1525
  store i16 %393, i16* %394, align 2, !dbg !1525
  %395 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1526
  %396 = getelementptr inbounds %struct.XVtc_Signal* %395, i32 0, i32 3, !dbg !1526
  %397 = load i16* %396, align 2, !dbg !1526
  %398 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 2, !dbg !1526
  store i16 %397, i16* %398, align 2, !dbg !1526
  %399 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1527
  %400 = getelementptr inbounds %struct.XVtc_Signal* %399, i32 0, i32 3, !dbg !1527
  %401 = load i16* %400, align 2, !dbg !1527
  %402 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 3, !dbg !1527
  store i16 %401, i16* %402, align 2, !dbg !1527
  %403 = load i32* %r_hactive, align 4, !dbg !1528
  %404 = trunc i32 %403 to i16, !dbg !1528
  %405 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 4, !dbg !1528
  store i16 %404, i16* %405, align 2, !dbg !1528
  %406 = load i32* %r_hactive, align 4, !dbg !1529
  %407 = trunc i32 %406 to i16, !dbg !1529
  %408 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 5, !dbg !1529
  store i16 %407, i16* %408, align 2, !dbg !1529
  %409 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1530
  %410 = getelementptr inbounds %struct.XVtc_Signal* %409, i32 0, i32 3, !dbg !1530
  %411 = load i16* %410, align 2, !dbg !1530
  %412 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 6, !dbg !1530
  store i16 %411, i16* %412, align 2, !dbg !1530
  %413 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1531
  %414 = getelementptr inbounds %struct.XVtc_Signal* %413, i32 0, i32 3, !dbg !1531
  %415 = load i16* %414, align 2, !dbg !1531
  %416 = getelementptr inbounds %struct.XVtc_HoriOffsets* %horiOffsets, i32 0, i32 7, !dbg !1531
  store i16 %415, i16* %416, align 2, !dbg !1531
  br label %417

; <label>:417                                     ; preds = %241, %26
  %418 = load %struct.XVtc** %1, align 4, !dbg !1532
  call void @XVtc_SetGeneratorHoriOffset(%struct.XVtc* %418, %struct.XVtc_HoriOffsets* %horiOffsets), !dbg !1532
  br label %419, !dbg !1533

; <label>:419                                     ; preds = %417, %18, %13, %6
  ret void, !dbg !1534
}

; Function Attrs: nounwind
define void @XVtc_GetGenerator(%struct.XVtc* %InstancePtr, %struct.XVtc_Signal* %SignalCfgPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Signal*, align 4
  %RegValue = alloca i32, align 4
  %r_htotal = alloca i32, align 4
  %r_vtotal = alloca i32, align 4
  %r_hactive = alloca i32, align 4
  %r_vactive = alloca i32, align 4
  %SCPtr = alloca %struct.XVtc_Signal*, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1536), !dbg !1537
  store %struct.XVtc_Signal* %SignalCfgPtr, %struct.XVtc_Signal** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal** %2}, metadata !1538), !dbg !1539
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1540), !dbg !1541
  call void @llvm.dbg.declare(metadata !{i32* %r_htotal}, metadata !1542), !dbg !1543
  call void @llvm.dbg.declare(metadata !{i32* %r_vtotal}, metadata !1544), !dbg !1545
  call void @llvm.dbg.declare(metadata !{i32* %r_hactive}, metadata !1546), !dbg !1547
  call void @llvm.dbg.declare(metadata !{i32* %r_vactive}, metadata !1548), !dbg !1549
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal** %SCPtr}, metadata !1550), !dbg !1551
  %3 = load %struct.XVtc** %1, align 4, !dbg !1552
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !1552
  br i1 %4, label %5, label %6, !dbg !1552

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1555
  br label %7, !dbg !1555

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1509), !dbg !1558
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1558
  br label %363, !dbg !1558

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !1561
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !1561
  %10 = load i32* %9, align 4, !dbg !1561
  %11 = icmp eq i32 %10, 286331153, !dbg !1561
  br i1 %11, label %12, label %13, !dbg !1561

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1564
  br label %14, !dbg !1564

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1510), !dbg !1567
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1567
  br label %363, !dbg !1567

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Signal** %2, align 4, !dbg !1570
  %16 = icmp ne %struct.XVtc_Signal* %15, null, !dbg !1570
  br i1 %16, label %17, label %18, !dbg !1570

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1573
  br label %19, !dbg !1573

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1511), !dbg !1576
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1576
  br label %363, !dbg !1576

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc_Signal** %2, align 4, !dbg !1579
  store %struct.XVtc_Signal* %20, %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1579
  %21 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1580
  %22 = getelementptr inbounds %struct.XVtc_Signal* %21, i32 0, i32 0, !dbg !1580
  %23 = load i16* %22, align 2, !dbg !1580
  %24 = zext i16 %23 to i32, !dbg !1580
  %25 = icmp eq i32 %24, 0, !dbg !1580
  br i1 %25, label %26, label %221, !dbg !1580

; <label>:26                                      ; preds = %19
  %27 = load %struct.XVtc** %1, align 4, !dbg !1582
  %28 = getelementptr inbounds %struct.XVtc* %27, i32 0, i32 0, !dbg !1582
  %29 = getelementptr inbounds %struct.XVtc_Config* %28, i32 0, i32 1, !dbg !1582
  %30 = load i32* %29, align 4, !dbg !1582
  %31 = add i32 %30, 112, !dbg !1582
  %32 = call i32 @Xil_In32(i32 %31), !dbg !1582
  store i32 %32, i32* %RegValue, align 4, !dbg !1582
  %33 = load i32* %RegValue, align 4, !dbg !1584
  %34 = and i32 %33, 8191, !dbg !1584
  store i32 %34, i32* %r_htotal, align 4, !dbg !1584
  %35 = load i32* %r_htotal, align 4, !dbg !1585
  %36 = sub i32 %35, 1, !dbg !1585
  %37 = and i32 %36, 8191, !dbg !1585
  %38 = trunc i32 %37 to i16, !dbg !1585
  %39 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1585
  %40 = getelementptr inbounds %struct.XVtc_Signal* %39, i32 0, i32 1, !dbg !1585
  store i16 %38, i16* %40, align 2, !dbg !1585
  %41 = load %struct.XVtc** %1, align 4, !dbg !1586
  %42 = getelementptr inbounds %struct.XVtc* %41, i32 0, i32 0, !dbg !1586
  %43 = getelementptr inbounds %struct.XVtc_Config* %42, i32 0, i32 1, !dbg !1586
  %44 = load i32* %43, align 4, !dbg !1586
  %45 = add i32 %44, 116, !dbg !1586
  %46 = call i32 @Xil_In32(i32 %45), !dbg !1586
  store i32 %46, i32* %RegValue, align 4, !dbg !1586
  %47 = load i32* %RegValue, align 4, !dbg !1587
  %48 = and i32 %47, 8191, !dbg !1587
  store i32 %48, i32* %r_vtotal, align 4, !dbg !1587
  %49 = load i32* %r_vtotal, align 4, !dbg !1588
  %50 = sub i32 %49, 1, !dbg !1588
  %51 = and i32 %50, 8191, !dbg !1588
  %52 = trunc i32 %51 to i16, !dbg !1588
  %53 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1588
  %54 = getelementptr inbounds %struct.XVtc_Signal* %53, i32 0, i32 6, !dbg !1588
  store i16 %52, i16* %54, align 2, !dbg !1588
  %55 = load i32* %RegValue, align 4, !dbg !1589
  %56 = and i32 %55, 536805376, !dbg !1589
  %57 = lshr i32 %56, 16, !dbg !1589
  %58 = trunc i32 %57 to i16, !dbg !1589
  %59 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1589
  %60 = getelementptr inbounds %struct.XVtc_Signal* %59, i32 0, i32 12, !dbg !1589
  store i16 %58, i16* %60, align 2, !dbg !1589
  %61 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1590
  %62 = getelementptr inbounds %struct.XVtc_Signal* %61, i32 0, i32 12, !dbg !1590
  %63 = load i16* %62, align 2, !dbg !1590
  %64 = zext i16 %63 to i32, !dbg !1590
  %65 = icmp ne i32 %64, 0, !dbg !1590
  br i1 %65, label %66, label %75, !dbg !1590

; <label>:66                                      ; preds = %26
  %67 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1592
  %68 = getelementptr inbounds %struct.XVtc_Signal* %67, i32 0, i32 12, !dbg !1592
  %69 = load i16* %68, align 2, !dbg !1592
  %70 = zext i16 %69 to i32, !dbg !1592
  %71 = sub nsw i32 %70, 1, !dbg !1592
  %72 = trunc i32 %71 to i16, !dbg !1592
  %73 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1592
  %74 = getelementptr inbounds %struct.XVtc_Signal* %73, i32 0, i32 12, !dbg !1592
  store i16 %72, i16* %74, align 2, !dbg !1592
  br label %75, !dbg !1594

; <label>:75                                      ; preds = %66, %26
  %76 = load %struct.XVtc** %1, align 4, !dbg !1595
  %77 = getelementptr inbounds %struct.XVtc* %76, i32 0, i32 0, !dbg !1595
  %78 = getelementptr inbounds %struct.XVtc_Config* %77, i32 0, i32 1, !dbg !1595
  %79 = load i32* %78, align 4, !dbg !1595
  %80 = add i32 %79, 96, !dbg !1595
  %81 = call i32 @Xil_In32(i32 %80), !dbg !1595
  store i32 %81, i32* %RegValue, align 4, !dbg !1595
  %82 = load i32* %RegValue, align 4, !dbg !1596
  %83 = and i32 %82, 8191, !dbg !1596
  store i32 %83, i32* %r_hactive, align 4, !dbg !1596
  %84 = load i32* %r_htotal, align 4, !dbg !1597
  %85 = load i32* %r_hactive, align 4, !dbg !1597
  %86 = sub i32 %84, %85, !dbg !1597
  %87 = and i32 %86, 8191, !dbg !1597
  %88 = trunc i32 %87 to i16, !dbg !1597
  %89 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1597
  %90 = getelementptr inbounds %struct.XVtc_Signal* %89, i32 0, i32 5, !dbg !1597
  store i16 %88, i16* %90, align 2, !dbg !1597
  %91 = load i32* %RegValue, align 4, !dbg !1598
  %92 = and i32 %91, 536805376, !dbg !1598
  %93 = lshr i32 %92, 16, !dbg !1598
  store i32 %93, i32* %r_vactive, align 4, !dbg !1598
  %94 = load i32* %r_vtotal, align 4, !dbg !1599
  %95 = load i32* %r_vactive, align 4, !dbg !1599
  %96 = sub i32 %94, %95, !dbg !1599
  %97 = and i32 %96, 8191, !dbg !1599
  %98 = trunc i32 %97 to i16, !dbg !1599
  %99 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1599
  %100 = getelementptr inbounds %struct.XVtc_Signal* %99, i32 0, i32 10, !dbg !1599
  store i16 %98, i16* %100, align 2, !dbg !1599
  %101 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1600
  %102 = getelementptr inbounds %struct.XVtc_Signal* %101, i32 0, i32 12, !dbg !1600
  %103 = load i16* %102, align 2, !dbg !1600
  %104 = zext i16 %103 to i32, !dbg !1600
  %105 = load i32* %r_vactive, align 4, !dbg !1600
  %106 = sub i32 %104, %105, !dbg !1600
  %107 = sub i32 %106, 1, !dbg !1600
  %108 = and i32 %107, 8191, !dbg !1600
  %109 = trunc i32 %108 to i16, !dbg !1600
  %110 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1600
  %111 = getelementptr inbounds %struct.XVtc_Signal* %110, i32 0, i32 16, !dbg !1600
  store i16 %109, i16* %111, align 2, !dbg !1600
  %112 = load %struct.XVtc** %1, align 4, !dbg !1601
  %113 = getelementptr inbounds %struct.XVtc* %112, i32 0, i32 0, !dbg !1601
  %114 = getelementptr inbounds %struct.XVtc_Config* %113, i32 0, i32 1, !dbg !1601
  %115 = load i32* %114, align 4, !dbg !1601
  %116 = add i32 %115, 120, !dbg !1601
  %117 = call i32 @Xil_In32(i32 %116), !dbg !1601
  store i32 %117, i32* %RegValue, align 4, !dbg !1601
  %118 = load i32* %RegValue, align 4, !dbg !1602
  %119 = load i32* %r_hactive, align 4, !dbg !1602
  %120 = sub i32 %118, %119, !dbg !1602
  %121 = and i32 %120, 8191, !dbg !1602
  %122 = trunc i32 %121 to i16, !dbg !1602
  %123 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1602
  %124 = getelementptr inbounds %struct.XVtc_Signal* %123, i32 0, i32 3, !dbg !1602
  store i16 %122, i16* %124, align 2, !dbg !1602
  %125 = load i32* %RegValue, align 4, !dbg !1603
  %126 = lshr i32 %125, 16, !dbg !1603
  %127 = load i32* %r_hactive, align 4, !dbg !1603
  %128 = sub i32 %126, %127, !dbg !1603
  %129 = and i32 %128, 8191, !dbg !1603
  %130 = trunc i32 %129 to i16, !dbg !1603
  %131 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1603
  %132 = getelementptr inbounds %struct.XVtc_Signal* %131, i32 0, i32 4, !dbg !1603
  store i16 %130, i16* %132, align 2, !dbg !1603
  %133 = load %struct.XVtc** %1, align 4, !dbg !1604
  %134 = getelementptr inbounds %struct.XVtc* %133, i32 0, i32 0, !dbg !1604
  %135 = getelementptr inbounds %struct.XVtc_Config* %134, i32 0, i32 1, !dbg !1604
  %136 = load i32* %135, align 4, !dbg !1604
  %137 = add i32 %136, 128, !dbg !1604
  %138 = call i32 @Xil_In32(i32 %137), !dbg !1604
  store i32 %138, i32* %RegValue, align 4, !dbg !1604
  %139 = load i32* %RegValue, align 4, !dbg !1605
  %140 = load i32* %r_vactive, align 4, !dbg !1605
  %141 = sub i32 %139, %140, !dbg !1605
  %142 = add i32 %141, 1, !dbg !1605
  %143 = and i32 %142, 8191, !dbg !1605
  %144 = trunc i32 %143 to i16, !dbg !1605
  %145 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1605
  %146 = getelementptr inbounds %struct.XVtc_Signal* %145, i32 0, i32 8, !dbg !1605
  store i16 %144, i16* %146, align 2, !dbg !1605
  %147 = load i32* %RegValue, align 4, !dbg !1606
  %148 = lshr i32 %147, 16, !dbg !1606
  %149 = load i32* %r_vactive, align 4, !dbg !1606
  %150 = sub i32 %148, %149, !dbg !1606
  %151 = add i32 %150, 1, !dbg !1606
  %152 = and i32 %151, 8191, !dbg !1606
  %153 = trunc i32 %152 to i16, !dbg !1606
  %154 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1606
  %155 = getelementptr inbounds %struct.XVtc_Signal* %154, i32 0, i32 9, !dbg !1606
  store i16 %153, i16* %155, align 2, !dbg !1606
  %156 = load %struct.XVtc** %1, align 4, !dbg !1607
  %157 = getelementptr inbounds %struct.XVtc* %156, i32 0, i32 0, !dbg !1607
  %158 = getelementptr inbounds %struct.XVtc_Config* %157, i32 0, i32 1, !dbg !1607
  %159 = load i32* %158, align 4, !dbg !1607
  %160 = add i32 %159, 140, !dbg !1607
  %161 = call i32 @Xil_In32(i32 %160), !dbg !1607
  store i32 %161, i32* %RegValue, align 4, !dbg !1607
  %162 = load i32* %RegValue, align 4, !dbg !1608
  %163 = load i32* %r_vactive, align 4, !dbg !1608
  %164 = sub i32 %162, %163, !dbg !1608
  %165 = add i32 %164, 1, !dbg !1608
  %166 = and i32 %165, 8191, !dbg !1608
  %167 = trunc i32 %166 to i16, !dbg !1608
  %168 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1608
  %169 = getelementptr inbounds %struct.XVtc_Signal* %168, i32 0, i32 14, !dbg !1608
  store i16 %167, i16* %169, align 2, !dbg !1608
  %170 = load i32* %RegValue, align 4, !dbg !1609
  %171 = lshr i32 %170, 16, !dbg !1609
  %172 = load i32* %r_vactive, align 4, !dbg !1609
  %173 = sub i32 %171, %172, !dbg !1609
  %174 = add i32 %173, 1, !dbg !1609
  %175 = and i32 %174, 8191, !dbg !1609
  %176 = trunc i32 %175 to i16, !dbg !1609
  %177 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1609
  %178 = getelementptr inbounds %struct.XVtc_Signal* %177, i32 0, i32 15, !dbg !1609
  store i16 %176, i16* %178, align 2, !dbg !1609
  %179 = load %struct.XVtc** %1, align 4, !dbg !1610
  %180 = getelementptr inbounds %struct.XVtc* %179, i32 0, i32 0, !dbg !1610
  %181 = getelementptr inbounds %struct.XVtc_Config* %180, i32 0, i32 1, !dbg !1610
  %182 = load i32* %181, align 4, !dbg !1610
  %183 = add i32 %182, 104, !dbg !1610
  %184 = call i32 @Xil_In32(i32 %183), !dbg !1610
  store i32 %184, i32* %RegValue, align 4, !dbg !1610
  %185 = load i32* %RegValue, align 4, !dbg !1611
  %186 = and i32 %185, 256, !dbg !1611
  %187 = lshr i32 %186, 8, !dbg !1611
  %188 = load i32* %r_vtotal, align 4, !dbg !1611
  %189 = load i32* %r_vactive, align 4, !dbg !1611
  %190 = sub i32 %188, %189, !dbg !1611
  %191 = add i32 %187, %190, !dbg !1611
  %192 = and i32 %191, 8191, !dbg !1611
  %193 = trunc i32 %192 to i16, !dbg !1611
  %194 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1611
  %195 = getelementptr inbounds %struct.XVtc_Signal* %194, i32 0, i32 11, !dbg !1611
  store i16 %193, i16* %195, align 2, !dbg !1611
  %196 = load i32* %RegValue, align 4, !dbg !1612
  %197 = and i32 %196, 256, !dbg !1612
  %198 = lshr i32 %197, 8, !dbg !1612
  %199 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1612
  %200 = getelementptr inbounds %struct.XVtc_Signal* %199, i32 0, i32 12, !dbg !1612
  %201 = load i16* %200, align 2, !dbg !1612
  %202 = zext i16 %201 to i32, !dbg !1612
  %203 = load i32* %r_vactive, align 4, !dbg !1612
  %204 = sub i32 %202, %203, !dbg !1612
  %205 = sub i32 %204, 1, !dbg !1612
  %206 = add i32 %198, %205, !dbg !1612
  %207 = and i32 %206, 8191, !dbg !1612
  %208 = trunc i32 %207 to i16, !dbg !1612
  %209 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1612
  %210 = getelementptr inbounds %struct.XVtc_Signal* %209, i32 0, i32 17, !dbg !1612
  store i16 %208, i16* %210, align 2, !dbg !1612
  %211 = load i32* %RegValue, align 4, !dbg !1613
  %212 = and i32 %211, 64, !dbg !1613
  %213 = lshr i32 %212, 6, !dbg !1613
  %214 = trunc i32 %213 to i8, !dbg !1613
  %215 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1613
  %216 = getelementptr inbounds %struct.XVtc_Signal* %215, i32 0, i32 18, !dbg !1613
  store i8 %214, i8* %216, align 1, !dbg !1613
  %217 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1614
  %218 = getelementptr inbounds %struct.XVtc_Signal* %217, i32 0, i32 2, !dbg !1614
  store i16 0, i16* %218, align 2, !dbg !1614
  %219 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1615
  %220 = getelementptr inbounds %struct.XVtc_Signal* %219, i32 0, i32 7, !dbg !1615
  store i16 0, i16* %220, align 2, !dbg !1615
  br label %363, !dbg !1616

; <label>:221                                     ; preds = %19
  %222 = load %struct.XVtc** %1, align 4, !dbg !1617
  %223 = getelementptr inbounds %struct.XVtc* %222, i32 0, i32 0, !dbg !1617
  %224 = getelementptr inbounds %struct.XVtc_Config* %223, i32 0, i32 1, !dbg !1617
  %225 = load i32* %224, align 4, !dbg !1617
  %226 = add i32 %225, 112, !dbg !1617
  %227 = call i32 @Xil_In32(i32 %226), !dbg !1617
  store i32 %227, i32* %RegValue, align 4, !dbg !1617
  %228 = load i32* %RegValue, align 4, !dbg !1619
  %229 = and i32 %228, 8191, !dbg !1619
  store i32 %229, i32* %r_htotal, align 4, !dbg !1619
  %230 = load i32* %r_htotal, align 4, !dbg !1620
  %231 = and i32 %230, 8191, !dbg !1620
  %232 = trunc i32 %231 to i16, !dbg !1620
  %233 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1620
  %234 = getelementptr inbounds %struct.XVtc_Signal* %233, i32 0, i32 1, !dbg !1620
  store i16 %232, i16* %234, align 2, !dbg !1620
  %235 = load %struct.XVtc** %1, align 4, !dbg !1621
  %236 = getelementptr inbounds %struct.XVtc* %235, i32 0, i32 0, !dbg !1621
  %237 = getelementptr inbounds %struct.XVtc_Config* %236, i32 0, i32 1, !dbg !1621
  %238 = load i32* %237, align 4, !dbg !1621
  %239 = add i32 %238, 116, !dbg !1621
  %240 = call i32 @Xil_In32(i32 %239), !dbg !1621
  store i32 %240, i32* %RegValue, align 4, !dbg !1621
  %241 = load i32* %RegValue, align 4, !dbg !1622
  %242 = and i32 %241, 8191, !dbg !1622
  store i32 %242, i32* %r_vtotal, align 4, !dbg !1622
  %243 = load i32* %r_vtotal, align 4, !dbg !1623
  %244 = and i32 %243, 8191, !dbg !1623
  %245 = trunc i32 %244 to i16, !dbg !1623
  %246 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1623
  %247 = getelementptr inbounds %struct.XVtc_Signal* %246, i32 0, i32 6, !dbg !1623
  store i16 %245, i16* %247, align 2, !dbg !1623
  %248 = load i32* %RegValue, align 4, !dbg !1624
  %249 = lshr i32 %248, 16, !dbg !1624
  %250 = and i32 %249, 8191, !dbg !1624
  %251 = trunc i32 %250 to i16, !dbg !1624
  %252 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1624
  %253 = getelementptr inbounds %struct.XVtc_Signal* %252, i32 0, i32 12, !dbg !1624
  store i16 %251, i16* %253, align 2, !dbg !1624
  %254 = load %struct.XVtc** %1, align 4, !dbg !1625
  %255 = getelementptr inbounds %struct.XVtc* %254, i32 0, i32 0, !dbg !1625
  %256 = getelementptr inbounds %struct.XVtc_Config* %255, i32 0, i32 1, !dbg !1625
  %257 = load i32* %256, align 4, !dbg !1625
  %258 = add i32 %257, 96, !dbg !1625
  %259 = call i32 @Xil_In32(i32 %258), !dbg !1625
  store i32 %259, i32* %RegValue, align 4, !dbg !1625
  %260 = load i32* %RegValue, align 4, !dbg !1626
  %261 = and i32 %260, 8191, !dbg !1626
  store i32 %261, i32* %r_hactive, align 4, !dbg !1626
  %262 = load i32* %r_hactive, align 4, !dbg !1627
  %263 = and i32 %262, 8191, !dbg !1627
  %264 = trunc i32 %263 to i16, !dbg !1627
  %265 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1627
  %266 = getelementptr inbounds %struct.XVtc_Signal* %265, i32 0, i32 2, !dbg !1627
  store i16 %264, i16* %266, align 2, !dbg !1627
  %267 = load i32* %RegValue, align 4, !dbg !1628
  %268 = lshr i32 %267, 16, !dbg !1628
  %269 = and i32 %268, 8191, !dbg !1628
  store i32 %269, i32* %r_vactive, align 4, !dbg !1628
  %270 = load i32* %r_vactive, align 4, !dbg !1629
  %271 = and i32 %270, 8191, !dbg !1629
  %272 = trunc i32 %271 to i16, !dbg !1629
  %273 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1629
  %274 = getelementptr inbounds %struct.XVtc_Signal* %273, i32 0, i32 7, !dbg !1629
  store i16 %272, i16* %274, align 2, !dbg !1629
  %275 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1630
  %276 = getelementptr inbounds %struct.XVtc_Signal* %275, i32 0, i32 7, !dbg !1630
  %277 = load i16* %276, align 2, !dbg !1630
  %278 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1630
  %279 = getelementptr inbounds %struct.XVtc_Signal* %278, i32 0, i32 13, !dbg !1630
  store i16 %277, i16* %279, align 2, !dbg !1630
  %280 = load %struct.XVtc** %1, align 4, !dbg !1631
  %281 = getelementptr inbounds %struct.XVtc* %280, i32 0, i32 0, !dbg !1631
  %282 = getelementptr inbounds %struct.XVtc_Config* %281, i32 0, i32 1, !dbg !1631
  %283 = load i32* %282, align 4, !dbg !1631
  %284 = add i32 %283, 120, !dbg !1631
  %285 = call i32 @Xil_In32(i32 %284), !dbg !1631
  store i32 %285, i32* %RegValue, align 4, !dbg !1631
  %286 = load i32* %RegValue, align 4, !dbg !1632
  %287 = and i32 %286, 8191, !dbg !1632
  %288 = trunc i32 %287 to i16, !dbg !1632
  %289 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1632
  %290 = getelementptr inbounds %struct.XVtc_Signal* %289, i32 0, i32 3, !dbg !1632
  store i16 %288, i16* %290, align 2, !dbg !1632
  %291 = load i32* %RegValue, align 4, !dbg !1633
  %292 = lshr i32 %291, 16, !dbg !1633
  %293 = and i32 %292, 8191, !dbg !1633
  %294 = trunc i32 %293 to i16, !dbg !1633
  %295 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1633
  %296 = getelementptr inbounds %struct.XVtc_Signal* %295, i32 0, i32 4, !dbg !1633
  store i16 %294, i16* %296, align 2, !dbg !1633
  %297 = load %struct.XVtc** %1, align 4, !dbg !1634
  %298 = getelementptr inbounds %struct.XVtc* %297, i32 0, i32 0, !dbg !1634
  %299 = getelementptr inbounds %struct.XVtc_Config* %298, i32 0, i32 1, !dbg !1634
  %300 = load i32* %299, align 4, !dbg !1634
  %301 = add i32 %300, 128, !dbg !1634
  %302 = call i32 @Xil_In32(i32 %301), !dbg !1634
  store i32 %302, i32* %RegValue, align 4, !dbg !1634
  %303 = load i32* %RegValue, align 4, !dbg !1635
  %304 = and i32 %303, 8191, !dbg !1635
  %305 = trunc i32 %304 to i16, !dbg !1635
  %306 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1635
  %307 = getelementptr inbounds %struct.XVtc_Signal* %306, i32 0, i32 8, !dbg !1635
  store i16 %305, i16* %307, align 2, !dbg !1635
  %308 = load i32* %RegValue, align 4, !dbg !1636
  %309 = lshr i32 %308, 16, !dbg !1636
  %310 = and i32 %309, 8191, !dbg !1636
  %311 = trunc i32 %310 to i16, !dbg !1636
  %312 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1636
  %313 = getelementptr inbounds %struct.XVtc_Signal* %312, i32 0, i32 9, !dbg !1636
  store i16 %311, i16* %313, align 2, !dbg !1636
  %314 = load %struct.XVtc** %1, align 4, !dbg !1637
  %315 = getelementptr inbounds %struct.XVtc* %314, i32 0, i32 0, !dbg !1637
  %316 = getelementptr inbounds %struct.XVtc_Config* %315, i32 0, i32 1, !dbg !1637
  %317 = load i32* %316, align 4, !dbg !1637
  %318 = add i32 %317, 140, !dbg !1637
  %319 = call i32 @Xil_In32(i32 %318), !dbg !1637
  store i32 %319, i32* %RegValue, align 4, !dbg !1637
  %320 = load i32* %RegValue, align 4, !dbg !1638
  %321 = and i32 %320, 8191, !dbg !1638
  %322 = trunc i32 %321 to i16, !dbg !1638
  %323 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1638
  %324 = getelementptr inbounds %struct.XVtc_Signal* %323, i32 0, i32 14, !dbg !1638
  store i16 %322, i16* %324, align 2, !dbg !1638
  %325 = load i32* %RegValue, align 4, !dbg !1639
  %326 = lshr i32 %325, 16, !dbg !1639
  %327 = and i32 %326, 8191, !dbg !1639
  %328 = trunc i32 %327 to i16, !dbg !1639
  %329 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1639
  %330 = getelementptr inbounds %struct.XVtc_Signal* %329, i32 0, i32 15, !dbg !1639
  store i16 %328, i16* %330, align 2, !dbg !1639
  %331 = load %struct.XVtc** %1, align 4, !dbg !1640
  %332 = getelementptr inbounds %struct.XVtc* %331, i32 0, i32 0, !dbg !1640
  %333 = getelementptr inbounds %struct.XVtc_Config* %332, i32 0, i32 1, !dbg !1640
  %334 = load i32* %333, align 4, !dbg !1640
  %335 = add i32 %334, 104, !dbg !1640
  %336 = call i32 @Xil_In32(i32 %335), !dbg !1640
  store i32 %336, i32* %RegValue, align 4, !dbg !1640
  %337 = load i32* %RegValue, align 4, !dbg !1641
  %338 = and i32 %337, 256, !dbg !1641
  %339 = lshr i32 %338, 8, !dbg !1641
  %340 = and i32 %339, 8191, !dbg !1641
  %341 = trunc i32 %340 to i16, !dbg !1641
  %342 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1641
  %343 = getelementptr inbounds %struct.XVtc_Signal* %342, i32 0, i32 11, !dbg !1641
  store i16 %341, i16* %343, align 2, !dbg !1641
  %344 = load i32* %RegValue, align 4, !dbg !1642
  %345 = and i32 %344, 256, !dbg !1642
  %346 = lshr i32 %345, 8, !dbg !1642
  %347 = and i32 %346, 8191, !dbg !1642
  %348 = trunc i32 %347 to i16, !dbg !1642
  %349 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1642
  %350 = getelementptr inbounds %struct.XVtc_Signal* %349, i32 0, i32 17, !dbg !1642
  store i16 %348, i16* %350, align 2, !dbg !1642
  %351 = load i32* %RegValue, align 4, !dbg !1643
  %352 = and i32 %351, 64, !dbg !1643
  %353 = lshr i32 %352, 6, !dbg !1643
  %354 = trunc i32 %353 to i8, !dbg !1643
  %355 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1643
  %356 = getelementptr inbounds %struct.XVtc_Signal* %355, i32 0, i32 18, !dbg !1643
  store i8 %354, i8* %356, align 1, !dbg !1643
  %357 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1644
  %358 = getelementptr inbounds %struct.XVtc_Signal* %357, i32 0, i32 5, !dbg !1644
  store i16 0, i16* %358, align 2, !dbg !1644
  %359 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1645
  %360 = getelementptr inbounds %struct.XVtc_Signal* %359, i32 0, i32 10, !dbg !1645
  store i16 0, i16* %360, align 2, !dbg !1645
  %361 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1646
  %362 = getelementptr inbounds %struct.XVtc_Signal* %361, i32 0, i32 16, !dbg !1646
  store i16 0, i16* %362, align 2, !dbg !1646
  br label %363

; <label>:363                                     ; preds = %6, %13, %18, %221, %75
  ret void, !dbg !1647
}

; Function Attrs: nounwind
define void @XVtc_GetDetector(%struct.XVtc* %InstancePtr, %struct.XVtc_Signal* %SignalCfgPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Signal*, align 4
  %RegValue = alloca i32, align 4
  %r_htotal = alloca i32, align 4
  %r_vtotal = alloca i32, align 4
  %r_hactive = alloca i32, align 4
  %r_vactive = alloca i32, align 4
  %SCPtr = alloca %struct.XVtc_Signal*, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1648), !dbg !1649
  store %struct.XVtc_Signal* %SignalCfgPtr, %struct.XVtc_Signal** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal** %2}, metadata !1650), !dbg !1651
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !1652), !dbg !1653
  call void @llvm.dbg.declare(metadata !{i32* %r_htotal}, metadata !1654), !dbg !1655
  call void @llvm.dbg.declare(metadata !{i32* %r_vtotal}, metadata !1656), !dbg !1657
  call void @llvm.dbg.declare(metadata !{i32* %r_hactive}, metadata !1658), !dbg !1659
  call void @llvm.dbg.declare(metadata !{i32* %r_vactive}, metadata !1660), !dbg !1661
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal** %SCPtr}, metadata !1662), !dbg !1663
  %3 = load %struct.XVtc** %1, align 4, !dbg !1664
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !1664
  br i1 %4, label %5, label %6, !dbg !1664

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1667
  br label %7, !dbg !1667

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1642), !dbg !1670
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1670
  br label %363, !dbg !1670

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !1673
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !1673
  %10 = load i32* %9, align 4, !dbg !1673
  %11 = icmp eq i32 %10, 286331153, !dbg !1673
  br i1 %11, label %12, label %13, !dbg !1673

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1676
  br label %14, !dbg !1676

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1643), !dbg !1679
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1679
  br label %363, !dbg !1679

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Signal** %2, align 4, !dbg !1682
  %16 = icmp ne %struct.XVtc_Signal* %15, null, !dbg !1682
  br i1 %16, label %17, label %18, !dbg !1682

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1685
  br label %19, !dbg !1685

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1644), !dbg !1688
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1688
  br label %363, !dbg !1688

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc_Signal** %2, align 4, !dbg !1691
  store %struct.XVtc_Signal* %20, %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1691
  %21 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1692
  %22 = getelementptr inbounds %struct.XVtc_Signal* %21, i32 0, i32 0, !dbg !1692
  %23 = load i16* %22, align 2, !dbg !1692
  %24 = zext i16 %23 to i32, !dbg !1692
  %25 = icmp eq i32 %24, 0, !dbg !1692
  br i1 %25, label %26, label %221, !dbg !1692

; <label>:26                                      ; preds = %19
  %27 = load %struct.XVtc** %1, align 4, !dbg !1694
  %28 = getelementptr inbounds %struct.XVtc* %27, i32 0, i32 0, !dbg !1694
  %29 = getelementptr inbounds %struct.XVtc_Config* %28, i32 0, i32 1, !dbg !1694
  %30 = load i32* %29, align 4, !dbg !1694
  %31 = add i32 %30, 48, !dbg !1694
  %32 = call i32 @Xil_In32(i32 %31), !dbg !1694
  store i32 %32, i32* %RegValue, align 4, !dbg !1694
  %33 = load i32* %RegValue, align 4, !dbg !1696
  %34 = and i32 %33, 8191, !dbg !1696
  store i32 %34, i32* %r_htotal, align 4, !dbg !1696
  %35 = load i32* %r_htotal, align 4, !dbg !1697
  %36 = sub i32 %35, 1, !dbg !1697
  %37 = and i32 %36, 8191, !dbg !1697
  %38 = trunc i32 %37 to i16, !dbg !1697
  %39 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1697
  %40 = getelementptr inbounds %struct.XVtc_Signal* %39, i32 0, i32 1, !dbg !1697
  store i16 %38, i16* %40, align 2, !dbg !1697
  %41 = load %struct.XVtc** %1, align 4, !dbg !1698
  %42 = getelementptr inbounds %struct.XVtc* %41, i32 0, i32 0, !dbg !1698
  %43 = getelementptr inbounds %struct.XVtc_Config* %42, i32 0, i32 1, !dbg !1698
  %44 = load i32* %43, align 4, !dbg !1698
  %45 = add i32 %44, 52, !dbg !1698
  %46 = call i32 @Xil_In32(i32 %45), !dbg !1698
  store i32 %46, i32* %RegValue, align 4, !dbg !1698
  %47 = load i32* %RegValue, align 4, !dbg !1699
  %48 = and i32 %47, 8191, !dbg !1699
  store i32 %48, i32* %r_vtotal, align 4, !dbg !1699
  %49 = load i32* %r_vtotal, align 4, !dbg !1700
  %50 = sub i32 %49, 1, !dbg !1700
  %51 = and i32 %50, 8191, !dbg !1700
  %52 = trunc i32 %51 to i16, !dbg !1700
  %53 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1700
  %54 = getelementptr inbounds %struct.XVtc_Signal* %53, i32 0, i32 6, !dbg !1700
  store i16 %52, i16* %54, align 2, !dbg !1700
  %55 = load i32* %RegValue, align 4, !dbg !1701
  %56 = lshr i32 %55, 16, !dbg !1701
  %57 = and i32 %56, 8191, !dbg !1701
  %58 = trunc i32 %57 to i16, !dbg !1701
  %59 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1701
  %60 = getelementptr inbounds %struct.XVtc_Signal* %59, i32 0, i32 12, !dbg !1701
  store i16 %58, i16* %60, align 2, !dbg !1701
  %61 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1702
  %62 = getelementptr inbounds %struct.XVtc_Signal* %61, i32 0, i32 12, !dbg !1702
  %63 = load i16* %62, align 2, !dbg !1702
  %64 = zext i16 %63 to i32, !dbg !1702
  %65 = icmp ne i32 %64, 0, !dbg !1702
  br i1 %65, label %66, label %75, !dbg !1702

; <label>:66                                      ; preds = %26
  %67 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1704
  %68 = getelementptr inbounds %struct.XVtc_Signal* %67, i32 0, i32 12, !dbg !1704
  %69 = load i16* %68, align 2, !dbg !1704
  %70 = zext i16 %69 to i32, !dbg !1704
  %71 = sub nsw i32 %70, 1, !dbg !1704
  %72 = trunc i32 %71 to i16, !dbg !1704
  %73 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1704
  %74 = getelementptr inbounds %struct.XVtc_Signal* %73, i32 0, i32 12, !dbg !1704
  store i16 %72, i16* %74, align 2, !dbg !1704
  br label %75, !dbg !1706

; <label>:75                                      ; preds = %66, %26
  %76 = load %struct.XVtc** %1, align 4, !dbg !1707
  %77 = getelementptr inbounds %struct.XVtc* %76, i32 0, i32 0, !dbg !1707
  %78 = getelementptr inbounds %struct.XVtc_Config* %77, i32 0, i32 1, !dbg !1707
  %79 = load i32* %78, align 4, !dbg !1707
  %80 = add i32 %79, 32, !dbg !1707
  %81 = call i32 @Xil_In32(i32 %80), !dbg !1707
  store i32 %81, i32* %RegValue, align 4, !dbg !1707
  %82 = load i32* %RegValue, align 4, !dbg !1708
  %83 = and i32 %82, 8191, !dbg !1708
  store i32 %83, i32* %r_hactive, align 4, !dbg !1708
  %84 = load i32* %r_htotal, align 4, !dbg !1709
  %85 = load i32* %r_hactive, align 4, !dbg !1709
  %86 = sub i32 %84, %85, !dbg !1709
  %87 = and i32 %86, 8191, !dbg !1709
  %88 = trunc i32 %87 to i16, !dbg !1709
  %89 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1709
  %90 = getelementptr inbounds %struct.XVtc_Signal* %89, i32 0, i32 5, !dbg !1709
  store i16 %88, i16* %90, align 2, !dbg !1709
  %91 = load i32* %RegValue, align 4, !dbg !1710
  %92 = lshr i32 %91, 16, !dbg !1710
  %93 = and i32 %92, 8191, !dbg !1710
  store i32 %93, i32* %r_vactive, align 4, !dbg !1710
  %94 = load i32* %r_vtotal, align 4, !dbg !1711
  %95 = load i32* %r_vactive, align 4, !dbg !1711
  %96 = sub i32 %94, %95, !dbg !1711
  %97 = and i32 %96, 8191, !dbg !1711
  %98 = trunc i32 %97 to i16, !dbg !1711
  %99 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1711
  %100 = getelementptr inbounds %struct.XVtc_Signal* %99, i32 0, i32 10, !dbg !1711
  store i16 %98, i16* %100, align 2, !dbg !1711
  %101 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1712
  %102 = getelementptr inbounds %struct.XVtc_Signal* %101, i32 0, i32 12, !dbg !1712
  %103 = load i16* %102, align 2, !dbg !1712
  %104 = zext i16 %103 to i32, !dbg !1712
  %105 = load i32* %r_vactive, align 4, !dbg !1712
  %106 = sub i32 %104, %105, !dbg !1712
  %107 = sub i32 %106, 1, !dbg !1712
  %108 = and i32 %107, 8191, !dbg !1712
  %109 = trunc i32 %108 to i16, !dbg !1712
  %110 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1712
  %111 = getelementptr inbounds %struct.XVtc_Signal* %110, i32 0, i32 16, !dbg !1712
  store i16 %109, i16* %111, align 2, !dbg !1712
  %112 = load %struct.XVtc** %1, align 4, !dbg !1713
  %113 = getelementptr inbounds %struct.XVtc* %112, i32 0, i32 0, !dbg !1713
  %114 = getelementptr inbounds %struct.XVtc_Config* %113, i32 0, i32 1, !dbg !1713
  %115 = load i32* %114, align 4, !dbg !1713
  %116 = add i32 %115, 56, !dbg !1713
  %117 = call i32 @Xil_In32(i32 %116), !dbg !1713
  store i32 %117, i32* %RegValue, align 4, !dbg !1713
  %118 = load i32* %RegValue, align 4, !dbg !1714
  %119 = load i32* %r_hactive, align 4, !dbg !1714
  %120 = sub i32 %118, %119, !dbg !1714
  %121 = and i32 %120, 8191, !dbg !1714
  %122 = trunc i32 %121 to i16, !dbg !1714
  %123 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1714
  %124 = getelementptr inbounds %struct.XVtc_Signal* %123, i32 0, i32 3, !dbg !1714
  store i16 %122, i16* %124, align 2, !dbg !1714
  %125 = load i32* %RegValue, align 4, !dbg !1715
  %126 = lshr i32 %125, 16, !dbg !1715
  %127 = load i32* %r_hactive, align 4, !dbg !1715
  %128 = sub i32 %126, %127, !dbg !1715
  %129 = and i32 %128, 8191, !dbg !1715
  %130 = trunc i32 %129 to i16, !dbg !1715
  %131 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1715
  %132 = getelementptr inbounds %struct.XVtc_Signal* %131, i32 0, i32 4, !dbg !1715
  store i16 %130, i16* %132, align 2, !dbg !1715
  %133 = load %struct.XVtc** %1, align 4, !dbg !1716
  %134 = getelementptr inbounds %struct.XVtc* %133, i32 0, i32 0, !dbg !1716
  %135 = getelementptr inbounds %struct.XVtc_Config* %134, i32 0, i32 1, !dbg !1716
  %136 = load i32* %135, align 4, !dbg !1716
  %137 = add i32 %136, 64, !dbg !1716
  %138 = call i32 @Xil_In32(i32 %137), !dbg !1716
  store i32 %138, i32* %RegValue, align 4, !dbg !1716
  %139 = load i32* %RegValue, align 4, !dbg !1717
  %140 = load i32* %r_vactive, align 4, !dbg !1717
  %141 = sub i32 %139, %140, !dbg !1717
  %142 = add i32 %141, 1, !dbg !1717
  %143 = and i32 %142, 8191, !dbg !1717
  %144 = trunc i32 %143 to i16, !dbg !1717
  %145 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1717
  %146 = getelementptr inbounds %struct.XVtc_Signal* %145, i32 0, i32 8, !dbg !1717
  store i16 %144, i16* %146, align 2, !dbg !1717
  %147 = load i32* %RegValue, align 4, !dbg !1718
  %148 = lshr i32 %147, 16, !dbg !1718
  %149 = load i32* %r_vactive, align 4, !dbg !1718
  %150 = sub i32 %148, %149, !dbg !1718
  %151 = add i32 %150, 1, !dbg !1718
  %152 = and i32 %151, 8191, !dbg !1718
  %153 = trunc i32 %152 to i16, !dbg !1718
  %154 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1718
  %155 = getelementptr inbounds %struct.XVtc_Signal* %154, i32 0, i32 9, !dbg !1718
  store i16 %153, i16* %155, align 2, !dbg !1718
  %156 = load %struct.XVtc** %1, align 4, !dbg !1719
  %157 = getelementptr inbounds %struct.XVtc* %156, i32 0, i32 0, !dbg !1719
  %158 = getelementptr inbounds %struct.XVtc_Config* %157, i32 0, i32 1, !dbg !1719
  %159 = load i32* %158, align 4, !dbg !1719
  %160 = add i32 %159, 140, !dbg !1719
  %161 = call i32 @Xil_In32(i32 %160), !dbg !1719
  store i32 %161, i32* %RegValue, align 4, !dbg !1719
  %162 = load i32* %RegValue, align 4, !dbg !1720
  %163 = load i32* %r_vactive, align 4, !dbg !1720
  %164 = sub i32 %162, %163, !dbg !1720
  %165 = add i32 %164, 1, !dbg !1720
  %166 = and i32 %165, 8191, !dbg !1720
  %167 = trunc i32 %166 to i16, !dbg !1720
  %168 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1720
  %169 = getelementptr inbounds %struct.XVtc_Signal* %168, i32 0, i32 14, !dbg !1720
  store i16 %167, i16* %169, align 2, !dbg !1720
  %170 = load i32* %RegValue, align 4, !dbg !1721
  %171 = lshr i32 %170, 16, !dbg !1721
  %172 = load i32* %r_vactive, align 4, !dbg !1721
  %173 = sub i32 %171, %172, !dbg !1721
  %174 = add i32 %173, 1, !dbg !1721
  %175 = and i32 %174, 8191, !dbg !1721
  %176 = trunc i32 %175 to i16, !dbg !1721
  %177 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1721
  %178 = getelementptr inbounds %struct.XVtc_Signal* %177, i32 0, i32 15, !dbg !1721
  store i16 %176, i16* %178, align 2, !dbg !1721
  %179 = load %struct.XVtc** %1, align 4, !dbg !1722
  %180 = getelementptr inbounds %struct.XVtc* %179, i32 0, i32 0, !dbg !1722
  %181 = getelementptr inbounds %struct.XVtc_Config* %180, i32 0, i32 1, !dbg !1722
  %182 = load i32* %181, align 4, !dbg !1722
  %183 = add i32 %182, 40, !dbg !1722
  %184 = call i32 @Xil_In32(i32 %183), !dbg !1722
  store i32 %184, i32* %RegValue, align 4, !dbg !1722
  %185 = load i32* %RegValue, align 4, !dbg !1723
  %186 = and i32 %185, 256, !dbg !1723
  %187 = lshr i32 %186, 8, !dbg !1723
  %188 = load i32* %r_vtotal, align 4, !dbg !1723
  %189 = load i32* %r_vactive, align 4, !dbg !1723
  %190 = sub i32 %188, %189, !dbg !1723
  %191 = add i32 %187, %190, !dbg !1723
  %192 = and i32 %191, 8191, !dbg !1723
  %193 = trunc i32 %192 to i16, !dbg !1723
  %194 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1723
  %195 = getelementptr inbounds %struct.XVtc_Signal* %194, i32 0, i32 11, !dbg !1723
  store i16 %193, i16* %195, align 2, !dbg !1723
  %196 = load i32* %RegValue, align 4, !dbg !1724
  %197 = and i32 %196, 256, !dbg !1724
  %198 = lshr i32 %197, 8, !dbg !1724
  %199 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1724
  %200 = getelementptr inbounds %struct.XVtc_Signal* %199, i32 0, i32 12, !dbg !1724
  %201 = load i16* %200, align 2, !dbg !1724
  %202 = zext i16 %201 to i32, !dbg !1724
  %203 = load i32* %r_vactive, align 4, !dbg !1724
  %204 = sub i32 %202, %203, !dbg !1724
  %205 = sub i32 %204, 1, !dbg !1724
  %206 = add i32 %198, %205, !dbg !1724
  %207 = and i32 %206, 8191, !dbg !1724
  %208 = trunc i32 %207 to i16, !dbg !1724
  %209 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1724
  %210 = getelementptr inbounds %struct.XVtc_Signal* %209, i32 0, i32 17, !dbg !1724
  store i16 %208, i16* %210, align 2, !dbg !1724
  %211 = load i32* %RegValue, align 4, !dbg !1725
  %212 = and i32 %211, 64, !dbg !1725
  %213 = lshr i32 %212, 6, !dbg !1725
  %214 = trunc i32 %213 to i8, !dbg !1725
  %215 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1725
  %216 = getelementptr inbounds %struct.XVtc_Signal* %215, i32 0, i32 18, !dbg !1725
  store i8 %214, i8* %216, align 1, !dbg !1725
  %217 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1726
  %218 = getelementptr inbounds %struct.XVtc_Signal* %217, i32 0, i32 2, !dbg !1726
  store i16 0, i16* %218, align 2, !dbg !1726
  %219 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1727
  %220 = getelementptr inbounds %struct.XVtc_Signal* %219, i32 0, i32 7, !dbg !1727
  store i16 0, i16* %220, align 2, !dbg !1727
  br label %363, !dbg !1728

; <label>:221                                     ; preds = %19
  %222 = load %struct.XVtc** %1, align 4, !dbg !1729
  %223 = getelementptr inbounds %struct.XVtc* %222, i32 0, i32 0, !dbg !1729
  %224 = getelementptr inbounds %struct.XVtc_Config* %223, i32 0, i32 1, !dbg !1729
  %225 = load i32* %224, align 4, !dbg !1729
  %226 = add i32 %225, 48, !dbg !1729
  %227 = call i32 @Xil_In32(i32 %226), !dbg !1729
  store i32 %227, i32* %RegValue, align 4, !dbg !1729
  %228 = load i32* %RegValue, align 4, !dbg !1731
  %229 = and i32 %228, 8191, !dbg !1731
  store i32 %229, i32* %r_htotal, align 4, !dbg !1731
  %230 = load i32* %r_htotal, align 4, !dbg !1732
  %231 = and i32 %230, 8191, !dbg !1732
  %232 = trunc i32 %231 to i16, !dbg !1732
  %233 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1732
  %234 = getelementptr inbounds %struct.XVtc_Signal* %233, i32 0, i32 1, !dbg !1732
  store i16 %232, i16* %234, align 2, !dbg !1732
  %235 = load %struct.XVtc** %1, align 4, !dbg !1733
  %236 = getelementptr inbounds %struct.XVtc* %235, i32 0, i32 0, !dbg !1733
  %237 = getelementptr inbounds %struct.XVtc_Config* %236, i32 0, i32 1, !dbg !1733
  %238 = load i32* %237, align 4, !dbg !1733
  %239 = add i32 %238, 52, !dbg !1733
  %240 = call i32 @Xil_In32(i32 %239), !dbg !1733
  store i32 %240, i32* %RegValue, align 4, !dbg !1733
  %241 = load i32* %RegValue, align 4, !dbg !1734
  %242 = and i32 %241, 8191, !dbg !1734
  store i32 %242, i32* %r_vtotal, align 4, !dbg !1734
  %243 = load i32* %r_vtotal, align 4, !dbg !1735
  %244 = and i32 %243, 8191, !dbg !1735
  %245 = trunc i32 %244 to i16, !dbg !1735
  %246 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1735
  %247 = getelementptr inbounds %struct.XVtc_Signal* %246, i32 0, i32 6, !dbg !1735
  store i16 %245, i16* %247, align 2, !dbg !1735
  %248 = load i32* %RegValue, align 4, !dbg !1736
  %249 = lshr i32 %248, 16, !dbg !1736
  %250 = and i32 %249, 8191, !dbg !1736
  %251 = trunc i32 %250 to i16, !dbg !1736
  %252 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1736
  %253 = getelementptr inbounds %struct.XVtc_Signal* %252, i32 0, i32 12, !dbg !1736
  store i16 %251, i16* %253, align 2, !dbg !1736
  %254 = load %struct.XVtc** %1, align 4, !dbg !1737
  %255 = getelementptr inbounds %struct.XVtc* %254, i32 0, i32 0, !dbg !1737
  %256 = getelementptr inbounds %struct.XVtc_Config* %255, i32 0, i32 1, !dbg !1737
  %257 = load i32* %256, align 4, !dbg !1737
  %258 = add i32 %257, 32, !dbg !1737
  %259 = call i32 @Xil_In32(i32 %258), !dbg !1737
  store i32 %259, i32* %RegValue, align 4, !dbg !1737
  %260 = load i32* %RegValue, align 4, !dbg !1738
  %261 = and i32 %260, 8191, !dbg !1738
  store i32 %261, i32* %r_hactive, align 4, !dbg !1738
  %262 = load i32* %r_hactive, align 4, !dbg !1739
  %263 = and i32 %262, 8191, !dbg !1739
  %264 = trunc i32 %263 to i16, !dbg !1739
  %265 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1739
  %266 = getelementptr inbounds %struct.XVtc_Signal* %265, i32 0, i32 2, !dbg !1739
  store i16 %264, i16* %266, align 2, !dbg !1739
  %267 = load i32* %RegValue, align 4, !dbg !1740
  %268 = lshr i32 %267, 16, !dbg !1740
  %269 = and i32 %268, 8191, !dbg !1740
  store i32 %269, i32* %r_vactive, align 4, !dbg !1740
  %270 = load i32* %r_vactive, align 4, !dbg !1741
  %271 = and i32 %270, 8191, !dbg !1741
  %272 = trunc i32 %271 to i16, !dbg !1741
  %273 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1741
  %274 = getelementptr inbounds %struct.XVtc_Signal* %273, i32 0, i32 7, !dbg !1741
  store i16 %272, i16* %274, align 2, !dbg !1741
  %275 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1742
  %276 = getelementptr inbounds %struct.XVtc_Signal* %275, i32 0, i32 7, !dbg !1742
  %277 = load i16* %276, align 2, !dbg !1742
  %278 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1742
  %279 = getelementptr inbounds %struct.XVtc_Signal* %278, i32 0, i32 13, !dbg !1742
  store i16 %277, i16* %279, align 2, !dbg !1742
  %280 = load %struct.XVtc** %1, align 4, !dbg !1743
  %281 = getelementptr inbounds %struct.XVtc* %280, i32 0, i32 0, !dbg !1743
  %282 = getelementptr inbounds %struct.XVtc_Config* %281, i32 0, i32 1, !dbg !1743
  %283 = load i32* %282, align 4, !dbg !1743
  %284 = add i32 %283, 56, !dbg !1743
  %285 = call i32 @Xil_In32(i32 %284), !dbg !1743
  store i32 %285, i32* %RegValue, align 4, !dbg !1743
  %286 = load i32* %RegValue, align 4, !dbg !1744
  %287 = and i32 %286, 8191, !dbg !1744
  %288 = trunc i32 %287 to i16, !dbg !1744
  %289 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1744
  %290 = getelementptr inbounds %struct.XVtc_Signal* %289, i32 0, i32 3, !dbg !1744
  store i16 %288, i16* %290, align 2, !dbg !1744
  %291 = load i32* %RegValue, align 4, !dbg !1745
  %292 = lshr i32 %291, 16, !dbg !1745
  %293 = and i32 %292, 8191, !dbg !1745
  %294 = trunc i32 %293 to i16, !dbg !1745
  %295 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1745
  %296 = getelementptr inbounds %struct.XVtc_Signal* %295, i32 0, i32 4, !dbg !1745
  store i16 %294, i16* %296, align 2, !dbg !1745
  %297 = load %struct.XVtc** %1, align 4, !dbg !1746
  %298 = getelementptr inbounds %struct.XVtc* %297, i32 0, i32 0, !dbg !1746
  %299 = getelementptr inbounds %struct.XVtc_Config* %298, i32 0, i32 1, !dbg !1746
  %300 = load i32* %299, align 4, !dbg !1746
  %301 = add i32 %300, 64, !dbg !1746
  %302 = call i32 @Xil_In32(i32 %301), !dbg !1746
  store i32 %302, i32* %RegValue, align 4, !dbg !1746
  %303 = load i32* %RegValue, align 4, !dbg !1747
  %304 = and i32 %303, 8191, !dbg !1747
  %305 = trunc i32 %304 to i16, !dbg !1747
  %306 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1747
  %307 = getelementptr inbounds %struct.XVtc_Signal* %306, i32 0, i32 8, !dbg !1747
  store i16 %305, i16* %307, align 2, !dbg !1747
  %308 = load i32* %RegValue, align 4, !dbg !1748
  %309 = lshr i32 %308, 16, !dbg !1748
  %310 = and i32 %309, 8191, !dbg !1748
  %311 = trunc i32 %310 to i16, !dbg !1748
  %312 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1748
  %313 = getelementptr inbounds %struct.XVtc_Signal* %312, i32 0, i32 9, !dbg !1748
  store i16 %311, i16* %313, align 2, !dbg !1748
  %314 = load %struct.XVtc** %1, align 4, !dbg !1749
  %315 = getelementptr inbounds %struct.XVtc* %314, i32 0, i32 0, !dbg !1749
  %316 = getelementptr inbounds %struct.XVtc_Config* %315, i32 0, i32 1, !dbg !1749
  %317 = load i32* %316, align 4, !dbg !1749
  %318 = add i32 %317, 76, !dbg !1749
  %319 = call i32 @Xil_In32(i32 %318), !dbg !1749
  store i32 %319, i32* %RegValue, align 4, !dbg !1749
  %320 = load i32* %RegValue, align 4, !dbg !1750
  %321 = and i32 %320, 8191, !dbg !1750
  %322 = trunc i32 %321 to i16, !dbg !1750
  %323 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1750
  %324 = getelementptr inbounds %struct.XVtc_Signal* %323, i32 0, i32 14, !dbg !1750
  store i16 %322, i16* %324, align 2, !dbg !1750
  %325 = load i32* %RegValue, align 4, !dbg !1751
  %326 = lshr i32 %325, 16, !dbg !1751
  %327 = and i32 %326, 8191, !dbg !1751
  %328 = trunc i32 %327 to i16, !dbg !1751
  %329 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1751
  %330 = getelementptr inbounds %struct.XVtc_Signal* %329, i32 0, i32 15, !dbg !1751
  store i16 %328, i16* %330, align 2, !dbg !1751
  %331 = load %struct.XVtc** %1, align 4, !dbg !1752
  %332 = getelementptr inbounds %struct.XVtc* %331, i32 0, i32 0, !dbg !1752
  %333 = getelementptr inbounds %struct.XVtc_Config* %332, i32 0, i32 1, !dbg !1752
  %334 = load i32* %333, align 4, !dbg !1752
  %335 = add i32 %334, 40, !dbg !1752
  %336 = call i32 @Xil_In32(i32 %335), !dbg !1752
  store i32 %336, i32* %RegValue, align 4, !dbg !1752
  %337 = load i32* %RegValue, align 4, !dbg !1753
  %338 = and i32 %337, 256, !dbg !1753
  %339 = lshr i32 %338, 8, !dbg !1753
  %340 = and i32 %339, 8191, !dbg !1753
  %341 = trunc i32 %340 to i16, !dbg !1753
  %342 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1753
  %343 = getelementptr inbounds %struct.XVtc_Signal* %342, i32 0, i32 11, !dbg !1753
  store i16 %341, i16* %343, align 2, !dbg !1753
  %344 = load i32* %RegValue, align 4, !dbg !1754
  %345 = and i32 %344, 256, !dbg !1754
  %346 = lshr i32 %345, 8, !dbg !1754
  %347 = and i32 %346, 8191, !dbg !1754
  %348 = trunc i32 %347 to i16, !dbg !1754
  %349 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1754
  %350 = getelementptr inbounds %struct.XVtc_Signal* %349, i32 0, i32 17, !dbg !1754
  store i16 %348, i16* %350, align 2, !dbg !1754
  %351 = load i32* %RegValue, align 4, !dbg !1755
  %352 = and i32 %351, 64, !dbg !1755
  %353 = lshr i32 %352, 6, !dbg !1755
  %354 = trunc i32 %353 to i8, !dbg !1755
  %355 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1755
  %356 = getelementptr inbounds %struct.XVtc_Signal* %355, i32 0, i32 18, !dbg !1755
  store i8 %354, i8* %356, align 1, !dbg !1755
  %357 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1756
  %358 = getelementptr inbounds %struct.XVtc_Signal* %357, i32 0, i32 5, !dbg !1756
  store i16 0, i16* %358, align 2, !dbg !1756
  %359 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1757
  %360 = getelementptr inbounds %struct.XVtc_Signal* %359, i32 0, i32 10, !dbg !1757
  store i16 0, i16* %360, align 2, !dbg !1757
  %361 = load %struct.XVtc_Signal** %SCPtr, align 4, !dbg !1758
  %362 = getelementptr inbounds %struct.XVtc_Signal* %361, i32 0, i32 16, !dbg !1758
  store i16 0, i16* %362, align 2, !dbg !1758
  br label %363

; <label>:363                                     ; preds = %6, %13, %18, %221, %75
  ret void, !dbg !1759
}

; Function Attrs: nounwind
define i32 @XVtc_GetVersion(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XVtc*, align 4
  %Version = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %2}, metadata !1760), !dbg !1761
  call void @llvm.dbg.declare(metadata !{i32* %Version}, metadata !1762), !dbg !1763
  %3 = load %struct.XVtc** %2, align 4, !dbg !1764
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !1764
  br i1 %4, label %5, label %6, !dbg !1764

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1767
  br label %7, !dbg !1767

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1796), !dbg !1770
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1770
  store i32 0, i32* %1, !dbg !1770
  br label %15, !dbg !1770

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %2, align 4, !dbg !1773
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 0, !dbg !1773
  %10 = getelementptr inbounds %struct.XVtc_Config* %9, i32 0, i32 1, !dbg !1773
  %11 = load i32* %10, align 4, !dbg !1773
  %12 = add i32 %11, 16, !dbg !1773
  %13 = call i32 @Xil_In32(i32 %12), !dbg !1773
  store i32 %13, i32* %Version, align 4, !dbg !1773
  %14 = load i32* %Version, align 4, !dbg !1774
  store i32 %14, i32* %1, !dbg !1774
  br label %15, !dbg !1774

; <label>:15                                      ; preds = %7, %6
  %16 = load i32* %1, !dbg !1775
  ret i32 %16, !dbg !1775
}

; Function Attrs: nounwind
define void @XVtc_ConvVideoMode2Timing(%struct.XVtc* %InstancePtr, i16 zeroext %Mode, %struct.XVtc_Timing* %TimingPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.XVtc_Timing*, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1776), !dbg !1777
  store i16 %Mode, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !1778), !dbg !1779
  store %struct.XVtc_Timing* %TimingPtr, %struct.XVtc_Timing** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing** %3}, metadata !1780), !dbg !1781
  %4 = load %struct.XVtc** %1, align 4, !dbg !1782
  %5 = icmp ne %struct.XVtc* %4, null, !dbg !1782
  br i1 %5, label %6, label %7, !dbg !1782

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1785
  br label %8, !dbg !1785

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1826), !dbg !1788
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1788
  br label %322, !dbg !1788

; <label>:8                                       ; preds = %6
  %9 = load %struct.XVtc** %1, align 4, !dbg !1791
  %10 = getelementptr inbounds %struct.XVtc* %9, i32 0, i32 1, !dbg !1791
  %11 = load i32* %10, align 4, !dbg !1791
  %12 = icmp eq i32 %11, 286331153, !dbg !1791
  br i1 %12, label %13, label %14, !dbg !1791

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1794
  br label %15, !dbg !1794

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1827), !dbg !1797
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1797
  br label %322, !dbg !1797

; <label>:15                                      ; preds = %13
  %16 = load %struct.XVtc_Timing** %3, align 4, !dbg !1800
  %17 = icmp ne %struct.XVtc_Timing* %16, null, !dbg !1800
  br i1 %17, label %18, label %19, !dbg !1800

; <label>:18                                      ; preds = %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1803
  br label %20, !dbg !1803

; <label>:19                                      ; preds = %15
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 1828), !dbg !1806
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1806
  br label %322, !dbg !1806

; <label>:20                                      ; preds = %18
  %21 = load %struct.XVtc_Timing** %3, align 4, !dbg !1809
  %22 = bitcast %struct.XVtc_Timing* %21 to i8*, !dbg !1809
  call void @llvm.memset.p0i8.i32(i8* %22, i8 0, i32 28, i32 1, i1 false), !dbg !1809
  %23 = load i16* %2, align 2, !dbg !1810
  %24 = zext i16 %23 to i32, !dbg !1810
  switch i32 %24, label %322 [
    i32 1, label %25
    i32 2, label %46
    i32 3, label %67
    i32 4, label %88
    i32 5, label %109
    i32 6, label %130
    i32 7, label %151
    i32 8, label %172
    i32 9, label %193
    i32 10, label %214
    i32 100, label %235
    i32 101, label %264
    i32 102, label %293
  ], !dbg !1810

; <label>:25                                      ; preds = %20
  %26 = load %struct.XVtc_Timing** %3, align 4, !dbg !1811
  %27 = getelementptr inbounds %struct.XVtc_Timing* %26, i32 0, i32 0, !dbg !1811
  store i16 1280, i16* %27, align 2, !dbg !1811
  %28 = load %struct.XVtc_Timing** %3, align 4, !dbg !1814
  %29 = getelementptr inbounds %struct.XVtc_Timing* %28, i32 0, i32 1, !dbg !1814
  store i16 110, i16* %29, align 2, !dbg !1814
  %30 = load %struct.XVtc_Timing** %3, align 4, !dbg !1815
  %31 = getelementptr inbounds %struct.XVtc_Timing* %30, i32 0, i32 2, !dbg !1815
  store i16 40, i16* %31, align 2, !dbg !1815
  %32 = load %struct.XVtc_Timing** %3, align 4, !dbg !1816
  %33 = getelementptr inbounds %struct.XVtc_Timing* %32, i32 0, i32 3, !dbg !1816
  store i16 220, i16* %33, align 2, !dbg !1816
  %34 = load %struct.XVtc_Timing** %3, align 4, !dbg !1817
  %35 = getelementptr inbounds %struct.XVtc_Timing* %34, i32 0, i32 4, !dbg !1817
  store i16 1, i16* %35, align 2, !dbg !1817
  %36 = load %struct.XVtc_Timing** %3, align 4, !dbg !1818
  %37 = getelementptr inbounds %struct.XVtc_Timing* %36, i32 0, i32 5, !dbg !1818
  store i16 720, i16* %37, align 2, !dbg !1818
  %38 = load %struct.XVtc_Timing** %3, align 4, !dbg !1819
  %39 = getelementptr inbounds %struct.XVtc_Timing* %38, i32 0, i32 6, !dbg !1819
  store i16 5, i16* %39, align 2, !dbg !1819
  %40 = load %struct.XVtc_Timing** %3, align 4, !dbg !1820
  %41 = getelementptr inbounds %struct.XVtc_Timing* %40, i32 0, i32 7, !dbg !1820
  store i16 5, i16* %41, align 2, !dbg !1820
  %42 = load %struct.XVtc_Timing** %3, align 4, !dbg !1821
  %43 = getelementptr inbounds %struct.XVtc_Timing* %42, i32 0, i32 8, !dbg !1821
  store i16 20, i16* %43, align 2, !dbg !1821
  %44 = load %struct.XVtc_Timing** %3, align 4, !dbg !1822
  %45 = getelementptr inbounds %struct.XVtc_Timing* %44, i32 0, i32 12, !dbg !1822
  store i16 1, i16* %45, align 2, !dbg !1822
  br label %322, !dbg !1823

; <label>:46                                      ; preds = %20
  %47 = load %struct.XVtc_Timing** %3, align 4, !dbg !1824
  %48 = getelementptr inbounds %struct.XVtc_Timing* %47, i32 0, i32 0, !dbg !1824
  store i16 1920, i16* %48, align 2, !dbg !1824
  %49 = load %struct.XVtc_Timing** %3, align 4, !dbg !1826
  %50 = getelementptr inbounds %struct.XVtc_Timing* %49, i32 0, i32 1, !dbg !1826
  store i16 88, i16* %50, align 2, !dbg !1826
  %51 = load %struct.XVtc_Timing** %3, align 4, !dbg !1827
  %52 = getelementptr inbounds %struct.XVtc_Timing* %51, i32 0, i32 2, !dbg !1827
  store i16 44, i16* %52, align 2, !dbg !1827
  %53 = load %struct.XVtc_Timing** %3, align 4, !dbg !1828
  %54 = getelementptr inbounds %struct.XVtc_Timing* %53, i32 0, i32 3, !dbg !1828
  store i16 148, i16* %54, align 2, !dbg !1828
  %55 = load %struct.XVtc_Timing** %3, align 4, !dbg !1829
  %56 = getelementptr inbounds %struct.XVtc_Timing* %55, i32 0, i32 4, !dbg !1829
  store i16 1, i16* %56, align 2, !dbg !1829
  %57 = load %struct.XVtc_Timing** %3, align 4, !dbg !1830
  %58 = getelementptr inbounds %struct.XVtc_Timing* %57, i32 0, i32 5, !dbg !1830
  store i16 1080, i16* %58, align 2, !dbg !1830
  %59 = load %struct.XVtc_Timing** %3, align 4, !dbg !1831
  %60 = getelementptr inbounds %struct.XVtc_Timing* %59, i32 0, i32 6, !dbg !1831
  store i16 4, i16* %60, align 2, !dbg !1831
  %61 = load %struct.XVtc_Timing** %3, align 4, !dbg !1832
  %62 = getelementptr inbounds %struct.XVtc_Timing* %61, i32 0, i32 7, !dbg !1832
  store i16 5, i16* %62, align 2, !dbg !1832
  %63 = load %struct.XVtc_Timing** %3, align 4, !dbg !1833
  %64 = getelementptr inbounds %struct.XVtc_Timing* %63, i32 0, i32 8, !dbg !1833
  store i16 36, i16* %64, align 2, !dbg !1833
  %65 = load %struct.XVtc_Timing** %3, align 4, !dbg !1834
  %66 = getelementptr inbounds %struct.XVtc_Timing* %65, i32 0, i32 12, !dbg !1834
  store i16 1, i16* %66, align 2, !dbg !1834
  br label %322, !dbg !1835

; <label>:67                                      ; preds = %20
  %68 = load %struct.XVtc_Timing** %3, align 4, !dbg !1836
  %69 = getelementptr inbounds %struct.XVtc_Timing* %68, i32 0, i32 0, !dbg !1836
  store i16 720, i16* %69, align 2, !dbg !1836
  %70 = load %struct.XVtc_Timing** %3, align 4, !dbg !1838
  %71 = getelementptr inbounds %struct.XVtc_Timing* %70, i32 0, i32 1, !dbg !1838
  store i16 16, i16* %71, align 2, !dbg !1838
  %72 = load %struct.XVtc_Timing** %3, align 4, !dbg !1839
  %73 = getelementptr inbounds %struct.XVtc_Timing* %72, i32 0, i32 2, !dbg !1839
  store i16 62, i16* %73, align 2, !dbg !1839
  %74 = load %struct.XVtc_Timing** %3, align 4, !dbg !1840
  %75 = getelementptr inbounds %struct.XVtc_Timing* %74, i32 0, i32 3, !dbg !1840
  store i16 60, i16* %75, align 2, !dbg !1840
  %76 = load %struct.XVtc_Timing** %3, align 4, !dbg !1841
  %77 = getelementptr inbounds %struct.XVtc_Timing* %76, i32 0, i32 4, !dbg !1841
  store i16 0, i16* %77, align 2, !dbg !1841
  %78 = load %struct.XVtc_Timing** %3, align 4, !dbg !1842
  %79 = getelementptr inbounds %struct.XVtc_Timing* %78, i32 0, i32 5, !dbg !1842
  store i16 480, i16* %79, align 2, !dbg !1842
  %80 = load %struct.XVtc_Timing** %3, align 4, !dbg !1843
  %81 = getelementptr inbounds %struct.XVtc_Timing* %80, i32 0, i32 6, !dbg !1843
  store i16 9, i16* %81, align 2, !dbg !1843
  %82 = load %struct.XVtc_Timing** %3, align 4, !dbg !1844
  %83 = getelementptr inbounds %struct.XVtc_Timing* %82, i32 0, i32 7, !dbg !1844
  store i16 6, i16* %83, align 2, !dbg !1844
  %84 = load %struct.XVtc_Timing** %3, align 4, !dbg !1845
  %85 = getelementptr inbounds %struct.XVtc_Timing* %84, i32 0, i32 8, !dbg !1845
  store i16 30, i16* %85, align 2, !dbg !1845
  %86 = load %struct.XVtc_Timing** %3, align 4, !dbg !1846
  %87 = getelementptr inbounds %struct.XVtc_Timing* %86, i32 0, i32 12, !dbg !1846
  store i16 0, i16* %87, align 2, !dbg !1846
  br label %322, !dbg !1847

; <label>:88                                      ; preds = %20
  %89 = load %struct.XVtc_Timing** %3, align 4, !dbg !1848
  %90 = getelementptr inbounds %struct.XVtc_Timing* %89, i32 0, i32 0, !dbg !1848
  store i16 720, i16* %90, align 2, !dbg !1848
  %91 = load %struct.XVtc_Timing** %3, align 4, !dbg !1850
  %92 = getelementptr inbounds %struct.XVtc_Timing* %91, i32 0, i32 1, !dbg !1850
  store i16 12, i16* %92, align 2, !dbg !1850
  %93 = load %struct.XVtc_Timing** %3, align 4, !dbg !1851
  %94 = getelementptr inbounds %struct.XVtc_Timing* %93, i32 0, i32 2, !dbg !1851
  store i16 64, i16* %94, align 2, !dbg !1851
  %95 = load %struct.XVtc_Timing** %3, align 4, !dbg !1852
  %96 = getelementptr inbounds %struct.XVtc_Timing* %95, i32 0, i32 3, !dbg !1852
  store i16 68, i16* %96, align 2, !dbg !1852
  %97 = load %struct.XVtc_Timing** %3, align 4, !dbg !1853
  %98 = getelementptr inbounds %struct.XVtc_Timing* %97, i32 0, i32 4, !dbg !1853
  store i16 0, i16* %98, align 2, !dbg !1853
  %99 = load %struct.XVtc_Timing** %3, align 4, !dbg !1854
  %100 = getelementptr inbounds %struct.XVtc_Timing* %99, i32 0, i32 5, !dbg !1854
  store i16 576, i16* %100, align 2, !dbg !1854
  %101 = load %struct.XVtc_Timing** %3, align 4, !dbg !1855
  %102 = getelementptr inbounds %struct.XVtc_Timing* %101, i32 0, i32 6, !dbg !1855
  store i16 5, i16* %102, align 2, !dbg !1855
  %103 = load %struct.XVtc_Timing** %3, align 4, !dbg !1856
  %104 = getelementptr inbounds %struct.XVtc_Timing* %103, i32 0, i32 7, !dbg !1856
  store i16 5, i16* %104, align 2, !dbg !1856
  %105 = load %struct.XVtc_Timing** %3, align 4, !dbg !1857
  %106 = getelementptr inbounds %struct.XVtc_Timing* %105, i32 0, i32 8, !dbg !1857
  store i16 39, i16* %106, align 2, !dbg !1857
  %107 = load %struct.XVtc_Timing** %3, align 4, !dbg !1858
  %108 = getelementptr inbounds %struct.XVtc_Timing* %107, i32 0, i32 12, !dbg !1858
  store i16 0, i16* %108, align 2, !dbg !1858
  br label %322, !dbg !1859

; <label>:109                                     ; preds = %20
  %110 = load %struct.XVtc_Timing** %3, align 4, !dbg !1860
  %111 = getelementptr inbounds %struct.XVtc_Timing* %110, i32 0, i32 0, !dbg !1860
  store i16 656, i16* %111, align 2, !dbg !1860
  %112 = load %struct.XVtc_Timing** %3, align 4, !dbg !1862
  %113 = getelementptr inbounds %struct.XVtc_Timing* %112, i32 0, i32 1, !dbg !1862
  store i16 8, i16* %113, align 2, !dbg !1862
  %114 = load %struct.XVtc_Timing** %3, align 4, !dbg !1863
  %115 = getelementptr inbounds %struct.XVtc_Timing* %114, i32 0, i32 2, !dbg !1863
  store i16 96, i16* %115, align 2, !dbg !1863
  %116 = load %struct.XVtc_Timing** %3, align 4, !dbg !1864
  %117 = getelementptr inbounds %struct.XVtc_Timing* %116, i32 0, i32 3, !dbg !1864
  store i16 40, i16* %117, align 2, !dbg !1864
  %118 = load %struct.XVtc_Timing** %3, align 4, !dbg !1865
  %119 = getelementptr inbounds %struct.XVtc_Timing* %118, i32 0, i32 4, !dbg !1865
  store i16 0, i16* %119, align 2, !dbg !1865
  %120 = load %struct.XVtc_Timing** %3, align 4, !dbg !1866
  %121 = getelementptr inbounds %struct.XVtc_Timing* %120, i32 0, i32 5, !dbg !1866
  store i16 496, i16* %121, align 2, !dbg !1866
  %122 = load %struct.XVtc_Timing** %3, align 4, !dbg !1867
  %123 = getelementptr inbounds %struct.XVtc_Timing* %122, i32 0, i32 6, !dbg !1867
  store i16 2, i16* %123, align 2, !dbg !1867
  %124 = load %struct.XVtc_Timing** %3, align 4, !dbg !1868
  %125 = getelementptr inbounds %struct.XVtc_Timing* %124, i32 0, i32 7, !dbg !1868
  store i16 2, i16* %125, align 2, !dbg !1868
  %126 = load %struct.XVtc_Timing** %3, align 4, !dbg !1869
  %127 = getelementptr inbounds %struct.XVtc_Timing* %126, i32 0, i32 8, !dbg !1869
  store i16 25, i16* %127, align 2, !dbg !1869
  %128 = load %struct.XVtc_Timing** %3, align 4, !dbg !1870
  %129 = getelementptr inbounds %struct.XVtc_Timing* %128, i32 0, i32 12, !dbg !1870
  store i16 0, i16* %129, align 2, !dbg !1870
  br label %322, !dbg !1871

; <label>:130                                     ; preds = %20
  %131 = load %struct.XVtc_Timing** %3, align 4, !dbg !1872
  %132 = getelementptr inbounds %struct.XVtc_Timing* %131, i32 0, i32 0, !dbg !1872
  store i16 800, i16* %132, align 2, !dbg !1872
  %133 = load %struct.XVtc_Timing** %3, align 4, !dbg !1874
  %134 = getelementptr inbounds %struct.XVtc_Timing* %133, i32 0, i32 1, !dbg !1874
  store i16 40, i16* %134, align 2, !dbg !1874
  %135 = load %struct.XVtc_Timing** %3, align 4, !dbg !1875
  %136 = getelementptr inbounds %struct.XVtc_Timing* %135, i32 0, i32 2, !dbg !1875
  store i16 128, i16* %136, align 2, !dbg !1875
  %137 = load %struct.XVtc_Timing** %3, align 4, !dbg !1876
  %138 = getelementptr inbounds %struct.XVtc_Timing* %137, i32 0, i32 3, !dbg !1876
  store i16 88, i16* %138, align 2, !dbg !1876
  %139 = load %struct.XVtc_Timing** %3, align 4, !dbg !1877
  %140 = getelementptr inbounds %struct.XVtc_Timing* %139, i32 0, i32 4, !dbg !1877
  store i16 1, i16* %140, align 2, !dbg !1877
  %141 = load %struct.XVtc_Timing** %3, align 4, !dbg !1878
  %142 = getelementptr inbounds %struct.XVtc_Timing* %141, i32 0, i32 5, !dbg !1878
  store i16 600, i16* %142, align 2, !dbg !1878
  %143 = load %struct.XVtc_Timing** %3, align 4, !dbg !1879
  %144 = getelementptr inbounds %struct.XVtc_Timing* %143, i32 0, i32 6, !dbg !1879
  store i16 1, i16* %144, align 2, !dbg !1879
  %145 = load %struct.XVtc_Timing** %3, align 4, !dbg !1880
  %146 = getelementptr inbounds %struct.XVtc_Timing* %145, i32 0, i32 7, !dbg !1880
  store i16 4, i16* %146, align 2, !dbg !1880
  %147 = load %struct.XVtc_Timing** %3, align 4, !dbg !1881
  %148 = getelementptr inbounds %struct.XVtc_Timing* %147, i32 0, i32 8, !dbg !1881
  store i16 23, i16* %148, align 2, !dbg !1881
  %149 = load %struct.XVtc_Timing** %3, align 4, !dbg !1882
  %150 = getelementptr inbounds %struct.XVtc_Timing* %149, i32 0, i32 12, !dbg !1882
  store i16 1, i16* %150, align 2, !dbg !1882
  br label %322, !dbg !1883

; <label>:151                                     ; preds = %20
  %152 = load %struct.XVtc_Timing** %3, align 4, !dbg !1884
  %153 = getelementptr inbounds %struct.XVtc_Timing* %152, i32 0, i32 0, !dbg !1884
  store i16 1024, i16* %153, align 2, !dbg !1884
  %154 = load %struct.XVtc_Timing** %3, align 4, !dbg !1886
  %155 = getelementptr inbounds %struct.XVtc_Timing* %154, i32 0, i32 1, !dbg !1886
  store i16 24, i16* %155, align 2, !dbg !1886
  %156 = load %struct.XVtc_Timing** %3, align 4, !dbg !1887
  %157 = getelementptr inbounds %struct.XVtc_Timing* %156, i32 0, i32 2, !dbg !1887
  store i16 136, i16* %157, align 2, !dbg !1887
  %158 = load %struct.XVtc_Timing** %3, align 4, !dbg !1888
  %159 = getelementptr inbounds %struct.XVtc_Timing* %158, i32 0, i32 3, !dbg !1888
  store i16 160, i16* %159, align 2, !dbg !1888
  %160 = load %struct.XVtc_Timing** %3, align 4, !dbg !1889
  %161 = getelementptr inbounds %struct.XVtc_Timing* %160, i32 0, i32 4, !dbg !1889
  store i16 0, i16* %161, align 2, !dbg !1889
  %162 = load %struct.XVtc_Timing** %3, align 4, !dbg !1890
  %163 = getelementptr inbounds %struct.XVtc_Timing* %162, i32 0, i32 5, !dbg !1890
  store i16 768, i16* %163, align 2, !dbg !1890
  %164 = load %struct.XVtc_Timing** %3, align 4, !dbg !1891
  %165 = getelementptr inbounds %struct.XVtc_Timing* %164, i32 0, i32 6, !dbg !1891
  store i16 3, i16* %165, align 2, !dbg !1891
  %166 = load %struct.XVtc_Timing** %3, align 4, !dbg !1892
  %167 = getelementptr inbounds %struct.XVtc_Timing* %166, i32 0, i32 7, !dbg !1892
  store i16 6, i16* %167, align 2, !dbg !1892
  %168 = load %struct.XVtc_Timing** %3, align 4, !dbg !1893
  %169 = getelementptr inbounds %struct.XVtc_Timing* %168, i32 0, i32 8, !dbg !1893
  store i16 29, i16* %169, align 2, !dbg !1893
  %170 = load %struct.XVtc_Timing** %3, align 4, !dbg !1894
  %171 = getelementptr inbounds %struct.XVtc_Timing* %170, i32 0, i32 12, !dbg !1894
  store i16 0, i16* %171, align 2, !dbg !1894
  br label %322, !dbg !1895

; <label>:172                                     ; preds = %20
  %173 = load %struct.XVtc_Timing** %3, align 4, !dbg !1896
  %174 = getelementptr inbounds %struct.XVtc_Timing* %173, i32 0, i32 0, !dbg !1896
  store i16 1280, i16* %174, align 2, !dbg !1896
  %175 = load %struct.XVtc_Timing** %3, align 4, !dbg !1898
  %176 = getelementptr inbounds %struct.XVtc_Timing* %175, i32 0, i32 1, !dbg !1898
  store i16 48, i16* %176, align 2, !dbg !1898
  %177 = load %struct.XVtc_Timing** %3, align 4, !dbg !1899
  %178 = getelementptr inbounds %struct.XVtc_Timing* %177, i32 0, i32 2, !dbg !1899
  store i16 112, i16* %178, align 2, !dbg !1899
  %179 = load %struct.XVtc_Timing** %3, align 4, !dbg !1900
  %180 = getelementptr inbounds %struct.XVtc_Timing* %179, i32 0, i32 3, !dbg !1900
  store i16 248, i16* %180, align 2, !dbg !1900
  %181 = load %struct.XVtc_Timing** %3, align 4, !dbg !1901
  %182 = getelementptr inbounds %struct.XVtc_Timing* %181, i32 0, i32 4, !dbg !1901
  store i16 1, i16* %182, align 2, !dbg !1901
  %183 = load %struct.XVtc_Timing** %3, align 4, !dbg !1902
  %184 = getelementptr inbounds %struct.XVtc_Timing* %183, i32 0, i32 5, !dbg !1902
  store i16 1024, i16* %184, align 2, !dbg !1902
  %185 = load %struct.XVtc_Timing** %3, align 4, !dbg !1903
  %186 = getelementptr inbounds %struct.XVtc_Timing* %185, i32 0, i32 6, !dbg !1903
  store i16 1, i16* %186, align 2, !dbg !1903
  %187 = load %struct.XVtc_Timing** %3, align 4, !dbg !1904
  %188 = getelementptr inbounds %struct.XVtc_Timing* %187, i32 0, i32 7, !dbg !1904
  store i16 3, i16* %188, align 2, !dbg !1904
  %189 = load %struct.XVtc_Timing** %3, align 4, !dbg !1905
  %190 = getelementptr inbounds %struct.XVtc_Timing* %189, i32 0, i32 8, !dbg !1905
  store i16 38, i16* %190, align 2, !dbg !1905
  %191 = load %struct.XVtc_Timing** %3, align 4, !dbg !1906
  %192 = getelementptr inbounds %struct.XVtc_Timing* %191, i32 0, i32 12, !dbg !1906
  store i16 1, i16* %192, align 2, !dbg !1906
  br label %322, !dbg !1907

; <label>:193                                     ; preds = %20
  %194 = load %struct.XVtc_Timing** %3, align 4, !dbg !1908
  %195 = getelementptr inbounds %struct.XVtc_Timing* %194, i32 0, i32 0, !dbg !1908
  store i16 1440, i16* %195, align 2, !dbg !1908
  %196 = load %struct.XVtc_Timing** %3, align 4, !dbg !1910
  %197 = getelementptr inbounds %struct.XVtc_Timing* %196, i32 0, i32 1, !dbg !1910
  store i16 80, i16* %197, align 2, !dbg !1910
  %198 = load %struct.XVtc_Timing** %3, align 4, !dbg !1911
  %199 = getelementptr inbounds %struct.XVtc_Timing* %198, i32 0, i32 2, !dbg !1911
  store i16 152, i16* %199, align 2, !dbg !1911
  %200 = load %struct.XVtc_Timing** %3, align 4, !dbg !1912
  %201 = getelementptr inbounds %struct.XVtc_Timing* %200, i32 0, i32 3, !dbg !1912
  store i16 232, i16* %201, align 2, !dbg !1912
  %202 = load %struct.XVtc_Timing** %3, align 4, !dbg !1913
  %203 = getelementptr inbounds %struct.XVtc_Timing* %202, i32 0, i32 4, !dbg !1913
  store i16 0, i16* %203, align 2, !dbg !1913
  %204 = load %struct.XVtc_Timing** %3, align 4, !dbg !1914
  %205 = getelementptr inbounds %struct.XVtc_Timing* %204, i32 0, i32 5, !dbg !1914
  store i16 900, i16* %205, align 2, !dbg !1914
  %206 = load %struct.XVtc_Timing** %3, align 4, !dbg !1915
  %207 = getelementptr inbounds %struct.XVtc_Timing* %206, i32 0, i32 6, !dbg !1915
  store i16 3, i16* %207, align 2, !dbg !1915
  %208 = load %struct.XVtc_Timing** %3, align 4, !dbg !1916
  %209 = getelementptr inbounds %struct.XVtc_Timing* %208, i32 0, i32 7, !dbg !1916
  store i16 6, i16* %209, align 2, !dbg !1916
  %210 = load %struct.XVtc_Timing** %3, align 4, !dbg !1917
  %211 = getelementptr inbounds %struct.XVtc_Timing* %210, i32 0, i32 8, !dbg !1917
  store i16 25, i16* %211, align 2, !dbg !1917
  %212 = load %struct.XVtc_Timing** %3, align 4, !dbg !1918
  %213 = getelementptr inbounds %struct.XVtc_Timing* %212, i32 0, i32 12, !dbg !1918
  store i16 1, i16* %213, align 2, !dbg !1918
  br label %322, !dbg !1919

; <label>:214                                     ; preds = %20
  %215 = load %struct.XVtc_Timing** %3, align 4, !dbg !1920
  %216 = getelementptr inbounds %struct.XVtc_Timing* %215, i32 0, i32 0, !dbg !1920
  store i16 1680, i16* %216, align 2, !dbg !1920
  %217 = load %struct.XVtc_Timing** %3, align 4, !dbg !1922
  %218 = getelementptr inbounds %struct.XVtc_Timing* %217, i32 0, i32 1, !dbg !1922
  store i16 104, i16* %218, align 2, !dbg !1922
  %219 = load %struct.XVtc_Timing** %3, align 4, !dbg !1923
  %220 = getelementptr inbounds %struct.XVtc_Timing* %219, i32 0, i32 2, !dbg !1923
  store i16 176, i16* %220, align 2, !dbg !1923
  %221 = load %struct.XVtc_Timing** %3, align 4, !dbg !1924
  %222 = getelementptr inbounds %struct.XVtc_Timing* %221, i32 0, i32 3, !dbg !1924
  store i16 280, i16* %222, align 2, !dbg !1924
  %223 = load %struct.XVtc_Timing** %3, align 4, !dbg !1925
  %224 = getelementptr inbounds %struct.XVtc_Timing* %223, i32 0, i32 4, !dbg !1925
  store i16 0, i16* %224, align 2, !dbg !1925
  %225 = load %struct.XVtc_Timing** %3, align 4, !dbg !1926
  %226 = getelementptr inbounds %struct.XVtc_Timing* %225, i32 0, i32 5, !dbg !1926
  store i16 1050, i16* %226, align 2, !dbg !1926
  %227 = load %struct.XVtc_Timing** %3, align 4, !dbg !1927
  %228 = getelementptr inbounds %struct.XVtc_Timing* %227, i32 0, i32 6, !dbg !1927
  store i16 3, i16* %228, align 2, !dbg !1927
  %229 = load %struct.XVtc_Timing** %3, align 4, !dbg !1928
  %230 = getelementptr inbounds %struct.XVtc_Timing* %229, i32 0, i32 7, !dbg !1928
  store i16 6, i16* %230, align 2, !dbg !1928
  %231 = load %struct.XVtc_Timing** %3, align 4, !dbg !1929
  %232 = getelementptr inbounds %struct.XVtc_Timing* %231, i32 0, i32 8, !dbg !1929
  store i16 30, i16* %232, align 2, !dbg !1929
  %233 = load %struct.XVtc_Timing** %3, align 4, !dbg !1930
  %234 = getelementptr inbounds %struct.XVtc_Timing* %233, i32 0, i32 12, !dbg !1930
  store i16 1, i16* %234, align 2, !dbg !1930
  br label %322, !dbg !1931

; <label>:235                                     ; preds = %20
  %236 = load %struct.XVtc_Timing** %3, align 4, !dbg !1932
  %237 = getelementptr inbounds %struct.XVtc_Timing* %236, i32 0, i32 13, !dbg !1932
  store i8 1, i8* %237, align 1, !dbg !1932
  %238 = load %struct.XVtc_Timing** %3, align 4, !dbg !1934
  %239 = getelementptr inbounds %struct.XVtc_Timing* %238, i32 0, i32 0, !dbg !1934
  store i16 1920, i16* %239, align 2, !dbg !1934
  %240 = load %struct.XVtc_Timing** %3, align 4, !dbg !1935
  %241 = getelementptr inbounds %struct.XVtc_Timing* %240, i32 0, i32 1, !dbg !1935
  store i16 88, i16* %241, align 2, !dbg !1935
  %242 = load %struct.XVtc_Timing** %3, align 4, !dbg !1936
  %243 = getelementptr inbounds %struct.XVtc_Timing* %242, i32 0, i32 2, !dbg !1936
  store i16 44, i16* %243, align 2, !dbg !1936
  %244 = load %struct.XVtc_Timing** %3, align 4, !dbg !1937
  %245 = getelementptr inbounds %struct.XVtc_Timing* %244, i32 0, i32 3, !dbg !1937
  store i16 148, i16* %245, align 2, !dbg !1937
  %246 = load %struct.XVtc_Timing** %3, align 4, !dbg !1938
  %247 = getelementptr inbounds %struct.XVtc_Timing* %246, i32 0, i32 4, !dbg !1938
  store i16 1, i16* %247, align 2, !dbg !1938
  %248 = load %struct.XVtc_Timing** %3, align 4, !dbg !1939
  %249 = getelementptr inbounds %struct.XVtc_Timing* %248, i32 0, i32 5, !dbg !1939
  store i16 540, i16* %249, align 2, !dbg !1939
  %250 = load %struct.XVtc_Timing** %3, align 4, !dbg !1940
  %251 = getelementptr inbounds %struct.XVtc_Timing* %250, i32 0, i32 6, !dbg !1940
  store i16 2, i16* %251, align 2, !dbg !1940
  %252 = load %struct.XVtc_Timing** %3, align 4, !dbg !1941
  %253 = getelementptr inbounds %struct.XVtc_Timing* %252, i32 0, i32 7, !dbg !1941
  store i16 5, i16* %253, align 2, !dbg !1941
  %254 = load %struct.XVtc_Timing** %3, align 4, !dbg !1942
  %255 = getelementptr inbounds %struct.XVtc_Timing* %254, i32 0, i32 8, !dbg !1942
  store i16 15, i16* %255, align 2, !dbg !1942
  %256 = load %struct.XVtc_Timing** %3, align 4, !dbg !1943
  %257 = getelementptr inbounds %struct.XVtc_Timing* %256, i32 0, i32 9, !dbg !1943
  store i16 2, i16* %257, align 2, !dbg !1943
  %258 = load %struct.XVtc_Timing** %3, align 4, !dbg !1944
  %259 = getelementptr inbounds %struct.XVtc_Timing* %258, i32 0, i32 10, !dbg !1944
  store i16 5, i16* %259, align 2, !dbg !1944
  %260 = load %struct.XVtc_Timing** %3, align 4, !dbg !1945
  %261 = getelementptr inbounds %struct.XVtc_Timing* %260, i32 0, i32 11, !dbg !1945
  store i16 16, i16* %261, align 2, !dbg !1945
  %262 = load %struct.XVtc_Timing** %3, align 4, !dbg !1946
  %263 = getelementptr inbounds %struct.XVtc_Timing* %262, i32 0, i32 12, !dbg !1946
  store i16 1, i16* %263, align 2, !dbg !1946
  br label %322, !dbg !1947

; <label>:264                                     ; preds = %20
  %265 = load %struct.XVtc_Timing** %3, align 4, !dbg !1948
  %266 = getelementptr inbounds %struct.XVtc_Timing* %265, i32 0, i32 13, !dbg !1948
  store i8 1, i8* %266, align 1, !dbg !1948
  %267 = load %struct.XVtc_Timing** %3, align 4, !dbg !1950
  %268 = getelementptr inbounds %struct.XVtc_Timing* %267, i32 0, i32 0, !dbg !1950
  store i16 720, i16* %268, align 2, !dbg !1950
  %269 = load %struct.XVtc_Timing** %3, align 4, !dbg !1951
  %270 = getelementptr inbounds %struct.XVtc_Timing* %269, i32 0, i32 1, !dbg !1951
  store i16 19, i16* %270, align 2, !dbg !1951
  %271 = load %struct.XVtc_Timing** %3, align 4, !dbg !1952
  %272 = getelementptr inbounds %struct.XVtc_Timing* %271, i32 0, i32 2, !dbg !1952
  store i16 62, i16* %272, align 2, !dbg !1952
  %273 = load %struct.XVtc_Timing** %3, align 4, !dbg !1953
  %274 = getelementptr inbounds %struct.XVtc_Timing* %273, i32 0, i32 3, !dbg !1953
  store i16 57, i16* %274, align 2, !dbg !1953
  %275 = load %struct.XVtc_Timing** %3, align 4, !dbg !1954
  %276 = getelementptr inbounds %struct.XVtc_Timing* %275, i32 0, i32 4, !dbg !1954
  store i16 0, i16* %276, align 2, !dbg !1954
  %277 = load %struct.XVtc_Timing** %3, align 4, !dbg !1955
  %278 = getelementptr inbounds %struct.XVtc_Timing* %277, i32 0, i32 5, !dbg !1955
  store i16 240, i16* %278, align 2, !dbg !1955
  %279 = load %struct.XVtc_Timing** %3, align 4, !dbg !1956
  %280 = getelementptr inbounds %struct.XVtc_Timing* %279, i32 0, i32 6, !dbg !1956
  store i16 4, i16* %280, align 2, !dbg !1956
  %281 = load %struct.XVtc_Timing** %3, align 4, !dbg !1957
  %282 = getelementptr inbounds %struct.XVtc_Timing* %281, i32 0, i32 7, !dbg !1957
  store i16 3, i16* %282, align 2, !dbg !1957
  %283 = load %struct.XVtc_Timing** %3, align 4, !dbg !1958
  %284 = getelementptr inbounds %struct.XVtc_Timing* %283, i32 0, i32 8, !dbg !1958
  store i16 15, i16* %284, align 2, !dbg !1958
  %285 = load %struct.XVtc_Timing** %3, align 4, !dbg !1959
  %286 = getelementptr inbounds %struct.XVtc_Timing* %285, i32 0, i32 9, !dbg !1959
  store i16 4, i16* %286, align 2, !dbg !1959
  %287 = load %struct.XVtc_Timing** %3, align 4, !dbg !1960
  %288 = getelementptr inbounds %struct.XVtc_Timing* %287, i32 0, i32 10, !dbg !1960
  store i16 3, i16* %288, align 2, !dbg !1960
  %289 = load %struct.XVtc_Timing** %3, align 4, !dbg !1961
  %290 = getelementptr inbounds %struct.XVtc_Timing* %289, i32 0, i32 11, !dbg !1961
  store i16 16, i16* %290, align 2, !dbg !1961
  %291 = load %struct.XVtc_Timing** %3, align 4, !dbg !1962
  %292 = getelementptr inbounds %struct.XVtc_Timing* %291, i32 0, i32 12, !dbg !1962
  store i16 0, i16* %292, align 2, !dbg !1962
  br label %322, !dbg !1963

; <label>:293                                     ; preds = %20
  %294 = load %struct.XVtc_Timing** %3, align 4, !dbg !1964
  %295 = getelementptr inbounds %struct.XVtc_Timing* %294, i32 0, i32 13, !dbg !1964
  store i8 1, i8* %295, align 1, !dbg !1964
  %296 = load %struct.XVtc_Timing** %3, align 4, !dbg !1966
  %297 = getelementptr inbounds %struct.XVtc_Timing* %296, i32 0, i32 0, !dbg !1966
  store i16 720, i16* %297, align 2, !dbg !1966
  %298 = load %struct.XVtc_Timing** %3, align 4, !dbg !1967
  %299 = getelementptr inbounds %struct.XVtc_Timing* %298, i32 0, i32 1, !dbg !1967
  store i16 12, i16* %299, align 2, !dbg !1967
  %300 = load %struct.XVtc_Timing** %3, align 4, !dbg !1968
  %301 = getelementptr inbounds %struct.XVtc_Timing* %300, i32 0, i32 2, !dbg !1968
  store i16 63, i16* %301, align 2, !dbg !1968
  %302 = load %struct.XVtc_Timing** %3, align 4, !dbg !1969
  %303 = getelementptr inbounds %struct.XVtc_Timing* %302, i32 0, i32 3, !dbg !1969
  store i16 69, i16* %303, align 2, !dbg !1969
  %304 = load %struct.XVtc_Timing** %3, align 4, !dbg !1970
  %305 = getelementptr inbounds %struct.XVtc_Timing* %304, i32 0, i32 4, !dbg !1970
  store i16 0, i16* %305, align 2, !dbg !1970
  %306 = load %struct.XVtc_Timing** %3, align 4, !dbg !1971
  %307 = getelementptr inbounds %struct.XVtc_Timing* %306, i32 0, i32 5, !dbg !1971
  store i16 288, i16* %307, align 2, !dbg !1971
  %308 = load %struct.XVtc_Timing** %3, align 4, !dbg !1972
  %309 = getelementptr inbounds %struct.XVtc_Timing* %308, i32 0, i32 6, !dbg !1972
  store i16 2, i16* %309, align 2, !dbg !1972
  %310 = load %struct.XVtc_Timing** %3, align 4, !dbg !1973
  %311 = getelementptr inbounds %struct.XVtc_Timing* %310, i32 0, i32 7, !dbg !1973
  store i16 3, i16* %311, align 2, !dbg !1973
  %312 = load %struct.XVtc_Timing** %3, align 4, !dbg !1974
  %313 = getelementptr inbounds %struct.XVtc_Timing* %312, i32 0, i32 8, !dbg !1974
  store i16 19, i16* %313, align 2, !dbg !1974
  %314 = load %struct.XVtc_Timing** %3, align 4, !dbg !1975
  %315 = getelementptr inbounds %struct.XVtc_Timing* %314, i32 0, i32 9, !dbg !1975
  store i16 2, i16* %315, align 2, !dbg !1975
  %316 = load %struct.XVtc_Timing** %3, align 4, !dbg !1976
  %317 = getelementptr inbounds %struct.XVtc_Timing* %316, i32 0, i32 10, !dbg !1976
  store i16 3, i16* %317, align 2, !dbg !1976
  %318 = load %struct.XVtc_Timing** %3, align 4, !dbg !1977
  %319 = getelementptr inbounds %struct.XVtc_Timing* %318, i32 0, i32 11, !dbg !1977
  store i16 20, i16* %319, align 2, !dbg !1977
  %320 = load %struct.XVtc_Timing** %3, align 4, !dbg !1978
  %321 = getelementptr inbounds %struct.XVtc_Timing* %320, i32 0, i32 12, !dbg !1978
  store i16 0, i16* %321, align 2, !dbg !1978
  br label %322, !dbg !1979

; <label>:322                                     ; preds = %7, %14, %19, %20, %293, %264, %235, %214, %193, %172, %151, %130, %109, %88, %67, %46, %25
  ret void, !dbg !1980
}

; Function Attrs: nounwind
define void @XVtc_ConvTiming2Signal(%struct.XVtc* %InstancePtr, %struct.XVtc_Timing* %TimingPtr, %struct.XVtc_Signal* %SignalCfgPtr, %struct.XVtc_HoriOffsets* %HOffPtr, %struct.XVtc_Polarity* %PolarityPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Timing*, align 4
  %3 = alloca %struct.XVtc_Signal*, align 4
  %4 = alloca %struct.XVtc_HoriOffsets*, align 4
  %5 = alloca %struct.XVtc_Polarity*, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !1981), !dbg !1982
  store %struct.XVtc_Timing* %TimingPtr, %struct.XVtc_Timing** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing** %2}, metadata !1983), !dbg !1984
  store %struct.XVtc_Signal* %SignalCfgPtr, %struct.XVtc_Signal** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal** %3}, metadata !1985), !dbg !1986
  store %struct.XVtc_HoriOffsets* %HOffPtr, %struct.XVtc_HoriOffsets** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets** %4}, metadata !1987), !dbg !1988
  store %struct.XVtc_Polarity* %PolarityPtr, %struct.XVtc_Polarity** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Polarity** %5}, metadata !1989), !dbg !1990
  %6 = load %struct.XVtc** %1, align 4, !dbg !1991
  %7 = icmp ne %struct.XVtc* %6, null, !dbg !1991
  br i1 %7, label %8, label %9, !dbg !1991

; <label>:8                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1994
  br label %10, !dbg !1994

; <label>:9                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2121), !dbg !1997
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1997
  br label %330, !dbg !1997

; <label>:10                                      ; preds = %8
  %11 = load %struct.XVtc** %1, align 4, !dbg !2000
  %12 = getelementptr inbounds %struct.XVtc* %11, i32 0, i32 1, !dbg !2000
  %13 = load i32* %12, align 4, !dbg !2000
  %14 = icmp eq i32 %13, 286331153, !dbg !2000
  br i1 %14, label %15, label %16, !dbg !2000

; <label>:15                                      ; preds = %10
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2003
  br label %17, !dbg !2003

; <label>:16                                      ; preds = %10
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2122), !dbg !2006
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2006
  br label %330, !dbg !2006

; <label>:17                                      ; preds = %15
  %18 = load %struct.XVtc_Timing** %2, align 4, !dbg !2009
  %19 = icmp ne %struct.XVtc_Timing* %18, null, !dbg !2009
  br i1 %19, label %20, label %21, !dbg !2009

; <label>:20                                      ; preds = %17
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2012
  br label %22, !dbg !2012

; <label>:21                                      ; preds = %17
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2123), !dbg !2015
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2015
  br label %330, !dbg !2015

; <label>:22                                      ; preds = %20
  %23 = load %struct.XVtc_Signal** %3, align 4, !dbg !2018
  %24 = icmp ne %struct.XVtc_Signal* %23, null, !dbg !2018
  br i1 %24, label %25, label %26, !dbg !2018

; <label>:25                                      ; preds = %22
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2021
  br label %27, !dbg !2021

; <label>:26                                      ; preds = %22
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2124), !dbg !2024
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2024
  br label %330, !dbg !2024

; <label>:27                                      ; preds = %25
  %28 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2027
  %29 = icmp ne %struct.XVtc_HoriOffsets* %28, null, !dbg !2027
  br i1 %29, label %30, label %31, !dbg !2027

; <label>:30                                      ; preds = %27
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2030
  br label %32, !dbg !2030

; <label>:31                                      ; preds = %27
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2125), !dbg !2033
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2033
  br label %330, !dbg !2033

; <label>:32                                      ; preds = %30
  %33 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2036
  %34 = icmp ne %struct.XVtc_Polarity* %33, null, !dbg !2036
  br i1 %34, label %35, label %36, !dbg !2036

; <label>:35                                      ; preds = %32
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2039
  br label %37, !dbg !2039

; <label>:36                                      ; preds = %32
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2126), !dbg !2042
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2042
  br label %330, !dbg !2042

; <label>:37                                      ; preds = %35
  %38 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2045
  %39 = bitcast %struct.XVtc_Polarity* %38 to i8*, !dbg !2045
  call void @llvm.memset.p0i8.i32(i8* %39, i8 0, i32 7, i32 1, i1 false), !dbg !2045
  %40 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2046
  %41 = getelementptr inbounds %struct.XVtc_Polarity* %40, i32 0, i32 0, !dbg !2046
  store i8 1, i8* %41, align 1, !dbg !2046
  %42 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2047
  %43 = getelementptr inbounds %struct.XVtc_Polarity* %42, i32 0, i32 1, !dbg !2047
  store i8 1, i8* %43, align 1, !dbg !2047
  %44 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2048
  %45 = getelementptr inbounds %struct.XVtc_Polarity* %44, i32 0, i32 2, !dbg !2048
  store i8 1, i8* %45, align 1, !dbg !2048
  %46 = load %struct.XVtc_Timing** %2, align 4, !dbg !2049
  %47 = getelementptr inbounds %struct.XVtc_Timing* %46, i32 0, i32 12, !dbg !2049
  %48 = load i16* %47, align 2, !dbg !2049
  %49 = trunc i16 %48 to i8, !dbg !2049
  %50 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2049
  %51 = getelementptr inbounds %struct.XVtc_Polarity* %50, i32 0, i32 3, !dbg !2049
  store i8 %49, i8* %51, align 1, !dbg !2049
  %52 = load %struct.XVtc_Timing** %2, align 4, !dbg !2050
  %53 = getelementptr inbounds %struct.XVtc_Timing* %52, i32 0, i32 12, !dbg !2050
  %54 = load i16* %53, align 2, !dbg !2050
  %55 = trunc i16 %54 to i8, !dbg !2050
  %56 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2050
  %57 = getelementptr inbounds %struct.XVtc_Polarity* %56, i32 0, i32 4, !dbg !2050
  store i8 %55, i8* %57, align 1, !dbg !2050
  %58 = load %struct.XVtc_Timing** %2, align 4, !dbg !2051
  %59 = getelementptr inbounds %struct.XVtc_Timing* %58, i32 0, i32 4, !dbg !2051
  %60 = load i16* %59, align 2, !dbg !2051
  %61 = trunc i16 %60 to i8, !dbg !2051
  %62 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2051
  %63 = getelementptr inbounds %struct.XVtc_Polarity* %62, i32 0, i32 5, !dbg !2051
  store i8 %61, i8* %63, align 1, !dbg !2051
  %64 = load %struct.XVtc_Timing** %2, align 4, !dbg !2052
  %65 = getelementptr inbounds %struct.XVtc_Timing* %64, i32 0, i32 4, !dbg !2052
  %66 = load i16* %65, align 2, !dbg !2052
  %67 = trunc i16 %66 to i8, !dbg !2052
  %68 = load %struct.XVtc_Polarity** %5, align 4, !dbg !2052
  %69 = getelementptr inbounds %struct.XVtc_Polarity* %68, i32 0, i32 6, !dbg !2052
  store i8 %67, i8* %69, align 1, !dbg !2052
  %70 = load %struct.XVtc_Signal** %3, align 4, !dbg !2053
  %71 = bitcast %struct.XVtc_Signal* %70 to i8*, !dbg !2053
  call void @llvm.memset.p0i8.i32(i8* %71, i8 0, i32 38, i32 1, i1 false), !dbg !2053
  %72 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2054
  %73 = bitcast %struct.XVtc_HoriOffsets* %72 to i8*, !dbg !2054
  call void @llvm.memset.p0i8.i32(i8* %73, i8 0, i32 16, i32 1, i1 false), !dbg !2054
  %74 = load %struct.XVtc_Signal** %3, align 4, !dbg !2055
  %75 = getelementptr inbounds %struct.XVtc_Signal* %74, i32 0, i32 0, !dbg !2055
  store i16 1, i16* %75, align 2, !dbg !2055
  %76 = load %struct.XVtc_Signal** %3, align 4, !dbg !2056
  %77 = getelementptr inbounds %struct.XVtc_Signal* %76, i32 0, i32 5, !dbg !2056
  store i16 0, i16* %77, align 2, !dbg !2056
  %78 = load %struct.XVtc_Timing** %2, align 4, !dbg !2057
  %79 = getelementptr inbounds %struct.XVtc_Timing* %78, i32 0, i32 0, !dbg !2057
  %80 = load i16* %79, align 2, !dbg !2057
  %81 = load %struct.XVtc_Signal** %3, align 4, !dbg !2057
  %82 = getelementptr inbounds %struct.XVtc_Signal* %81, i32 0, i32 2, !dbg !2057
  store i16 %80, i16* %82, align 2, !dbg !2057
  %83 = load %struct.XVtc_Signal** %3, align 4, !dbg !2058
  %84 = getelementptr inbounds %struct.XVtc_Signal* %83, i32 0, i32 2, !dbg !2058
  %85 = load i16* %84, align 2, !dbg !2058
  %86 = zext i16 %85 to i32, !dbg !2058
  %87 = load %struct.XVtc_Timing** %2, align 4, !dbg !2058
  %88 = getelementptr inbounds %struct.XVtc_Timing* %87, i32 0, i32 1, !dbg !2058
  %89 = load i16* %88, align 2, !dbg !2058
  %90 = zext i16 %89 to i32, !dbg !2058
  %91 = add nsw i32 %86, %90, !dbg !2058
  %92 = trunc i32 %91 to i16, !dbg !2058
  %93 = load %struct.XVtc_Signal** %3, align 4, !dbg !2058
  %94 = getelementptr inbounds %struct.XVtc_Signal* %93, i32 0, i32 3, !dbg !2058
  store i16 %92, i16* %94, align 2, !dbg !2058
  %95 = load %struct.XVtc_Signal** %3, align 4, !dbg !2059
  %96 = getelementptr inbounds %struct.XVtc_Signal* %95, i32 0, i32 3, !dbg !2059
  %97 = load i16* %96, align 2, !dbg !2059
  %98 = zext i16 %97 to i32, !dbg !2059
  %99 = load %struct.XVtc_Timing** %2, align 4, !dbg !2059
  %100 = getelementptr inbounds %struct.XVtc_Timing* %99, i32 0, i32 2, !dbg !2059
  %101 = load i16* %100, align 2, !dbg !2059
  %102 = zext i16 %101 to i32, !dbg !2059
  %103 = add nsw i32 %98, %102, !dbg !2059
  %104 = trunc i32 %103 to i16, !dbg !2059
  %105 = load %struct.XVtc_Signal** %3, align 4, !dbg !2059
  %106 = getelementptr inbounds %struct.XVtc_Signal* %105, i32 0, i32 4, !dbg !2059
  store i16 %104, i16* %106, align 2, !dbg !2059
  %107 = load %struct.XVtc_Signal** %3, align 4, !dbg !2060
  %108 = getelementptr inbounds %struct.XVtc_Signal* %107, i32 0, i32 4, !dbg !2060
  %109 = load i16* %108, align 2, !dbg !2060
  %110 = zext i16 %109 to i32, !dbg !2060
  %111 = load %struct.XVtc_Timing** %2, align 4, !dbg !2060
  %112 = getelementptr inbounds %struct.XVtc_Timing* %111, i32 0, i32 3, !dbg !2060
  %113 = load i16* %112, align 2, !dbg !2060
  %114 = zext i16 %113 to i32, !dbg !2060
  %115 = add nsw i32 %110, %114, !dbg !2060
  %116 = trunc i32 %115 to i16, !dbg !2060
  %117 = load %struct.XVtc_Signal** %3, align 4, !dbg !2060
  %118 = getelementptr inbounds %struct.XVtc_Signal* %117, i32 0, i32 1, !dbg !2060
  store i16 %116, i16* %118, align 2, !dbg !2060
  %119 = load %struct.XVtc_Signal** %3, align 4, !dbg !2061
  %120 = getelementptr inbounds %struct.XVtc_Signal* %119, i32 0, i32 11, !dbg !2061
  store i16 0, i16* %120, align 2, !dbg !2061
  %121 = load %struct.XVtc_Signal** %3, align 4, !dbg !2062
  %122 = getelementptr inbounds %struct.XVtc_Signal* %121, i32 0, i32 10, !dbg !2062
  store i16 0, i16* %122, align 2, !dbg !2062
  %123 = load %struct.XVtc_Timing** %2, align 4, !dbg !2063
  %124 = getelementptr inbounds %struct.XVtc_Timing* %123, i32 0, i32 5, !dbg !2063
  %125 = load i16* %124, align 2, !dbg !2063
  %126 = load %struct.XVtc_Signal** %3, align 4, !dbg !2063
  %127 = getelementptr inbounds %struct.XVtc_Signal* %126, i32 0, i32 7, !dbg !2063
  store i16 %125, i16* %127, align 2, !dbg !2063
  %128 = load %struct.XVtc_Signal** %3, align 4, !dbg !2064
  %129 = getelementptr inbounds %struct.XVtc_Signal* %128, i32 0, i32 7, !dbg !2064
  %130 = load i16* %129, align 2, !dbg !2064
  %131 = zext i16 %130 to i32, !dbg !2064
  %132 = load %struct.XVtc_Timing** %2, align 4, !dbg !2064
  %133 = getelementptr inbounds %struct.XVtc_Timing* %132, i32 0, i32 6, !dbg !2064
  %134 = load i16* %133, align 2, !dbg !2064
  %135 = zext i16 %134 to i32, !dbg !2064
  %136 = add nsw i32 %131, %135, !dbg !2064
  %137 = sub nsw i32 %136, 1, !dbg !2064
  %138 = trunc i32 %137 to i16, !dbg !2064
  %139 = load %struct.XVtc_Signal** %3, align 4, !dbg !2064
  %140 = getelementptr inbounds %struct.XVtc_Signal* %139, i32 0, i32 8, !dbg !2064
  store i16 %138, i16* %140, align 2, !dbg !2064
  %141 = load %struct.XVtc_Signal** %3, align 4, !dbg !2065
  %142 = getelementptr inbounds %struct.XVtc_Signal* %141, i32 0, i32 8, !dbg !2065
  %143 = load i16* %142, align 2, !dbg !2065
  %144 = zext i16 %143 to i32, !dbg !2065
  %145 = load %struct.XVtc_Timing** %2, align 4, !dbg !2065
  %146 = getelementptr inbounds %struct.XVtc_Timing* %145, i32 0, i32 7, !dbg !2065
  %147 = load i16* %146, align 2, !dbg !2065
  %148 = zext i16 %147 to i32, !dbg !2065
  %149 = add nsw i32 %144, %148, !dbg !2065
  %150 = trunc i32 %149 to i16, !dbg !2065
  %151 = load %struct.XVtc_Signal** %3, align 4, !dbg !2065
  %152 = getelementptr inbounds %struct.XVtc_Signal* %151, i32 0, i32 9, !dbg !2065
  store i16 %150, i16* %152, align 2, !dbg !2065
  %153 = load %struct.XVtc_Signal** %3, align 4, !dbg !2066
  %154 = getelementptr inbounds %struct.XVtc_Signal* %153, i32 0, i32 9, !dbg !2066
  %155 = load i16* %154, align 2, !dbg !2066
  %156 = zext i16 %155 to i32, !dbg !2066
  %157 = load %struct.XVtc_Timing** %2, align 4, !dbg !2066
  %158 = getelementptr inbounds %struct.XVtc_Timing* %157, i32 0, i32 8, !dbg !2066
  %159 = load i16* %158, align 2, !dbg !2066
  %160 = zext i16 %159 to i32, !dbg !2066
  %161 = add nsw i32 %156, %160, !dbg !2066
  %162 = add nsw i32 %161, 1, !dbg !2066
  %163 = trunc i32 %162 to i16, !dbg !2066
  %164 = load %struct.XVtc_Signal** %3, align 4, !dbg !2066
  %165 = getelementptr inbounds %struct.XVtc_Signal* %164, i32 0, i32 6, !dbg !2066
  store i16 %163, i16* %165, align 2, !dbg !2066
  %166 = load %struct.XVtc_Signal** %3, align 4, !dbg !2067
  %167 = getelementptr inbounds %struct.XVtc_Signal* %166, i32 0, i32 2, !dbg !2067
  %168 = load i16* %167, align 2, !dbg !2067
  %169 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2067
  %170 = getelementptr inbounds %struct.XVtc_HoriOffsets* %169, i32 0, i32 0, !dbg !2067
  store i16 %168, i16* %170, align 2, !dbg !2067
  %171 = load %struct.XVtc_Signal** %3, align 4, !dbg !2068
  %172 = getelementptr inbounds %struct.XVtc_Signal* %171, i32 0, i32 2, !dbg !2068
  %173 = load i16* %172, align 2, !dbg !2068
  %174 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2068
  %175 = getelementptr inbounds %struct.XVtc_HoriOffsets* %174, i32 0, i32 1, !dbg !2068
  store i16 %173, i16* %175, align 2, !dbg !2068
  %176 = load %struct.XVtc_Signal** %3, align 4, !dbg !2069
  %177 = getelementptr inbounds %struct.XVtc_Signal* %176, i32 0, i32 3, !dbg !2069
  %178 = load i16* %177, align 2, !dbg !2069
  %179 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2069
  %180 = getelementptr inbounds %struct.XVtc_HoriOffsets* %179, i32 0, i32 2, !dbg !2069
  store i16 %178, i16* %180, align 2, !dbg !2069
  %181 = load %struct.XVtc_Signal** %3, align 4, !dbg !2070
  %182 = getelementptr inbounds %struct.XVtc_Signal* %181, i32 0, i32 3, !dbg !2070
  %183 = load i16* %182, align 2, !dbg !2070
  %184 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2070
  %185 = getelementptr inbounds %struct.XVtc_HoriOffsets* %184, i32 0, i32 3, !dbg !2070
  store i16 %183, i16* %185, align 2, !dbg !2070
  %186 = load %struct.XVtc_Timing** %2, align 4, !dbg !2071
  %187 = getelementptr inbounds %struct.XVtc_Timing* %186, i32 0, i32 13, !dbg !2071
  %188 = load i8* %187, align 1, !dbg !2071
  %189 = zext i8 %188 to i32, !dbg !2071
  %190 = icmp eq i32 %189, 1, !dbg !2071
  br i1 %190, label %191, label %277, !dbg !2071

; <label>:191                                     ; preds = %37
  %192 = load %struct.XVtc_Signal** %3, align 4, !dbg !2073
  %193 = getelementptr inbounds %struct.XVtc_Signal* %192, i32 0, i32 17, !dbg !2073
  store i16 0, i16* %193, align 2, !dbg !2073
  %194 = load %struct.XVtc_Signal** %3, align 4, !dbg !2075
  %195 = getelementptr inbounds %struct.XVtc_Signal* %194, i32 0, i32 16, !dbg !2075
  store i16 0, i16* %195, align 2, !dbg !2075
  %196 = load %struct.XVtc_Timing** %2, align 4, !dbg !2076
  %197 = getelementptr inbounds %struct.XVtc_Timing* %196, i32 0, i32 5, !dbg !2076
  %198 = load i16* %197, align 2, !dbg !2076
  %199 = load %struct.XVtc_Signal** %3, align 4, !dbg !2076
  %200 = getelementptr inbounds %struct.XVtc_Signal* %199, i32 0, i32 13, !dbg !2076
  store i16 %198, i16* %200, align 2, !dbg !2076
  %201 = load %struct.XVtc_Signal** %3, align 4, !dbg !2077
  %202 = getelementptr inbounds %struct.XVtc_Signal* %201, i32 0, i32 13, !dbg !2077
  %203 = load i16* %202, align 2, !dbg !2077
  %204 = zext i16 %203 to i32, !dbg !2077
  %205 = load %struct.XVtc_Timing** %2, align 4, !dbg !2077
  %206 = getelementptr inbounds %struct.XVtc_Timing* %205, i32 0, i32 9, !dbg !2077
  %207 = load i16* %206, align 2, !dbg !2077
  %208 = zext i16 %207 to i32, !dbg !2077
  %209 = add nsw i32 %204, %208, !dbg !2077
  %210 = sub nsw i32 %209, 1, !dbg !2077
  %211 = trunc i32 %210 to i16, !dbg !2077
  %212 = load %struct.XVtc_Signal** %3, align 4, !dbg !2077
  %213 = getelementptr inbounds %struct.XVtc_Signal* %212, i32 0, i32 14, !dbg !2077
  store i16 %211, i16* %213, align 2, !dbg !2077
  %214 = load %struct.XVtc_Signal** %3, align 4, !dbg !2078
  %215 = getelementptr inbounds %struct.XVtc_Signal* %214, i32 0, i32 14, !dbg !2078
  %216 = load i16* %215, align 2, !dbg !2078
  %217 = zext i16 %216 to i32, !dbg !2078
  %218 = load %struct.XVtc_Timing** %2, align 4, !dbg !2078
  %219 = getelementptr inbounds %struct.XVtc_Timing* %218, i32 0, i32 10, !dbg !2078
  %220 = load i16* %219, align 2, !dbg !2078
  %221 = zext i16 %220 to i32, !dbg !2078
  %222 = add nsw i32 %217, %221, !dbg !2078
  %223 = trunc i32 %222 to i16, !dbg !2078
  %224 = load %struct.XVtc_Signal** %3, align 4, !dbg !2078
  %225 = getelementptr inbounds %struct.XVtc_Signal* %224, i32 0, i32 15, !dbg !2078
  store i16 %223, i16* %225, align 2, !dbg !2078
  %226 = load %struct.XVtc_Signal** %3, align 4, !dbg !2079
  %227 = getelementptr inbounds %struct.XVtc_Signal* %226, i32 0, i32 15, !dbg !2079
  %228 = load i16* %227, align 2, !dbg !2079
  %229 = zext i16 %228 to i32, !dbg !2079
  %230 = load %struct.XVtc_Timing** %2, align 4, !dbg !2079
  %231 = getelementptr inbounds %struct.XVtc_Timing* %230, i32 0, i32 11, !dbg !2079
  %232 = load i16* %231, align 2, !dbg !2079
  %233 = zext i16 %232 to i32, !dbg !2079
  %234 = add nsw i32 %229, %233, !dbg !2079
  %235 = add nsw i32 %234, 1, !dbg !2079
  %236 = trunc i32 %235 to i16, !dbg !2079
  %237 = load %struct.XVtc_Signal** %3, align 4, !dbg !2079
  %238 = getelementptr inbounds %struct.XVtc_Signal* %237, i32 0, i32 12, !dbg !2079
  store i16 %236, i16* %238, align 2, !dbg !2079
  %239 = load %struct.XVtc_Signal** %3, align 4, !dbg !2080
  %240 = getelementptr inbounds %struct.XVtc_Signal* %239, i32 0, i32 18, !dbg !2080
  store i8 1, i8* %240, align 1, !dbg !2080
  %241 = load %struct.XVtc_Signal** %3, align 4, !dbg !2081
  %242 = getelementptr inbounds %struct.XVtc_Signal* %241, i32 0, i32 2, !dbg !2081
  %243 = load i16* %242, align 2, !dbg !2081
  %244 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2081
  %245 = getelementptr inbounds %struct.XVtc_HoriOffsets* %244, i32 0, i32 4, !dbg !2081
  store i16 %243, i16* %245, align 2, !dbg !2081
  %246 = load %struct.XVtc_Signal** %3, align 4, !dbg !2082
  %247 = getelementptr inbounds %struct.XVtc_Signal* %246, i32 0, i32 2, !dbg !2082
  %248 = load i16* %247, align 2, !dbg !2082
  %249 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2082
  %250 = getelementptr inbounds %struct.XVtc_HoriOffsets* %249, i32 0, i32 5, !dbg !2082
  store i16 %248, i16* %250, align 2, !dbg !2082
  %251 = load %struct.XVtc_Signal** %3, align 4, !dbg !2083
  %252 = getelementptr inbounds %struct.XVtc_Signal* %251, i32 0, i32 3, !dbg !2083
  %253 = load i16* %252, align 2, !dbg !2083
  %254 = zext i16 %253 to i32, !dbg !2083
  %255 = load %struct.XVtc_Signal** %3, align 4, !dbg !2083
  %256 = getelementptr inbounds %struct.XVtc_Signal* %255, i32 0, i32 1, !dbg !2083
  %257 = load i16* %256, align 2, !dbg !2083
  %258 = zext i16 %257 to i32, !dbg !2083
  %259 = sdiv i32 %258, 2, !dbg !2083
  %260 = sub nsw i32 %254, %259, !dbg !2083
  %261 = trunc i32 %260 to i16, !dbg !2083
  %262 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2083
  %263 = getelementptr inbounds %struct.XVtc_HoriOffsets* %262, i32 0, i32 6, !dbg !2083
  store i16 %261, i16* %263, align 2, !dbg !2083
  %264 = load %struct.XVtc_Signal** %3, align 4, !dbg !2084
  %265 = getelementptr inbounds %struct.XVtc_Signal* %264, i32 0, i32 3, !dbg !2084
  %266 = load i16* %265, align 2, !dbg !2084
  %267 = zext i16 %266 to i32, !dbg !2084
  %268 = load %struct.XVtc_Signal** %3, align 4, !dbg !2084
  %269 = getelementptr inbounds %struct.XVtc_Signal* %268, i32 0, i32 1, !dbg !2084
  %270 = load i16* %269, align 2, !dbg !2084
  %271 = zext i16 %270 to i32, !dbg !2084
  %272 = sdiv i32 %271, 2, !dbg !2084
  %273 = sub nsw i32 %267, %272, !dbg !2084
  %274 = trunc i32 %273 to i16, !dbg !2084
  %275 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2084
  %276 = getelementptr inbounds %struct.XVtc_HoriOffsets* %275, i32 0, i32 7, !dbg !2084
  store i16 %274, i16* %276, align 2, !dbg !2084
  br label %330, !dbg !2085

; <label>:277                                     ; preds = %37
  %278 = load %struct.XVtc_Signal** %3, align 4, !dbg !2086
  %279 = getelementptr inbounds %struct.XVtc_Signal* %278, i32 0, i32 11, !dbg !2086
  %280 = load i16* %279, align 2, !dbg !2086
  %281 = load %struct.XVtc_Signal** %3, align 4, !dbg !2086
  %282 = getelementptr inbounds %struct.XVtc_Signal* %281, i32 0, i32 17, !dbg !2086
  store i16 %280, i16* %282, align 2, !dbg !2086
  %283 = load %struct.XVtc_Signal** %3, align 4, !dbg !2088
  %284 = getelementptr inbounds %struct.XVtc_Signal* %283, i32 0, i32 10, !dbg !2088
  %285 = load i16* %284, align 2, !dbg !2088
  %286 = load %struct.XVtc_Signal** %3, align 4, !dbg !2088
  %287 = getelementptr inbounds %struct.XVtc_Signal* %286, i32 0, i32 16, !dbg !2088
  store i16 %285, i16* %287, align 2, !dbg !2088
  %288 = load %struct.XVtc_Signal** %3, align 4, !dbg !2089
  %289 = getelementptr inbounds %struct.XVtc_Signal* %288, i32 0, i32 7, !dbg !2089
  %290 = load i16* %289, align 2, !dbg !2089
  %291 = load %struct.XVtc_Signal** %3, align 4, !dbg !2089
  %292 = getelementptr inbounds %struct.XVtc_Signal* %291, i32 0, i32 13, !dbg !2089
  store i16 %290, i16* %292, align 2, !dbg !2089
  %293 = load %struct.XVtc_Signal** %3, align 4, !dbg !2090
  %294 = getelementptr inbounds %struct.XVtc_Signal* %293, i32 0, i32 8, !dbg !2090
  %295 = load i16* %294, align 2, !dbg !2090
  %296 = load %struct.XVtc_Signal** %3, align 4, !dbg !2090
  %297 = getelementptr inbounds %struct.XVtc_Signal* %296, i32 0, i32 14, !dbg !2090
  store i16 %295, i16* %297, align 2, !dbg !2090
  %298 = load %struct.XVtc_Signal** %3, align 4, !dbg !2091
  %299 = getelementptr inbounds %struct.XVtc_Signal* %298, i32 0, i32 9, !dbg !2091
  %300 = load i16* %299, align 2, !dbg !2091
  %301 = load %struct.XVtc_Signal** %3, align 4, !dbg !2091
  %302 = getelementptr inbounds %struct.XVtc_Signal* %301, i32 0, i32 15, !dbg !2091
  store i16 %300, i16* %302, align 2, !dbg !2091
  %303 = load %struct.XVtc_Signal** %3, align 4, !dbg !2092
  %304 = getelementptr inbounds %struct.XVtc_Signal* %303, i32 0, i32 6, !dbg !2092
  %305 = load i16* %304, align 2, !dbg !2092
  %306 = load %struct.XVtc_Signal** %3, align 4, !dbg !2092
  %307 = getelementptr inbounds %struct.XVtc_Signal* %306, i32 0, i32 12, !dbg !2092
  store i16 %305, i16* %307, align 2, !dbg !2092
  %308 = load %struct.XVtc_Signal** %3, align 4, !dbg !2093
  %309 = getelementptr inbounds %struct.XVtc_Signal* %308, i32 0, i32 18, !dbg !2093
  store i8 0, i8* %309, align 1, !dbg !2093
  %310 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2094
  %311 = getelementptr inbounds %struct.XVtc_HoriOffsets* %310, i32 0, i32 0, !dbg !2094
  %312 = load i16* %311, align 2, !dbg !2094
  %313 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2094
  %314 = getelementptr inbounds %struct.XVtc_HoriOffsets* %313, i32 0, i32 4, !dbg !2094
  store i16 %312, i16* %314, align 2, !dbg !2094
  %315 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2095
  %316 = getelementptr inbounds %struct.XVtc_HoriOffsets* %315, i32 0, i32 1, !dbg !2095
  %317 = load i16* %316, align 2, !dbg !2095
  %318 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2095
  %319 = getelementptr inbounds %struct.XVtc_HoriOffsets* %318, i32 0, i32 5, !dbg !2095
  store i16 %317, i16* %319, align 2, !dbg !2095
  %320 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2096
  %321 = getelementptr inbounds %struct.XVtc_HoriOffsets* %320, i32 0, i32 2, !dbg !2096
  %322 = load i16* %321, align 2, !dbg !2096
  %323 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2096
  %324 = getelementptr inbounds %struct.XVtc_HoriOffsets* %323, i32 0, i32 6, !dbg !2096
  store i16 %322, i16* %324, align 2, !dbg !2096
  %325 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2097
  %326 = getelementptr inbounds %struct.XVtc_HoriOffsets* %325, i32 0, i32 3, !dbg !2097
  %327 = load i16* %326, align 2, !dbg !2097
  %328 = load %struct.XVtc_HoriOffsets** %4, align 4, !dbg !2097
  %329 = getelementptr inbounds %struct.XVtc_HoriOffsets* %328, i32 0, i32 7, !dbg !2097
  store i16 %327, i16* %329, align 2, !dbg !2097
  br label %330

; <label>:330                                     ; preds = %9, %16, %21, %26, %31, %36, %277, %191
  ret void, !dbg !2098
}

; Function Attrs: nounwind
define void @XVtc_ConvSignal2Timing(%struct.XVtc* %InstancePtr, %struct.XVtc_Signal* %SignalCfgPtr, %struct.XVtc_HoriOffsets* %HOffPtr, %struct.XVtc_Polarity* %PolarityPtr, %struct.XVtc_Timing* %TimingPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Signal*, align 4
  %3 = alloca %struct.XVtc_HoriOffsets*, align 4
  %4 = alloca %struct.XVtc_Polarity*, align 4
  %5 = alloca %struct.XVtc_Timing*, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !2099), !dbg !2100
  store %struct.XVtc_Signal* %SignalCfgPtr, %struct.XVtc_Signal** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal** %2}, metadata !2101), !dbg !2102
  store %struct.XVtc_HoriOffsets* %HOffPtr, %struct.XVtc_HoriOffsets** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets** %3}, metadata !2103), !dbg !2104
  store %struct.XVtc_Polarity* %PolarityPtr, %struct.XVtc_Polarity** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Polarity** %4}, metadata !2105), !dbg !2106
  store %struct.XVtc_Timing* %TimingPtr, %struct.XVtc_Timing** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing** %5}, metadata !2107), !dbg !2108
  %6 = load %struct.XVtc** %1, align 4, !dbg !2109
  %7 = icmp ne %struct.XVtc* %6, null, !dbg !2109
  br i1 %7, label %8, label %9, !dbg !2109

; <label>:8                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2112
  br label %10, !dbg !2112

; <label>:9                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2246), !dbg !2115
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2115
  br label %187, !dbg !2115

; <label>:10                                      ; preds = %8
  %11 = load %struct.XVtc** %1, align 4, !dbg !2118
  %12 = getelementptr inbounds %struct.XVtc* %11, i32 0, i32 1, !dbg !2118
  %13 = load i32* %12, align 4, !dbg !2118
  %14 = icmp eq i32 %13, 286331153, !dbg !2118
  br i1 %14, label %15, label %16, !dbg !2118

; <label>:15                                      ; preds = %10
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2121
  br label %17, !dbg !2121

; <label>:16                                      ; preds = %10
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2247), !dbg !2124
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2124
  br label %187, !dbg !2124

; <label>:17                                      ; preds = %15
  %18 = load %struct.XVtc_Signal** %2, align 4, !dbg !2127
  %19 = icmp ne %struct.XVtc_Signal* %18, null, !dbg !2127
  br i1 %19, label %20, label %21, !dbg !2127

; <label>:20                                      ; preds = %17
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2130
  br label %22, !dbg !2130

; <label>:21                                      ; preds = %17
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2248), !dbg !2133
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2133
  br label %187, !dbg !2133

; <label>:22                                      ; preds = %20
  %23 = load %struct.XVtc_HoriOffsets** %3, align 4, !dbg !2136
  %24 = icmp ne %struct.XVtc_HoriOffsets* %23, null, !dbg !2136
  br i1 %24, label %25, label %26, !dbg !2136

; <label>:25                                      ; preds = %22
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2139
  br label %27, !dbg !2139

; <label>:26                                      ; preds = %22
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2249), !dbg !2142
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2142
  br label %187, !dbg !2142

; <label>:27                                      ; preds = %25
  %28 = load %struct.XVtc_Polarity** %4, align 4, !dbg !2145
  %29 = icmp ne %struct.XVtc_Polarity* %28, null, !dbg !2145
  br i1 %29, label %30, label %31, !dbg !2145

; <label>:30                                      ; preds = %27
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2148
  br label %32, !dbg !2148

; <label>:31                                      ; preds = %27
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2250), !dbg !2151
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2151
  br label %187, !dbg !2151

; <label>:32                                      ; preds = %30
  %33 = load %struct.XVtc_Timing** %5, align 4, !dbg !2154
  %34 = icmp ne %struct.XVtc_Timing* %33, null, !dbg !2154
  br i1 %34, label %35, label %36, !dbg !2154

; <label>:35                                      ; preds = %32
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2157
  br label %37, !dbg !2157

; <label>:36                                      ; preds = %32
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2251), !dbg !2160
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2160
  br label %187, !dbg !2160

; <label>:37                                      ; preds = %35
  %38 = load %struct.XVtc_Signal** %2, align 4, !dbg !2163
  %39 = getelementptr inbounds %struct.XVtc_Signal* %38, i32 0, i32 0, !dbg !2163
  %40 = load i16* %39, align 2, !dbg !2163
  %41 = zext i16 %40 to i32, !dbg !2163
  %42 = icmp eq i32 %41, 1, !dbg !2163
  br i1 %42, label %43, label %44, !dbg !2163

; <label>:43                                      ; preds = %37
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2166
  br label %45, !dbg !2166

; <label>:44                                      ; preds = %37
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2252), !dbg !2169
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2169
  br label %187, !dbg !2169

; <label>:45                                      ; preds = %43
  %46 = load %struct.XVtc_Timing** %5, align 4, !dbg !2172
  %47 = bitcast %struct.XVtc_Timing* %46 to i8*, !dbg !2172
  call void @llvm.memset.p0i8.i32(i8* %47, i8 0, i32 28, i32 1, i1 false), !dbg !2172
  %48 = load %struct.XVtc_Polarity** %4, align 4, !dbg !2173
  %49 = getelementptr inbounds %struct.XVtc_Polarity* %48, i32 0, i32 4, !dbg !2173
  %50 = load i8* %49, align 1, !dbg !2173
  %51 = zext i8 %50 to i16, !dbg !2173
  %52 = load %struct.XVtc_Timing** %5, align 4, !dbg !2173
  %53 = getelementptr inbounds %struct.XVtc_Timing* %52, i32 0, i32 12, !dbg !2173
  store i16 %51, i16* %53, align 2, !dbg !2173
  %54 = load %struct.XVtc_Polarity** %4, align 4, !dbg !2174
  %55 = getelementptr inbounds %struct.XVtc_Polarity* %54, i32 0, i32 6, !dbg !2174
  %56 = load i8* %55, align 1, !dbg !2174
  %57 = zext i8 %56 to i16, !dbg !2174
  %58 = load %struct.XVtc_Timing** %5, align 4, !dbg !2174
  %59 = getelementptr inbounds %struct.XVtc_Timing* %58, i32 0, i32 4, !dbg !2174
  store i16 %57, i16* %59, align 2, !dbg !2174
  %60 = load %struct.XVtc_Signal** %2, align 4, !dbg !2175
  %61 = getelementptr inbounds %struct.XVtc_Signal* %60, i32 0, i32 2, !dbg !2175
  %62 = load i16* %61, align 2, !dbg !2175
  %63 = load %struct.XVtc_Timing** %5, align 4, !dbg !2175
  %64 = getelementptr inbounds %struct.XVtc_Timing* %63, i32 0, i32 0, !dbg !2175
  store i16 %62, i16* %64, align 2, !dbg !2175
  %65 = load %struct.XVtc_Signal** %2, align 4, !dbg !2176
  %66 = getelementptr inbounds %struct.XVtc_Signal* %65, i32 0, i32 3, !dbg !2176
  %67 = load i16* %66, align 2, !dbg !2176
  %68 = zext i16 %67 to i32, !dbg !2176
  %69 = load %struct.XVtc_Signal** %2, align 4, !dbg !2176
  %70 = getelementptr inbounds %struct.XVtc_Signal* %69, i32 0, i32 2, !dbg !2176
  %71 = load i16* %70, align 2, !dbg !2176
  %72 = zext i16 %71 to i32, !dbg !2176
  %73 = sub nsw i32 %68, %72, !dbg !2176
  %74 = trunc i32 %73 to i16, !dbg !2176
  %75 = load %struct.XVtc_Timing** %5, align 4, !dbg !2176
  %76 = getelementptr inbounds %struct.XVtc_Timing* %75, i32 0, i32 1, !dbg !2176
  store i16 %74, i16* %76, align 2, !dbg !2176
  %77 = load %struct.XVtc_Signal** %2, align 4, !dbg !2177
  %78 = getelementptr inbounds %struct.XVtc_Signal* %77, i32 0, i32 4, !dbg !2177
  %79 = load i16* %78, align 2, !dbg !2177
  %80 = zext i16 %79 to i32, !dbg !2177
  %81 = load %struct.XVtc_Signal** %2, align 4, !dbg !2177
  %82 = getelementptr inbounds %struct.XVtc_Signal* %81, i32 0, i32 3, !dbg !2177
  %83 = load i16* %82, align 2, !dbg !2177
  %84 = zext i16 %83 to i32, !dbg !2177
  %85 = sub nsw i32 %80, %84, !dbg !2177
  %86 = trunc i32 %85 to i16, !dbg !2177
  %87 = load %struct.XVtc_Timing** %5, align 4, !dbg !2177
  %88 = getelementptr inbounds %struct.XVtc_Timing* %87, i32 0, i32 2, !dbg !2177
  store i16 %86, i16* %88, align 2, !dbg !2177
  %89 = load %struct.XVtc_Signal** %2, align 4, !dbg !2178
  %90 = getelementptr inbounds %struct.XVtc_Signal* %89, i32 0, i32 1, !dbg !2178
  %91 = load i16* %90, align 2, !dbg !2178
  %92 = zext i16 %91 to i32, !dbg !2178
  %93 = load %struct.XVtc_Signal** %2, align 4, !dbg !2178
  %94 = getelementptr inbounds %struct.XVtc_Signal* %93, i32 0, i32 4, !dbg !2178
  %95 = load i16* %94, align 2, !dbg !2178
  %96 = zext i16 %95 to i32, !dbg !2178
  %97 = sub nsw i32 %92, %96, !dbg !2178
  %98 = trunc i32 %97 to i16, !dbg !2178
  %99 = load %struct.XVtc_Timing** %5, align 4, !dbg !2178
  %100 = getelementptr inbounds %struct.XVtc_Timing* %99, i32 0, i32 3, !dbg !2178
  store i16 %98, i16* %100, align 2, !dbg !2178
  %101 = load %struct.XVtc_Signal** %2, align 4, !dbg !2179
  %102 = getelementptr inbounds %struct.XVtc_Signal* %101, i32 0, i32 7, !dbg !2179
  %103 = load i16* %102, align 2, !dbg !2179
  %104 = load %struct.XVtc_Timing** %5, align 4, !dbg !2179
  %105 = getelementptr inbounds %struct.XVtc_Timing* %104, i32 0, i32 5, !dbg !2179
  store i16 %103, i16* %105, align 2, !dbg !2179
  %106 = load %struct.XVtc_Signal** %2, align 4, !dbg !2180
  %107 = getelementptr inbounds %struct.XVtc_Signal* %106, i32 0, i32 8, !dbg !2180
  %108 = load i16* %107, align 2, !dbg !2180
  %109 = zext i16 %108 to i32, !dbg !2180
  %110 = load %struct.XVtc_Signal** %2, align 4, !dbg !2180
  %111 = getelementptr inbounds %struct.XVtc_Signal* %110, i32 0, i32 7, !dbg !2180
  %112 = load i16* %111, align 2, !dbg !2180
  %113 = zext i16 %112 to i32, !dbg !2180
  %114 = sub nsw i32 %109, %113, !dbg !2180
  %115 = add nsw i32 %114, 1, !dbg !2180
  %116 = trunc i32 %115 to i16, !dbg !2180
  %117 = load %struct.XVtc_Timing** %5, align 4, !dbg !2180
  %118 = getelementptr inbounds %struct.XVtc_Timing* %117, i32 0, i32 6, !dbg !2180
  store i16 %116, i16* %118, align 2, !dbg !2180
  %119 = load %struct.XVtc_Signal** %2, align 4, !dbg !2181
  %120 = getelementptr inbounds %struct.XVtc_Signal* %119, i32 0, i32 9, !dbg !2181
  %121 = load i16* %120, align 2, !dbg !2181
  %122 = zext i16 %121 to i32, !dbg !2181
  %123 = load %struct.XVtc_Signal** %2, align 4, !dbg !2181
  %124 = getelementptr inbounds %struct.XVtc_Signal* %123, i32 0, i32 8, !dbg !2181
  %125 = load i16* %124, align 2, !dbg !2181
  %126 = zext i16 %125 to i32, !dbg !2181
  %127 = sub nsw i32 %122, %126, !dbg !2181
  %128 = add nsw i32 %127, 1, !dbg !2181
  %129 = trunc i32 %128 to i16, !dbg !2181
  %130 = load %struct.XVtc_Timing** %5, align 4, !dbg !2181
  %131 = getelementptr inbounds %struct.XVtc_Timing* %130, i32 0, i32 7, !dbg !2181
  store i16 %129, i16* %131, align 2, !dbg !2181
  %132 = load %struct.XVtc_Signal** %2, align 4, !dbg !2182
  %133 = getelementptr inbounds %struct.XVtc_Signal* %132, i32 0, i32 6, !dbg !2182
  %134 = load i16* %133, align 2, !dbg !2182
  %135 = zext i16 %134 to i32, !dbg !2182
  %136 = load %struct.XVtc_Signal** %2, align 4, !dbg !2182
  %137 = getelementptr inbounds %struct.XVtc_Signal* %136, i32 0, i32 9, !dbg !2182
  %138 = load i16* %137, align 2, !dbg !2182
  %139 = zext i16 %138 to i32, !dbg !2182
  %140 = sub nsw i32 %135, %139, !dbg !2182
  %141 = trunc i32 %140 to i16, !dbg !2182
  %142 = load %struct.XVtc_Timing** %5, align 4, !dbg !2182
  %143 = getelementptr inbounds %struct.XVtc_Timing* %142, i32 0, i32 8, !dbg !2182
  store i16 %141, i16* %143, align 2, !dbg !2182
  %144 = load %struct.XVtc_Signal** %2, align 4, !dbg !2183
  %145 = getelementptr inbounds %struct.XVtc_Signal* %144, i32 0, i32 14, !dbg !2183
  %146 = load i16* %145, align 2, !dbg !2183
  %147 = zext i16 %146 to i32, !dbg !2183
  %148 = load %struct.XVtc_Signal** %2, align 4, !dbg !2183
  %149 = getelementptr inbounds %struct.XVtc_Signal* %148, i32 0, i32 13, !dbg !2183
  %150 = load i16* %149, align 2, !dbg !2183
  %151 = zext i16 %150 to i32, !dbg !2183
  %152 = sub nsw i32 %147, %151, !dbg !2183
  %153 = add nsw i32 %152, 1, !dbg !2183
  %154 = trunc i32 %153 to i16, !dbg !2183
  %155 = load %struct.XVtc_Timing** %5, align 4, !dbg !2183
  %156 = getelementptr inbounds %struct.XVtc_Timing* %155, i32 0, i32 9, !dbg !2183
  store i16 %154, i16* %156, align 2, !dbg !2183
  %157 = load %struct.XVtc_Signal** %2, align 4, !dbg !2184
  %158 = getelementptr inbounds %struct.XVtc_Signal* %157, i32 0, i32 15, !dbg !2184
  %159 = load i16* %158, align 2, !dbg !2184
  %160 = zext i16 %159 to i32, !dbg !2184
  %161 = load %struct.XVtc_Signal** %2, align 4, !dbg !2184
  %162 = getelementptr inbounds %struct.XVtc_Signal* %161, i32 0, i32 14, !dbg !2184
  %163 = load i16* %162, align 2, !dbg !2184
  %164 = zext i16 %163 to i32, !dbg !2184
  %165 = sub nsw i32 %160, %164, !dbg !2184
  %166 = add nsw i32 %165, 1, !dbg !2184
  %167 = trunc i32 %166 to i16, !dbg !2184
  %168 = load %struct.XVtc_Timing** %5, align 4, !dbg !2184
  %169 = getelementptr inbounds %struct.XVtc_Timing* %168, i32 0, i32 10, !dbg !2184
  store i16 %167, i16* %169, align 2, !dbg !2184
  %170 = load %struct.XVtc_Signal** %2, align 4, !dbg !2185
  %171 = getelementptr inbounds %struct.XVtc_Signal* %170, i32 0, i32 12, !dbg !2185
  %172 = load i16* %171, align 2, !dbg !2185
  %173 = zext i16 %172 to i32, !dbg !2185
  %174 = load %struct.XVtc_Signal** %2, align 4, !dbg !2185
  %175 = getelementptr inbounds %struct.XVtc_Signal* %174, i32 0, i32 15, !dbg !2185
  %176 = load i16* %175, align 2, !dbg !2185
  %177 = zext i16 %176 to i32, !dbg !2185
  %178 = sub nsw i32 %173, %177, !dbg !2185
  %179 = trunc i32 %178 to i16, !dbg !2185
  %180 = load %struct.XVtc_Timing** %5, align 4, !dbg !2185
  %181 = getelementptr inbounds %struct.XVtc_Timing* %180, i32 0, i32 11, !dbg !2185
  store i16 %179, i16* %181, align 2, !dbg !2185
  %182 = load %struct.XVtc_Signal** %2, align 4, !dbg !2186
  %183 = getelementptr inbounds %struct.XVtc_Signal* %182, i32 0, i32 18, !dbg !2186
  %184 = load i8* %183, align 1, !dbg !2186
  %185 = load %struct.XVtc_Timing** %5, align 4, !dbg !2186
  %186 = getelementptr inbounds %struct.XVtc_Timing* %185, i32 0, i32 13, !dbg !2186
  store i8 %184, i8* %186, align 1, !dbg !2186
  br label %187, !dbg !2187

; <label>:187                                     ; preds = %45, %44, %36, %31, %26, %21, %16, %9
  ret void, !dbg !2188
}

; Function Attrs: nounwind
define zeroext i16 @XVtc_ConvTiming2VideoMode(%struct.XVtc* %InstancePtr, %struct.XVtc_Timing* %TimingPtr) #0 {
  %1 = alloca i16, align 2
  %2 = alloca %struct.XVtc*, align 4
  %3 = alloca %struct.XVtc_Timing*, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %2}, metadata !2190), !dbg !2191
  store %struct.XVtc_Timing* %TimingPtr, %struct.XVtc_Timing** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing** %3}, metadata !2192), !dbg !2193
  %4 = load %struct.XVtc** %2, align 4, !dbg !2194
  %5 = icmp ne %struct.XVtc* %4, null, !dbg !2194
  br i1 %5, label %6, label %7, !dbg !2194

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2197
  br label %8, !dbg !2197

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2312), !dbg !2200
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2200
  store i16 0, i16* %1, !dbg !2200
  br label %199, !dbg !2200

; <label>:8                                       ; preds = %6
  %9 = load %struct.XVtc** %2, align 4, !dbg !2203
  %10 = getelementptr inbounds %struct.XVtc* %9, i32 0, i32 1, !dbg !2203
  %11 = load i32* %10, align 4, !dbg !2203
  %12 = icmp eq i32 %11, 286331153, !dbg !2203
  br i1 %12, label %13, label %14, !dbg !2203

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2206
  br label %15, !dbg !2206

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2313), !dbg !2209
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2209
  store i16 0, i16* %1, !dbg !2209
  br label %199, !dbg !2209

; <label>:15                                      ; preds = %13
  %16 = load %struct.XVtc_Timing** %3, align 4, !dbg !2212
  %17 = icmp ne %struct.XVtc_Timing* %16, null, !dbg !2212
  br i1 %17, label %18, label %19, !dbg !2212

; <label>:18                                      ; preds = %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2215
  br label %20, !dbg !2215

; <label>:19                                      ; preds = %15
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2314), !dbg !2218
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2218
  store i16 0, i16* %1, !dbg !2218
  br label %199, !dbg !2218

; <label>:20                                      ; preds = %18
  %21 = load %struct.XVtc_Timing** %3, align 4, !dbg !2221
  %22 = getelementptr inbounds %struct.XVtc_Timing* %21, i32 0, i32 13, !dbg !2221
  %23 = load i8* %22, align 1, !dbg !2221
  %24 = zext i8 %23 to i32, !dbg !2221
  %25 = icmp eq i32 %24, 0, !dbg !2221
  br i1 %25, label %26, label %156, !dbg !2221

; <label>:26                                      ; preds = %20
  %27 = load %struct.XVtc_Timing** %3, align 4, !dbg !2223
  %28 = getelementptr inbounds %struct.XVtc_Timing* %27, i32 0, i32 0, !dbg !2223
  %29 = load i16* %28, align 2, !dbg !2223
  %30 = zext i16 %29 to i32, !dbg !2223
  %31 = icmp eq i32 %30, 1280, !dbg !2223
  br i1 %31, label %32, label %48, !dbg !2223

; <label>:32                                      ; preds = %26
  %33 = load %struct.XVtc_Timing** %3, align 4, !dbg !2226
  %34 = getelementptr inbounds %struct.XVtc_Timing* %33, i32 0, i32 5, !dbg !2226
  %35 = load i16* %34, align 2, !dbg !2226
  %36 = zext i16 %35 to i32, !dbg !2226
  %37 = icmp eq i32 %36, 720, !dbg !2226
  br i1 %37, label %38, label %39, !dbg !2226

; <label>:38                                      ; preds = %32
  store i16 1, i16* %1, !dbg !2229
  br label %199, !dbg !2229

; <label>:39                                      ; preds = %32
  %40 = load %struct.XVtc_Timing** %3, align 4, !dbg !2231
  %41 = getelementptr inbounds %struct.XVtc_Timing* %40, i32 0, i32 5, !dbg !2231
  %42 = load i16* %41, align 2, !dbg !2231
  %43 = zext i16 %42 to i32, !dbg !2231
  %44 = icmp eq i32 %43, 1024, !dbg !2231
  br i1 %44, label %45, label %46, !dbg !2231

; <label>:45                                      ; preds = %39
  store i16 8, i16* %1, !dbg !2233
  br label %199, !dbg !2233

; <label>:46                                      ; preds = %39
  br label %47

; <label>:47                                      ; preds = %46
  br label %155, !dbg !2235

; <label>:48                                      ; preds = %26
  %49 = load %struct.XVtc_Timing** %3, align 4, !dbg !2236
  %50 = getelementptr inbounds %struct.XVtc_Timing* %49, i32 0, i32 0, !dbg !2236
  %51 = load i16* %50, align 2, !dbg !2236
  %52 = zext i16 %51 to i32, !dbg !2236
  %53 = icmp eq i32 %52, 1920, !dbg !2236
  br i1 %53, label %54, label %61, !dbg !2236

; <label>:54                                      ; preds = %48
  %55 = load %struct.XVtc_Timing** %3, align 4, !dbg !2238
  %56 = getelementptr inbounds %struct.XVtc_Timing* %55, i32 0, i32 5, !dbg !2238
  %57 = load i16* %56, align 2, !dbg !2238
  %58 = zext i16 %57 to i32, !dbg !2238
  %59 = icmp eq i32 %58, 1080, !dbg !2238
  br i1 %59, label %60, label %61, !dbg !2238

; <label>:60                                      ; preds = %54
  store i16 2, i16* %1, !dbg !2240
  br label %199, !dbg !2240

; <label>:61                                      ; preds = %54, %48
  %62 = load %struct.XVtc_Timing** %3, align 4, !dbg !2242
  %63 = getelementptr inbounds %struct.XVtc_Timing* %62, i32 0, i32 0, !dbg !2242
  %64 = load i16* %63, align 2, !dbg !2242
  %65 = zext i16 %64 to i32, !dbg !2242
  %66 = icmp eq i32 %65, 720, !dbg !2242
  br i1 %66, label %67, label %83, !dbg !2242

; <label>:67                                      ; preds = %61
  %68 = load %struct.XVtc_Timing** %3, align 4, !dbg !2244
  %69 = getelementptr inbounds %struct.XVtc_Timing* %68, i32 0, i32 5, !dbg !2244
  %70 = load i16* %69, align 2, !dbg !2244
  %71 = zext i16 %70 to i32, !dbg !2244
  %72 = icmp eq i32 %71, 480, !dbg !2244
  br i1 %72, label %73, label %74, !dbg !2244

; <label>:73                                      ; preds = %67
  store i16 3, i16* %1, !dbg !2247
  br label %199, !dbg !2247

; <label>:74                                      ; preds = %67
  %75 = load %struct.XVtc_Timing** %3, align 4, !dbg !2249
  %76 = getelementptr inbounds %struct.XVtc_Timing* %75, i32 0, i32 5, !dbg !2249
  %77 = load i16* %76, align 2, !dbg !2249
  %78 = zext i16 %77 to i32, !dbg !2249
  %79 = icmp eq i32 %78, 576, !dbg !2249
  br i1 %79, label %80, label %81, !dbg !2249

; <label>:80                                      ; preds = %74
  store i16 4, i16* %1, !dbg !2251
  br label %199, !dbg !2251

; <label>:81                                      ; preds = %74
  br label %82

; <label>:82                                      ; preds = %81
  br label %153, !dbg !2253

; <label>:83                                      ; preds = %61
  %84 = load %struct.XVtc_Timing** %3, align 4, !dbg !2254
  %85 = getelementptr inbounds %struct.XVtc_Timing* %84, i32 0, i32 0, !dbg !2254
  %86 = load i16* %85, align 2, !dbg !2254
  %87 = zext i16 %86 to i32, !dbg !2254
  %88 = icmp eq i32 %87, 656, !dbg !2254
  br i1 %88, label %89, label %96, !dbg !2254

; <label>:89                                      ; preds = %83
  %90 = load %struct.XVtc_Timing** %3, align 4, !dbg !2256
  %91 = getelementptr inbounds %struct.XVtc_Timing* %90, i32 0, i32 5, !dbg !2256
  %92 = load i16* %91, align 2, !dbg !2256
  %93 = zext i16 %92 to i32, !dbg !2256
  %94 = icmp eq i32 %93, 496, !dbg !2256
  br i1 %94, label %95, label %96, !dbg !2256

; <label>:95                                      ; preds = %89
  store i16 5, i16* %1, !dbg !2258
  br label %199, !dbg !2258

; <label>:96                                      ; preds = %89, %83
  %97 = load %struct.XVtc_Timing** %3, align 4, !dbg !2260
  %98 = getelementptr inbounds %struct.XVtc_Timing* %97, i32 0, i32 0, !dbg !2260
  %99 = load i16* %98, align 2, !dbg !2260
  %100 = zext i16 %99 to i32, !dbg !2260
  %101 = icmp eq i32 %100, 800, !dbg !2260
  br i1 %101, label %102, label %109, !dbg !2260

; <label>:102                                     ; preds = %96
  %103 = load %struct.XVtc_Timing** %3, align 4, !dbg !2262
  %104 = getelementptr inbounds %struct.XVtc_Timing* %103, i32 0, i32 5, !dbg !2262
  %105 = load i16* %104, align 2, !dbg !2262
  %106 = zext i16 %105 to i32, !dbg !2262
  %107 = icmp eq i32 %106, 600, !dbg !2262
  br i1 %107, label %108, label %109, !dbg !2262

; <label>:108                                     ; preds = %102
  store i16 6, i16* %1, !dbg !2264
  br label %199, !dbg !2264

; <label>:109                                     ; preds = %102, %96
  %110 = load %struct.XVtc_Timing** %3, align 4, !dbg !2266
  %111 = getelementptr inbounds %struct.XVtc_Timing* %110, i32 0, i32 0, !dbg !2266
  %112 = load i16* %111, align 2, !dbg !2266
  %113 = zext i16 %112 to i32, !dbg !2266
  %114 = icmp eq i32 %113, 1024, !dbg !2266
  br i1 %114, label %115, label %122, !dbg !2266

; <label>:115                                     ; preds = %109
  %116 = load %struct.XVtc_Timing** %3, align 4, !dbg !2268
  %117 = getelementptr inbounds %struct.XVtc_Timing* %116, i32 0, i32 5, !dbg !2268
  %118 = load i16* %117, align 2, !dbg !2268
  %119 = zext i16 %118 to i32, !dbg !2268
  %120 = icmp eq i32 %119, 768, !dbg !2268
  br i1 %120, label %121, label %122, !dbg !2268

; <label>:121                                     ; preds = %115
  store i16 7, i16* %1, !dbg !2270
  br label %199, !dbg !2270

; <label>:122                                     ; preds = %115, %109
  %123 = load %struct.XVtc_Timing** %3, align 4, !dbg !2272
  %124 = getelementptr inbounds %struct.XVtc_Timing* %123, i32 0, i32 0, !dbg !2272
  %125 = load i16* %124, align 2, !dbg !2272
  %126 = zext i16 %125 to i32, !dbg !2272
  %127 = icmp eq i32 %126, 1440, !dbg !2272
  br i1 %127, label %128, label %135, !dbg !2272

; <label>:128                                     ; preds = %122
  %129 = load %struct.XVtc_Timing** %3, align 4, !dbg !2274
  %130 = getelementptr inbounds %struct.XVtc_Timing* %129, i32 0, i32 5, !dbg !2274
  %131 = load i16* %130, align 2, !dbg !2274
  %132 = zext i16 %131 to i32, !dbg !2274
  %133 = icmp eq i32 %132, 900, !dbg !2274
  br i1 %133, label %134, label %135, !dbg !2274

; <label>:134                                     ; preds = %128
  store i16 9, i16* %1, !dbg !2276
  br label %199, !dbg !2276

; <label>:135                                     ; preds = %128, %122
  %136 = load %struct.XVtc_Timing** %3, align 4, !dbg !2278
  %137 = getelementptr inbounds %struct.XVtc_Timing* %136, i32 0, i32 0, !dbg !2278
  %138 = load i16* %137, align 2, !dbg !2278
  %139 = zext i16 %138 to i32, !dbg !2278
  %140 = icmp eq i32 %139, 1680, !dbg !2278
  br i1 %140, label %141, label %148, !dbg !2278

; <label>:141                                     ; preds = %135
  %142 = load %struct.XVtc_Timing** %3, align 4, !dbg !2280
  %143 = getelementptr inbounds %struct.XVtc_Timing* %142, i32 0, i32 5, !dbg !2280
  %144 = load i16* %143, align 2, !dbg !2280
  %145 = zext i16 %144 to i32, !dbg !2280
  %146 = icmp eq i32 %145, 1050, !dbg !2280
  br i1 %146, label %147, label %148, !dbg !2280

; <label>:147                                     ; preds = %141
  store i16 10, i16* %1, !dbg !2282
  br label %199, !dbg !2282

; <label>:148                                     ; preds = %141, %135
  br label %149

; <label>:149                                     ; preds = %148
  br label %150

; <label>:150                                     ; preds = %149
  br label %151

; <label>:151                                     ; preds = %150
  br label %152

; <label>:152                                     ; preds = %151
  br label %153

; <label>:153                                     ; preds = %152, %82
  br label %154

; <label>:154                                     ; preds = %153
  br label %155

; <label>:155                                     ; preds = %154, %47
  br label %198, !dbg !2284

; <label>:156                                     ; preds = %20
  %157 = load %struct.XVtc_Timing** %3, align 4, !dbg !2285
  %158 = getelementptr inbounds %struct.XVtc_Timing* %157, i32 0, i32 0, !dbg !2285
  %159 = load i16* %158, align 2, !dbg !2285
  %160 = zext i16 %159 to i32, !dbg !2285
  %161 = icmp eq i32 %160, 720, !dbg !2285
  br i1 %161, label %162, label %169, !dbg !2285

; <label>:162                                     ; preds = %156
  %163 = load %struct.XVtc_Timing** %3, align 4, !dbg !2288
  %164 = getelementptr inbounds %struct.XVtc_Timing* %163, i32 0, i32 5, !dbg !2288
  %165 = load i16* %164, align 2, !dbg !2288
  %166 = zext i16 %165 to i32, !dbg !2288
  %167 = icmp eq i32 %166, 240, !dbg !2288
  br i1 %167, label %168, label %169, !dbg !2288

; <label>:168                                     ; preds = %162
  store i16 101, i16* %1, !dbg !2290
  br label %199, !dbg !2290

; <label>:169                                     ; preds = %162, %156
  %170 = load %struct.XVtc_Timing** %3, align 4, !dbg !2292
  %171 = getelementptr inbounds %struct.XVtc_Timing* %170, i32 0, i32 0, !dbg !2292
  %172 = load i16* %171, align 2, !dbg !2292
  %173 = zext i16 %172 to i32, !dbg !2292
  %174 = icmp eq i32 %173, 1920, !dbg !2292
  br i1 %174, label %175, label %182, !dbg !2292

; <label>:175                                     ; preds = %169
  %176 = load %struct.XVtc_Timing** %3, align 4, !dbg !2294
  %177 = getelementptr inbounds %struct.XVtc_Timing* %176, i32 0, i32 5, !dbg !2294
  %178 = load i16* %177, align 2, !dbg !2294
  %179 = zext i16 %178 to i32, !dbg !2294
  %180 = icmp eq i32 %179, 540, !dbg !2294
  br i1 %180, label %181, label %182, !dbg !2294

; <label>:181                                     ; preds = %175
  store i16 100, i16* %1, !dbg !2296
  br label %199, !dbg !2296

; <label>:182                                     ; preds = %175, %169
  %183 = load %struct.XVtc_Timing** %3, align 4, !dbg !2298
  %184 = getelementptr inbounds %struct.XVtc_Timing* %183, i32 0, i32 0, !dbg !2298
  %185 = load i16* %184, align 2, !dbg !2298
  %186 = zext i16 %185 to i32, !dbg !2298
  %187 = icmp eq i32 %186, 720, !dbg !2298
  br i1 %187, label %188, label %195, !dbg !2298

; <label>:188                                     ; preds = %182
  %189 = load %struct.XVtc_Timing** %3, align 4, !dbg !2300
  %190 = getelementptr inbounds %struct.XVtc_Timing* %189, i32 0, i32 5, !dbg !2300
  %191 = load i16* %190, align 2, !dbg !2300
  %192 = zext i16 %191 to i32, !dbg !2300
  %193 = icmp eq i32 %192, 288, !dbg !2300
  br i1 %193, label %194, label %195, !dbg !2300

; <label>:194                                     ; preds = %188
  store i16 102, i16* %1, !dbg !2302
  br label %199, !dbg !2302

; <label>:195                                     ; preds = %188, %182
  br label %196

; <label>:196                                     ; preds = %195
  br label %197

; <label>:197                                     ; preds = %196
  br label %198

; <label>:198                                     ; preds = %197, %155
  store i16 0, i16* %1, !dbg !2304
  br label %199, !dbg !2304

; <label>:199                                     ; preds = %198, %194, %181, %168, %147, %134, %121, %108, %95, %80, %73, %60, %45, %38, %19, %14, %7
  %200 = load i16* %1, !dbg !2305
  ret i16 %200, !dbg !2305
}

; Function Attrs: nounwind
define void @XVtc_SetGeneratorTiming(%struct.XVtc* %InstancePtr, %struct.XVtc_Timing* %TimingPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Timing*, align 4
  %Polarity = alloca %struct.XVtc_Polarity, align 1
  %Signal = alloca %struct.XVtc_Signal, align 2
  %Hoff = alloca %struct.XVtc_HoriOffsets, align 2
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !2306), !dbg !2307
  store %struct.XVtc_Timing* %TimingPtr, %struct.XVtc_Timing** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing** %2}, metadata !2308), !dbg !2309
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Polarity* %Polarity}, metadata !2310), !dbg !2311
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal* %Signal}, metadata !2312), !dbg !2313
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets* %Hoff}, metadata !2314), !dbg !2315
  %3 = load %struct.XVtc** %1, align 4, !dbg !2316
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !2316
  br i1 %4, label %5, label %6, !dbg !2316

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2319
  br label %7, !dbg !2319

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2404), !dbg !2322
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2322
  br label %25, !dbg !2322

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !2325
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !2325
  %10 = load i32* %9, align 4, !dbg !2325
  %11 = icmp eq i32 %10, 286331153, !dbg !2325
  br i1 %11, label %12, label %13, !dbg !2325

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2328
  br label %14, !dbg !2328

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2405), !dbg !2331
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2331
  br label %25, !dbg !2331

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Timing** %2, align 4, !dbg !2334
  %16 = icmp ne %struct.XVtc_Timing* %15, null, !dbg !2334
  br i1 %16, label %17, label %18, !dbg !2334

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2337
  br label %19, !dbg !2337

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2406), !dbg !2340
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2340
  br label %25, !dbg !2340

; <label>:19                                      ; preds = %17
  %20 = load %struct.XVtc** %1, align 4, !dbg !2343
  %21 = load %struct.XVtc_Timing** %2, align 4, !dbg !2343
  call void @XVtc_ConvTiming2Signal(%struct.XVtc* %20, %struct.XVtc_Timing* %21, %struct.XVtc_Signal* %Signal, %struct.XVtc_HoriOffsets* %Hoff, %struct.XVtc_Polarity* %Polarity), !dbg !2343
  %22 = load %struct.XVtc** %1, align 4, !dbg !2344
  call void @XVtc_SetPolarity(%struct.XVtc* %22, %struct.XVtc_Polarity* %Polarity), !dbg !2344
  %23 = load %struct.XVtc** %1, align 4, !dbg !2345
  call void @XVtc_SetGenerator(%struct.XVtc* %23, %struct.XVtc_Signal* %Signal), !dbg !2345
  %24 = load %struct.XVtc** %1, align 4, !dbg !2346
  call void @XVtc_SetGeneratorHoriOffset(%struct.XVtc* %24, %struct.XVtc_HoriOffsets* %Hoff), !dbg !2346
  br label %25, !dbg !2347

; <label>:25                                      ; preds = %19, %18, %13, %6
  ret void, !dbg !2348
}

; Function Attrs: nounwind
define void @XVtc_SetGeneratorVideoMode(%struct.XVtc* %InstancePtr, i16 zeroext %Mode) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca i16, align 2
  %Timing = alloca %struct.XVtc_Timing, align 2
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !2350), !dbg !2351
  store i16 %Mode, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !2352), !dbg !2353
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing* %Timing}, metadata !2354), !dbg !2355
  %3 = load %struct.XVtc** %1, align 4, !dbg !2356
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !2356
  br i1 %4, label %5, label %6, !dbg !2356

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2359
  br label %7, !dbg !2359

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2435), !dbg !2362
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2362
  br label %18, !dbg !2362

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !2365
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !2365
  %10 = load i32* %9, align 4, !dbg !2365
  %11 = icmp eq i32 %10, 286331153, !dbg !2365
  br i1 %11, label %12, label %13, !dbg !2365

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2368
  br label %14, !dbg !2368

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2436), !dbg !2371
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2371
  br label %18, !dbg !2371

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc** %1, align 4, !dbg !2374
  %16 = load i16* %2, align 2, !dbg !2374
  call void @XVtc_ConvVideoMode2Timing(%struct.XVtc* %15, i16 zeroext %16, %struct.XVtc_Timing* %Timing), !dbg !2374
  %17 = load %struct.XVtc** %1, align 4, !dbg !2375
  call void @XVtc_SetGeneratorTiming(%struct.XVtc* %17, %struct.XVtc_Timing* %Timing), !dbg !2375
  br label %18, !dbg !2376

; <label>:18                                      ; preds = %14, %13, %6
  ret void, !dbg !2377
}

; Function Attrs: nounwind
define void @XVtc_GetGeneratorTiming(%struct.XVtc* %InstancePtr, %struct.XVtc_Timing* %TimingPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Timing*, align 4
  %Polarity = alloca %struct.XVtc_Polarity, align 1
  %Signal = alloca %struct.XVtc_Signal, align 2
  %Hoff = alloca %struct.XVtc_HoriOffsets, align 2
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !2379), !dbg !2380
  store %struct.XVtc_Timing* %TimingPtr, %struct.XVtc_Timing** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing** %2}, metadata !2381), !dbg !2382
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Polarity* %Polarity}, metadata !2383), !dbg !2384
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal* %Signal}, metadata !2385), !dbg !2386
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets* %Hoff}, metadata !2387), !dbg !2388
  %3 = load %struct.XVtc** %1, align 4, !dbg !2389
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !2389
  br i1 %4, label %5, label %6, !dbg !2389

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2392
  br label %7, !dbg !2392

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2467), !dbg !2395
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2395
  br label %26, !dbg !2395

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !2398
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !2398
  %10 = load i32* %9, align 4, !dbg !2398
  %11 = icmp eq i32 %10, 286331153, !dbg !2398
  br i1 %11, label %12, label %13, !dbg !2398

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2401
  br label %14, !dbg !2401

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2468), !dbg !2404
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2404
  br label %26, !dbg !2404

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Timing** %2, align 4, !dbg !2407
  %16 = icmp ne %struct.XVtc_Timing* %15, null, !dbg !2407
  br i1 %16, label %17, label %18, !dbg !2407

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2410
  br label %19, !dbg !2410

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2469), !dbg !2413
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2413
  br label %26, !dbg !2413

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds %struct.XVtc_Signal* %Signal, i32 0, i32 0, !dbg !2416
  store i16 1, i16* %20, align 2, !dbg !2416
  %21 = load %struct.XVtc** %1, align 4, !dbg !2417
  call void @XVtc_GetPolarity(%struct.XVtc* %21, %struct.XVtc_Polarity* %Polarity), !dbg !2417
  %22 = load %struct.XVtc** %1, align 4, !dbg !2418
  call void @XVtc_GetGeneratorHoriOffset(%struct.XVtc* %22, %struct.XVtc_HoriOffsets* %Hoff), !dbg !2418
  %23 = load %struct.XVtc** %1, align 4, !dbg !2419
  call void @XVtc_GetGenerator(%struct.XVtc* %23, %struct.XVtc_Signal* %Signal), !dbg !2419
  %24 = load %struct.XVtc** %1, align 4, !dbg !2420
  %25 = load %struct.XVtc_Timing** %2, align 4, !dbg !2420
  call void @XVtc_ConvSignal2Timing(%struct.XVtc* %24, %struct.XVtc_Signal* %Signal, %struct.XVtc_HoriOffsets* %Hoff, %struct.XVtc_Polarity* %Polarity, %struct.XVtc_Timing* %25), !dbg !2420
  br label %26, !dbg !2421

; <label>:26                                      ; preds = %19, %18, %13, %6
  ret void, !dbg !2422
}

; Function Attrs: nounwind
define zeroext i16 @XVtc_GetGeneratorVideoMode(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca i16, align 2
  %2 = alloca %struct.XVtc*, align 4
  %mode = alloca i16, align 2
  %Timing = alloca %struct.XVtc_Timing, align 2
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %2}, metadata !2424), !dbg !2425
  call void @llvm.dbg.declare(metadata !{i16* %mode}, metadata !2426), !dbg !2427
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing* %Timing}, metadata !2428), !dbg !2429
  %3 = load %struct.XVtc** %2, align 4, !dbg !2430
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !2430
  br i1 %4, label %5, label %6, !dbg !2430

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2433
  br label %7, !dbg !2433

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2503), !dbg !2436
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2436
  store i16 0, i16* %1, !dbg !2436
  br label %19, !dbg !2436

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %2, align 4, !dbg !2439
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !2439
  %10 = load i32* %9, align 4, !dbg !2439
  %11 = icmp eq i32 %10, 286331153, !dbg !2439
  br i1 %11, label %12, label %13, !dbg !2439

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2442
  br label %14, !dbg !2442

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2504), !dbg !2445
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2445
  store i16 0, i16* %1, !dbg !2445
  br label %19, !dbg !2445

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc** %2, align 4, !dbg !2448
  call void @XVtc_GetGeneratorTiming(%struct.XVtc* %15, %struct.XVtc_Timing* %Timing), !dbg !2448
  %16 = load %struct.XVtc** %2, align 4, !dbg !2449
  %17 = call zeroext i16 @XVtc_ConvTiming2VideoMode(%struct.XVtc* %16, %struct.XVtc_Timing* %Timing), !dbg !2449
  store i16 %17, i16* %mode, align 2, !dbg !2449
  %18 = load i16* %mode, align 2, !dbg !2450
  store i16 %18, i16* %1, !dbg !2450
  br label %19, !dbg !2450

; <label>:19                                      ; preds = %14, %13, %6
  %20 = load i16* %1, !dbg !2451
  ret i16 %20, !dbg !2451
}

; Function Attrs: nounwind
define void @XVtc_GetDetectorTiming(%struct.XVtc* %InstancePtr, %struct.XVtc_Timing* %TimingPtr) #0 {
  %1 = alloca %struct.XVtc*, align 4
  %2 = alloca %struct.XVtc_Timing*, align 4
  %Polarity = alloca %struct.XVtc_Polarity, align 1
  %Signal = alloca %struct.XVtc_Signal, align 2
  %Hoff = alloca %struct.XVtc_HoriOffsets, align 2
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %1}, metadata !2452), !dbg !2453
  store %struct.XVtc_Timing* %TimingPtr, %struct.XVtc_Timing** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing** %2}, metadata !2454), !dbg !2455
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Polarity* %Polarity}, metadata !2456), !dbg !2457
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Signal* %Signal}, metadata !2458), !dbg !2459
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_HoriOffsets* %Hoff}, metadata !2460), !dbg !2461
  %3 = load %struct.XVtc** %1, align 4, !dbg !2462
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !2462
  br i1 %4, label %5, label %6, !dbg !2462

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2465
  br label %7, !dbg !2465

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2534), !dbg !2468
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2468
  br label %26, !dbg !2468

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %1, align 4, !dbg !2471
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !2471
  %10 = load i32* %9, align 4, !dbg !2471
  %11 = icmp eq i32 %10, 286331153, !dbg !2471
  br i1 %11, label %12, label %13, !dbg !2471

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2474
  br label %14, !dbg !2474

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2535), !dbg !2477
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2477
  br label %26, !dbg !2477

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc_Timing** %2, align 4, !dbg !2480
  %16 = icmp ne %struct.XVtc_Timing* %15, null, !dbg !2480
  br i1 %16, label %17, label %18, !dbg !2480

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2483
  br label %19, !dbg !2483

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2536), !dbg !2486
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2486
  br label %26, !dbg !2486

; <label>:19                                      ; preds = %17
  %20 = getelementptr inbounds %struct.XVtc_Signal* %Signal, i32 0, i32 0, !dbg !2489
  store i16 1, i16* %20, align 2, !dbg !2489
  %21 = load %struct.XVtc** %1, align 4, !dbg !2490
  call void @XVtc_GetDetector(%struct.XVtc* %21, %struct.XVtc_Signal* %Signal), !dbg !2490
  %22 = load %struct.XVtc** %1, align 4, !dbg !2491
  call void @XVtc_GetDetectorPolarity(%struct.XVtc* %22, %struct.XVtc_Polarity* %Polarity), !dbg !2491
  %23 = load %struct.XVtc** %1, align 4, !dbg !2492
  call void @XVtc_GetDetectorHoriOffset(%struct.XVtc* %23, %struct.XVtc_HoriOffsets* %Hoff), !dbg !2492
  %24 = load %struct.XVtc** %1, align 4, !dbg !2493
  %25 = load %struct.XVtc_Timing** %2, align 4, !dbg !2493
  call void @XVtc_ConvSignal2Timing(%struct.XVtc* %24, %struct.XVtc_Signal* %Signal, %struct.XVtc_HoriOffsets* %Hoff, %struct.XVtc_Polarity* %Polarity, %struct.XVtc_Timing* %25), !dbg !2493
  br label %26, !dbg !2494

; <label>:26                                      ; preds = %19, %18, %13, %6
  ret void, !dbg !2495
}

; Function Attrs: nounwind
define zeroext i16 @XVtc_GetDetectorVideoMode(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca i16, align 2
  %2 = alloca %struct.XVtc*, align 4
  %mode = alloca i16, align 2
  %Timing = alloca %struct.XVtc_Timing, align 2
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %2}, metadata !2497), !dbg !2498
  call void @llvm.dbg.declare(metadata !{i16* %mode}, metadata !2499), !dbg !2500
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing* %Timing}, metadata !2501), !dbg !2502
  %3 = load %struct.XVtc** %2, align 4, !dbg !2503
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !2503
  br i1 %4, label %5, label %6, !dbg !2503

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2506
  br label %7, !dbg !2506

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2569), !dbg !2509
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2509
  store i16 0, i16* %1, !dbg !2509
  br label %19, !dbg !2509

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %2, align 4, !dbg !2512
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 1, !dbg !2512
  %10 = load i32* %9, align 4, !dbg !2512
  %11 = icmp eq i32 %10, 286331153, !dbg !2512
  br i1 %11, label %12, label %13, !dbg !2512

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !2515
  br label %14, !dbg !2515

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([52 x i8]* @.str, i32 0, i32 0), i32 2570), !dbg !2518
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !2518
  store i16 0, i16* %1, !dbg !2518
  br label %19, !dbg !2518

; <label>:14                                      ; preds = %12
  %15 = load %struct.XVtc** %2, align 4, !dbg !2521
  call void @XVtc_GetDetectorTiming(%struct.XVtc* %15, %struct.XVtc_Timing* %Timing), !dbg !2521
  %16 = load %struct.XVtc** %2, align 4, !dbg !2522
  %17 = call zeroext i16 @XVtc_ConvTiming2VideoMode(%struct.XVtc* %16, %struct.XVtc_Timing* %Timing), !dbg !2522
  store i16 %17, i16* %mode, align 2, !dbg !2522
  %18 = load i16* %mode, align 2, !dbg !2523
  store i16 %18, i16* %1, !dbg !2523
  br label %19, !dbg !2523

; <label>:19                                      ; preds = %14, %13, %6
  %20 = load i16* %1, !dbg !2524
  ret i16 %20, !dbg !2524
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !227, !231, !227, !232, !227, !233, !227, !234, !227, !235, !236, !237, !236, !238, !236, !239, !240, !241, !240, !242, !243, !244, !245, !246, !243, !247, !245, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !257, !259, !257, !260, !261, !262, !261, !263, !261, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !275, !279, !280, !281, !275, !282, !280}
!xidane.function_declaration_filename = !{!216, !283, !218, !284, !220, !285, !222, !285, !224, !286, !226, !283, !228, !286, !230, !283, !231, !283, !232, !283, !233, !283, !234, !283, !235, !283, !237, !283, !238, !283, !239, !283, !241, !283, !242, !283, !244, !283, !246, !283, !247, !283, !248, !283, !250, !283, !252, !283, !254, !283, !256, !283, !258, !283, !259, !283, !260, !283, !262, !283, !263, !283, !264, !283, !266, !283, !268, !283, !270, !283, !272, !283, !274, !283, !276, !283, !278, !283, !279, !283, !281, !283, !282, !283}
!xidane.ExternC = !{!216, !218, !224, !226, !228, !230, !231, !232, !233, !234, !235, !237, !238, !239, !241, !242, !244, !246, !247, !248, !250, !252, !254, !256, !258, !259, !260, !262, !263, !264, !266, !268, !270, !272, !274, !276, !278, !279, !281, !282}
!llvm.module.flags = !{!287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !46, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !71, metadata !72, metadata !73, metadata !99, metadata !100, metadata !103, metadata !107, metadata !108, metadata !109, metadata !112, metadata !115, metadata !118, metadata !122, metadata !137, metadata !138, metadata !139, metadata !165, metadata !166, metadata !167, metadata !170, metadata !191, metadata !194, metadata !197, metadata !200, metadata !203, metadata !206, metadata !207, metadata !210, metadata !211, metadata !212, metadata !213}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_CfgInitialize", metadata !"XVtc_CfgInitialize", metadata !"", i32 225, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XVtc*, %struct.XVtc_Config*, i32)* @XVtc_CfgInitialize, null, null, metadata !2, i32 227} ; [ DW_TAG_subprogram ] [line 225] [def] [scope 227] [XVtc_CfgInitialize]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !45, metadata !25}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc", i32 583, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [XVtc] [line 583, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!12 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 555, i64 416, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 555, size 416, align 32, offset 0] [def] [from ]
!13 = metadata !{metadata !14, metadata !28, metadata !29, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !44}
!14 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"Config", i32 556, i64 64, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [Config] [line 556, size 64, align 32, offset 0] [from XVtc_Config]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_Config", i32 372, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [XVtc_Config] [line 372, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 367, i64 64, i64 32, i32 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 367, size 64, align 32, offset 0] [def] [from ]
!17 = metadata !{metadata !18, metadata !24}
!18 = metadata !{i32 786445, metadata !11, metadata !16, metadata !"DeviceId", i32 368, i64 16, i64 16, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [DeviceId] [line 368, size 16, align 16, offset 0] [from u16]
!19 = metadata !{i32 786454, metadata !20, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!20 = metadata !{metadata !"../src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!21 = metadata !{i32 786454, metadata !22, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!22 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!23 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!24 = metadata !{i32 786445, metadata !11, metadata !16, metadata !"BaseAddress", i32 370, i64 32, i64 32, i64 32, i32 0, metadata !25} ; [ DW_TAG_member ] [BaseAddress] [line 370, size 32, align 32, offset 32] [from u32]
!25 = metadata !{i32 786454, metadata !20, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!26 = metadata !{i32 786454, metadata !22, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!27 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!28 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"IsReady", i32 557, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [IsReady] [line 557, size 32, align 32, offset 64] [from u32]
!29 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"FrameSyncCallBack", i32 561, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [FrameSyncCallBack] [line 561, size 32, align 32, offset 96] [from XVtc_CallBack]
!30 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_CallBack", i32 531, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [XVtc_CallBack] [line 531, size 0, align 0, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{null, metadata !34, metadata !25}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"FrameSyncRef", i32 563, i64 32, i64 32, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [FrameSyncRef] [line 563, size 32, align 32, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"LockCallBack", i32 566, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [LockCallBack] [line 566, size 32, align 32, offset 160] [from XVtc_CallBack]
!37 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"LockRef", i32 568, i64 32, i64 32, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [LockRef] [line 568, size 32, align 32, offset 192] [from ]
!38 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"DetectorCallBack", i32 571, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [DetectorCallBack] [line 571, size 32, align 32, offset 224] [from XVtc_CallBack]
!39 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"DetectorRef", i32 572, i64 32, i64 32, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [DetectorRef] [line 572, size 32, align 32, offset 256] [from ]
!40 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"GeneratorCallBack", i32 575, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [GeneratorCallBack] [line 575, size 32, align 32, offset 288] [from XVtc_CallBack]
!41 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"GeneratorRef", i32 577, i64 32, i64 32, i64 320, i32 0, metadata !34} ; [ DW_TAG_member ] [GeneratorRef] [line 577, size 32, align 32, offset 320] [from ]
!42 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"ErrCallBack", i32 580, i64 32, i64 32, i64 352, i32 0, metadata !43} ; [ DW_TAG_member ] [ErrCallBack] [line 580, size 32, align 32, offset 352] [from XVtc_ErrorCallBack]
!43 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_ErrorCallBack", i32 549, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [XVtc_ErrorCallBack] [line 549, size 0, align 0, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"ErrRef", i32 581, i64 32, i64 32, i64 384, i32 0, metadata !34} ; [ DW_TAG_member ] [ErrRef] [line 581, size 32, align 32, offset 384] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc_Config]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_EnableGenerator", metadata !"XVtc_EnableGenerator", metadata !"", i32 270, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*)* @XVtc_EnableGenerator, null, null, metadata !2, i32 271} ; [ DW_TAG_subprogram ] [line 270] [def] [scope 271] [XVtc_EnableGenerator]
!47 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !9}
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_EnableDetector", metadata !"XVtc_EnableDetector", metadata !"", i32 302, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*)* @XVtc_EnableDetector, null, null, metadata !2, i32 303} ; [ DW_TAG_subprogram ] [line 302] [def] [scope 303] [XVtc_EnableDetector]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_Enable", metadata !"XVtc_Enable", metadata !"", i32 335, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*)* @XVtc_Enable, null, null, metadata !2, i32 336} ; [ DW_TAG_subprogram ] [line 335] [def] [scope 336] [XVtc_Enable]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_DisableGenerator", metadata !"XVtc_DisableGenerator", metadata !"", i32 367, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*)* @XVtc_DisableGenerator, null, null, metadata !2, i32 368} ; [ DW_TAG_subprogram ] [line 367] [def] [scope 368] [XVtc_DisableGenerator]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_DisableDetector", metadata !"XVtc_DisableDetector", metadata !"", i32 401, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*)* @XVtc_DisableDetector, null, null, metadata !2, i32 402} ; [ DW_TAG_subprogram ] [line 401] [def] [scope 402] [XVtc_DisableDetector]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_Disable", metadata !"XVtc_Disable", metadata !"", i32 436, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*)* @XVtc_Disable, null, null, metadata !2, i32 437} ; [ DW_TAG_subprogram ] [line 436] [def] [scope 437] [XVtc_Disable]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetPolarity", metadata !"XVtc_SetPolarity", metadata !"", i32 470, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Polarity*)* @XVtc_SetPolarity, null, null, metadata !2, i32 471} ; [ DW_TAG_subprogram ] [line 470] [def] [scope 471] [XVtc_SetPolarity]
!55 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !9, metadata !57}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc_Polarity]
!58 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_Polarity", i32 386, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [XVtc_Polarity] [line 386, size 0, align 0, offset 0] [from ]
!59 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 377, i64 56, i64 8, i32 0, i32 0, null, metadata !60, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 377, size 56, align 8, offset 0] [def] [from ]
!60 = metadata !{metadata !61, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!61 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"ActiveChromaPol", i32 378, i64 8, i64 8, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [ActiveChromaPol] [line 378, size 8, align 8, offset 0] [from u8]
!62 = metadata !{i32 786454, metadata !20, null, metadata !"u8", i32 90, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [u8] [line 90, size 0, align 0, offset 0] [from u_int8_t]
!63 = metadata !{i32 786454, metadata !22, null, metadata !"u_int8_t", i32 200, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [u_int8_t] [line 200, size 0, align 0, offset 0] [from unsigned char]
!64 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!65 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"ActiveVideoPol", i32 379, i64 8, i64 8, i64 8, i32 0, metadata !62} ; [ DW_TAG_member ] [ActiveVideoPol] [line 379, size 8, align 8, offset 8] [from u8]
!66 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"FieldIdPol", i32 380, i64 8, i64 8, i64 16, i32 0, metadata !62} ; [ DW_TAG_member ] [FieldIdPol] [line 380, size 8, align 8, offset 16] [from u8]
!67 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"VBlankPol", i32 381, i64 8, i64 8, i64 24, i32 0, metadata !62} ; [ DW_TAG_member ] [VBlankPol] [line 381, size 8, align 8, offset 24] [from u8]
!68 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"VSyncPol", i32 382, i64 8, i64 8, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [VSyncPol] [line 382, size 8, align 8, offset 32] [from u8]
!69 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"HBlankPol", i32 383, i64 8, i64 8, i64 40, i32 0, metadata !62} ; [ DW_TAG_member ] [HBlankPol] [line 383, size 8, align 8, offset 40] [from u8]
!70 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"HSyncPol", i32 385, i64 8, i64 8, i64 48, i32 0, metadata !62} ; [ DW_TAG_member ] [HSyncPol] [line 385, size 8, align 8, offset 48] [from u8]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetPolarity", metadata !"XVtc_GetPolarity", metadata !"", i32 530, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Polarity*)* @XVtc_GetPolarity, null, null, metadata !2, i32 531} ; [ DW_TAG_subprogram ] [line 530] [def] [scope 531] [XVtc_GetPolarity]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetDetectorPolarity", metadata !"XVtc_GetDetectorPolarity", metadata !"", i32 587, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Polarity*)* @XVtc_GetDetectorPolarity, null, null, metadata !2, i32 588} ; [ DW_TAG_subprogram ] [line 587] [def] [scope 588] [XVtc_GetDetectorPolarity]
!73 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetSource", metadata !"XVtc_SetSource", metadata !"", i32 643, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_SourceSelect*)* @XVtc_SetSource, null, null, metadata !2, i32 644} ; [ DW_TAG_subprogram ] [line 643] [def] [scope 644] [XVtc_SetSource]
!74 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{null, metadata !9, metadata !76}
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc_SourceSelect]
!77 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_SourceSelect", i32 423, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [XVtc_SourceSelect] [line 423, size 0, align 0, offset 0] [from ]
!78 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 392, i64 152, i64 8, i32 0, i32 0, null, metadata !79, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 392, size 152, align 8, offset 0] [def] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!80 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"FieldIdPolSrc", i32 393, i64 8, i64 8, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [FieldIdPolSrc] [line 393, size 8, align 8, offset 0] [from u8]
!81 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"ActiveChromaPolSrc", i32 394, i64 8, i64 8, i64 8, i32 0, metadata !62} ; [ DW_TAG_member ] [ActiveChromaPolSrc] [line 394, size 8, align 8, offset 8] [from u8]
!82 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"ActiveVideoPolSrc", i32 395, i64 8, i64 8, i64 16, i32 0, metadata !62} ; [ DW_TAG_member ] [ActiveVideoPolSrc] [line 395, size 8, align 8, offset 16] [from u8]
!83 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"HSyncPolSrc", i32 396, i64 8, i64 8, i64 24, i32 0, metadata !62} ; [ DW_TAG_member ] [HSyncPolSrc] [line 396, size 8, align 8, offset 24] [from u8]
!84 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"VSyncPolSrc", i32 397, i64 8, i64 8, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [VSyncPolSrc] [line 397, size 8, align 8, offset 32] [from u8]
!85 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"HBlankPolSrc", i32 398, i64 8, i64 8, i64 40, i32 0, metadata !62} ; [ DW_TAG_member ] [HBlankPolSrc] [line 398, size 8, align 8, offset 40] [from u8]
!86 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"VBlankPolSrc", i32 399, i64 8, i64 8, i64 48, i32 0, metadata !62} ; [ DW_TAG_member ] [VBlankPolSrc] [line 399, size 8, align 8, offset 48] [from u8]
!87 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"VChromaSrc", i32 401, i64 8, i64 8, i64 56, i32 0, metadata !62} ; [ DW_TAG_member ] [VChromaSrc] [line 401, size 8, align 8, offset 56] [from u8]
!88 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"VActiveSrc", i32 403, i64 8, i64 8, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [VActiveSrc] [line 403, size 8, align 8, offset 64] [from u8]
!89 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"VBackPorchSrc", i32 405, i64 8, i64 8, i64 72, i32 0, metadata !62} ; [ DW_TAG_member ] [VBackPorchSrc] [line 405, size 8, align 8, offset 72] [from u8]
!90 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"VSyncSrc", i32 407, i64 8, i64 8, i64 80, i32 0, metadata !62} ; [ DW_TAG_member ] [VSyncSrc] [line 407, size 8, align 8, offset 80] [from u8]
!91 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"VFrontPorchSrc", i32 409, i64 8, i64 8, i64 88, i32 0, metadata !62} ; [ DW_TAG_member ] [VFrontPorchSrc] [line 409, size 8, align 8, offset 88] [from u8]
!92 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"VTotalSrc", i32 411, i64 8, i64 8, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [VTotalSrc] [line 411, size 8, align 8, offset 96] [from u8]
!93 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"HActiveSrc", i32 412, i64 8, i64 8, i64 104, i32 0, metadata !62} ; [ DW_TAG_member ] [HActiveSrc] [line 412, size 8, align 8, offset 104] [from u8]
!94 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"HBackPorchSrc", i32 414, i64 8, i64 8, i64 112, i32 0, metadata !62} ; [ DW_TAG_member ] [HBackPorchSrc] [line 414, size 8, align 8, offset 112] [from u8]
!95 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"HSyncSrc", i32 416, i64 8, i64 8, i64 120, i32 0, metadata !62} ; [ DW_TAG_member ] [HSyncSrc] [line 416, size 8, align 8, offset 120] [from u8]
!96 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"HFrontPorchSrc", i32 418, i64 8, i64 8, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [HFrontPorchSrc] [line 418, size 8, align 8, offset 128] [from u8]
!97 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"HTotalSrc", i32 420, i64 8, i64 8, i64 136, i32 0, metadata !62} ; [ DW_TAG_member ] [HTotalSrc] [line 420, size 8, align 8, offset 136] [from u8]
!98 = metadata !{i32 786445, metadata !11, metadata !78, metadata !"InterlacedMode", i32 421, i64 8, i64 8, i64 144, i32 0, metadata !62} ; [ DW_TAG_member ] [InterlacedMode] [line 421, size 8, align 8, offset 144] [from u8]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetSource", metadata !"XVtc_GetSource", metadata !"", i32 738, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_SourceSelect*)* @XVtc_GetSource, null, null, metadata !2, i32 739} ; [ DW_TAG_subprogram ] [line 738] [def] [scope 739] [XVtc_GetSource]
!100 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetSkipLine", metadata !"XVtc_SetSkipLine", metadata !"", i32 813, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i32)* @XVtc_SetSkipLine, null, null, metadata !2, i32 814} ; [ DW_TAG_subprogram ] [line 813] [def] [scope 814] [XVtc_SetSkipLine]
!101 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{null, metadata !9, metadata !8}
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetSkipLine", metadata !"XVtc_GetSkipLine", metadata !"", i32 855, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i32*)* @XVtc_GetSkipLine, null, null, metadata !2, i32 856} ; [ DW_TAG_subprogram ] [line 855] [def] [scope 856] [XVtc_GetSkipLine]
!104 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !9, metadata !106}
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!107 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetSkipPixel", metadata !"XVtc_SetSkipPixel", metadata !"", i32 894, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i32)* @XVtc_SetSkipPixel, null, null, metadata !2, i32 895} ; [ DW_TAG_subprogram ] [line 894] [def] [scope 895] [XVtc_SetSkipPixel]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetSkipPixel", metadata !"XVtc_GetSkipPixel", metadata !"", i32 936, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i32*)* @XVtc_GetSkipPixel, null, null, metadata !2, i32 937} ; [ DW_TAG_subprogram ] [line 936] [def] [scope 937] [XVtc_GetSkipPixel]
!109 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetDelay", metadata !"XVtc_SetDelay", metadata !"", i32 976, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i32, i32)* @XVtc_SetDelay, null, null, metadata !2, i32 977} ; [ DW_TAG_subprogram ] [line 976] [def] [scope 977] [XVtc_SetDelay]
!110 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{null, metadata !9, metadata !8, metadata !8}
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetDelay", metadata !"XVtc_GetDelay", metadata !"", i32 1017, metadata !113, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i32*, i32*)* @XVtc_GetDelay, null, null, metadata !2, i32 1018} ; [ DW_TAG_subprogram ] [line 1017] [def] [scope 1018] [XVtc_GetDelay]
!113 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{null, metadata !9, metadata !106, metadata !106}
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetFSync", metadata !"XVtc_SetFSync", metadata !"", i32 1057, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i16, i16, i16)* @XVtc_SetFSync, null, null, metadata !2, i32 1059} ; [ DW_TAG_subprogram ] [line 1057] [def] [scope 1059] [XVtc_SetFSync]
!116 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{null, metadata !9, metadata !19, metadata !19, metadata !19}
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetFSync", metadata !"XVtc_GetFSync", metadata !"", i32 1101, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i16, i16*, i16*)* @XVtc_GetFSync, null, null, metadata !2, i32 1103} ; [ DW_TAG_subprogram ] [line 1101] [def] [scope 1103] [XVtc_GetFSync]
!119 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{null, metadata !9, metadata !19, metadata !121, metadata !121}
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u16]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetGeneratorHoriOffset", metadata !"XVtc_SetGeneratorHoriOffset", metadata !"", i32 1137, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_HoriOffsets*)* @XVtc_SetGeneratorHoriOffset, null, null, metadata !2, i32 1139} ; [ DW_TAG_subprogram ] [line 1137] [def] [scope 1139] [XVtc_SetGeneratorHoriOffset]
!123 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{null, metadata !9, metadata !125}
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc_HoriOffsets]
!126 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_HoriOffsets", i32 486, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [XVtc_HoriOffsets] [line 486, size 0, align 0, offset 0] [from ]
!127 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 469, i64 128, i64 16, i32 0, i32 0, null, metadata !128, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 469, size 128, align 16, offset 0] [def] [from ]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136}
!129 = metadata !{i32 786445, metadata !11, metadata !127, metadata !"V0BlankHoriStart", i32 470, i64 16, i64 16, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [V0BlankHoriStart] [line 470, size 16, align 16, offset 0] [from u16]
!130 = metadata !{i32 786445, metadata !11, metadata !127, metadata !"V0BlankHoriEnd", i32 472, i64 16, i64 16, i64 16, i32 0, metadata !19} ; [ DW_TAG_member ] [V0BlankHoriEnd] [line 472, size 16, align 16, offset 16] [from u16]
!131 = metadata !{i32 786445, metadata !11, metadata !127, metadata !"V0SyncHoriStart", i32 474, i64 16, i64 16, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [V0SyncHoriStart] [line 474, size 16, align 16, offset 32] [from u16]
!132 = metadata !{i32 786445, metadata !11, metadata !127, metadata !"V0SyncHoriEnd", i32 476, i64 16, i64 16, i64 48, i32 0, metadata !19} ; [ DW_TAG_member ] [V0SyncHoriEnd] [line 476, size 16, align 16, offset 48] [from u16]
!133 = metadata !{i32 786445, metadata !11, metadata !127, metadata !"V1BlankHoriStart", i32 478, i64 16, i64 16, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [V1BlankHoriStart] [line 478, size 16, align 16, offset 64] [from u16]
!134 = metadata !{i32 786445, metadata !11, metadata !127, metadata !"V1BlankHoriEnd", i32 480, i64 16, i64 16, i64 80, i32 0, metadata !19} ; [ DW_TAG_member ] [V1BlankHoriEnd] [line 480, size 16, align 16, offset 80] [from u16]
!135 = metadata !{i32 786445, metadata !11, metadata !127, metadata !"V1SyncHoriStart", i32 482, i64 16, i64 16, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [V1SyncHoriStart] [line 482, size 16, align 16, offset 96] [from u16]
!136 = metadata !{i32 786445, metadata !11, metadata !127, metadata !"V1SyncHoriEnd", i32 484, i64 16, i64 16, i64 112, i32 0, metadata !19} ; [ DW_TAG_member ] [V1SyncHoriEnd] [line 484, size 16, align 16, offset 112] [from u16]
!137 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetGeneratorHoriOffset", metadata !"XVtc_GetGeneratorHoriOffset", metadata !"", i32 1202, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_HoriOffsets*)* @XVtc_GetGeneratorHoriOffset, null, null, metadata !2, i32 1204} ; [ DW_TAG_subprogram ] [line 1202] [def] [scope 1204] [XVtc_GetGeneratorHoriOffset]
!138 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetDetectorHoriOffset", metadata !"XVtc_GetDetectorHoriOffset", metadata !"", i32 1259, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_HoriOffsets*)* @XVtc_GetDetectorHoriOffset, null, null, metadata !2, i32 1261} ; [ DW_TAG_subprogram ] [line 1259] [def] [scope 1261] [XVtc_GetDetectorHoriOffset]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetGenerator", metadata !"XVtc_SetGenerator", metadata !"", i32 1314, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Signal*)* @XVtc_SetGenerator, null, null, metadata !2, i32 1315} ; [ DW_TAG_subprogram ] [line 1314] [def] [scope 1315] [XVtc_SetGenerator]
!140 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{null, metadata !9, metadata !142}
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc_Signal]
!143 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_Signal", i32 463, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [XVtc_Signal] [line 463, size 0, align 0, offset 0] [from ]
!144 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 429, i64 304, i64 16, i32 0, i32 0, null, metadata !145, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 429, size 304, align 16, offset 0] [def] [from ]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164}
!146 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"OriginMode", i32 430, i64 16, i64 16, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [OriginMode] [line 430, size 16, align 16, offset 0] [from u16]
!147 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"HTotal", i32 431, i64 16, i64 16, i64 16, i32 0, metadata !19} ; [ DW_TAG_member ] [HTotal] [line 431, size 16, align 16, offset 16] [from u16]
!148 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"HFrontPorchStart", i32 432, i64 16, i64 16, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [HFrontPorchStart] [line 432, size 16, align 16, offset 32] [from u16]
!149 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"HSyncStart", i32 434, i64 16, i64 16, i64 48, i32 0, metadata !19} ; [ DW_TAG_member ] [HSyncStart] [line 434, size 16, align 16, offset 48] [from u16]
!150 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"HBackPorchStart", i32 435, i64 16, i64 16, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [HBackPorchStart] [line 435, size 16, align 16, offset 64] [from u16]
!151 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"HActiveStart", i32 436, i64 16, i64 16, i64 80, i32 0, metadata !19} ; [ DW_TAG_member ] [HActiveStart] [line 436, size 16, align 16, offset 80] [from u16]
!152 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V0Total", i32 439, i64 16, i64 16, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [V0Total] [line 439, size 16, align 16, offset 96] [from u16]
!153 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V0FrontPorchStart", i32 440, i64 16, i64 16, i64 112, i32 0, metadata !19} ; [ DW_TAG_member ] [V0FrontPorchStart] [line 440, size 16, align 16, offset 112] [from u16]
!154 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V0SyncStart", i32 442, i64 16, i64 16, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [V0SyncStart] [line 442, size 16, align 16, offset 128] [from u16]
!155 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V0BackPorchStart", i32 444, i64 16, i64 16, i64 144, i32 0, metadata !19} ; [ DW_TAG_member ] [V0BackPorchStart] [line 444, size 16, align 16, offset 144] [from u16]
!156 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V0ActiveStart", i32 446, i64 16, i64 16, i64 160, i32 0, metadata !19} ; [ DW_TAG_member ] [V0ActiveStart] [line 446, size 16, align 16, offset 160] [from u16]
!157 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V0ChromaStart", i32 448, i64 16, i64 16, i64 176, i32 0, metadata !19} ; [ DW_TAG_member ] [V0ChromaStart] [line 448, size 16, align 16, offset 176] [from u16]
!158 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V1Total", i32 451, i64 16, i64 16, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [V1Total] [line 451, size 16, align 16, offset 192] [from u16]
!159 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V1FrontPorchStart", i32 452, i64 16, i64 16, i64 208, i32 0, metadata !19} ; [ DW_TAG_member ] [V1FrontPorchStart] [line 452, size 16, align 16, offset 208] [from u16]
!160 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V1SyncStart", i32 454, i64 16, i64 16, i64 224, i32 0, metadata !19} ; [ DW_TAG_member ] [V1SyncStart] [line 454, size 16, align 16, offset 224] [from u16]
!161 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V1BackPorchStart", i32 456, i64 16, i64 16, i64 240, i32 0, metadata !19} ; [ DW_TAG_member ] [V1BackPorchStart] [line 456, size 16, align 16, offset 240] [from u16]
!162 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V1ActiveStart", i32 458, i64 16, i64 16, i64 256, i32 0, metadata !19} ; [ DW_TAG_member ] [V1ActiveStart] [line 458, size 16, align 16, offset 256] [from u16]
!163 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"V1ChromaStart", i32 460, i64 16, i64 16, i64 272, i32 0, metadata !19} ; [ DW_TAG_member ] [V1ChromaStart] [line 460, size 16, align 16, offset 272] [from u16]
!164 = metadata !{i32 786445, metadata !11, metadata !144, metadata !"Interlaced", i32 462, i64 8, i64 8, i64 288, i32 0, metadata !62} ; [ DW_TAG_member ] [Interlaced] [line 462, size 8, align 8, offset 288] [from u8]
!165 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetGenerator", metadata !"XVtc_GetGenerator", metadata !"", i32 1502, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Signal*)* @XVtc_GetGenerator, null, null, metadata !2, i32 1503} ; [ DW_TAG_subprogram ] [line 1502] [def] [scope 1503] [XVtc_GetGenerator]
!166 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetDetector", metadata !"XVtc_GetDetector", metadata !"", i32 1635, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Signal*)* @XVtc_GetDetector, null, null, metadata !2, i32 1636} ; [ DW_TAG_subprogram ] [line 1635] [def] [scope 1636] [XVtc_GetDetector]
!167 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetVersion", metadata !"XVtc_GetVersion", metadata !"", i32 1791, metadata !168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XVtc*)* @XVtc_GetVersion, null, null, metadata !2, i32 1792} ; [ DW_TAG_subprogram ] [line 1791] [def] [scope 1792] [XVtc_GetVersion]
!168 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!169 = metadata !{metadata !25, metadata !9}
!170 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_ConvVideoMode2Timing", metadata !"XVtc_ConvVideoMode2Timing", metadata !"", i32 1822, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i16, %struct.XVtc_Timing*)* @XVtc_ConvVideoMode2Timing, null, null, metadata !2, i32 1824} ; [ DW_TAG_subprogram ] [line 1822] [def] [scope 1824] [XVtc_ConvVideoMode2Timing]
!171 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{null, metadata !9, metadata !19, metadata !173}
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !174} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc_Timing]
!174 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_Timing", i32 513, i64 0, i64 0, i64 0, i32 0, metadata !175} ; [ DW_TAG_typedef ] [XVtc_Timing] [line 513, size 0, align 0, offset 0] [from ]
!175 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 492, i64 224, i64 16, i32 0, i32 0, null, metadata !176, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 492, size 224, align 16, offset 0] [def] [from ]
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190}
!177 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"HActiveVideo", i32 494, i64 16, i64 16, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [HActiveVideo] [line 494, size 16, align 16, offset 0] [from u16]
!178 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"HFrontPorch", i32 495, i64 16, i64 16, i64 16, i32 0, metadata !19} ; [ DW_TAG_member ] [HFrontPorch] [line 495, size 16, align 16, offset 16] [from u16]
!179 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"HSyncWidth", i32 496, i64 16, i64 16, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [HSyncWidth] [line 496, size 16, align 16, offset 32] [from u16]
!180 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"HBackPorch", i32 497, i64 16, i64 16, i64 48, i32 0, metadata !19} ; [ DW_TAG_member ] [HBackPorch] [line 497, size 16, align 16, offset 48] [from u16]
!181 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"HSyncPolarity", i32 498, i64 16, i64 16, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [HSyncPolarity] [line 498, size 16, align 16, offset 64] [from u16]
!182 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"VActiveVideo", i32 501, i64 16, i64 16, i64 80, i32 0, metadata !19} ; [ DW_TAG_member ] [VActiveVideo] [line 501, size 16, align 16, offset 80] [from u16]
!183 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"V0FrontPorch", i32 502, i64 16, i64 16, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [V0FrontPorch] [line 502, size 16, align 16, offset 96] [from u16]
!184 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"V0SyncWidth", i32 503, i64 16, i64 16, i64 112, i32 0, metadata !19} ; [ DW_TAG_member ] [V0SyncWidth] [line 503, size 16, align 16, offset 112] [from u16]
!185 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"V0BackPorch", i32 504, i64 16, i64 16, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [V0BackPorch] [line 504, size 16, align 16, offset 128] [from u16]
!186 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"V1FrontPorch", i32 506, i64 16, i64 16, i64 144, i32 0, metadata !19} ; [ DW_TAG_member ] [V1FrontPorch] [line 506, size 16, align 16, offset 144] [from u16]
!187 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"V1SyncWidth", i32 507, i64 16, i64 16, i64 160, i32 0, metadata !19} ; [ DW_TAG_member ] [V1SyncWidth] [line 507, size 16, align 16, offset 160] [from u16]
!188 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"V1BackPorch", i32 508, i64 16, i64 16, i64 176, i32 0, metadata !19} ; [ DW_TAG_member ] [V1BackPorch] [line 508, size 16, align 16, offset 176] [from u16]
!189 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"VSyncPolarity", i32 510, i64 16, i64 16, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [VSyncPolarity] [line 510, size 16, align 16, offset 192] [from u16]
!190 = metadata !{i32 786445, metadata !11, metadata !175, metadata !"Interlaced", i32 512, i64 8, i64 8, i64 208, i32 0, metadata !62} ; [ DW_TAG_member ] [Interlaced] [line 512, size 8, align 8, offset 208] [from u8]
!191 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_ConvTiming2Signal", metadata !"XVtc_ConvTiming2Signal", metadata !"", i32 2116, metadata !192, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Timing*, %struct.XVtc_Signal*, %struct.XVtc_HoriOffsets*, %struct.XVtc_Polarity*)* @XVtc_ConvTiming2Signal, null, null, metadata !2, i32 2119} ; [ DW_TAG_subprogram ] [line 2116] [def] [scope 2119] [XVtc_ConvTiming2Signal]
!192 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!193 = metadata !{null, metadata !9, metadata !173, metadata !142, metadata !125, metadata !57}
!194 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_ConvSignal2Timing", metadata !"XVtc_ConvSignal2Timing", metadata !"", i32 2240, metadata !195, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Signal*, %struct.XVtc_HoriOffsets*, %struct.XVtc_Polarity*, %struct.XVtc_Timing*)* @XVtc_ConvSignal2Timing, null, null, metadata !2, i32 2244} ; [ DW_TAG_subprogram ] [line 2240] [def] [scope 2244] [XVtc_ConvSignal2Timing]
!195 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!196 = metadata !{null, metadata !9, metadata !142, metadata !125, metadata !57, metadata !173}
!197 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_ConvTiming2VideoMode", metadata !"XVtc_ConvTiming2VideoMode", metadata !"", i32 2309, metadata !198, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_ConvTiming2VideoMode, null, null, metadata !2, i32 2310} ; [ DW_TAG_subprogram ] [line 2309] [def] [scope 2310] [XVtc_ConvTiming2VideoMode]
!198 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!199 = metadata !{metadata !19, metadata !9, metadata !173}
!200 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetGeneratorTiming", metadata !"XVtc_SetGeneratorTiming", metadata !"", i32 2397, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_SetGeneratorTiming, null, null, metadata !2, i32 2398} ; [ DW_TAG_subprogram ] [line 2397] [def] [scope 2398] [XVtc_SetGeneratorTiming]
!201 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{null, metadata !9, metadata !173}
!203 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetGeneratorVideoMode", metadata !"XVtc_SetGeneratorVideoMode", metadata !"", i32 2430, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, i16)* @XVtc_SetGeneratorVideoMode, null, null, metadata !2, i32 2431} ; [ DW_TAG_subprogram ] [line 2430] [def] [scope 2431] [XVtc_SetGeneratorVideoMode]
!204 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{null, metadata !9, metadata !19}
!206 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetGeneratorTiming", metadata !"XVtc_GetGeneratorTiming", metadata !"", i32 2459, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_GetGeneratorTiming, null, null, metadata !2, i32 2460} ; [ DW_TAG_subprogram ] [line 2459] [def] [scope 2460] [XVtc_GetGeneratorTiming]
!207 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetGeneratorVideoMode", metadata !"XVtc_GetGeneratorVideoMode", metadata !"", i32 2496, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (%struct.XVtc*)* @XVtc_GetGeneratorVideoMode, null, null, metadata !2, i32 2497} ; [ DW_TAG_subprogram ] [line 2496] [def] [scope 2497] [XVtc_GetGeneratorVideoMode]
!208 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !19, metadata !9}
!210 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetDetectorTiming", metadata !"XVtc_GetDetectorTiming", metadata !"", i32 2527, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_GetDetectorTiming, null, null, metadata !2, i32 2528} ; [ DW_TAG_subprogram ] [line 2527] [def] [scope 2528] [XVtc_GetDetectorTiming]
!211 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_GetDetectorVideoMode", metadata !"XVtc_GetDetectorVideoMode", metadata !"", i32 2563, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (%struct.XVtc*)* @XVtc_GetDetectorVideoMode, null, null, metadata !2, i32 2564} ; [ DW_TAG_subprogram ] [line 2563] [def] [scope 2564] [XVtc_GetDetectorVideoMode]
!212 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"StubErrCallBack", metadata !"StubErrCallBack", metadata !"", i32 2622, metadata !32, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32)* @StubErrCallBack, null, null, metadata !2, i32 2623} ; [ DW_TAG_subprogram ] [line 2622] [local] [def] [scope 2623] [StubErrCallBack]
!213 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"StubCallBack", metadata !"StubCallBack", metadata !"", i32 2596, metadata !214, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @StubCallBack, null, null, metadata !2, i32 2597} ; [ DW_TAG_subprogram ] [line 2596] [local] [def] [scope 2597] [StubCallBack]
!214 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{null, metadata !34}
!216 = metadata !{i32 (%struct.XVtc*, %struct.XVtc_Config*, i32)* @XVtc_CfgInitialize}
!217 = metadata !{metadata !"int.XVtc *.1.XVtc_Config *.1.u32.0"}
!218 = metadata !{void (i8*, i32)* @Xil_Assert}
!219 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!220 = metadata !{void (i8*)* @StubCallBack}
!221 = metadata !{metadata !"void.void *.1"}
!222 = metadata !{void (i8*, i32)* @StubErrCallBack}
!223 = metadata !{metadata !"void.void *.1.u32.0"}
!224 = metadata !{void (i32, i32)* @Xil_Out32}
!225 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!226 = metadata !{void (%struct.XVtc*)* @XVtc_EnableGenerator}
!227 = metadata !{metadata !"void.XVtc *.1"}
!228 = metadata !{i32 (i32)* @Xil_In32}
!229 = metadata !{metadata !"u32.INTPTR.0"}
!230 = metadata !{void (%struct.XVtc*)* @XVtc_EnableDetector}
!231 = metadata !{void (%struct.XVtc*)* @XVtc_Enable}
!232 = metadata !{void (%struct.XVtc*)* @XVtc_DisableGenerator}
!233 = metadata !{void (%struct.XVtc*)* @XVtc_DisableDetector}
!234 = metadata !{void (%struct.XVtc*)* @XVtc_Disable}
!235 = metadata !{void (%struct.XVtc*, %struct.XVtc_Polarity*)* @XVtc_SetPolarity}
!236 = metadata !{metadata !"void.XVtc *.1.XVtc_Polarity *.1"}
!237 = metadata !{void (%struct.XVtc*, %struct.XVtc_Polarity*)* @XVtc_GetPolarity}
!238 = metadata !{void (%struct.XVtc*, %struct.XVtc_Polarity*)* @XVtc_GetDetectorPolarity}
!239 = metadata !{void (%struct.XVtc*, %struct.XVtc_SourceSelect*)* @XVtc_SetSource}
!240 = metadata !{metadata !"void.XVtc *.1.XVtc_SourceSelect *.1"}
!241 = metadata !{void (%struct.XVtc*, %struct.XVtc_SourceSelect*)* @XVtc_GetSource}
!242 = metadata !{void (%struct.XVtc*, i32)* @XVtc_SetSkipLine}
!243 = metadata !{metadata !"void.XVtc *.1.int.0"}
!244 = metadata !{void (%struct.XVtc*, i32*)* @XVtc_GetSkipLine}
!245 = metadata !{metadata !"void.XVtc *.1.int *.1"}
!246 = metadata !{void (%struct.XVtc*, i32)* @XVtc_SetSkipPixel}
!247 = metadata !{void (%struct.XVtc*, i32*)* @XVtc_GetSkipPixel}
!248 = metadata !{void (%struct.XVtc*, i32, i32)* @XVtc_SetDelay}
!249 = metadata !{metadata !"void.XVtc *.1.int.0.int.0"}
!250 = metadata !{void (%struct.XVtc*, i32*, i32*)* @XVtc_GetDelay}
!251 = metadata !{metadata !"void.XVtc *.1.int *.1.int *.1"}
!252 = metadata !{void (%struct.XVtc*, i16, i16, i16)* @XVtc_SetFSync}
!253 = metadata !{metadata !"void.XVtc *.1.u16.0.u16.0.u16.0"}
!254 = metadata !{void (%struct.XVtc*, i16, i16*, i16*)* @XVtc_GetFSync}
!255 = metadata !{metadata !"void.XVtc *.1.u16.0.u16 *.1.u16 *.1"}
!256 = metadata !{void (%struct.XVtc*, %struct.XVtc_HoriOffsets*)* @XVtc_SetGeneratorHoriOffset}
!257 = metadata !{metadata !"void.XVtc *.1.XVtc_HoriOffsets *.1"}
!258 = metadata !{void (%struct.XVtc*, %struct.XVtc_HoriOffsets*)* @XVtc_GetGeneratorHoriOffset}
!259 = metadata !{void (%struct.XVtc*, %struct.XVtc_HoriOffsets*)* @XVtc_GetDetectorHoriOffset}
!260 = metadata !{void (%struct.XVtc*, %struct.XVtc_Signal*)* @XVtc_SetGenerator}
!261 = metadata !{metadata !"void.XVtc *.1.XVtc_Signal *.1"}
!262 = metadata !{void (%struct.XVtc*, %struct.XVtc_Signal*)* @XVtc_GetGenerator}
!263 = metadata !{void (%struct.XVtc*, %struct.XVtc_Signal*)* @XVtc_GetDetector}
!264 = metadata !{i32 (%struct.XVtc*)* @XVtc_GetVersion}
!265 = metadata !{metadata !"u32.XVtc *.1"}
!266 = metadata !{void (%struct.XVtc*, i16, %struct.XVtc_Timing*)* @XVtc_ConvVideoMode2Timing}
!267 = metadata !{metadata !"void.XVtc *.1.u16.0.XVtc_Timing *.1"}
!268 = metadata !{void (%struct.XVtc*, %struct.XVtc_Timing*, %struct.XVtc_Signal*, %struct.XVtc_HoriOffsets*, %struct.XVtc_Polarity*)* @XVtc_ConvTiming2Signal}
!269 = metadata !{metadata !"void.XVtc *.1.XVtc_Timing *.1.XVtc_Signal *.1.XVtc_HoriOffsets *.1.XVtc_Polarity *.1"}
!270 = metadata !{void (%struct.XVtc*, %struct.XVtc_Signal*, %struct.XVtc_HoriOffsets*, %struct.XVtc_Polarity*, %struct.XVtc_Timing*)* @XVtc_ConvSignal2Timing}
!271 = metadata !{metadata !"void.XVtc *.1.XVtc_Signal *.1.XVtc_HoriOffsets *.1.XVtc_Polarity *.1.XVtc_Timing *.1"}
!272 = metadata !{i16 (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_ConvTiming2VideoMode}
!273 = metadata !{metadata !"u16.XVtc *.1.XVtc_Timing *.1"}
!274 = metadata !{void (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_SetGeneratorTiming}
!275 = metadata !{metadata !"void.XVtc *.1.XVtc_Timing *.1"}
!276 = metadata !{void (%struct.XVtc*, i16)* @XVtc_SetGeneratorVideoMode}
!277 = metadata !{metadata !"void.XVtc *.1.u16.0"}
!278 = metadata !{void (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_GetGeneratorTiming}
!279 = metadata !{i16 (%struct.XVtc*)* @XVtc_GetGeneratorVideoMode}
!280 = metadata !{metadata !"u16.XVtc *.1"}
!281 = metadata !{void (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_GetDetectorTiming}
!282 = metadata !{i16 (%struct.XVtc*)* @XVtc_GetDetectorVideoMode}
!283 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h"}
!284 = metadata !{metadata !"../src/xil/xil_assert.h"}
!285 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c"}
!286 = metadata !{metadata !"../src/xil/xil_io.h"}
!287 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!288 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!289 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!290 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!291 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!292 = metadata !{i32 786689, metadata !4, metadata !"InstancePtr", metadata !5, i32 16777441, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 225]
!293 = metadata !{i32 225, i32 30, metadata !4, null}
!294 = metadata !{i32 786689, metadata !4, metadata !"CfgPtr", metadata !5, i32 33554657, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CfgPtr] [line 225]
!295 = metadata !{i32 225, i32 56, metadata !4, null}
!296 = metadata !{i32 786689, metadata !4, metadata !"EffectiveAddr", metadata !5, i32 50331874, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [EffectiveAddr] [line 226]
!297 = metadata !{i32 226, i32 9, metadata !4, null}
!298 = metadata !{i32 229, i32 2, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !300, i32 229, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!300 = metadata !{i32 786443, metadata !1, metadata !4, i32 229, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!301 = metadata !{i32 229, i32 2, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 229, i32 2, i32 1, i32 578} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!303 = metadata !{i32 786443, metadata !1, metadata !299, i32 229, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!304 = metadata !{i32 229, i32 2, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !306, i32 229, i32 2, i32 2, i32 579} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!306 = metadata !{i32 786443, metadata !1, metadata !299, i32 229, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!307 = metadata !{i32 230, i32 2, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !309, i32 230, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!309 = metadata !{i32 786443, metadata !1, metadata !4, i32 230, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!310 = metadata !{i32 230, i32 2, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !312, i32 230, i32 2, i32 1, i32 580} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!312 = metadata !{i32 786443, metadata !1, metadata !308, i32 230, i32 2, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!313 = metadata !{i32 230, i32 2, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !315, i32 230, i32 2, i32 2, i32 581} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!315 = metadata !{i32 786443, metadata !1, metadata !308, i32 230, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!316 = metadata !{i32 231, i32 2, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !318, i32 231, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!318 = metadata !{i32 786443, metadata !1, metadata !4, i32 231, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!319 = metadata !{i32 231, i32 2, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !321, i32 231, i32 2, i32 1, i32 582} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!321 = metadata !{i32 786443, metadata !1, metadata !317, i32 231, i32 2, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!322 = metadata !{i32 231, i32 2, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !324, i32 231, i32 2, i32 2, i32 583} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!324 = metadata !{i32 786443, metadata !1, metadata !317, i32 231, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!325 = metadata !{i32 234, i32 2, metadata !4, null}
!326 = metadata !{i32 236, i32 2, metadata !4, null}
!327 = metadata !{i32 238, i32 2, metadata !4, null}
!328 = metadata !{i32 242, i32 2, metadata !4, null}
!329 = metadata !{i32 243, i32 2, metadata !4, null}
!330 = metadata !{i32 244, i32 2, metadata !4, null}
!331 = metadata !{i32 245, i32 2, metadata !4, null}
!332 = metadata !{i32 246, i32 2, metadata !4, null}
!333 = metadata !{i32 251, i32 2, metadata !4, null}
!334 = metadata !{i32 252, i32 2, metadata !4, null}
!335 = metadata !{i32 254, i32 2, metadata !4, null}
!336 = metadata !{i32 255, i32 1, metadata !4, null}
!337 = metadata !{i32 786689, metadata !213, metadata !"CallBackRef", metadata !5, i32 16779812, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CallBackRef] [line 2596]
!338 = metadata !{i32 2596, i32 32, metadata !213, null}
!339 = metadata !{i32 2598, i32 2, metadata !213, null}
!340 = metadata !{i32 2599, i32 2, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !213, i32 2599, i32 2, i32 0, i32 577} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!342 = metadata !{i32 2600, i32 1, metadata !213, null}
!343 = metadata !{i32 786689, metadata !212, metadata !"CallBackRef", metadata !5, i32 16779838, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CallBackRef] [line 2622]
!344 = metadata !{i32 2622, i32 35, metadata !212, null}
!345 = metadata !{i32 786689, metadata !212, metadata !"ErrorMask", metadata !5, i32 33557054, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ErrorMask] [line 2622]
!346 = metadata !{i32 2622, i32 52, metadata !212, null}
!347 = metadata !{i32 2624, i32 2, metadata !212, null}
!348 = metadata !{i32 2625, i32 2, metadata !212, null}
!349 = metadata !{i32 2626, i32 2, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !212, i32 2626, i32 2, i32 0, i32 576} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!351 = metadata !{i32 2627, i32 1, metadata !212, null}
!352 = metadata !{i32 786689, metadata !46, metadata !"InstancePtr", metadata !5, i32 16777486, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 270]
!353 = metadata !{i32 270, i32 33, metadata !46, null}
!354 = metadata !{i32 786688, metadata !46, metadata !"CtrlRegValue", metadata !5, i32 272, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CtrlRegValue] [line 272]
!355 = metadata !{i32 272, i32 6, metadata !46, null}
!356 = metadata !{i32 275, i32 2, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !358, i32 275, i32 2, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!358 = metadata !{i32 786443, metadata !1, metadata !46, i32 275, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!359 = metadata !{i32 275, i32 2, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !361, i32 275, i32 2, i32 1, i32 584} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!361 = metadata !{i32 786443, metadata !1, metadata !357, i32 275, i32 2, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!362 = metadata !{i32 275, i32 2, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !364, i32 275, i32 2, i32 2, i32 585} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!364 = metadata !{i32 786443, metadata !1, metadata !357, i32 275, i32 2, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!365 = metadata !{i32 276, i32 2, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !367, i32 276, i32 2, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!367 = metadata !{i32 786443, metadata !1, metadata !46, i32 276, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!368 = metadata !{i32 276, i32 2, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !370, i32 276, i32 2, i32 1, i32 586} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!370 = metadata !{i32 786443, metadata !1, metadata !366, i32 276, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!371 = metadata !{i32 276, i32 2, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !373, i32 276, i32 2, i32 2, i32 587} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!373 = metadata !{i32 786443, metadata !1, metadata !366, i32 276, i32 2, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!374 = metadata !{i32 279, i32 17, metadata !46, null}
!375 = metadata !{i32 283, i32 2, metadata !46, null}
!376 = metadata !{i32 285, i32 2, metadata !46, null}
!377 = metadata !{i32 287, i32 1, metadata !46, null}
!378 = metadata !{i32 287, i32 1, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !46, i32 287, i32 1, i32 1, i32 588} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!380 = metadata !{i32 786689, metadata !49, metadata !"InstancePtr", metadata !5, i32 16777518, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 302]
!381 = metadata !{i32 302, i32 32, metadata !49, null}
!382 = metadata !{i32 786688, metadata !49, metadata !"CtrlRegValue", metadata !5, i32 304, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CtrlRegValue] [line 304]
!383 = metadata !{i32 304, i32 6, metadata !49, null}
!384 = metadata !{i32 307, i32 2, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !386, i32 307, i32 2, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!386 = metadata !{i32 786443, metadata !1, metadata !49, i32 307, i32 2, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!387 = metadata !{i32 307, i32 2, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !389, i32 307, i32 2, i32 1, i32 589} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!389 = metadata !{i32 786443, metadata !1, metadata !385, i32 307, i32 2, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!390 = metadata !{i32 307, i32 2, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !392, i32 307, i32 2, i32 2, i32 590} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!392 = metadata !{i32 786443, metadata !1, metadata !385, i32 307, i32 2, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!393 = metadata !{i32 308, i32 2, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !395, i32 308, i32 2, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!395 = metadata !{i32 786443, metadata !1, metadata !49, i32 308, i32 2, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!396 = metadata !{i32 308, i32 2, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !398, i32 308, i32 2, i32 1, i32 591} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!398 = metadata !{i32 786443, metadata !1, metadata !394, i32 308, i32 2, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!399 = metadata !{i32 308, i32 2, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !401, i32 308, i32 2, i32 2, i32 592} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!401 = metadata !{i32 786443, metadata !1, metadata !394, i32 308, i32 2, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!402 = metadata !{i32 311, i32 17, metadata !49, null}
!403 = metadata !{i32 315, i32 2, metadata !49, null}
!404 = metadata !{i32 317, i32 2, metadata !49, null}
!405 = metadata !{i32 319, i32 1, metadata !49, null}
!406 = metadata !{i32 319, i32 1, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !49, i32 319, i32 1, i32 1, i32 593} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!408 = metadata !{i32 786689, metadata !50, metadata !"InstancePtr", metadata !5, i32 16777551, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 335]
!409 = metadata !{i32 335, i32 24, metadata !50, null}
!410 = metadata !{i32 786688, metadata !50, metadata !"CtrlRegValue", metadata !5, i32 337, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CtrlRegValue] [line 337]
!411 = metadata !{i32 337, i32 6, metadata !50, null}
!412 = metadata !{i32 340, i32 2, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !414, i32 340, i32 2, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!414 = metadata !{i32 786443, metadata !1, metadata !50, i32 340, i32 2, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!415 = metadata !{i32 340, i32 2, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !417, i32 340, i32 2, i32 1, i32 594} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!417 = metadata !{i32 786443, metadata !1, metadata !413, i32 340, i32 2, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!418 = metadata !{i32 340, i32 2, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !420, i32 340, i32 2, i32 2, i32 595} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!420 = metadata !{i32 786443, metadata !1, metadata !413, i32 340, i32 2, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!421 = metadata !{i32 341, i32 2, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !423, i32 341, i32 2, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!423 = metadata !{i32 786443, metadata !1, metadata !50, i32 341, i32 2, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!424 = metadata !{i32 341, i32 2, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !426, i32 341, i32 2, i32 1, i32 596} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!426 = metadata !{i32 786443, metadata !1, metadata !422, i32 341, i32 2, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!427 = metadata !{i32 341, i32 2, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !429, i32 341, i32 2, i32 2, i32 597} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!429 = metadata !{i32 786443, metadata !1, metadata !422, i32 341, i32 2, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!430 = metadata !{i32 344, i32 17, metadata !50, null}
!431 = metadata !{i32 348, i32 2, metadata !50, null}
!432 = metadata !{i32 350, i32 2, metadata !50, null}
!433 = metadata !{i32 352, i32 1, metadata !50, null}
!434 = metadata !{i32 352, i32 1, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !50, i32 352, i32 1, i32 1, i32 598} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!436 = metadata !{i32 786689, metadata !51, metadata !"InstancePtr", metadata !5, i32 16777583, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 367]
!437 = metadata !{i32 367, i32 34, metadata !51, null}
!438 = metadata !{i32 786688, metadata !51, metadata !"CtrlRegValue", metadata !5, i32 369, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CtrlRegValue] [line 369]
!439 = metadata !{i32 369, i32 6, metadata !51, null}
!440 = metadata !{i32 372, i32 2, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !442, i32 372, i32 2, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!442 = metadata !{i32 786443, metadata !1, metadata !51, i32 372, i32 2, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!443 = metadata !{i32 372, i32 2, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !445, i32 372, i32 2, i32 1, i32 599} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!445 = metadata !{i32 786443, metadata !1, metadata !441, i32 372, i32 2, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!446 = metadata !{i32 372, i32 2, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !448, i32 372, i32 2, i32 2, i32 600} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!448 = metadata !{i32 786443, metadata !1, metadata !441, i32 372, i32 2, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!449 = metadata !{i32 373, i32 2, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !451, i32 373, i32 2, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!451 = metadata !{i32 786443, metadata !1, metadata !51, i32 373, i32 2, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!452 = metadata !{i32 373, i32 2, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !454, i32 373, i32 2, i32 1, i32 601} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!454 = metadata !{i32 786443, metadata !1, metadata !450, i32 373, i32 2, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!455 = metadata !{i32 373, i32 2, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !457, i32 373, i32 2, i32 2, i32 602} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!457 = metadata !{i32 786443, metadata !1, metadata !450, i32 373, i32 2, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!458 = metadata !{i32 376, i32 17, metadata !51, null}
!459 = metadata !{i32 382, i32 2, metadata !51, null}
!460 = metadata !{i32 384, i32 2, metadata !51, null}
!461 = metadata !{i32 386, i32 1, metadata !51, null}
!462 = metadata !{i32 386, i32 1, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !51, i32 386, i32 1, i32 1, i32 603} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!464 = metadata !{i32 786689, metadata !52, metadata !"InstancePtr", metadata !5, i32 16777617, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 401]
!465 = metadata !{i32 401, i32 33, metadata !52, null}
!466 = metadata !{i32 786688, metadata !52, metadata !"CtrlRegValue", metadata !5, i32 403, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CtrlRegValue] [line 403]
!467 = metadata !{i32 403, i32 6, metadata !52, null}
!468 = metadata !{i32 406, i32 2, metadata !469, null}
!469 = metadata !{i32 786443, metadata !1, metadata !470, i32 406, i32 2, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!470 = metadata !{i32 786443, metadata !1, metadata !52, i32 406, i32 2, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!471 = metadata !{i32 406, i32 2, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !473, i32 406, i32 2, i32 1, i32 604} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!473 = metadata !{i32 786443, metadata !1, metadata !469, i32 406, i32 2, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!474 = metadata !{i32 406, i32 2, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !476, i32 406, i32 2, i32 2, i32 605} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!476 = metadata !{i32 786443, metadata !1, metadata !469, i32 406, i32 2, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!477 = metadata !{i32 407, i32 2, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !479, i32 407, i32 2, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!479 = metadata !{i32 786443, metadata !1, metadata !52, i32 407, i32 2, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!480 = metadata !{i32 407, i32 2, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !482, i32 407, i32 2, i32 1, i32 606} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!482 = metadata !{i32 786443, metadata !1, metadata !478, i32 407, i32 2, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!483 = metadata !{i32 407, i32 2, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !485, i32 407, i32 2, i32 2, i32 607} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!485 = metadata !{i32 786443, metadata !1, metadata !478, i32 407, i32 2, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!486 = metadata !{i32 410, i32 17, metadata !52, null}
!487 = metadata !{i32 416, i32 2, metadata !52, null}
!488 = metadata !{i32 418, i32 2, metadata !52, null}
!489 = metadata !{i32 420, i32 1, metadata !52, null}
!490 = metadata !{i32 420, i32 1, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !52, i32 420, i32 1, i32 1, i32 608} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!492 = metadata !{i32 786689, metadata !53, metadata !"InstancePtr", metadata !5, i32 16777652, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 436]
!493 = metadata !{i32 436, i32 25, metadata !53, null}
!494 = metadata !{i32 786688, metadata !53, metadata !"CtrlRegValue", metadata !5, i32 438, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CtrlRegValue] [line 438]
!495 = metadata !{i32 438, i32 6, metadata !53, null}
!496 = metadata !{i32 441, i32 2, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !498, i32 441, i32 2, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!498 = metadata !{i32 786443, metadata !1, metadata !53, i32 441, i32 2, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!499 = metadata !{i32 441, i32 2, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !501, i32 441, i32 2, i32 1, i32 609} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!501 = metadata !{i32 786443, metadata !1, metadata !497, i32 441, i32 2, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!502 = metadata !{i32 441, i32 2, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !504, i32 441, i32 2, i32 2, i32 610} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!504 = metadata !{i32 786443, metadata !1, metadata !497, i32 441, i32 2, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!505 = metadata !{i32 442, i32 2, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !507, i32 442, i32 2, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!507 = metadata !{i32 786443, metadata !1, metadata !53, i32 442, i32 2, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!508 = metadata !{i32 442, i32 2, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !510, i32 442, i32 2, i32 1, i32 611} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!510 = metadata !{i32 786443, metadata !1, metadata !506, i32 442, i32 2, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!511 = metadata !{i32 442, i32 2, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !513, i32 442, i32 2, i32 2, i32 612} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!513 = metadata !{i32 786443, metadata !1, metadata !506, i32 442, i32 2, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!514 = metadata !{i32 445, i32 17, metadata !53, null}
!515 = metadata !{i32 449, i32 2, metadata !53, null}
!516 = metadata !{i32 451, i32 2, metadata !53, null}
!517 = metadata !{i32 453, i32 1, metadata !53, null}
!518 = metadata !{i32 453, i32 1, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !53, i32 453, i32 1, i32 1, i32 613} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!520 = metadata !{i32 786689, metadata !54, metadata !"InstancePtr", metadata !5, i32 16777686, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 470]
!521 = metadata !{i32 470, i32 29, metadata !54, null}
!522 = metadata !{i32 786689, metadata !54, metadata !"PolarityPtr", metadata !5, i32 33554902, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PolarityPtr] [line 470]
!523 = metadata !{i32 470, i32 57, metadata !54, null}
!524 = metadata !{i32 786688, metadata !54, metadata !"PolRegValue", metadata !5, i32 472, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PolRegValue] [line 472]
!525 = metadata !{i32 472, i32 6, metadata !54, null}
!526 = metadata !{i32 475, i32 2, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !528, i32 475, i32 2, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!528 = metadata !{i32 786443, metadata !1, metadata !54, i32 475, i32 2, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!529 = metadata !{i32 475, i32 2, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !531, i32 475, i32 2, i32 1, i32 614} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!531 = metadata !{i32 786443, metadata !1, metadata !527, i32 475, i32 2, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!532 = metadata !{i32 475, i32 2, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !534, i32 475, i32 2, i32 2, i32 615} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!534 = metadata !{i32 786443, metadata !1, metadata !527, i32 475, i32 2, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!535 = metadata !{i32 476, i32 2, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !537, i32 476, i32 2, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!537 = metadata !{i32 786443, metadata !1, metadata !54, i32 476, i32 2, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!538 = metadata !{i32 476, i32 2, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !540, i32 476, i32 2, i32 1, i32 616} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!540 = metadata !{i32 786443, metadata !1, metadata !536, i32 476, i32 2, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!541 = metadata !{i32 476, i32 2, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !543, i32 476, i32 2, i32 2, i32 617} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!543 = metadata !{i32 786443, metadata !1, metadata !536, i32 476, i32 2, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!544 = metadata !{i32 477, i32 2, metadata !545, null}
!545 = metadata !{i32 786443, metadata !1, metadata !546, i32 477, i32 2, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!546 = metadata !{i32 786443, metadata !1, metadata !54, i32 477, i32 2, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!547 = metadata !{i32 477, i32 2, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !549, i32 477, i32 2, i32 1, i32 618} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!549 = metadata !{i32 786443, metadata !1, metadata !545, i32 477, i32 2, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!550 = metadata !{i32 477, i32 2, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !552, i32 477, i32 2, i32 2, i32 619} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!552 = metadata !{i32 786443, metadata !1, metadata !545, i32 477, i32 2, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!553 = metadata !{i32 482, i32 16, metadata !54, null}
!554 = metadata !{i32 484, i32 2, metadata !54, null}
!555 = metadata !{i32 489, i32 6, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !54, i32 489, i32 6, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!557 = metadata !{i32 490, i32 3, metadata !556, null}
!558 = metadata !{i32 492, i32 6, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !54, i32 492, i32 6, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!560 = metadata !{i32 493, i32 3, metadata !559, null}
!561 = metadata !{i32 495, i32 6, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !54, i32 495, i32 6, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!563 = metadata !{i32 496, i32 3, metadata !562, null}
!564 = metadata !{i32 498, i32 6, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !54, i32 498, i32 6, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!566 = metadata !{i32 499, i32 3, metadata !565, null}
!567 = metadata !{i32 501, i32 6, metadata !568, null}
!568 = metadata !{i32 786443, metadata !1, metadata !54, i32 501, i32 6, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!569 = metadata !{i32 502, i32 3, metadata !568, null}
!570 = metadata !{i32 504, i32 6, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !54, i32 504, i32 6, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!572 = metadata !{i32 505, i32 3, metadata !571, null}
!573 = metadata !{i32 507, i32 6, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !54, i32 507, i32 6, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!575 = metadata !{i32 508, i32 3, metadata !574, null}
!576 = metadata !{i32 510, i32 2, metadata !54, null}
!577 = metadata !{i32 512, i32 1, metadata !54, null}
!578 = metadata !{i32 512, i32 1, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !54, i32 512, i32 1, i32 1, i32 620} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!580 = metadata !{i32 786689, metadata !71, metadata !"InstancePtr", metadata !5, i32 16777746, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 530]
!581 = metadata !{i32 530, i32 29, metadata !71, null}
!582 = metadata !{i32 786689, metadata !71, metadata !"PolarityPtr", metadata !5, i32 33554962, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PolarityPtr] [line 530]
!583 = metadata !{i32 530, i32 57, metadata !71, null}
!584 = metadata !{i32 786688, metadata !71, metadata !"PolRegValue", metadata !5, i32 532, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PolRegValue] [line 532]
!585 = metadata !{i32 532, i32 6, metadata !71, null}
!586 = metadata !{i32 535, i32 2, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !588, i32 535, i32 2, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!588 = metadata !{i32 786443, metadata !1, metadata !71, i32 535, i32 2, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!589 = metadata !{i32 535, i32 2, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !591, i32 535, i32 2, i32 1, i32 621} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!591 = metadata !{i32 786443, metadata !1, metadata !587, i32 535, i32 2, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!592 = metadata !{i32 535, i32 2, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !594, i32 535, i32 2, i32 2, i32 622} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!594 = metadata !{i32 786443, metadata !1, metadata !587, i32 535, i32 2, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!595 = metadata !{i32 536, i32 2, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !597, i32 536, i32 2, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!597 = metadata !{i32 786443, metadata !1, metadata !71, i32 536, i32 2, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!598 = metadata !{i32 536, i32 2, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !600, i32 536, i32 2, i32 1, i32 623} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!600 = metadata !{i32 786443, metadata !1, metadata !596, i32 536, i32 2, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!601 = metadata !{i32 536, i32 2, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !603, i32 536, i32 2, i32 2, i32 624} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!603 = metadata !{i32 786443, metadata !1, metadata !596, i32 536, i32 2, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!604 = metadata !{i32 537, i32 2, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !606, i32 537, i32 2, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!606 = metadata !{i32 786443, metadata !1, metadata !71, i32 537, i32 2, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!607 = metadata !{i32 537, i32 2, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !609, i32 537, i32 2, i32 1, i32 625} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!609 = metadata !{i32 786443, metadata !1, metadata !605, i32 537, i32 2, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!610 = metadata !{i32 537, i32 2, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !612, i32 537, i32 2, i32 2, i32 626} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!612 = metadata !{i32 786443, metadata !1, metadata !605, i32 537, i32 2, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!613 = metadata !{i32 540, i32 2, metadata !71, null}
!614 = metadata !{i32 543, i32 16, metadata !71, null}
!615 = metadata !{i32 549, i32 6, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !71, i32 549, i32 6, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!617 = metadata !{i32 550, i32 3, metadata !616, null}
!618 = metadata !{i32 552, i32 6, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !71, i32 552, i32 6, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!620 = metadata !{i32 553, i32 3, metadata !619, null}
!621 = metadata !{i32 555, i32 6, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !71, i32 555, i32 6, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!623 = metadata !{i32 556, i32 3, metadata !622, null}
!624 = metadata !{i32 558, i32 6, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !71, i32 558, i32 6, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!626 = metadata !{i32 559, i32 3, metadata !625, null}
!627 = metadata !{i32 561, i32 6, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !71, i32 561, i32 6, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!629 = metadata !{i32 562, i32 3, metadata !628, null}
!630 = metadata !{i32 564, i32 6, metadata !631, null}
!631 = metadata !{i32 786443, metadata !1, metadata !71, i32 564, i32 6, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!632 = metadata !{i32 565, i32 3, metadata !631, null}
!633 = metadata !{i32 567, i32 6, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !71, i32 567, i32 6, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!635 = metadata !{i32 568, i32 3, metadata !634, null}
!636 = metadata !{i32 569, i32 1, metadata !71, null}
!637 = metadata !{i32 786689, metadata !72, metadata !"InstancePtr", metadata !5, i32 16777803, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 587]
!638 = metadata !{i32 587, i32 37, metadata !72, null}
!639 = metadata !{i32 786689, metadata !72, metadata !"PolarityPtr", metadata !5, i32 33555019, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PolarityPtr] [line 587]
!640 = metadata !{i32 587, i32 65, metadata !72, null}
!641 = metadata !{i32 786688, metadata !72, metadata !"PolRegValue", metadata !5, i32 589, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PolRegValue] [line 589]
!642 = metadata !{i32 589, i32 6, metadata !72, null}
!643 = metadata !{i32 592, i32 2, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !645, i32 592, i32 2, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!645 = metadata !{i32 786443, metadata !1, metadata !72, i32 592, i32 2, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!646 = metadata !{i32 592, i32 2, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !648, i32 592, i32 2, i32 1, i32 627} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!648 = metadata !{i32 786443, metadata !1, metadata !644, i32 592, i32 2, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!649 = metadata !{i32 592, i32 2, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !651, i32 592, i32 2, i32 2, i32 628} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!651 = metadata !{i32 786443, metadata !1, metadata !644, i32 592, i32 2, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!652 = metadata !{i32 593, i32 2, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !654, i32 593, i32 2, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!654 = metadata !{i32 786443, metadata !1, metadata !72, i32 593, i32 2, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!655 = metadata !{i32 593, i32 2, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !657, i32 593, i32 2, i32 1, i32 629} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!657 = metadata !{i32 786443, metadata !1, metadata !653, i32 593, i32 2, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!658 = metadata !{i32 593, i32 2, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !660, i32 593, i32 2, i32 2, i32 630} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!660 = metadata !{i32 786443, metadata !1, metadata !653, i32 593, i32 2, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!661 = metadata !{i32 594, i32 2, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !663, i32 594, i32 2, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!663 = metadata !{i32 786443, metadata !1, metadata !72, i32 594, i32 2, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!664 = metadata !{i32 594, i32 2, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !666, i32 594, i32 2, i32 1, i32 631} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!666 = metadata !{i32 786443, metadata !1, metadata !662, i32 594, i32 2, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!667 = metadata !{i32 594, i32 2, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !669, i32 594, i32 2, i32 2, i32 632} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!669 = metadata !{i32 786443, metadata !1, metadata !662, i32 594, i32 2, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!670 = metadata !{i32 597, i32 2, metadata !72, null}
!671 = metadata !{i32 600, i32 16, metadata !72, null}
!672 = metadata !{i32 606, i32 6, metadata !673, null}
!673 = metadata !{i32 786443, metadata !1, metadata !72, i32 606, i32 6, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!674 = metadata !{i32 607, i32 3, metadata !673, null}
!675 = metadata !{i32 609, i32 6, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !72, i32 609, i32 6, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!677 = metadata !{i32 610, i32 3, metadata !676, null}
!678 = metadata !{i32 612, i32 6, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !72, i32 612, i32 6, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!680 = metadata !{i32 613, i32 3, metadata !679, null}
!681 = metadata !{i32 615, i32 6, metadata !682, null}
!682 = metadata !{i32 786443, metadata !1, metadata !72, i32 615, i32 6, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!683 = metadata !{i32 616, i32 3, metadata !682, null}
!684 = metadata !{i32 618, i32 6, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !72, i32 618, i32 6, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!686 = metadata !{i32 619, i32 3, metadata !685, null}
!687 = metadata !{i32 621, i32 6, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !72, i32 621, i32 6, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!689 = metadata !{i32 622, i32 3, metadata !688, null}
!690 = metadata !{i32 624, i32 6, metadata !691, null}
!691 = metadata !{i32 786443, metadata !1, metadata !72, i32 624, i32 6, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!692 = metadata !{i32 625, i32 3, metadata !691, null}
!693 = metadata !{i32 626, i32 1, metadata !72, null}
!694 = metadata !{i32 786689, metadata !73, metadata !"InstancePtr", metadata !5, i32 16777859, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 643]
!695 = metadata !{i32 643, i32 27, metadata !73, null}
!696 = metadata !{i32 786689, metadata !73, metadata !"SourcePtr", metadata !5, i32 33555075, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SourcePtr] [line 643]
!697 = metadata !{i32 643, i32 59, metadata !73, null}
!698 = metadata !{i32 786688, metadata !73, metadata !"CtrlRegValue", metadata !5, i32 645, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CtrlRegValue] [line 645]
!699 = metadata !{i32 645, i32 6, metadata !73, null}
!700 = metadata !{i32 648, i32 2, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !702, i32 648, i32 2, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!702 = metadata !{i32 786443, metadata !1, metadata !73, i32 648, i32 2, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!703 = metadata !{i32 648, i32 2, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !705, i32 648, i32 2, i32 1, i32 633} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!705 = metadata !{i32 786443, metadata !1, metadata !701, i32 648, i32 2, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!706 = metadata !{i32 648, i32 2, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !708, i32 648, i32 2, i32 2, i32 634} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!708 = metadata !{i32 786443, metadata !1, metadata !701, i32 648, i32 2, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!709 = metadata !{i32 649, i32 2, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !711, i32 649, i32 2, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!711 = metadata !{i32 786443, metadata !1, metadata !73, i32 649, i32 2, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!712 = metadata !{i32 649, i32 2, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !714, i32 649, i32 2, i32 1, i32 635} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!714 = metadata !{i32 786443, metadata !1, metadata !710, i32 649, i32 2, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!715 = metadata !{i32 649, i32 2, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !717, i32 649, i32 2, i32 2, i32 636} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!717 = metadata !{i32 786443, metadata !1, metadata !710, i32 649, i32 2, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!718 = metadata !{i32 650, i32 2, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !720, i32 650, i32 2, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!720 = metadata !{i32 786443, metadata !1, metadata !73, i32 650, i32 2, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!721 = metadata !{i32 650, i32 2, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !723, i32 650, i32 2, i32 1, i32 637} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!723 = metadata !{i32 786443, metadata !1, metadata !719, i32 650, i32 2, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!724 = metadata !{i32 650, i32 2, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !726, i32 650, i32 2, i32 2, i32 638} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!726 = metadata !{i32 786443, metadata !1, metadata !719, i32 650, i32 2, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!727 = metadata !{i32 655, i32 17, metadata !73, null}
!728 = metadata !{i32 657, i32 2, metadata !73, null}
!729 = metadata !{i32 663, i32 6, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !73, i32 663, i32 6, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!731 = metadata !{i32 664, i32 3, metadata !730, null}
!732 = metadata !{i32 666, i32 6, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !73, i32 666, i32 6, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!734 = metadata !{i32 667, i32 3, metadata !733, null}
!735 = metadata !{i32 669, i32 6, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !73, i32 669, i32 6, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!737 = metadata !{i32 670, i32 3, metadata !736, null}
!738 = metadata !{i32 672, i32 6, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !73, i32 672, i32 6, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!740 = metadata !{i32 673, i32 3, metadata !739, null}
!741 = metadata !{i32 675, i32 6, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !73, i32 675, i32 6, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!743 = metadata !{i32 676, i32 3, metadata !742, null}
!744 = metadata !{i32 678, i32 6, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !73, i32 678, i32 6, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!746 = metadata !{i32 679, i32 3, metadata !745, null}
!747 = metadata !{i32 681, i32 6, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !73, i32 681, i32 6, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!749 = metadata !{i32 682, i32 3, metadata !748, null}
!750 = metadata !{i32 685, i32 6, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !73, i32 685, i32 6, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!752 = metadata !{i32 686, i32 3, metadata !751, null}
!753 = metadata !{i32 688, i32 6, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !73, i32 688, i32 6, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!755 = metadata !{i32 689, i32 3, metadata !754, null}
!756 = metadata !{i32 691, i32 6, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !73, i32 691, i32 6, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!758 = metadata !{i32 692, i32 3, metadata !757, null}
!759 = metadata !{i32 694, i32 6, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !73, i32 694, i32 6, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!761 = metadata !{i32 695, i32 3, metadata !760, null}
!762 = metadata !{i32 697, i32 6, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !73, i32 697, i32 6, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!764 = metadata !{i32 698, i32 3, metadata !763, null}
!765 = metadata !{i32 700, i32 6, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !73, i32 700, i32 6, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!767 = metadata !{i32 701, i32 3, metadata !766, null}
!768 = metadata !{i32 703, i32 6, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !73, i32 703, i32 6, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!770 = metadata !{i32 704, i32 3, metadata !769, null}
!771 = metadata !{i32 706, i32 6, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !73, i32 706, i32 6, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!773 = metadata !{i32 707, i32 3, metadata !772, null}
!774 = metadata !{i32 709, i32 6, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !73, i32 709, i32 6, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!776 = metadata !{i32 710, i32 3, metadata !775, null}
!777 = metadata !{i32 712, i32 6, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !73, i32 712, i32 6, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!779 = metadata !{i32 713, i32 3, metadata !778, null}
!780 = metadata !{i32 715, i32 6, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !73, i32 715, i32 6, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!782 = metadata !{i32 716, i32 3, metadata !781, null}
!783 = metadata !{i32 718, i32 2, metadata !73, null}
!784 = metadata !{i32 720, i32 1, metadata !73, null}
!785 = metadata !{i32 720, i32 1, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !73, i32 720, i32 1, i32 1, i32 639} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!787 = metadata !{i32 786689, metadata !99, metadata !"InstancePtr", metadata !5, i32 16777954, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 738]
!788 = metadata !{i32 738, i32 27, metadata !99, null}
!789 = metadata !{i32 786689, metadata !99, metadata !"SourcePtr", metadata !5, i32 33555170, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SourcePtr] [line 738]
!790 = metadata !{i32 738, i32 59, metadata !99, null}
!791 = metadata !{i32 786688, metadata !99, metadata !"CtrlRegValue", metadata !5, i32 740, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CtrlRegValue] [line 740]
!792 = metadata !{i32 740, i32 6, metadata !99, null}
!793 = metadata !{i32 743, i32 2, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !795, i32 743, i32 2, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!795 = metadata !{i32 786443, metadata !1, metadata !99, i32 743, i32 2, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!796 = metadata !{i32 743, i32 2, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !798, i32 743, i32 2, i32 1, i32 640} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!798 = metadata !{i32 786443, metadata !1, metadata !794, i32 743, i32 2, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!799 = metadata !{i32 743, i32 2, metadata !800, null}
!800 = metadata !{i32 786443, metadata !1, metadata !801, i32 743, i32 2, i32 2, i32 641} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!801 = metadata !{i32 786443, metadata !1, metadata !794, i32 743, i32 2, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!802 = metadata !{i32 744, i32 2, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !804, i32 744, i32 2, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!804 = metadata !{i32 786443, metadata !1, metadata !99, i32 744, i32 2, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!805 = metadata !{i32 744, i32 2, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !807, i32 744, i32 2, i32 1, i32 642} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!807 = metadata !{i32 786443, metadata !1, metadata !803, i32 744, i32 2, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!808 = metadata !{i32 744, i32 2, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !810, i32 744, i32 2, i32 2, i32 643} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!810 = metadata !{i32 786443, metadata !1, metadata !803, i32 744, i32 2, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!811 = metadata !{i32 745, i32 2, metadata !812, null}
!812 = metadata !{i32 786443, metadata !1, metadata !813, i32 745, i32 2, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!813 = metadata !{i32 786443, metadata !1, metadata !99, i32 745, i32 2, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!814 = metadata !{i32 745, i32 2, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !816, i32 745, i32 2, i32 1, i32 644} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!816 = metadata !{i32 786443, metadata !1, metadata !812, i32 745, i32 2, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!817 = metadata !{i32 745, i32 2, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !819, i32 745, i32 2, i32 2, i32 645} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!819 = metadata !{i32 786443, metadata !1, metadata !812, i32 745, i32 2, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!820 = metadata !{i32 748, i32 2, metadata !99, null}
!821 = metadata !{i32 751, i32 17, metadata !99, null}
!822 = metadata !{i32 757, i32 6, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !99, i32 757, i32 6, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!824 = metadata !{i32 758, i32 3, metadata !823, null}
!825 = metadata !{i32 759, i32 6, metadata !826, null}
!826 = metadata !{i32 786443, metadata !1, metadata !99, i32 759, i32 6, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!827 = metadata !{i32 760, i32 3, metadata !826, null}
!828 = metadata !{i32 761, i32 6, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !99, i32 761, i32 6, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!830 = metadata !{i32 762, i32 3, metadata !829, null}
!831 = metadata !{i32 763, i32 6, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !99, i32 763, i32 6, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!833 = metadata !{i32 764, i32 3, metadata !832, null}
!834 = metadata !{i32 765, i32 6, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !99, i32 765, i32 6, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!836 = metadata !{i32 766, i32 3, metadata !835, null}
!837 = metadata !{i32 767, i32 6, metadata !838, null}
!838 = metadata !{i32 786443, metadata !1, metadata !99, i32 767, i32 6, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!839 = metadata !{i32 768, i32 3, metadata !838, null}
!840 = metadata !{i32 769, i32 6, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !99, i32 769, i32 6, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!842 = metadata !{i32 770, i32 3, metadata !841, null}
!843 = metadata !{i32 772, i32 6, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !99, i32 772, i32 6, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!845 = metadata !{i32 773, i32 3, metadata !844, null}
!846 = metadata !{i32 774, i32 6, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !99, i32 774, i32 6, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!848 = metadata !{i32 775, i32 3, metadata !847, null}
!849 = metadata !{i32 776, i32 6, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !99, i32 776, i32 6, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!851 = metadata !{i32 777, i32 3, metadata !850, null}
!852 = metadata !{i32 778, i32 6, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !99, i32 778, i32 6, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!854 = metadata !{i32 779, i32 3, metadata !853, null}
!855 = metadata !{i32 780, i32 6, metadata !856, null}
!856 = metadata !{i32 786443, metadata !1, metadata !99, i32 780, i32 6, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!857 = metadata !{i32 781, i32 3, metadata !856, null}
!858 = metadata !{i32 782, i32 6, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !99, i32 782, i32 6, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!860 = metadata !{i32 783, i32 3, metadata !859, null}
!861 = metadata !{i32 784, i32 6, metadata !862, null}
!862 = metadata !{i32 786443, metadata !1, metadata !99, i32 784, i32 6, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!863 = metadata !{i32 785, i32 3, metadata !862, null}
!864 = metadata !{i32 786, i32 6, metadata !865, null}
!865 = metadata !{i32 786443, metadata !1, metadata !99, i32 786, i32 6, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!866 = metadata !{i32 787, i32 3, metadata !865, null}
!867 = metadata !{i32 788, i32 6, metadata !868, null}
!868 = metadata !{i32 786443, metadata !1, metadata !99, i32 788, i32 6, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!869 = metadata !{i32 789, i32 3, metadata !868, null}
!870 = metadata !{i32 790, i32 6, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !99, i32 790, i32 6, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!872 = metadata !{i32 791, i32 3, metadata !871, null}
!873 = metadata !{i32 792, i32 6, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !99, i32 792, i32 6, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!875 = metadata !{i32 793, i32 3, metadata !874, null}
!876 = metadata !{i32 794, i32 1, metadata !99, null}
!877 = metadata !{i32 786689, metadata !100, metadata !"InstancePtr", metadata !5, i32 16778029, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 813]
!878 = metadata !{i32 813, i32 29, metadata !100, null}
!879 = metadata !{i32 786689, metadata !100, metadata !"GeneratorChromaSkip", metadata !5, i32 33555245, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GeneratorChromaSkip] [line 813]
!880 = metadata !{i32 813, i32 46, metadata !100, null}
!881 = metadata !{i32 786688, metadata !100, metadata !"FrameEncodeRegValue", metadata !5, i32 815, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrameEncodeRegValue] [line 815]
!882 = metadata !{i32 815, i32 6, metadata !100, null}
!883 = metadata !{i32 818, i32 2, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !885, i32 818, i32 2, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!885 = metadata !{i32 786443, metadata !1, metadata !100, i32 818, i32 2, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!886 = metadata !{i32 818, i32 2, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !888, i32 818, i32 2, i32 1, i32 646} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!888 = metadata !{i32 786443, metadata !1, metadata !884, i32 818, i32 2, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!889 = metadata !{i32 818, i32 2, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !891, i32 818, i32 2, i32 2, i32 647} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!891 = metadata !{i32 786443, metadata !1, metadata !884, i32 818, i32 2, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!892 = metadata !{i32 819, i32 2, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !894, i32 819, i32 2, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!894 = metadata !{i32 786443, metadata !1, metadata !100, i32 819, i32 2, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!895 = metadata !{i32 819, i32 2, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !897, i32 819, i32 2, i32 1, i32 648} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!897 = metadata !{i32 786443, metadata !1, metadata !893, i32 819, i32 2, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!898 = metadata !{i32 819, i32 2, metadata !899, null}
!899 = metadata !{i32 786443, metadata !1, metadata !900, i32 819, i32 2, i32 2, i32 649} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!900 = metadata !{i32 786443, metadata !1, metadata !893, i32 819, i32 2, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!901 = metadata !{i32 822, i32 24, metadata !100, null}
!902 = metadata !{i32 824, i32 2, metadata !100, null}
!903 = metadata !{i32 829, i32 6, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !100, i32 829, i32 6, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!905 = metadata !{i32 830, i32 3, metadata !904, null}
!906 = metadata !{i32 832, i32 2, metadata !100, null}
!907 = metadata !{i32 834, i32 1, metadata !100, null}
!908 = metadata !{i32 834, i32 1, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !100, i32 834, i32 1, i32 1, i32 650} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!910 = metadata !{i32 786689, metadata !103, metadata !"InstancePtr", metadata !5, i32 16778071, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 855]
!911 = metadata !{i32 855, i32 29, metadata !103, null}
!912 = metadata !{i32 786689, metadata !103, metadata !"GeneratorChromaSkipPtr", metadata !5, i32 33555287, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GeneratorChromaSkipPtr] [line 855]
!913 = metadata !{i32 855, i32 47, metadata !103, null}
!914 = metadata !{i32 786688, metadata !103, metadata !"FrameEncodeRegValue", metadata !5, i32 857, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrameEncodeRegValue] [line 857]
!915 = metadata !{i32 857, i32 6, metadata !103, null}
!916 = metadata !{i32 860, i32 2, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !918, i32 860, i32 2, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!918 = metadata !{i32 786443, metadata !1, metadata !103, i32 860, i32 2, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!919 = metadata !{i32 860, i32 2, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !921, i32 860, i32 2, i32 1, i32 651} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!921 = metadata !{i32 786443, metadata !1, metadata !917, i32 860, i32 2, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!922 = metadata !{i32 860, i32 2, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !924, i32 860, i32 2, i32 2, i32 652} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!924 = metadata !{i32 786443, metadata !1, metadata !917, i32 860, i32 2, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!925 = metadata !{i32 861, i32 2, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !927, i32 861, i32 2, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!927 = metadata !{i32 786443, metadata !1, metadata !103, i32 861, i32 2, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!928 = metadata !{i32 861, i32 2, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !930, i32 861, i32 2, i32 1, i32 653} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!930 = metadata !{i32 786443, metadata !1, metadata !926, i32 861, i32 2, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!931 = metadata !{i32 861, i32 2, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !933, i32 861, i32 2, i32 2, i32 654} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!933 = metadata !{i32 786443, metadata !1, metadata !926, i32 861, i32 2, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!934 = metadata !{i32 862, i32 2, metadata !935, null}
!935 = metadata !{i32 786443, metadata !1, metadata !936, i32 862, i32 2, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!936 = metadata !{i32 786443, metadata !1, metadata !103, i32 862, i32 2, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!937 = metadata !{i32 862, i32 2, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !939, i32 862, i32 2, i32 1, i32 655} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!939 = metadata !{i32 786443, metadata !1, metadata !935, i32 862, i32 2, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!940 = metadata !{i32 862, i32 2, metadata !941, null}
!941 = metadata !{i32 786443, metadata !1, metadata !942, i32 862, i32 2, i32 2, i32 656} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!942 = metadata !{i32 786443, metadata !1, metadata !935, i32 862, i32 2, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!943 = metadata !{i32 865, i32 24, metadata !103, null}
!944 = metadata !{i32 871, i32 6, metadata !945, null}
!945 = metadata !{i32 786443, metadata !1, metadata !103, i32 871, i32 6, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!946 = metadata !{i32 872, i32 3, metadata !945, null}
!947 = metadata !{i32 874, i32 3, metadata !945, null}
!948 = metadata !{i32 875, i32 1, metadata !103, null}
!949 = metadata !{i32 786689, metadata !107, metadata !"InstancePtr", metadata !5, i32 16778110, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 894]
!950 = metadata !{i32 894, i32 30, metadata !107, null}
!951 = metadata !{i32 786689, metadata !107, metadata !"GeneratorChromaSkip", metadata !5, i32 33555326, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GeneratorChromaSkip] [line 894]
!952 = metadata !{i32 894, i32 47, metadata !107, null}
!953 = metadata !{i32 786688, metadata !107, metadata !"FrameEncodeRegValue", metadata !5, i32 896, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrameEncodeRegValue] [line 896]
!954 = metadata !{i32 896, i32 6, metadata !107, null}
!955 = metadata !{i32 899, i32 2, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !957, i32 899, i32 2, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!957 = metadata !{i32 786443, metadata !1, metadata !107, i32 899, i32 2, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!958 = metadata !{i32 899, i32 2, metadata !959, null}
!959 = metadata !{i32 786443, metadata !1, metadata !960, i32 899, i32 2, i32 1, i32 657} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!960 = metadata !{i32 786443, metadata !1, metadata !956, i32 899, i32 2, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!961 = metadata !{i32 899, i32 2, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !963, i32 899, i32 2, i32 2, i32 658} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!963 = metadata !{i32 786443, metadata !1, metadata !956, i32 899, i32 2, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!964 = metadata !{i32 900, i32 2, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !966, i32 900, i32 2, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!966 = metadata !{i32 786443, metadata !1, metadata !107, i32 900, i32 2, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!967 = metadata !{i32 900, i32 2, metadata !968, null}
!968 = metadata !{i32 786443, metadata !1, metadata !969, i32 900, i32 2, i32 1, i32 659} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!969 = metadata !{i32 786443, metadata !1, metadata !965, i32 900, i32 2, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!970 = metadata !{i32 900, i32 2, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !972, i32 900, i32 2, i32 2, i32 660} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!972 = metadata !{i32 786443, metadata !1, metadata !965, i32 900, i32 2, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!973 = metadata !{i32 903, i32 24, metadata !107, null}
!974 = metadata !{i32 905, i32 2, metadata !107, null}
!975 = metadata !{i32 910, i32 6, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !107, i32 910, i32 6, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!977 = metadata !{i32 911, i32 3, metadata !976, null}
!978 = metadata !{i32 913, i32 2, metadata !107, null}
!979 = metadata !{i32 915, i32 1, metadata !107, null}
!980 = metadata !{i32 915, i32 1, metadata !981, null}
!981 = metadata !{i32 786443, metadata !1, metadata !107, i32 915, i32 1, i32 1, i32 661} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!982 = metadata !{i32 786689, metadata !108, metadata !"InstancePtr", metadata !5, i32 16778152, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 936]
!983 = metadata !{i32 936, i32 30, metadata !108, null}
!984 = metadata !{i32 786689, metadata !108, metadata !"GeneratorChromaSkipPtr", metadata !5, i32 33555368, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GeneratorChromaSkipPtr] [line 936]
!985 = metadata !{i32 936, i32 48, metadata !108, null}
!986 = metadata !{i32 786688, metadata !108, metadata !"FrameEncodeRegValue", metadata !5, i32 938, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrameEncodeRegValue] [line 938]
!987 = metadata !{i32 938, i32 6, metadata !108, null}
!988 = metadata !{i32 941, i32 2, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !990, i32 941, i32 2, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!990 = metadata !{i32 786443, metadata !1, metadata !108, i32 941, i32 2, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!991 = metadata !{i32 941, i32 2, metadata !992, null}
!992 = metadata !{i32 786443, metadata !1, metadata !993, i32 941, i32 2, i32 1, i32 662} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!993 = metadata !{i32 786443, metadata !1, metadata !989, i32 941, i32 2, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!994 = metadata !{i32 941, i32 2, metadata !995, null}
!995 = metadata !{i32 786443, metadata !1, metadata !996, i32 941, i32 2, i32 2, i32 663} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!996 = metadata !{i32 786443, metadata !1, metadata !989, i32 941, i32 2, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!997 = metadata !{i32 942, i32 2, metadata !998, null}
!998 = metadata !{i32 786443, metadata !1, metadata !999, i32 942, i32 2, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!999 = metadata !{i32 786443, metadata !1, metadata !108, i32 942, i32 2, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1000 = metadata !{i32 942, i32 2, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !1, metadata !1002, i32 942, i32 2, i32 1, i32 664} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1002 = metadata !{i32 786443, metadata !1, metadata !998, i32 942, i32 2, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1003 = metadata !{i32 942, i32 2, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !1005, i32 942, i32 2, i32 2, i32 665} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1005 = metadata !{i32 786443, metadata !1, metadata !998, i32 942, i32 2, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1006 = metadata !{i32 943, i32 2, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !1, metadata !1008, i32 943, i32 2, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1008 = metadata !{i32 786443, metadata !1, metadata !108, i32 943, i32 2, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1009 = metadata !{i32 943, i32 2, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !1011, i32 943, i32 2, i32 1, i32 666} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1011 = metadata !{i32 786443, metadata !1, metadata !1007, i32 943, i32 2, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1012 = metadata !{i32 943, i32 2, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !1014, i32 943, i32 2, i32 2, i32 667} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1014 = metadata !{i32 786443, metadata !1, metadata !1007, i32 943, i32 2, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1015 = metadata !{i32 946, i32 24, metadata !108, null}
!1016 = metadata !{i32 952, i32 6, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !108, i32 952, i32 6, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1018 = metadata !{i32 953, i32 3, metadata !1017, null}
!1019 = metadata !{i32 955, i32 3, metadata !1017, null}
!1020 = metadata !{i32 956, i32 1, metadata !108, null}
!1021 = metadata !{i32 786689, metadata !109, metadata !"InstancePtr", metadata !5, i32 16778192, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 976]
!1022 = metadata !{i32 976, i32 26, metadata !109, null}
!1023 = metadata !{i32 786689, metadata !109, metadata !"VertDelay", metadata !5, i32 33555408, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [VertDelay] [line 976]
!1024 = metadata !{i32 976, i32 43, metadata !109, null}
!1025 = metadata !{i32 786689, metadata !109, metadata !"HoriDelay", metadata !5, i32 50332624, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HoriDelay] [line 976]
!1026 = metadata !{i32 976, i32 58, metadata !109, null}
!1027 = metadata !{i32 786688, metadata !109, metadata !"RegValue", metadata !5, i32 978, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 978]
!1028 = metadata !{i32 978, i32 6, metadata !109, null}
!1029 = metadata !{i32 981, i32 2, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !1, metadata !1031, i32 981, i32 2, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1031 = metadata !{i32 786443, metadata !1, metadata !109, i32 981, i32 2, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1032 = metadata !{i32 981, i32 2, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1034, i32 981, i32 2, i32 1, i32 668} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1034 = metadata !{i32 786443, metadata !1, metadata !1030, i32 981, i32 2, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1035 = metadata !{i32 981, i32 2, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !1, metadata !1037, i32 981, i32 2, i32 2, i32 669} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1037 = metadata !{i32 786443, metadata !1, metadata !1030, i32 981, i32 2, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1038 = metadata !{i32 982, i32 2, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1, metadata !1040, i32 982, i32 2, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1040 = metadata !{i32 786443, metadata !1, metadata !109, i32 982, i32 2, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1041 = metadata !{i32 982, i32 2, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !1, metadata !1043, i32 982, i32 2, i32 1, i32 670} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1043 = metadata !{i32 786443, metadata !1, metadata !1039, i32 982, i32 2, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1044 = metadata !{i32 982, i32 2, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !1, metadata !1046, i32 982, i32 2, i32 2, i32 671} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1046 = metadata !{i32 786443, metadata !1, metadata !1039, i32 982, i32 2, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1047 = metadata !{i32 983, i32 2, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !1049, i32 983, i32 2, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1049 = metadata !{i32 786443, metadata !1, metadata !109, i32 983, i32 2, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1050 = metadata !{i32 983, i32 2, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !1052, i32 983, i32 2, i32 1, i32 672} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1052 = metadata !{i32 786443, metadata !1, metadata !1048, i32 983, i32 2, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1053 = metadata !{i32 983, i32 2, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !1055, i32 983, i32 2, i32 2, i32 673} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1055 = metadata !{i32 786443, metadata !1, metadata !1048, i32 983, i32 2, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1056 = metadata !{i32 984, i32 2, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !1, metadata !1058, i32 984, i32 2, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1058 = metadata !{i32 786443, metadata !1, metadata !109, i32 984, i32 2, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1059 = metadata !{i32 984, i32 2, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !1, metadata !1061, i32 984, i32 2, i32 1, i32 674} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1061 = metadata !{i32 786443, metadata !1, metadata !1057, i32 984, i32 2, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1062 = metadata !{i32 984, i32 2, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1064, i32 984, i32 2, i32 2, i32 675} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1064 = metadata !{i32 786443, metadata !1, metadata !1057, i32 984, i32 2, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1065 = metadata !{i32 985, i32 2, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !1067, i32 985, i32 2, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1067 = metadata !{i32 786443, metadata !1, metadata !109, i32 985, i32 2, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1068 = metadata !{i32 985, i32 2, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1070, i32 985, i32 2, i32 1, i32 676} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1070 = metadata !{i32 786443, metadata !1, metadata !1066, i32 985, i32 2, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1071 = metadata !{i32 985, i32 2, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !1073, i32 985, i32 2, i32 2, i32 677} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1073 = metadata !{i32 786443, metadata !1, metadata !1066, i32 985, i32 2, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1074 = metadata !{i32 986, i32 2, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !1, metadata !1076, i32 986, i32 2, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1076 = metadata !{i32 786443, metadata !1, metadata !109, i32 986, i32 2, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1077 = metadata !{i32 986, i32 2, metadata !1078, null}
!1078 = metadata !{i32 786443, metadata !1, metadata !1079, i32 986, i32 2, i32 1, i32 678} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1079 = metadata !{i32 786443, metadata !1, metadata !1075, i32 986, i32 2, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1080 = metadata !{i32 986, i32 2, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !1082, i32 986, i32 2, i32 2, i32 679} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1082 = metadata !{i32 786443, metadata !1, metadata !1075, i32 986, i32 2, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1083 = metadata !{i32 989, i32 2, metadata !109, null}
!1084 = metadata !{i32 990, i32 2, metadata !109, null}
!1085 = metadata !{i32 994, i32 2, metadata !109, null}
!1086 = metadata !{i32 996, i32 1, metadata !109, null}
!1087 = metadata !{i32 996, i32 1, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !1, metadata !109, i32 996, i32 1, i32 1, i32 680} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1089 = metadata !{i32 786689, metadata !112, metadata !"InstancePtr", metadata !5, i32 16778233, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1017]
!1090 = metadata !{i32 1017, i32 26, metadata !112, null}
!1091 = metadata !{i32 786689, metadata !112, metadata !"VertDelayPtr", metadata !5, i32 33555449, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [VertDelayPtr] [line 1017]
!1092 = metadata !{i32 1017, i32 44, metadata !112, null}
!1093 = metadata !{i32 786689, metadata !112, metadata !"HoriDelayPtr", metadata !5, i32 50332665, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HoriDelayPtr] [line 1017]
!1094 = metadata !{i32 1017, i32 63, metadata !112, null}
!1095 = metadata !{i32 786688, metadata !112, metadata !"RegValue", metadata !5, i32 1019, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1019]
!1096 = metadata !{i32 1019, i32 6, metadata !112, null}
!1097 = metadata !{i32 1022, i32 2, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !1, metadata !1099, i32 1022, i32 2, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1099 = metadata !{i32 786443, metadata !1, metadata !112, i32 1022, i32 2, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1100 = metadata !{i32 1022, i32 2, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !1, metadata !1102, i32 1022, i32 2, i32 1, i32 681} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1102 = metadata !{i32 786443, metadata !1, metadata !1098, i32 1022, i32 2, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1103 = metadata !{i32 1022, i32 2, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !1105, i32 1022, i32 2, i32 2, i32 682} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1105 = metadata !{i32 786443, metadata !1, metadata !1098, i32 1022, i32 2, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1106 = metadata !{i32 1023, i32 2, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !1, metadata !1108, i32 1023, i32 2, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1108 = metadata !{i32 786443, metadata !1, metadata !112, i32 1023, i32 2, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1109 = metadata !{i32 1023, i32 2, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !1111, i32 1023, i32 2, i32 1, i32 683} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1111 = metadata !{i32 786443, metadata !1, metadata !1107, i32 1023, i32 2, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1112 = metadata !{i32 1023, i32 2, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !1, metadata !1114, i32 1023, i32 2, i32 2, i32 684} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1114 = metadata !{i32 786443, metadata !1, metadata !1107, i32 1023, i32 2, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1115 = metadata !{i32 1024, i32 2, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1, metadata !1117, i32 1024, i32 2, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1117 = metadata !{i32 786443, metadata !1, metadata !112, i32 1024, i32 2, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1118 = metadata !{i32 1024, i32 2, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !1, metadata !1120, i32 1024, i32 2, i32 1, i32 685} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1120 = metadata !{i32 786443, metadata !1, metadata !1116, i32 1024, i32 2, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1121 = metadata !{i32 1024, i32 2, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !1123, i32 1024, i32 2, i32 2, i32 686} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1123 = metadata !{i32 786443, metadata !1, metadata !1116, i32 1024, i32 2, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1124 = metadata !{i32 1025, i32 2, metadata !1125, null}
!1125 = metadata !{i32 786443, metadata !1, metadata !1126, i32 1025, i32 2, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1126 = metadata !{i32 786443, metadata !1, metadata !112, i32 1025, i32 2, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1127 = metadata !{i32 1025, i32 2, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !1, metadata !1129, i32 1025, i32 2, i32 1, i32 687} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1129 = metadata !{i32 786443, metadata !1, metadata !1125, i32 1025, i32 2, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1130 = metadata !{i32 1025, i32 2, metadata !1131, null}
!1131 = metadata !{i32 786443, metadata !1, metadata !1132, i32 1025, i32 2, i32 2, i32 688} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1132 = metadata !{i32 786443, metadata !1, metadata !1125, i32 1025, i32 2, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1133 = metadata !{i32 1028, i32 13, metadata !112, null}
!1134 = metadata !{i32 1032, i32 2, metadata !112, null}
!1135 = metadata !{i32 1033, i32 2, metadata !112, null}
!1136 = metadata !{i32 1035, i32 1, metadata !112, null}
!1137 = metadata !{i32 1035, i32 1, metadata !1138, null}
!1138 = metadata !{i32 786443, metadata !1, metadata !112, i32 1035, i32 1, i32 1, i32 689} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1139 = metadata !{i32 786689, metadata !115, metadata !"InstancePtr", metadata !5, i32 16778273, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1057]
!1140 = metadata !{i32 1057, i32 26, metadata !115, null}
!1141 = metadata !{i32 786689, metadata !115, metadata !"FrameSyncIndex", metadata !5, i32 33555489, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrameSyncIndex] [line 1057]
!1142 = metadata !{i32 1057, i32 43, metadata !115, null}
!1143 = metadata !{i32 786689, metadata !115, metadata !"VertStart", metadata !5, i32 50332705, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [VertStart] [line 1057]
!1144 = metadata !{i32 1057, i32 63, metadata !115, null}
!1145 = metadata !{i32 786689, metadata !115, metadata !"HoriStart", metadata !5, i32 67109922, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HoriStart] [line 1058]
!1146 = metadata !{i32 1058, i32 8, metadata !115, null}
!1147 = metadata !{i32 786688, metadata !115, metadata !"RegValue", metadata !5, i32 1060, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1060]
!1148 = metadata !{i32 1060, i32 6, metadata !115, null}
!1149 = metadata !{i32 786688, metadata !115, metadata !"RegAddress", metadata !5, i32 1061, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegAddress] [line 1061]
!1150 = metadata !{i32 1061, i32 6, metadata !115, null}
!1151 = metadata !{i32 1064, i32 2, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1153, i32 1064, i32 2, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1153 = metadata !{i32 786443, metadata !1, metadata !115, i32 1064, i32 2, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1154 = metadata !{i32 1064, i32 2, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !1, metadata !1156, i32 1064, i32 2, i32 1, i32 690} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1156 = metadata !{i32 786443, metadata !1, metadata !1152, i32 1064, i32 2, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1157 = metadata !{i32 1064, i32 2, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !1159, i32 1064, i32 2, i32 2, i32 691} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1159 = metadata !{i32 786443, metadata !1, metadata !1152, i32 1064, i32 2, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1160 = metadata !{i32 1065, i32 2, metadata !1161, null}
!1161 = metadata !{i32 786443, metadata !1, metadata !1162, i32 1065, i32 2, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1162 = metadata !{i32 786443, metadata !1, metadata !115, i32 1065, i32 2, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1163 = metadata !{i32 1065, i32 2, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !1165, i32 1065, i32 2, i32 1, i32 692} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1165 = metadata !{i32 786443, metadata !1, metadata !1161, i32 1065, i32 2, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1166 = metadata !{i32 1065, i32 2, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !1, metadata !1168, i32 1065, i32 2, i32 2, i32 693} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1168 = metadata !{i32 786443, metadata !1, metadata !1161, i32 1065, i32 2, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1169 = metadata !{i32 1066, i32 2, metadata !1170, null}
!1170 = metadata !{i32 786443, metadata !1, metadata !1171, i32 1066, i32 2, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1171 = metadata !{i32 786443, metadata !1, metadata !115, i32 1066, i32 2, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1172 = metadata !{i32 1066, i32 2, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !1174, i32 1066, i32 2, i32 1, i32 694} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1174 = metadata !{i32 786443, metadata !1, metadata !1170, i32 1066, i32 2, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1175 = metadata !{i32 1066, i32 2, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !1, metadata !1177, i32 1066, i32 2, i32 2, i32 695} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1177 = metadata !{i32 786443, metadata !1, metadata !1170, i32 1066, i32 2, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1178 = metadata !{i32 1067, i32 2, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !1, metadata !1180, i32 1067, i32 2, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1180 = metadata !{i32 786443, metadata !1, metadata !115, i32 1067, i32 2, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1181 = metadata !{i32 1067, i32 2, metadata !1182, null}
!1182 = metadata !{i32 786443, metadata !1, metadata !1183, i32 1067, i32 2, i32 1, i32 696} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1183 = metadata !{i32 786443, metadata !1, metadata !1179, i32 1067, i32 2, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1184 = metadata !{i32 1067, i32 2, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !1, metadata !1186, i32 1067, i32 2, i32 2, i32 697} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1186 = metadata !{i32 786443, metadata !1, metadata !1179, i32 1067, i32 2, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1187 = metadata !{i32 1068, i32 2, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1, metadata !1189, i32 1068, i32 2, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1189 = metadata !{i32 786443, metadata !1, metadata !115, i32 1068, i32 2, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1190 = metadata !{i32 1068, i32 2, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1, metadata !1192, i32 1068, i32 2, i32 1, i32 698} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1192 = metadata !{i32 786443, metadata !1, metadata !1188, i32 1068, i32 2, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1193 = metadata !{i32 1068, i32 2, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !1, metadata !1195, i32 1068, i32 2, i32 2, i32 699} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1195 = metadata !{i32 786443, metadata !1, metadata !1188, i32 1068, i32 2, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1196 = metadata !{i32 1071, i32 2, metadata !115, null}
!1197 = metadata !{i32 1072, i32 2, metadata !115, null}
!1198 = metadata !{i32 1076, i32 2, metadata !115, null}
!1199 = metadata !{i32 1079, i32 2, metadata !115, null}
!1200 = metadata !{i32 1080, i32 1, metadata !115, null}
!1201 = metadata !{i32 1080, i32 1, metadata !1202, null}
!1202 = metadata !{i32 786443, metadata !1, metadata !115, i32 1080, i32 1, i32 1, i32 700} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1203 = metadata !{i32 786689, metadata !118, metadata !"InstancePtr", metadata !5, i32 16778317, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1101]
!1204 = metadata !{i32 1101, i32 26, metadata !118, null}
!1205 = metadata !{i32 786689, metadata !118, metadata !"FrameSyncIndex", metadata !5, i32 33555533, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrameSyncIndex] [line 1101]
!1206 = metadata !{i32 1101, i32 43, metadata !118, null}
!1207 = metadata !{i32 786689, metadata !118, metadata !"VertStartPtr", metadata !5, i32 50332750, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [VertStartPtr] [line 1102]
!1208 = metadata !{i32 1102, i32 9, metadata !118, null}
!1209 = metadata !{i32 786689, metadata !118, metadata !"HoriStartPtr", metadata !5, i32 67109966, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HoriStartPtr] [line 1102]
!1210 = metadata !{i32 1102, i32 28, metadata !118, null}
!1211 = metadata !{i32 786688, metadata !118, metadata !"RegValue", metadata !5, i32 1104, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1104]
!1212 = metadata !{i32 1104, i32 6, metadata !118, null}
!1213 = metadata !{i32 786688, metadata !118, metadata !"RegAddress", metadata !5, i32 1105, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegAddress] [line 1105]
!1214 = metadata !{i32 1105, i32 6, metadata !118, null}
!1215 = metadata !{i32 1108, i32 2, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1, metadata !1217, i32 1108, i32 2, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1217 = metadata !{i32 786443, metadata !1, metadata !118, i32 1108, i32 2, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1218 = metadata !{i32 1108, i32 2, metadata !1219, null}
!1219 = metadata !{i32 786443, metadata !1, metadata !1220, i32 1108, i32 2, i32 1, i32 701} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1220 = metadata !{i32 786443, metadata !1, metadata !1216, i32 1108, i32 2, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1221 = metadata !{i32 1108, i32 2, metadata !1222, null}
!1222 = metadata !{i32 786443, metadata !1, metadata !1223, i32 1108, i32 2, i32 2, i32 702} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1223 = metadata !{i32 786443, metadata !1, metadata !1216, i32 1108, i32 2, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1224 = metadata !{i32 1109, i32 2, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !1, metadata !1226, i32 1109, i32 2, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1226 = metadata !{i32 786443, metadata !1, metadata !118, i32 1109, i32 2, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1227 = metadata !{i32 1109, i32 2, metadata !1228, null}
!1228 = metadata !{i32 786443, metadata !1, metadata !1229, i32 1109, i32 2, i32 1, i32 703} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1229 = metadata !{i32 786443, metadata !1, metadata !1225, i32 1109, i32 2, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1230 = metadata !{i32 1109, i32 2, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !1, metadata !1232, i32 1109, i32 2, i32 2, i32 704} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1232 = metadata !{i32 786443, metadata !1, metadata !1225, i32 1109, i32 2, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1233 = metadata !{i32 1110, i32 2, metadata !1234, null}
!1234 = metadata !{i32 786443, metadata !1, metadata !1235, i32 1110, i32 2, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1235 = metadata !{i32 786443, metadata !1, metadata !118, i32 1110, i32 2, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1236 = metadata !{i32 1110, i32 2, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !1, metadata !1238, i32 1110, i32 2, i32 1, i32 705} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1238 = metadata !{i32 786443, metadata !1, metadata !1234, i32 1110, i32 2, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1239 = metadata !{i32 1110, i32 2, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1110, i32 2, i32 2, i32 706} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1241 = metadata !{i32 786443, metadata !1, metadata !1234, i32 1110, i32 2, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1242 = metadata !{i32 1111, i32 2, metadata !1243, null}
!1243 = metadata !{i32 786443, metadata !1, metadata !1244, i32 1111, i32 2, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1244 = metadata !{i32 786443, metadata !1, metadata !118, i32 1111, i32 2, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1245 = metadata !{i32 1111, i32 2, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !1, metadata !1247, i32 1111, i32 2, i32 1, i32 707} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1247 = metadata !{i32 786443, metadata !1, metadata !1243, i32 1111, i32 2, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1248 = metadata !{i32 1111, i32 2, metadata !1249, null}
!1249 = metadata !{i32 786443, metadata !1, metadata !1250, i32 1111, i32 2, i32 2, i32 708} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1250 = metadata !{i32 786443, metadata !1, metadata !1243, i32 1111, i32 2, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1251 = metadata !{i32 1112, i32 2, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !1, metadata !1253, i32 1112, i32 2, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1253 = metadata !{i32 786443, metadata !1, metadata !118, i32 1112, i32 2, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1254 = metadata !{i32 1112, i32 2, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1, metadata !1256, i32 1112, i32 2, i32 1, i32 709} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1256 = metadata !{i32 786443, metadata !1, metadata !1252, i32 1112, i32 2, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1257 = metadata !{i32 1112, i32 2, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !1, metadata !1259, i32 1112, i32 2, i32 2, i32 710} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1259 = metadata !{i32 786443, metadata !1, metadata !1252, i32 1112, i32 2, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1260 = metadata !{i32 1115, i32 2, metadata !118, null}
!1261 = metadata !{i32 1118, i32 13, metadata !118, null}
!1262 = metadata !{i32 1121, i32 2, metadata !118, null}
!1263 = metadata !{i32 1122, i32 2, metadata !118, null}
!1264 = metadata !{i32 1124, i32 1, metadata !118, null}
!1265 = metadata !{i32 1124, i32 1, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !1, metadata !118, i32 1124, i32 1, i32 1, i32 711} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1267 = metadata !{i32 786689, metadata !122, metadata !"InstancePtr", metadata !5, i32 16778353, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1137]
!1268 = metadata !{i32 1137, i32 40, metadata !122, null}
!1269 = metadata !{i32 786689, metadata !122, metadata !"HoriOffsets", metadata !5, i32 33555570, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HoriOffsets] [line 1138]
!1270 = metadata !{i32 1138, i32 23, metadata !122, null}
!1271 = metadata !{i32 786688, metadata !122, metadata !"RegValue", metadata !5, i32 1140, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1140]
!1272 = metadata !{i32 1140, i32 6, metadata !122, null}
!1273 = metadata !{i32 1143, i32 2, metadata !1274, null}
!1274 = metadata !{i32 786443, metadata !1, metadata !1275, i32 1143, i32 2, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1275 = metadata !{i32 786443, metadata !1, metadata !122, i32 1143, i32 2, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1276 = metadata !{i32 1143, i32 2, metadata !1277, null}
!1277 = metadata !{i32 786443, metadata !1, metadata !1278, i32 1143, i32 2, i32 1, i32 712} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1278 = metadata !{i32 786443, metadata !1, metadata !1274, i32 1143, i32 2, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1279 = metadata !{i32 1143, i32 2, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !1, metadata !1281, i32 1143, i32 2, i32 2, i32 713} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1281 = metadata !{i32 786443, metadata !1, metadata !1274, i32 1143, i32 2, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1282 = metadata !{i32 1144, i32 2, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1, metadata !1284, i32 1144, i32 2, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1284 = metadata !{i32 786443, metadata !1, metadata !122, i32 1144, i32 2, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1285 = metadata !{i32 1144, i32 2, metadata !1286, null}
!1286 = metadata !{i32 786443, metadata !1, metadata !1287, i32 1144, i32 2, i32 1, i32 714} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1287 = metadata !{i32 786443, metadata !1, metadata !1283, i32 1144, i32 2, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1288 = metadata !{i32 1144, i32 2, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !1, metadata !1290, i32 1144, i32 2, i32 2, i32 715} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1290 = metadata !{i32 786443, metadata !1, metadata !1283, i32 1144, i32 2, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1291 = metadata !{i32 1145, i32 2, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1, metadata !1293, i32 1145, i32 2, i32 0, i32 310} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1293 = metadata !{i32 786443, metadata !1, metadata !122, i32 1145, i32 2, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1294 = metadata !{i32 1145, i32 2, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1, metadata !1296, i32 1145, i32 2, i32 1, i32 716} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1296 = metadata !{i32 786443, metadata !1, metadata !1292, i32 1145, i32 2, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1297 = metadata !{i32 1145, i32 2, metadata !1298, null}
!1298 = metadata !{i32 786443, metadata !1, metadata !1299, i32 1145, i32 2, i32 2, i32 717} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1299 = metadata !{i32 786443, metadata !1, metadata !1292, i32 1145, i32 2, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1300 = metadata !{i32 1149, i32 2, metadata !122, null}
!1301 = metadata !{i32 1150, i32 2, metadata !122, null}
!1302 = metadata !{i32 1152, i32 2, metadata !122, null}
!1303 = metadata !{i32 1158, i32 2, metadata !122, null}
!1304 = metadata !{i32 1159, i32 2, metadata !122, null}
!1305 = metadata !{i32 1161, i32 2, metadata !122, null}
!1306 = metadata !{i32 1167, i32 2, metadata !122, null}
!1307 = metadata !{i32 1168, i32 2, metadata !122, null}
!1308 = metadata !{i32 1170, i32 2, metadata !122, null}
!1309 = metadata !{i32 1176, i32 2, metadata !122, null}
!1310 = metadata !{i32 1177, i32 2, metadata !122, null}
!1311 = metadata !{i32 1179, i32 2, metadata !122, null}
!1312 = metadata !{i32 1182, i32 1, metadata !122, null}
!1313 = metadata !{i32 1182, i32 1, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !1, metadata !122, i32 1182, i32 1, i32 1, i32 718} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1315 = metadata !{i32 786689, metadata !137, metadata !"InstancePtr", metadata !5, i32 16778418, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1202]
!1316 = metadata !{i32 1202, i32 40, metadata !137, null}
!1317 = metadata !{i32 786689, metadata !137, metadata !"HoriOffsets", metadata !5, i32 33555635, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HoriOffsets] [line 1203]
!1318 = metadata !{i32 1203, i32 24, metadata !137, null}
!1319 = metadata !{i32 786688, metadata !137, metadata !"RegValue", metadata !5, i32 1205, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1205]
!1320 = metadata !{i32 1205, i32 6, metadata !137, null}
!1321 = metadata !{i32 1208, i32 2, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !1, metadata !1323, i32 1208, i32 2, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1323 = metadata !{i32 786443, metadata !1, metadata !137, i32 1208, i32 2, i32 0, i32 313} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1324 = metadata !{i32 1208, i32 2, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !1326, i32 1208, i32 2, i32 1, i32 719} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1326 = metadata !{i32 786443, metadata !1, metadata !1322, i32 1208, i32 2, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1327 = metadata !{i32 1208, i32 2, metadata !1328, null}
!1328 = metadata !{i32 786443, metadata !1, metadata !1329, i32 1208, i32 2, i32 2, i32 720} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1329 = metadata !{i32 786443, metadata !1, metadata !1322, i32 1208, i32 2, i32 0, i32 316} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1330 = metadata !{i32 1209, i32 2, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !1, metadata !1332, i32 1209, i32 2, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1332 = metadata !{i32 786443, metadata !1, metadata !137, i32 1209, i32 2, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1333 = metadata !{i32 1209, i32 2, metadata !1334, null}
!1334 = metadata !{i32 786443, metadata !1, metadata !1335, i32 1209, i32 2, i32 1, i32 721} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1335 = metadata !{i32 786443, metadata !1, metadata !1331, i32 1209, i32 2, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1336 = metadata !{i32 1209, i32 2, metadata !1337, null}
!1337 = metadata !{i32 786443, metadata !1, metadata !1338, i32 1209, i32 2, i32 2, i32 722} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1338 = metadata !{i32 786443, metadata !1, metadata !1331, i32 1209, i32 2, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1339 = metadata !{i32 1210, i32 2, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1, metadata !1341, i32 1210, i32 2, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1341 = metadata !{i32 786443, metadata !1, metadata !137, i32 1210, i32 2, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1342 = metadata !{i32 1210, i32 2, metadata !1343, null}
!1343 = metadata !{i32 786443, metadata !1, metadata !1344, i32 1210, i32 2, i32 1, i32 723} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1344 = metadata !{i32 786443, metadata !1, metadata !1340, i32 1210, i32 2, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1345 = metadata !{i32 1210, i32 2, metadata !1346, null}
!1346 = metadata !{i32 786443, metadata !1, metadata !1347, i32 1210, i32 2, i32 2, i32 724} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1347 = metadata !{i32 786443, metadata !1, metadata !1340, i32 1210, i32 2, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1348 = metadata !{i32 1213, i32 13, metadata !137, null}
!1349 = metadata !{i32 1215, i32 2, metadata !137, null}
!1350 = metadata !{i32 1216, i32 2, metadata !137, null}
!1351 = metadata !{i32 1220, i32 13, metadata !137, null}
!1352 = metadata !{i32 1222, i32 2, metadata !137, null}
!1353 = metadata !{i32 1223, i32 2, metadata !137, null}
!1354 = metadata !{i32 1227, i32 13, metadata !137, null}
!1355 = metadata !{i32 1229, i32 2, metadata !137, null}
!1356 = metadata !{i32 1230, i32 2, metadata !137, null}
!1357 = metadata !{i32 1234, i32 13, metadata !137, null}
!1358 = metadata !{i32 1236, i32 2, metadata !137, null}
!1359 = metadata !{i32 1237, i32 2, metadata !137, null}
!1360 = metadata !{i32 1239, i32 1, metadata !137, null}
!1361 = metadata !{i32 1239, i32 1, metadata !1362, null}
!1362 = metadata !{i32 786443, metadata !1, metadata !137, i32 1239, i32 1, i32 1, i32 725} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1363 = metadata !{i32 786689, metadata !138, metadata !"InstancePtr", metadata !5, i32 16778475, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1259]
!1364 = metadata !{i32 1259, i32 39, metadata !138, null}
!1365 = metadata !{i32 786689, metadata !138, metadata !"HoriOffsets", metadata !5, i32 33555692, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HoriOffsets] [line 1260]
!1366 = metadata !{i32 1260, i32 23, metadata !138, null}
!1367 = metadata !{i32 786688, metadata !138, metadata !"RegValue", metadata !5, i32 1262, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1262]
!1368 = metadata !{i32 1262, i32 6, metadata !138, null}
!1369 = metadata !{i32 1265, i32 2, metadata !1370, null}
!1370 = metadata !{i32 786443, metadata !1, metadata !1371, i32 1265, i32 2, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1371 = metadata !{i32 786443, metadata !1, metadata !138, i32 1265, i32 2, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1372 = metadata !{i32 1265, i32 2, metadata !1373, null}
!1373 = metadata !{i32 786443, metadata !1, metadata !1374, i32 1265, i32 2, i32 1, i32 726} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1374 = metadata !{i32 786443, metadata !1, metadata !1370, i32 1265, i32 2, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1375 = metadata !{i32 1265, i32 2, metadata !1376, null}
!1376 = metadata !{i32 786443, metadata !1, metadata !1377, i32 1265, i32 2, i32 2, i32 727} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1377 = metadata !{i32 786443, metadata !1, metadata !1370, i32 1265, i32 2, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1378 = metadata !{i32 1266, i32 2, metadata !1379, null}
!1379 = metadata !{i32 786443, metadata !1, metadata !1380, i32 1266, i32 2, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1380 = metadata !{i32 786443, metadata !1, metadata !138, i32 1266, i32 2, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1381 = metadata !{i32 1266, i32 2, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !1, metadata !1383, i32 1266, i32 2, i32 1, i32 728} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1383 = metadata !{i32 786443, metadata !1, metadata !1379, i32 1266, i32 2, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1384 = metadata !{i32 1266, i32 2, metadata !1385, null}
!1385 = metadata !{i32 786443, metadata !1, metadata !1386, i32 1266, i32 2, i32 2, i32 729} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1386 = metadata !{i32 786443, metadata !1, metadata !1379, i32 1266, i32 2, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1387 = metadata !{i32 1267, i32 2, metadata !1388, null}
!1388 = metadata !{i32 786443, metadata !1, metadata !1389, i32 1267, i32 2, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1389 = metadata !{i32 786443, metadata !1, metadata !138, i32 1267, i32 2, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1390 = metadata !{i32 1267, i32 2, metadata !1391, null}
!1391 = metadata !{i32 786443, metadata !1, metadata !1392, i32 1267, i32 2, i32 1, i32 730} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1392 = metadata !{i32 786443, metadata !1, metadata !1388, i32 1267, i32 2, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1393 = metadata !{i32 1267, i32 2, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !1, metadata !1395, i32 1267, i32 2, i32 2, i32 731} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1395 = metadata !{i32 786443, metadata !1, metadata !1388, i32 1267, i32 2, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1396 = metadata !{i32 1270, i32 13, metadata !138, null}
!1397 = metadata !{i32 1272, i32 2, metadata !138, null}
!1398 = metadata !{i32 1273, i32 2, metadata !138, null}
!1399 = metadata !{i32 1277, i32 13, metadata !138, null}
!1400 = metadata !{i32 1279, i32 2, metadata !138, null}
!1401 = metadata !{i32 1280, i32 2, metadata !138, null}
!1402 = metadata !{i32 1284, i32 13, metadata !138, null}
!1403 = metadata !{i32 1286, i32 2, metadata !138, null}
!1404 = metadata !{i32 1287, i32 2, metadata !138, null}
!1405 = metadata !{i32 1291, i32 13, metadata !138, null}
!1406 = metadata !{i32 1293, i32 2, metadata !138, null}
!1407 = metadata !{i32 1294, i32 2, metadata !138, null}
!1408 = metadata !{i32 1296, i32 1, metadata !138, null}
!1409 = metadata !{i32 1296, i32 1, metadata !1410, null}
!1410 = metadata !{i32 786443, metadata !1, metadata !138, i32 1296, i32 1, i32 1, i32 732} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1411 = metadata !{i32 786689, metadata !139, metadata !"InstancePtr", metadata !5, i32 16778530, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1314]
!1412 = metadata !{i32 1314, i32 30, metadata !139, null}
!1413 = metadata !{i32 786689, metadata !139, metadata !"SignalCfgPtr", metadata !5, i32 33555746, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SignalCfgPtr] [line 1314]
!1414 = metadata !{i32 1314, i32 56, metadata !139, null}
!1415 = metadata !{i32 786688, metadata !139, metadata !"RegValue", metadata !5, i32 1316, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1316]
!1416 = metadata !{i32 1316, i32 6, metadata !139, null}
!1417 = metadata !{i32 786688, metadata !139, metadata !"r_htotal", metadata !5, i32 1317, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_htotal] [line 1317]
!1418 = metadata !{i32 1317, i32 6, metadata !139, null}
!1419 = metadata !{i32 786688, metadata !139, metadata !"r_vtotal", metadata !5, i32 1317, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_vtotal] [line 1317]
!1420 = metadata !{i32 1317, i32 16, metadata !139, null}
!1421 = metadata !{i32 786688, metadata !139, metadata !"r_hactive", metadata !5, i32 1317, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_hactive] [line 1317]
!1422 = metadata !{i32 1317, i32 26, metadata !139, null}
!1423 = metadata !{i32 786688, metadata !139, metadata !"r_vactive", metadata !5, i32 1317, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_vactive] [line 1317]
!1424 = metadata !{i32 1317, i32 37, metadata !139, null}
!1425 = metadata !{i32 786688, metadata !139, metadata !"SCPtr", metadata !5, i32 1318, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SCPtr] [line 1318]
!1426 = metadata !{i32 1318, i32 15, metadata !139, null}
!1427 = metadata !{i32 786688, metadata !139, metadata !"horiOffsets", metadata !5, i32 1319, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [horiOffsets] [line 1319]
!1428 = metadata !{i32 1319, i32 19, metadata !139, null}
!1429 = metadata !{i32 1322, i32 2, metadata !1430, null}
!1430 = metadata !{i32 786443, metadata !1, metadata !1431, i32 1322, i32 2, i32 0, i32 338} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1431 = metadata !{i32 786443, metadata !1, metadata !139, i32 1322, i32 2, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1432 = metadata !{i32 1322, i32 2, metadata !1433, null}
!1433 = metadata !{i32 786443, metadata !1, metadata !1434, i32 1322, i32 2, i32 1, i32 733} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1434 = metadata !{i32 786443, metadata !1, metadata !1430, i32 1322, i32 2, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1435 = metadata !{i32 1322, i32 2, metadata !1436, null}
!1436 = metadata !{i32 786443, metadata !1, metadata !1437, i32 1322, i32 2, i32 2, i32 734} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1437 = metadata !{i32 786443, metadata !1, metadata !1430, i32 1322, i32 2, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1438 = metadata !{i32 1323, i32 2, metadata !1439, null}
!1439 = metadata !{i32 786443, metadata !1, metadata !1440, i32 1323, i32 2, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1440 = metadata !{i32 786443, metadata !1, metadata !139, i32 1323, i32 2, i32 0, i32 341} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1441 = metadata !{i32 1323, i32 2, metadata !1442, null}
!1442 = metadata !{i32 786443, metadata !1, metadata !1443, i32 1323, i32 2, i32 1, i32 735} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1443 = metadata !{i32 786443, metadata !1, metadata !1439, i32 1323, i32 2, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1444 = metadata !{i32 1323, i32 2, metadata !1445, null}
!1445 = metadata !{i32 786443, metadata !1, metadata !1446, i32 1323, i32 2, i32 2, i32 736} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1446 = metadata !{i32 786443, metadata !1, metadata !1439, i32 1323, i32 2, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1447 = metadata !{i32 1324, i32 2, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !1, metadata !1449, i32 1324, i32 2, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1449 = metadata !{i32 786443, metadata !1, metadata !139, i32 1324, i32 2, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1450 = metadata !{i32 1324, i32 2, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !1, metadata !1452, i32 1324, i32 2, i32 1, i32 737} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1452 = metadata !{i32 786443, metadata !1, metadata !1448, i32 1324, i32 2, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1453 = metadata !{i32 1324, i32 2, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !1, metadata !1455, i32 1324, i32 2, i32 2, i32 738} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1455 = metadata !{i32 786443, metadata !1, metadata !1448, i32 1324, i32 2, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1456 = metadata !{i32 1326, i32 2, metadata !139, null}
!1457 = metadata !{i32 1327, i32 5, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !1, metadata !139, i32 1327, i32 5, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1459 = metadata !{i32 1329, i32 3, metadata !1460, null}
!1460 = metadata !{i32 786443, metadata !1, metadata !1458, i32 1328, i32 2, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1461 = metadata !{i32 1330, i32 3, metadata !1460, null}
!1462 = metadata !{i32 1332, i32 3, metadata !1460, null}
!1463 = metadata !{i32 1333, i32 3, metadata !1460, null}
!1464 = metadata !{i32 1335, i32 3, metadata !1460, null}
!1465 = metadata !{i32 1336, i32 3, metadata !1460, null}
!1466 = metadata !{i32 1339, i32 3, metadata !1460, null}
!1467 = metadata !{i32 1340, i32 3, metadata !1460, null}
!1468 = metadata !{i32 1342, i32 3, metadata !1460, null}
!1469 = metadata !{i32 1346, i32 3, metadata !1460, null}
!1470 = metadata !{i32 1347, i32 3, metadata !1460, null}
!1471 = metadata !{i32 1349, i32 3, metadata !1460, null}
!1472 = metadata !{i32 1353, i32 3, metadata !1460, null}
!1473 = metadata !{i32 1355, i32 3, metadata !1460, null}
!1474 = metadata !{i32 1357, i32 3, metadata !1460, null}
!1475 = metadata !{i32 1361, i32 3, metadata !1460, null}
!1476 = metadata !{i32 1363, i32 3, metadata !1460, null}
!1477 = metadata !{i32 1365, i32 3, metadata !1460, null}
!1478 = metadata !{i32 1369, i32 3, metadata !1460, null}
!1479 = metadata !{i32 1371, i32 3, metadata !1460, null}
!1480 = metadata !{i32 1373, i32 3, metadata !1460, null}
!1481 = metadata !{i32 1377, i32 14, metadata !1460, null}
!1482 = metadata !{i32 1379, i32 3, metadata !1460, null}
!1483 = metadata !{i32 1380, i32 3, metadata !1460, null}
!1484 = metadata !{i32 1384, i32 3, metadata !1460, null}
!1485 = metadata !{i32 1385, i32 3, metadata !1460, null}
!1486 = metadata !{i32 1388, i32 3, metadata !1460, null}
!1487 = metadata !{i32 1394, i32 3, metadata !1460, null}
!1488 = metadata !{i32 1395, i32 3, metadata !1460, null}
!1489 = metadata !{i32 1396, i32 3, metadata !1460, null}
!1490 = metadata !{i32 1397, i32 3, metadata !1460, null}
!1491 = metadata !{i32 1399, i32 3, metadata !1460, null}
!1492 = metadata !{i32 1400, i32 3, metadata !1460, null}
!1493 = metadata !{i32 1401, i32 3, metadata !1460, null}
!1494 = metadata !{i32 1402, i32 3, metadata !1460, null}
!1495 = metadata !{i32 1404, i32 2, metadata !1460, null}
!1496 = metadata !{i32 1408, i32 3, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !1, metadata !1458, i32 1406, i32 2, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1498 = metadata !{i32 1410, i32 3, metadata !1497, null}
!1499 = metadata !{i32 1411, i32 3, metadata !1497, null}
!1500 = metadata !{i32 1412, i32 3, metadata !1497, null}
!1501 = metadata !{i32 1414, i32 3, metadata !1497, null}
!1502 = metadata !{i32 1415, i32 3, metadata !1497, null}
!1503 = metadata !{i32 1418, i32 3, metadata !1497, null}
!1504 = metadata !{i32 1419, i32 3, metadata !1497, null}
!1505 = metadata !{i32 1421, i32 3, metadata !1497, null}
!1506 = metadata !{i32 1425, i32 3, metadata !1497, null}
!1507 = metadata !{i32 1426, i32 3, metadata !1497, null}
!1508 = metadata !{i32 1428, i32 3, metadata !1497, null}
!1509 = metadata !{i32 1432, i32 3, metadata !1497, null}
!1510 = metadata !{i32 1433, i32 3, metadata !1497, null}
!1511 = metadata !{i32 1435, i32 3, metadata !1497, null}
!1512 = metadata !{i32 1440, i32 3, metadata !1497, null}
!1513 = metadata !{i32 1441, i32 3, metadata !1497, null}
!1514 = metadata !{i32 1443, i32 3, metadata !1497, null}
!1515 = metadata !{i32 1447, i32 3, metadata !1497, null}
!1516 = metadata !{i32 1448, i32 3, metadata !1497, null}
!1517 = metadata !{i32 1450, i32 3, metadata !1497, null}
!1518 = metadata !{i32 1454, i32 16, metadata !1497, null}
!1519 = metadata !{i32 1456, i32 3, metadata !1497, null}
!1520 = metadata !{i32 1457, i32 3, metadata !1497, null}
!1521 = metadata !{i32 1461, i32 3, metadata !1497, null}
!1522 = metadata !{i32 1462, i32 3, metadata !1497, null}
!1523 = metadata !{i32 1465, i32 3, metadata !1497, null}
!1524 = metadata !{i32 1471, i32 3, metadata !1497, null}
!1525 = metadata !{i32 1472, i32 3, metadata !1497, null}
!1526 = metadata !{i32 1473, i32 3, metadata !1497, null}
!1527 = metadata !{i32 1474, i32 3, metadata !1497, null}
!1528 = metadata !{i32 1475, i32 3, metadata !1497, null}
!1529 = metadata !{i32 1476, i32 3, metadata !1497, null}
!1530 = metadata !{i32 1477, i32 3, metadata !1497, null}
!1531 = metadata !{i32 1478, i32 3, metadata !1497, null}
!1532 = metadata !{i32 1481, i32 2, metadata !139, null}
!1533 = metadata !{i32 1483, i32 1, metadata !139, null}
!1534 = metadata !{i32 1483, i32 1, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !1, metadata !139, i32 1483, i32 1, i32 1, i32 739} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1536 = metadata !{i32 786689, metadata !165, metadata !"InstancePtr", metadata !5, i32 16778718, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1502]
!1537 = metadata !{i32 1502, i32 30, metadata !165, null}
!1538 = metadata !{i32 786689, metadata !165, metadata !"SignalCfgPtr", metadata !5, i32 33555934, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SignalCfgPtr] [line 1502]
!1539 = metadata !{i32 1502, i32 56, metadata !165, null}
!1540 = metadata !{i32 786688, metadata !165, metadata !"RegValue", metadata !5, i32 1504, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1504]
!1541 = metadata !{i32 1504, i32 6, metadata !165, null}
!1542 = metadata !{i32 786688, metadata !165, metadata !"r_htotal", metadata !5, i32 1505, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_htotal] [line 1505]
!1543 = metadata !{i32 1505, i32 7, metadata !165, null}
!1544 = metadata !{i32 786688, metadata !165, metadata !"r_vtotal", metadata !5, i32 1505, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_vtotal] [line 1505]
!1545 = metadata !{i32 1505, i32 17, metadata !165, null}
!1546 = metadata !{i32 786688, metadata !165, metadata !"r_hactive", metadata !5, i32 1505, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_hactive] [line 1505]
!1547 = metadata !{i32 1505, i32 27, metadata !165, null}
!1548 = metadata !{i32 786688, metadata !165, metadata !"r_vactive", metadata !5, i32 1505, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_vactive] [line 1505]
!1549 = metadata !{i32 1505, i32 38, metadata !165, null}
!1550 = metadata !{i32 786688, metadata !165, metadata !"SCPtr", metadata !5, i32 1506, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SCPtr] [line 1506]
!1551 = metadata !{i32 1506, i32 15, metadata !165, null}
!1552 = metadata !{i32 1509, i32 2, metadata !1553, null}
!1553 = metadata !{i32 786443, metadata !1, metadata !1554, i32 1509, i32 2, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1554 = metadata !{i32 786443, metadata !1, metadata !165, i32 1509, i32 2, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1555 = metadata !{i32 1509, i32 2, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !1, metadata !1557, i32 1509, i32 2, i32 1, i32 740} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1557 = metadata !{i32 786443, metadata !1, metadata !1553, i32 1509, i32 2, i32 0, i32 354} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1558 = metadata !{i32 1509, i32 2, metadata !1559, null}
!1559 = metadata !{i32 786443, metadata !1, metadata !1560, i32 1509, i32 2, i32 2, i32 741} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1560 = metadata !{i32 786443, metadata !1, metadata !1553, i32 1509, i32 2, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1561 = metadata !{i32 1510, i32 2, metadata !1562, null}
!1562 = metadata !{i32 786443, metadata !1, metadata !1563, i32 1510, i32 2, i32 0, i32 357} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1563 = metadata !{i32 786443, metadata !1, metadata !165, i32 1510, i32 2, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1564 = metadata !{i32 1510, i32 2, metadata !1565, null}
!1565 = metadata !{i32 786443, metadata !1, metadata !1566, i32 1510, i32 2, i32 1, i32 742} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1566 = metadata !{i32 786443, metadata !1, metadata !1562, i32 1510, i32 2, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1567 = metadata !{i32 1510, i32 2, metadata !1568, null}
!1568 = metadata !{i32 786443, metadata !1, metadata !1569, i32 1510, i32 2, i32 2, i32 743} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1569 = metadata !{i32 786443, metadata !1, metadata !1562, i32 1510, i32 2, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1570 = metadata !{i32 1511, i32 2, metadata !1571, null}
!1571 = metadata !{i32 786443, metadata !1, metadata !1572, i32 1511, i32 2, i32 0, i32 361} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1572 = metadata !{i32 786443, metadata !1, metadata !165, i32 1511, i32 2, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1573 = metadata !{i32 1511, i32 2, metadata !1574, null}
!1574 = metadata !{i32 786443, metadata !1, metadata !1575, i32 1511, i32 2, i32 1, i32 744} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1575 = metadata !{i32 786443, metadata !1, metadata !1571, i32 1511, i32 2, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1576 = metadata !{i32 1511, i32 2, metadata !1577, null}
!1577 = metadata !{i32 786443, metadata !1, metadata !1578, i32 1511, i32 2, i32 2, i32 745} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1578 = metadata !{i32 786443, metadata !1, metadata !1571, i32 1511, i32 2, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1579 = metadata !{i32 1513, i32 2, metadata !165, null}
!1580 = metadata !{i32 1514, i32 6, metadata !1581, null}
!1581 = metadata !{i32 786443, metadata !1, metadata !165, i32 1514, i32 6, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1582 = metadata !{i32 1517, i32 13, metadata !1583, null}
!1583 = metadata !{i32 786443, metadata !1, metadata !1581, i32 1515, i32 3, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1584 = metadata !{i32 1518, i32 2, metadata !1583, null}
!1585 = metadata !{i32 1519, i32 2, metadata !1583, null}
!1586 = metadata !{i32 1521, i32 13, metadata !1583, null}
!1587 = metadata !{i32 1522, i32 2, metadata !1583, null}
!1588 = metadata !{i32 1523, i32 2, metadata !1583, null}
!1589 = metadata !{i32 1524, i32 2, metadata !1583, null}
!1590 = metadata !{i32 1525, i32 8, metadata !1591, null}
!1591 = metadata !{i32 786443, metadata !1, metadata !1583, i32 1525, i32 8, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1592 = metadata !{i32 1527, i32 7, metadata !1593, null}
!1593 = metadata !{i32 786443, metadata !1, metadata !1591, i32 1526, i32 5, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1594 = metadata !{i32 1528, i32 5, metadata !1593, null}
!1595 = metadata !{i32 1530, i32 13, metadata !1583, null}
!1596 = metadata !{i32 1531, i32 2, metadata !1583, null}
!1597 = metadata !{i32 1532, i32 2, metadata !1583, null}
!1598 = metadata !{i32 1533, i32 2, metadata !1583, null}
!1599 = metadata !{i32 1535, i32 2, metadata !1583, null}
!1600 = metadata !{i32 1536, i32 2, metadata !1583, null}
!1601 = metadata !{i32 1538, i32 13, metadata !1583, null}
!1602 = metadata !{i32 1539, i32 5, metadata !1583, null}
!1603 = metadata !{i32 1540, i32 5, metadata !1583, null}
!1604 = metadata !{i32 1542, i32 13, metadata !1583, null}
!1605 = metadata !{i32 1543, i32 5, metadata !1583, null}
!1606 = metadata !{i32 1544, i32 5, metadata !1583, null}
!1607 = metadata !{i32 1546, i32 13, metadata !1583, null}
!1608 = metadata !{i32 1547, i32 5, metadata !1583, null}
!1609 = metadata !{i32 1548, i32 5, metadata !1583, null}
!1610 = metadata !{i32 1552, i32 13, metadata !1583, null}
!1611 = metadata !{i32 1553, i32 2, metadata !1583, null}
!1612 = metadata !{i32 1556, i32 2, metadata !1583, null}
!1613 = metadata !{i32 1559, i32 2, metadata !1583, null}
!1614 = metadata !{i32 1560, i32 5, metadata !1583, null}
!1615 = metadata !{i32 1561, i32 5, metadata !1583, null}
!1616 = metadata !{i32 1562, i32 3, metadata !1583, null}
!1617 = metadata !{i32 1565, i32 14, metadata !1618, null}
!1618 = metadata !{i32 786443, metadata !1, metadata !1581, i32 1564, i32 2, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1619 = metadata !{i32 1567, i32 3, metadata !1618, null}
!1620 = metadata !{i32 1568, i32 3, metadata !1618, null}
!1621 = metadata !{i32 1570, i32 14, metadata !1618, null}
!1622 = metadata !{i32 1572, i32 3, metadata !1618, null}
!1623 = metadata !{i32 1573, i32 3, metadata !1618, null}
!1624 = metadata !{i32 1574, i32 3, metadata !1618, null}
!1625 = metadata !{i32 1577, i32 14, metadata !1618, null}
!1626 = metadata !{i32 1579, i32 3, metadata !1618, null}
!1627 = metadata !{i32 1580, i32 3, metadata !1618, null}
!1628 = metadata !{i32 1581, i32 3, metadata !1618, null}
!1629 = metadata !{i32 1582, i32 3, metadata !1618, null}
!1630 = metadata !{i32 1583, i32 3, metadata !1618, null}
!1631 = metadata !{i32 1585, i32 14, metadata !1618, null}
!1632 = metadata !{i32 1587, i32 3, metadata !1618, null}
!1633 = metadata !{i32 1588, i32 3, metadata !1618, null}
!1634 = metadata !{i32 1591, i32 14, metadata !1618, null}
!1635 = metadata !{i32 1593, i32 3, metadata !1618, null}
!1636 = metadata !{i32 1594, i32 3, metadata !1618, null}
!1637 = metadata !{i32 1597, i32 14, metadata !1618, null}
!1638 = metadata !{i32 1599, i32 3, metadata !1618, null}
!1639 = metadata !{i32 1600, i32 3, metadata !1618, null}
!1640 = metadata !{i32 1604, i32 14, metadata !1618, null}
!1641 = metadata !{i32 1606, i32 3, metadata !1618, null}
!1642 = metadata !{i32 1608, i32 3, metadata !1618, null}
!1643 = metadata !{i32 1610, i32 3, metadata !1618, null}
!1644 = metadata !{i32 1612, i32 3, metadata !1618, null}
!1645 = metadata !{i32 1613, i32 3, metadata !1618, null}
!1646 = metadata !{i32 1614, i32 3, metadata !1618, null}
!1647 = metadata !{i32 1616, i32 1, metadata !165, null}
!1648 = metadata !{i32 786689, metadata !166, metadata !"InstancePtr", metadata !5, i32 16778851, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1635]
!1649 = metadata !{i32 1635, i32 29, metadata !166, null}
!1650 = metadata !{i32 786689, metadata !166, metadata !"SignalCfgPtr", metadata !5, i32 33556067, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SignalCfgPtr] [line 1635]
!1651 = metadata !{i32 1635, i32 55, metadata !166, null}
!1652 = metadata !{i32 786688, metadata !166, metadata !"RegValue", metadata !5, i32 1637, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 1637]
!1653 = metadata !{i32 1637, i32 6, metadata !166, null}
!1654 = metadata !{i32 786688, metadata !166, metadata !"r_htotal", metadata !5, i32 1638, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_htotal] [line 1638]
!1655 = metadata !{i32 1638, i32 6, metadata !166, null}
!1656 = metadata !{i32 786688, metadata !166, metadata !"r_vtotal", metadata !5, i32 1638, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_vtotal] [line 1638]
!1657 = metadata !{i32 1638, i32 16, metadata !166, null}
!1658 = metadata !{i32 786688, metadata !166, metadata !"r_hactive", metadata !5, i32 1638, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_hactive] [line 1638]
!1659 = metadata !{i32 1638, i32 26, metadata !166, null}
!1660 = metadata !{i32 786688, metadata !166, metadata !"r_vactive", metadata !5, i32 1638, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_vactive] [line 1638]
!1661 = metadata !{i32 1638, i32 37, metadata !166, null}
!1662 = metadata !{i32 786688, metadata !166, metadata !"SCPtr", metadata !5, i32 1639, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SCPtr] [line 1639]
!1663 = metadata !{i32 1639, i32 15, metadata !166, null}
!1664 = metadata !{i32 1642, i32 2, metadata !1665, null}
!1665 = metadata !{i32 786443, metadata !1, metadata !1666, i32 1642, i32 2, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1666 = metadata !{i32 786443, metadata !1, metadata !166, i32 1642, i32 2, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1667 = metadata !{i32 1642, i32 2, metadata !1668, null}
!1668 = metadata !{i32 786443, metadata !1, metadata !1669, i32 1642, i32 2, i32 1, i32 746} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1669 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1642, i32 2, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1670 = metadata !{i32 1642, i32 2, metadata !1671, null}
!1671 = metadata !{i32 786443, metadata !1, metadata !1672, i32 1642, i32 2, i32 2, i32 747} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1672 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1642, i32 2, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1673 = metadata !{i32 1643, i32 2, metadata !1674, null}
!1674 = metadata !{i32 786443, metadata !1, metadata !1675, i32 1643, i32 2, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1675 = metadata !{i32 786443, metadata !1, metadata !166, i32 1643, i32 2, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1676 = metadata !{i32 1643, i32 2, metadata !1677, null}
!1677 = metadata !{i32 786443, metadata !1, metadata !1678, i32 1643, i32 2, i32 1, i32 748} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1678 = metadata !{i32 786443, metadata !1, metadata !1674, i32 1643, i32 2, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1679 = metadata !{i32 1643, i32 2, metadata !1680, null}
!1680 = metadata !{i32 786443, metadata !1, metadata !1681, i32 1643, i32 2, i32 2, i32 749} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1681 = metadata !{i32 786443, metadata !1, metadata !1674, i32 1643, i32 2, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1682 = metadata !{i32 1644, i32 2, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !1684, i32 1644, i32 2, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1684 = metadata !{i32 786443, metadata !1, metadata !166, i32 1644, i32 2, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1685 = metadata !{i32 1644, i32 2, metadata !1686, null}
!1686 = metadata !{i32 786443, metadata !1, metadata !1687, i32 1644, i32 2, i32 1, i32 750} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1687 = metadata !{i32 786443, metadata !1, metadata !1683, i32 1644, i32 2, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1688 = metadata !{i32 1644, i32 2, metadata !1689, null}
!1689 = metadata !{i32 786443, metadata !1, metadata !1690, i32 1644, i32 2, i32 2, i32 751} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1690 = metadata !{i32 786443, metadata !1, metadata !1683, i32 1644, i32 2, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1691 = metadata !{i32 1646, i32 2, metadata !166, null}
!1692 = metadata !{i32 1648, i32 5, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !1, metadata !166, i32 1648, i32 5, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1694 = metadata !{i32 1650, i32 14, metadata !1695, null}
!1695 = metadata !{i32 786443, metadata !1, metadata !1693, i32 1649, i32 2, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1696 = metadata !{i32 1652, i32 3, metadata !1695, null}
!1697 = metadata !{i32 1653, i32 3, metadata !1695, null}
!1698 = metadata !{i32 1655, i32 14, metadata !1695, null}
!1699 = metadata !{i32 1657, i32 3, metadata !1695, null}
!1700 = metadata !{i32 1658, i32 3, metadata !1695, null}
!1701 = metadata !{i32 1659, i32 3, metadata !1695, null}
!1702 = metadata !{i32 1661, i32 6, metadata !1703, null}
!1703 = metadata !{i32 786443, metadata !1, metadata !1695, i32 1661, i32 6, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1704 = metadata !{i32 1662, i32 4, metadata !1705, null}
!1705 = metadata !{i32 786443, metadata !1, metadata !1703, i32 1661, i32 27, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1706 = metadata !{i32 1663, i32 3, metadata !1705, null}
!1707 = metadata !{i32 1665, i32 14, metadata !1695, null}
!1708 = metadata !{i32 1667, i32 3, metadata !1695, null}
!1709 = metadata !{i32 1668, i32 3, metadata !1695, null}
!1710 = metadata !{i32 1670, i32 3, metadata !1695, null}
!1711 = metadata !{i32 1672, i32 3, metadata !1695, null}
!1712 = metadata !{i32 1674, i32 3, metadata !1695, null}
!1713 = metadata !{i32 1677, i32 14, metadata !1695, null}
!1714 = metadata !{i32 1679, i32 3, metadata !1695, null}
!1715 = metadata !{i32 1681, i32 3, metadata !1695, null}
!1716 = metadata !{i32 1685, i32 14, metadata !1695, null}
!1717 = metadata !{i32 1687, i32 3, metadata !1695, null}
!1718 = metadata !{i32 1689, i32 3, metadata !1695, null}
!1719 = metadata !{i32 1692, i32 14, metadata !1695, null}
!1720 = metadata !{i32 1694, i32 3, metadata !1695, null}
!1721 = metadata !{i32 1696, i32 3, metadata !1695, null}
!1722 = metadata !{i32 1703, i32 14, metadata !1695, null}
!1723 = metadata !{i32 1705, i32 3, metadata !1695, null}
!1724 = metadata !{i32 1709, i32 3, metadata !1695, null}
!1725 = metadata !{i32 1712, i32 3, metadata !1695, null}
!1726 = metadata !{i32 1714, i32 3, metadata !1695, null}
!1727 = metadata !{i32 1715, i32 3, metadata !1695, null}
!1728 = metadata !{i32 1716, i32 2, metadata !1695, null}
!1729 = metadata !{i32 1719, i32 14, metadata !1730, null}
!1730 = metadata !{i32 786443, metadata !1, metadata !1693, i32 1718, i32 2, i32 0, i32 385} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1731 = metadata !{i32 1721, i32 3, metadata !1730, null}
!1732 = metadata !{i32 1722, i32 3, metadata !1730, null}
!1733 = metadata !{i32 1724, i32 14, metadata !1730, null}
!1734 = metadata !{i32 1726, i32 3, metadata !1730, null}
!1735 = metadata !{i32 1727, i32 3, metadata !1730, null}
!1736 = metadata !{i32 1728, i32 3, metadata !1730, null}
!1737 = metadata !{i32 1731, i32 14, metadata !1730, null}
!1738 = metadata !{i32 1733, i32 3, metadata !1730, null}
!1739 = metadata !{i32 1734, i32 3, metadata !1730, null}
!1740 = metadata !{i32 1735, i32 3, metadata !1730, null}
!1741 = metadata !{i32 1736, i32 3, metadata !1730, null}
!1742 = metadata !{i32 1737, i32 3, metadata !1730, null}
!1743 = metadata !{i32 1739, i32 14, metadata !1730, null}
!1744 = metadata !{i32 1741, i32 3, metadata !1730, null}
!1745 = metadata !{i32 1742, i32 3, metadata !1730, null}
!1746 = metadata !{i32 1745, i32 14, metadata !1730, null}
!1747 = metadata !{i32 1747, i32 3, metadata !1730, null}
!1748 = metadata !{i32 1748, i32 3, metadata !1730, null}
!1749 = metadata !{i32 1751, i32 14, metadata !1730, null}
!1750 = metadata !{i32 1753, i32 3, metadata !1730, null}
!1751 = metadata !{i32 1754, i32 3, metadata !1730, null}
!1752 = metadata !{i32 1761, i32 14, metadata !1730, null}
!1753 = metadata !{i32 1763, i32 3, metadata !1730, null}
!1754 = metadata !{i32 1766, i32 3, metadata !1730, null}
!1755 = metadata !{i32 1768, i32 3, metadata !1730, null}
!1756 = metadata !{i32 1770, i32 3, metadata !1730, null}
!1757 = metadata !{i32 1771, i32 3, metadata !1730, null}
!1758 = metadata !{i32 1772, i32 3, metadata !1730, null}
!1759 = metadata !{i32 1776, i32 1, metadata !166, null}
!1760 = metadata !{i32 786689, metadata !167, metadata !"InstancePtr", metadata !5, i32 16779007, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1791]
!1761 = metadata !{i32 1791, i32 27, metadata !167, null}
!1762 = metadata !{i32 786688, metadata !167, metadata !"Version", metadata !5, i32 1793, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Version] [line 1793]
!1763 = metadata !{i32 1793, i32 6, metadata !167, null}
!1764 = metadata !{i32 1796, i32 2, metadata !1765, null}
!1765 = metadata !{i32 786443, metadata !1, metadata !1766, i32 1796, i32 2, i32 0, i32 387} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1766 = metadata !{i32 786443, metadata !1, metadata !167, i32 1796, i32 2, i32 0, i32 386} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1767 = metadata !{i32 1796, i32 2, metadata !1768, null}
!1768 = metadata !{i32 786443, metadata !1, metadata !1769, i32 1796, i32 2, i32 1, i32 752} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1769 = metadata !{i32 786443, metadata !1, metadata !1765, i32 1796, i32 2, i32 0, i32 388} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1770 = metadata !{i32 1796, i32 2, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !1, metadata !1772, i32 1796, i32 2, i32 2, i32 753} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1772 = metadata !{i32 786443, metadata !1, metadata !1765, i32 1796, i32 2, i32 0, i32 389} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1773 = metadata !{i32 1799, i32 12, metadata !167, null}
!1774 = metadata !{i32 1802, i32 2, metadata !167, null}
!1775 = metadata !{i32 1803, i32 1, metadata !167, null}
!1776 = metadata !{i32 786689, metadata !170, metadata !"InstancePtr", metadata !5, i32 16779038, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1822]
!1777 = metadata !{i32 1822, i32 38, metadata !170, null}
!1778 = metadata !{i32 786689, metadata !170, metadata !"Mode", metadata !5, i32 33556254, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Mode] [line 1822]
!1779 = metadata !{i32 1822, i32 55, metadata !170, null}
!1780 = metadata !{i32 786689, metadata !170, metadata !"TimingPtr", metadata !5, i32 50333471, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TimingPtr] [line 1823]
!1781 = metadata !{i32 1823, i32 19, metadata !170, null}
!1782 = metadata !{i32 1826, i32 2, metadata !1783, null}
!1783 = metadata !{i32 786443, metadata !1, metadata !1784, i32 1826, i32 2, i32 0, i32 391} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1784 = metadata !{i32 786443, metadata !1, metadata !170, i32 1826, i32 2, i32 0, i32 390} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1785 = metadata !{i32 1826, i32 2, metadata !1786, null}
!1786 = metadata !{i32 786443, metadata !1, metadata !1787, i32 1826, i32 2, i32 1, i32 754} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1787 = metadata !{i32 786443, metadata !1, metadata !1783, i32 1826, i32 2, i32 0, i32 392} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1788 = metadata !{i32 1826, i32 2, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !1, metadata !1790, i32 1826, i32 2, i32 2, i32 755} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1790 = metadata !{i32 786443, metadata !1, metadata !1783, i32 1826, i32 2, i32 0, i32 393} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1791 = metadata !{i32 1827, i32 2, metadata !1792, null}
!1792 = metadata !{i32 786443, metadata !1, metadata !1793, i32 1827, i32 2, i32 0, i32 395} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1793 = metadata !{i32 786443, metadata !1, metadata !170, i32 1827, i32 2, i32 0, i32 394} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1794 = metadata !{i32 1827, i32 2, metadata !1795, null}
!1795 = metadata !{i32 786443, metadata !1, metadata !1796, i32 1827, i32 2, i32 1, i32 756} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1796 = metadata !{i32 786443, metadata !1, metadata !1792, i32 1827, i32 2, i32 0, i32 396} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1797 = metadata !{i32 1827, i32 2, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !1, metadata !1799, i32 1827, i32 2, i32 2, i32 757} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1799 = metadata !{i32 786443, metadata !1, metadata !1792, i32 1827, i32 2, i32 0, i32 397} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1800 = metadata !{i32 1828, i32 2, metadata !1801, null}
!1801 = metadata !{i32 786443, metadata !1, metadata !1802, i32 1828, i32 2, i32 0, i32 399} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1802 = metadata !{i32 786443, metadata !1, metadata !170, i32 1828, i32 2, i32 0, i32 398} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1803 = metadata !{i32 1828, i32 2, metadata !1804, null}
!1804 = metadata !{i32 786443, metadata !1, metadata !1805, i32 1828, i32 2, i32 1, i32 758} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1805 = metadata !{i32 786443, metadata !1, metadata !1801, i32 1828, i32 2, i32 0, i32 400} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1806 = metadata !{i32 1828, i32 2, metadata !1807, null}
!1807 = metadata !{i32 786443, metadata !1, metadata !1808, i32 1828, i32 2, i32 2, i32 759} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1808 = metadata !{i32 786443, metadata !1, metadata !1801, i32 1828, i32 2, i32 0, i32 401} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1809 = metadata !{i32 1831, i32 2, metadata !170, null}
!1810 = metadata !{i32 1833, i32 2, metadata !170, null}
!1811 = metadata !{i32 1839, i32 3, metadata !1812, null}
!1812 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1836, i32 2, i32 0, i32 403} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1813 = metadata !{i32 786443, metadata !1, metadata !170, i32 1834, i32 2, i32 0, i32 402} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1814 = metadata !{i32 1840, i32 3, metadata !1812, null}
!1815 = metadata !{i32 1841, i32 3, metadata !1812, null}
!1816 = metadata !{i32 1842, i32 3, metadata !1812, null}
!1817 = metadata !{i32 1843, i32 3, metadata !1812, null}
!1818 = metadata !{i32 1846, i32 3, metadata !1812, null}
!1819 = metadata !{i32 1847, i32 3, metadata !1812, null}
!1820 = metadata !{i32 1848, i32 3, metadata !1812, null}
!1821 = metadata !{i32 1849, i32 3, metadata !1812, null}
!1822 = metadata !{i32 1850, i32 3, metadata !1812, null}
!1823 = metadata !{i32 1852, i32 3, metadata !1812, null}
!1824 = metadata !{i32 1857, i32 3, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1855, i32 2, i32 0, i32 404} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1826 = metadata !{i32 1858, i32 3, metadata !1825, null}
!1827 = metadata !{i32 1859, i32 3, metadata !1825, null}
!1828 = metadata !{i32 1860, i32 3, metadata !1825, null}
!1829 = metadata !{i32 1861, i32 3, metadata !1825, null}
!1830 = metadata !{i32 1864, i32 3, metadata !1825, null}
!1831 = metadata !{i32 1865, i32 3, metadata !1825, null}
!1832 = metadata !{i32 1866, i32 3, metadata !1825, null}
!1833 = metadata !{i32 1867, i32 3, metadata !1825, null}
!1834 = metadata !{i32 1868, i32 3, metadata !1825, null}
!1835 = metadata !{i32 1870, i32 3, metadata !1825, null}
!1836 = metadata !{i32 1875, i32 3, metadata !1837, null}
!1837 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1873, i32 2, i32 0, i32 405} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1838 = metadata !{i32 1876, i32 3, metadata !1837, null}
!1839 = metadata !{i32 1877, i32 3, metadata !1837, null}
!1840 = metadata !{i32 1878, i32 3, metadata !1837, null}
!1841 = metadata !{i32 1879, i32 3, metadata !1837, null}
!1842 = metadata !{i32 1882, i32 3, metadata !1837, null}
!1843 = metadata !{i32 1883, i32 3, metadata !1837, null}
!1844 = metadata !{i32 1884, i32 3, metadata !1837, null}
!1845 = metadata !{i32 1885, i32 3, metadata !1837, null}
!1846 = metadata !{i32 1886, i32 3, metadata !1837, null}
!1847 = metadata !{i32 1888, i32 3, metadata !1837, null}
!1848 = metadata !{i32 1893, i32 3, metadata !1849, null}
!1849 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1891, i32 2, i32 0, i32 406} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1850 = metadata !{i32 1894, i32 3, metadata !1849, null}
!1851 = metadata !{i32 1895, i32 3, metadata !1849, null}
!1852 = metadata !{i32 1896, i32 3, metadata !1849, null}
!1853 = metadata !{i32 1897, i32 3, metadata !1849, null}
!1854 = metadata !{i32 1900, i32 3, metadata !1849, null}
!1855 = metadata !{i32 1901, i32 3, metadata !1849, null}
!1856 = metadata !{i32 1902, i32 3, metadata !1849, null}
!1857 = metadata !{i32 1903, i32 3, metadata !1849, null}
!1858 = metadata !{i32 1904, i32 3, metadata !1849, null}
!1859 = metadata !{i32 1906, i32 3, metadata !1849, null}
!1860 = metadata !{i32 1911, i32 3, metadata !1861, null}
!1861 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1909, i32 2, i32 0, i32 407} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1862 = metadata !{i32 1912, i32 3, metadata !1861, null}
!1863 = metadata !{i32 1913, i32 3, metadata !1861, null}
!1864 = metadata !{i32 1914, i32 3, metadata !1861, null}
!1865 = metadata !{i32 1915, i32 3, metadata !1861, null}
!1866 = metadata !{i32 1918, i32 3, metadata !1861, null}
!1867 = metadata !{i32 1919, i32 3, metadata !1861, null}
!1868 = metadata !{i32 1920, i32 3, metadata !1861, null}
!1869 = metadata !{i32 1921, i32 3, metadata !1861, null}
!1870 = metadata !{i32 1922, i32 3, metadata !1861, null}
!1871 = metadata !{i32 1924, i32 3, metadata !1861, null}
!1872 = metadata !{i32 1929, i32 3, metadata !1873, null}
!1873 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1927, i32 2, i32 0, i32 408} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1874 = metadata !{i32 1930, i32 3, metadata !1873, null}
!1875 = metadata !{i32 1931, i32 3, metadata !1873, null}
!1876 = metadata !{i32 1932, i32 3, metadata !1873, null}
!1877 = metadata !{i32 1933, i32 3, metadata !1873, null}
!1878 = metadata !{i32 1936, i32 3, metadata !1873, null}
!1879 = metadata !{i32 1937, i32 3, metadata !1873, null}
!1880 = metadata !{i32 1938, i32 3, metadata !1873, null}
!1881 = metadata !{i32 1939, i32 3, metadata !1873, null}
!1882 = metadata !{i32 1940, i32 3, metadata !1873, null}
!1883 = metadata !{i32 1942, i32 3, metadata !1873, null}
!1884 = metadata !{i32 1947, i32 3, metadata !1885, null}
!1885 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1945, i32 2, i32 0, i32 409} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1886 = metadata !{i32 1948, i32 3, metadata !1885, null}
!1887 = metadata !{i32 1949, i32 3, metadata !1885, null}
!1888 = metadata !{i32 1950, i32 3, metadata !1885, null}
!1889 = metadata !{i32 1951, i32 3, metadata !1885, null}
!1890 = metadata !{i32 1954, i32 3, metadata !1885, null}
!1891 = metadata !{i32 1955, i32 3, metadata !1885, null}
!1892 = metadata !{i32 1956, i32 3, metadata !1885, null}
!1893 = metadata !{i32 1957, i32 3, metadata !1885, null}
!1894 = metadata !{i32 1958, i32 3, metadata !1885, null}
!1895 = metadata !{i32 1960, i32 3, metadata !1885, null}
!1896 = metadata !{i32 1965, i32 3, metadata !1897, null}
!1897 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1963, i32 2, i32 0, i32 410} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1898 = metadata !{i32 1966, i32 3, metadata !1897, null}
!1899 = metadata !{i32 1967, i32 3, metadata !1897, null}
!1900 = metadata !{i32 1968, i32 3, metadata !1897, null}
!1901 = metadata !{i32 1969, i32 3, metadata !1897, null}
!1902 = metadata !{i32 1972, i32 3, metadata !1897, null}
!1903 = metadata !{i32 1973, i32 3, metadata !1897, null}
!1904 = metadata !{i32 1974, i32 3, metadata !1897, null}
!1905 = metadata !{i32 1975, i32 3, metadata !1897, null}
!1906 = metadata !{i32 1976, i32 3, metadata !1897, null}
!1907 = metadata !{i32 1978, i32 3, metadata !1897, null}
!1908 = metadata !{i32 1984, i32 3, metadata !1909, null}
!1909 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1982, i32 2, i32 0, i32 411} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1910 = metadata !{i32 1985, i32 3, metadata !1909, null}
!1911 = metadata !{i32 1986, i32 3, metadata !1909, null}
!1912 = metadata !{i32 1987, i32 3, metadata !1909, null}
!1913 = metadata !{i32 1988, i32 3, metadata !1909, null}
!1914 = metadata !{i32 1991, i32 3, metadata !1909, null}
!1915 = metadata !{i32 1992, i32 3, metadata !1909, null}
!1916 = metadata !{i32 1993, i32 3, metadata !1909, null}
!1917 = metadata !{i32 1994, i32 3, metadata !1909, null}
!1918 = metadata !{i32 1995, i32 3, metadata !1909, null}
!1919 = metadata !{i32 1997, i32 3, metadata !1909, null}
!1920 = metadata !{i32 2002, i32 3, metadata !1921, null}
!1921 = metadata !{i32 786443, metadata !1, metadata !1813, i32 2000, i32 2, i32 0, i32 412} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1922 = metadata !{i32 2003, i32 3, metadata !1921, null}
!1923 = metadata !{i32 2004, i32 3, metadata !1921, null}
!1924 = metadata !{i32 2005, i32 3, metadata !1921, null}
!1925 = metadata !{i32 2006, i32 3, metadata !1921, null}
!1926 = metadata !{i32 2009, i32 3, metadata !1921, null}
!1927 = metadata !{i32 2010, i32 3, metadata !1921, null}
!1928 = metadata !{i32 2011, i32 3, metadata !1921, null}
!1929 = metadata !{i32 2012, i32 3, metadata !1921, null}
!1930 = metadata !{i32 2013, i32 3, metadata !1921, null}
!1931 = metadata !{i32 2015, i32 3, metadata !1921, null}
!1932 = metadata !{i32 2019, i32 3, metadata !1933, null}
!1933 = metadata !{i32 786443, metadata !1, metadata !1813, i32 2018, i32 2, i32 0, i32 413} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1934 = metadata !{i32 2022, i32 3, metadata !1933, null}
!1935 = metadata !{i32 2023, i32 3, metadata !1933, null}
!1936 = metadata !{i32 2024, i32 3, metadata !1933, null}
!1937 = metadata !{i32 2025, i32 3, metadata !1933, null}
!1938 = metadata !{i32 2026, i32 3, metadata !1933, null}
!1939 = metadata !{i32 2029, i32 3, metadata !1933, null}
!1940 = metadata !{i32 2030, i32 3, metadata !1933, null}
!1941 = metadata !{i32 2031, i32 3, metadata !1933, null}
!1942 = metadata !{i32 2032, i32 3, metadata !1933, null}
!1943 = metadata !{i32 2034, i32 3, metadata !1933, null}
!1944 = metadata !{i32 2035, i32 3, metadata !1933, null}
!1945 = metadata !{i32 2036, i32 3, metadata !1933, null}
!1946 = metadata !{i32 2038, i32 3, metadata !1933, null}
!1947 = metadata !{i32 2040, i32 3, metadata !1933, null}
!1948 = metadata !{i32 2044, i32 3, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !1, metadata !1813, i32 2043, i32 2, i32 0, i32 414} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1950 = metadata !{i32 2046, i32 3, metadata !1949, null}
!1951 = metadata !{i32 2047, i32 3, metadata !1949, null}
!1952 = metadata !{i32 2048, i32 3, metadata !1949, null}
!1953 = metadata !{i32 2049, i32 3, metadata !1949, null}
!1954 = metadata !{i32 2050, i32 3, metadata !1949, null}
!1955 = metadata !{i32 2053, i32 3, metadata !1949, null}
!1956 = metadata !{i32 2054, i32 3, metadata !1949, null}
!1957 = metadata !{i32 2055, i32 3, metadata !1949, null}
!1958 = metadata !{i32 2056, i32 3, metadata !1949, null}
!1959 = metadata !{i32 2058, i32 3, metadata !1949, null}
!1960 = metadata !{i32 2059, i32 3, metadata !1949, null}
!1961 = metadata !{i32 2060, i32 3, metadata !1949, null}
!1962 = metadata !{i32 2062, i32 3, metadata !1949, null}
!1963 = metadata !{i32 2064, i32 3, metadata !1949, null}
!1964 = metadata !{i32 2068, i32 3, metadata !1965, null}
!1965 = metadata !{i32 786443, metadata !1, metadata !1813, i32 2067, i32 2, i32 0, i32 415} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1966 = metadata !{i32 2070, i32 3, metadata !1965, null}
!1967 = metadata !{i32 2071, i32 3, metadata !1965, null}
!1968 = metadata !{i32 2072, i32 3, metadata !1965, null}
!1969 = metadata !{i32 2073, i32 3, metadata !1965, null}
!1970 = metadata !{i32 2074, i32 3, metadata !1965, null}
!1971 = metadata !{i32 2077, i32 3, metadata !1965, null}
!1972 = metadata !{i32 2078, i32 3, metadata !1965, null}
!1973 = metadata !{i32 2079, i32 3, metadata !1965, null}
!1974 = metadata !{i32 2080, i32 3, metadata !1965, null}
!1975 = metadata !{i32 2082, i32 3, metadata !1965, null}
!1976 = metadata !{i32 2083, i32 3, metadata !1965, null}
!1977 = metadata !{i32 2084, i32 3, metadata !1965, null}
!1978 = metadata !{i32 2086, i32 3, metadata !1965, null}
!1979 = metadata !{i32 2088, i32 3, metadata !1965, null}
!1980 = metadata !{i32 2093, i32 1, metadata !170, null}
!1981 = metadata !{i32 786689, metadata !191, metadata !"InstancePtr", metadata !5, i32 16779332, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2116]
!1982 = metadata !{i32 2116, i32 35, metadata !191, null}
!1983 = metadata !{i32 786689, metadata !191, metadata !"TimingPtr", metadata !5, i32 33556548, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TimingPtr] [line 2116]
!1984 = metadata !{i32 2116, i32 61, metadata !191, null}
!1985 = metadata !{i32 786689, metadata !191, metadata !"SignalCfgPtr", metadata !5, i32 50333765, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SignalCfgPtr] [line 2117]
!1986 = metadata !{i32 2117, i32 17, metadata !191, null}
!1987 = metadata !{i32 786689, metadata !191, metadata !"HOffPtr", metadata !5, i32 67110981, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HOffPtr] [line 2117]
!1988 = metadata !{i32 2117, i32 49, metadata !191, null}
!1989 = metadata !{i32 786689, metadata !191, metadata !"PolarityPtr", metadata !5, i32 83888198, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PolarityPtr] [line 2118]
!1990 = metadata !{i32 2118, i32 19, metadata !191, null}
!1991 = metadata !{i32 2121, i32 2, metadata !1992, null}
!1992 = metadata !{i32 786443, metadata !1, metadata !1993, i32 2121, i32 2, i32 0, i32 417} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1993 = metadata !{i32 786443, metadata !1, metadata !191, i32 2121, i32 2, i32 0, i32 416} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1994 = metadata !{i32 2121, i32 2, metadata !1995, null}
!1995 = metadata !{i32 786443, metadata !1, metadata !1996, i32 2121, i32 2, i32 1, i32 760} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1996 = metadata !{i32 786443, metadata !1, metadata !1992, i32 2121, i32 2, i32 0, i32 418} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1997 = metadata !{i32 2121, i32 2, metadata !1998, null}
!1998 = metadata !{i32 786443, metadata !1, metadata !1999, i32 2121, i32 2, i32 2, i32 761} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!1999 = metadata !{i32 786443, metadata !1, metadata !1992, i32 2121, i32 2, i32 0, i32 419} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2000 = metadata !{i32 2122, i32 2, metadata !2001, null}
!2001 = metadata !{i32 786443, metadata !1, metadata !2002, i32 2122, i32 2, i32 0, i32 421} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2002 = metadata !{i32 786443, metadata !1, metadata !191, i32 2122, i32 2, i32 0, i32 420} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2003 = metadata !{i32 2122, i32 2, metadata !2004, null}
!2004 = metadata !{i32 786443, metadata !1, metadata !2005, i32 2122, i32 2, i32 1, i32 762} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2005 = metadata !{i32 786443, metadata !1, metadata !2001, i32 2122, i32 2, i32 0, i32 422} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2006 = metadata !{i32 2122, i32 2, metadata !2007, null}
!2007 = metadata !{i32 786443, metadata !1, metadata !2008, i32 2122, i32 2, i32 2, i32 763} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2008 = metadata !{i32 786443, metadata !1, metadata !2001, i32 2122, i32 2, i32 0, i32 423} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2009 = metadata !{i32 2123, i32 2, metadata !2010, null}
!2010 = metadata !{i32 786443, metadata !1, metadata !2011, i32 2123, i32 2, i32 0, i32 425} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2011 = metadata !{i32 786443, metadata !1, metadata !191, i32 2123, i32 2, i32 0, i32 424} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2012 = metadata !{i32 2123, i32 2, metadata !2013, null}
!2013 = metadata !{i32 786443, metadata !1, metadata !2014, i32 2123, i32 2, i32 1, i32 764} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2014 = metadata !{i32 786443, metadata !1, metadata !2010, i32 2123, i32 2, i32 0, i32 426} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2015 = metadata !{i32 2123, i32 2, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !1, metadata !2017, i32 2123, i32 2, i32 2, i32 765} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2017 = metadata !{i32 786443, metadata !1, metadata !2010, i32 2123, i32 2, i32 0, i32 427} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2018 = metadata !{i32 2124, i32 2, metadata !2019, null}
!2019 = metadata !{i32 786443, metadata !1, metadata !2020, i32 2124, i32 2, i32 0, i32 429} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2020 = metadata !{i32 786443, metadata !1, metadata !191, i32 2124, i32 2, i32 0, i32 428} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2021 = metadata !{i32 2124, i32 2, metadata !2022, null}
!2022 = metadata !{i32 786443, metadata !1, metadata !2023, i32 2124, i32 2, i32 1, i32 766} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2023 = metadata !{i32 786443, metadata !1, metadata !2019, i32 2124, i32 2, i32 0, i32 430} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2024 = metadata !{i32 2124, i32 2, metadata !2025, null}
!2025 = metadata !{i32 786443, metadata !1, metadata !2026, i32 2124, i32 2, i32 2, i32 767} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2026 = metadata !{i32 786443, metadata !1, metadata !2019, i32 2124, i32 2, i32 0, i32 431} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2027 = metadata !{i32 2125, i32 2, metadata !2028, null}
!2028 = metadata !{i32 786443, metadata !1, metadata !2029, i32 2125, i32 2, i32 0, i32 433} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2029 = metadata !{i32 786443, metadata !1, metadata !191, i32 2125, i32 2, i32 0, i32 432} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2030 = metadata !{i32 2125, i32 2, metadata !2031, null}
!2031 = metadata !{i32 786443, metadata !1, metadata !2032, i32 2125, i32 2, i32 1, i32 768} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2032 = metadata !{i32 786443, metadata !1, metadata !2028, i32 2125, i32 2, i32 0, i32 434} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2033 = metadata !{i32 2125, i32 2, metadata !2034, null}
!2034 = metadata !{i32 786443, metadata !1, metadata !2035, i32 2125, i32 2, i32 2, i32 769} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2035 = metadata !{i32 786443, metadata !1, metadata !2028, i32 2125, i32 2, i32 0, i32 435} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2036 = metadata !{i32 2126, i32 2, metadata !2037, null}
!2037 = metadata !{i32 786443, metadata !1, metadata !2038, i32 2126, i32 2, i32 0, i32 437} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2038 = metadata !{i32 786443, metadata !1, metadata !191, i32 2126, i32 2, i32 0, i32 436} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2039 = metadata !{i32 2126, i32 2, metadata !2040, null}
!2040 = metadata !{i32 786443, metadata !1, metadata !2041, i32 2126, i32 2, i32 1, i32 770} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2041 = metadata !{i32 786443, metadata !1, metadata !2037, i32 2126, i32 2, i32 0, i32 438} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2042 = metadata !{i32 2126, i32 2, metadata !2043, null}
!2043 = metadata !{i32 786443, metadata !1, metadata !2044, i32 2126, i32 2, i32 2, i32 771} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2044 = metadata !{i32 786443, metadata !1, metadata !2037, i32 2126, i32 2, i32 0, i32 439} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2045 = metadata !{i32 2130, i32 2, metadata !191, null}
!2046 = metadata !{i32 2131, i32 2, metadata !191, null}
!2047 = metadata !{i32 2132, i32 2, metadata !191, null}
!2048 = metadata !{i32 2133, i32 2, metadata !191, null}
!2049 = metadata !{i32 2135, i32 2, metadata !191, null}
!2050 = metadata !{i32 2136, i32 2, metadata !191, null}
!2051 = metadata !{i32 2138, i32 2, metadata !191, null}
!2052 = metadata !{i32 2139, i32 2, metadata !191, null}
!2053 = metadata !{i32 2142, i32 2, metadata !191, null}
!2054 = metadata !{i32 2143, i32 2, metadata !191, null}
!2055 = metadata !{i32 2147, i32 2, metadata !191, null}
!2056 = metadata !{i32 2148, i32 2, metadata !191, null}
!2057 = metadata !{i32 2149, i32 2, metadata !191, null}
!2058 = metadata !{i32 2150, i32 2, metadata !191, null}
!2059 = metadata !{i32 2152, i32 2, metadata !191, null}
!2060 = metadata !{i32 2154, i32 2, metadata !191, null}
!2061 = metadata !{i32 2157, i32 2, metadata !191, null}
!2062 = metadata !{i32 2158, i32 2, metadata !191, null}
!2063 = metadata !{i32 2159, i32 2, metadata !191, null}
!2064 = metadata !{i32 2160, i32 2, metadata !191, null}
!2065 = metadata !{i32 2162, i32 2, metadata !191, null}
!2066 = metadata !{i32 2164, i32 2, metadata !191, null}
!2067 = metadata !{i32 2167, i32 2, metadata !191, null}
!2068 = metadata !{i32 2168, i32 2, metadata !191, null}
!2069 = metadata !{i32 2169, i32 2, metadata !191, null}
!2070 = metadata !{i32 2170, i32 2, metadata !191, null}
!2071 = metadata !{i32 2172, i32 5, metadata !2072, null}
!2072 = metadata !{i32 786443, metadata !1, metadata !191, i32 2172, i32 5, i32 0, i32 440} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2073 = metadata !{i32 2173, i32 3, metadata !2074, null}
!2074 = metadata !{i32 786443, metadata !1, metadata !2072, i32 2172, i32 33, i32 0, i32 441} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2075 = metadata !{i32 2174, i32 3, metadata !2074, null}
!2076 = metadata !{i32 2175, i32 3, metadata !2074, null}
!2077 = metadata !{i32 2176, i32 3, metadata !2074, null}
!2078 = metadata !{i32 2179, i32 3, metadata !2074, null}
!2079 = metadata !{i32 2182, i32 3, metadata !2074, null}
!2080 = metadata !{i32 2185, i32 3, metadata !2074, null}
!2081 = metadata !{i32 2188, i32 3, metadata !2074, null}
!2082 = metadata !{i32 2190, i32 3, metadata !2074, null}
!2083 = metadata !{i32 2193, i32 3, metadata !2074, null}
!2084 = metadata !{i32 2195, i32 3, metadata !2074, null}
!2085 = metadata !{i32 2197, i32 2, metadata !2074, null}
!2086 = metadata !{i32 2201, i32 3, metadata !2087, null}
!2087 = metadata !{i32 786443, metadata !1, metadata !2072, i32 2199, i32 7, i32 0, i32 442} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2088 = metadata !{i32 2202, i32 3, metadata !2087, null}
!2089 = metadata !{i32 2203, i32 3, metadata !2087, null}
!2090 = metadata !{i32 2205, i32 3, metadata !2087, null}
!2091 = metadata !{i32 2206, i32 3, metadata !2087, null}
!2092 = metadata !{i32 2208, i32 3, metadata !2087, null}
!2093 = metadata !{i32 2209, i32 3, metadata !2087, null}
!2094 = metadata !{i32 2211, i32 3, metadata !2087, null}
!2095 = metadata !{i32 2212, i32 3, metadata !2087, null}
!2096 = metadata !{i32 2213, i32 3, metadata !2087, null}
!2097 = metadata !{i32 2214, i32 3, metadata !2087, null}
!2098 = metadata !{i32 2217, i32 1, metadata !191, null}
!2099 = metadata !{i32 786689, metadata !194, metadata !"InstancePtr", metadata !5, i32 16779456, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2240]
!2100 = metadata !{i32 2240, i32 35, metadata !194, null}
!2101 = metadata !{i32 786689, metadata !194, metadata !"SignalCfgPtr", metadata !5, i32 33556672, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SignalCfgPtr] [line 2240]
!2102 = metadata !{i32 2240, i32 61, metadata !194, null}
!2103 = metadata !{i32 786689, metadata !194, metadata !"HOffPtr", metadata !5, i32 50333889, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HOffPtr] [line 2241]
!2104 = metadata !{i32 2241, i32 23, metadata !194, null}
!2105 = metadata !{i32 786689, metadata !194, metadata !"PolarityPtr", metadata !5, i32 67111106, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PolarityPtr] [line 2242]
!2106 = metadata !{i32 2242, i32 20, metadata !194, null}
!2107 = metadata !{i32 786689, metadata !194, metadata !"TimingPtr", metadata !5, i32 83888323, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TimingPtr] [line 2243]
!2108 = metadata !{i32 2243, i32 18, metadata !194, null}
!2109 = metadata !{i32 2246, i32 2, metadata !2110, null}
!2110 = metadata !{i32 786443, metadata !1, metadata !2111, i32 2246, i32 2, i32 0, i32 444} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2111 = metadata !{i32 786443, metadata !1, metadata !194, i32 2246, i32 2, i32 0, i32 443} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2112 = metadata !{i32 2246, i32 2, metadata !2113, null}
!2113 = metadata !{i32 786443, metadata !1, metadata !2114, i32 2246, i32 2, i32 1, i32 772} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2114 = metadata !{i32 786443, metadata !1, metadata !2110, i32 2246, i32 2, i32 0, i32 445} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2115 = metadata !{i32 2246, i32 2, metadata !2116, null}
!2116 = metadata !{i32 786443, metadata !1, metadata !2117, i32 2246, i32 2, i32 2, i32 773} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2117 = metadata !{i32 786443, metadata !1, metadata !2110, i32 2246, i32 2, i32 0, i32 446} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2118 = metadata !{i32 2247, i32 2, metadata !2119, null}
!2119 = metadata !{i32 786443, metadata !1, metadata !2120, i32 2247, i32 2, i32 0, i32 448} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2120 = metadata !{i32 786443, metadata !1, metadata !194, i32 2247, i32 2, i32 0, i32 447} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2121 = metadata !{i32 2247, i32 2, metadata !2122, null}
!2122 = metadata !{i32 786443, metadata !1, metadata !2123, i32 2247, i32 2, i32 1, i32 774} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2123 = metadata !{i32 786443, metadata !1, metadata !2119, i32 2247, i32 2, i32 0, i32 449} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2124 = metadata !{i32 2247, i32 2, metadata !2125, null}
!2125 = metadata !{i32 786443, metadata !1, metadata !2126, i32 2247, i32 2, i32 2, i32 775} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2126 = metadata !{i32 786443, metadata !1, metadata !2119, i32 2247, i32 2, i32 0, i32 450} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2127 = metadata !{i32 2248, i32 2, metadata !2128, null}
!2128 = metadata !{i32 786443, metadata !1, metadata !2129, i32 2248, i32 2, i32 0, i32 452} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2129 = metadata !{i32 786443, metadata !1, metadata !194, i32 2248, i32 2, i32 0, i32 451} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2130 = metadata !{i32 2248, i32 2, metadata !2131, null}
!2131 = metadata !{i32 786443, metadata !1, metadata !2132, i32 2248, i32 2, i32 1, i32 776} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2132 = metadata !{i32 786443, metadata !1, metadata !2128, i32 2248, i32 2, i32 0, i32 453} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2133 = metadata !{i32 2248, i32 2, metadata !2134, null}
!2134 = metadata !{i32 786443, metadata !1, metadata !2135, i32 2248, i32 2, i32 2, i32 777} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2135 = metadata !{i32 786443, metadata !1, metadata !2128, i32 2248, i32 2, i32 0, i32 454} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2136 = metadata !{i32 2249, i32 2, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !1, metadata !2138, i32 2249, i32 2, i32 0, i32 456} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2138 = metadata !{i32 786443, metadata !1, metadata !194, i32 2249, i32 2, i32 0, i32 455} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2139 = metadata !{i32 2249, i32 2, metadata !2140, null}
!2140 = metadata !{i32 786443, metadata !1, metadata !2141, i32 2249, i32 2, i32 1, i32 778} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2141 = metadata !{i32 786443, metadata !1, metadata !2137, i32 2249, i32 2, i32 0, i32 457} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2142 = metadata !{i32 2249, i32 2, metadata !2143, null}
!2143 = metadata !{i32 786443, metadata !1, metadata !2144, i32 2249, i32 2, i32 2, i32 779} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2144 = metadata !{i32 786443, metadata !1, metadata !2137, i32 2249, i32 2, i32 0, i32 458} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2145 = metadata !{i32 2250, i32 2, metadata !2146, null}
!2146 = metadata !{i32 786443, metadata !1, metadata !2147, i32 2250, i32 2, i32 0, i32 460} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2147 = metadata !{i32 786443, metadata !1, metadata !194, i32 2250, i32 2, i32 0, i32 459} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2148 = metadata !{i32 2250, i32 2, metadata !2149, null}
!2149 = metadata !{i32 786443, metadata !1, metadata !2150, i32 2250, i32 2, i32 1, i32 780} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2150 = metadata !{i32 786443, metadata !1, metadata !2146, i32 2250, i32 2, i32 0, i32 461} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2151 = metadata !{i32 2250, i32 2, metadata !2152, null}
!2152 = metadata !{i32 786443, metadata !1, metadata !2153, i32 2250, i32 2, i32 2, i32 781} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2153 = metadata !{i32 786443, metadata !1, metadata !2146, i32 2250, i32 2, i32 0, i32 462} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2154 = metadata !{i32 2251, i32 2, metadata !2155, null}
!2155 = metadata !{i32 786443, metadata !1, metadata !2156, i32 2251, i32 2, i32 0, i32 464} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2156 = metadata !{i32 786443, metadata !1, metadata !194, i32 2251, i32 2, i32 0, i32 463} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2157 = metadata !{i32 2251, i32 2, metadata !2158, null}
!2158 = metadata !{i32 786443, metadata !1, metadata !2159, i32 2251, i32 2, i32 1, i32 782} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2159 = metadata !{i32 786443, metadata !1, metadata !2155, i32 2251, i32 2, i32 0, i32 465} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2160 = metadata !{i32 2251, i32 2, metadata !2161, null}
!2161 = metadata !{i32 786443, metadata !1, metadata !2162, i32 2251, i32 2, i32 2, i32 783} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2162 = metadata !{i32 786443, metadata !1, metadata !2155, i32 2251, i32 2, i32 0, i32 466} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2163 = metadata !{i32 2252, i32 2, metadata !2164, null}
!2164 = metadata !{i32 786443, metadata !1, metadata !2165, i32 2252, i32 2, i32 0, i32 468} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2165 = metadata !{i32 786443, metadata !1, metadata !194, i32 2252, i32 2, i32 0, i32 467} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2166 = metadata !{i32 2252, i32 2, metadata !2167, null}
!2167 = metadata !{i32 786443, metadata !1, metadata !2168, i32 2252, i32 2, i32 1, i32 784} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2168 = metadata !{i32 786443, metadata !1, metadata !2164, i32 2252, i32 2, i32 0, i32 469} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2169 = metadata !{i32 2252, i32 2, metadata !2170, null}
!2170 = metadata !{i32 786443, metadata !1, metadata !2171, i32 2252, i32 2, i32 2, i32 785} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2171 = metadata !{i32 786443, metadata !1, metadata !2164, i32 2252, i32 2, i32 0, i32 470} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2172 = metadata !{i32 2254, i32 2, metadata !194, null}
!2173 = metadata !{i32 2257, i32 2, metadata !194, null}
!2174 = metadata !{i32 2258, i32 2, metadata !194, null}
!2175 = metadata !{i32 2261, i32 2, metadata !194, null}
!2176 = metadata !{i32 2264, i32 2, metadata !194, null}
!2177 = metadata !{i32 2266, i32 2, metadata !194, null}
!2178 = metadata !{i32 2268, i32 2, metadata !194, null}
!2179 = metadata !{i32 2272, i32 2, metadata !194, null}
!2180 = metadata !{i32 2275, i32 2, metadata !194, null}
!2181 = metadata !{i32 2277, i32 2, metadata !194, null}
!2182 = metadata !{i32 2279, i32 2, metadata !194, null}
!2183 = metadata !{i32 2282, i32 2, metadata !194, null}
!2184 = metadata !{i32 2284, i32 2, metadata !194, null}
!2185 = metadata !{i32 2286, i32 2, metadata !194, null}
!2186 = metadata !{i32 2290, i32 2, metadata !194, null}
!2187 = metadata !{i32 2292, i32 1, metadata !194, null}
!2188 = metadata !{i32 2292, i32 1, metadata !2189, null}
!2189 = metadata !{i32 786443, metadata !1, metadata !194, i32 2292, i32 1, i32 1, i32 786} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2190 = metadata !{i32 786689, metadata !197, metadata !"InstancePtr", metadata !5, i32 16779525, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2309]
!2191 = metadata !{i32 2309, i32 37, metadata !197, null}
!2192 = metadata !{i32 786689, metadata !197, metadata !"TimingPtr", metadata !5, i32 33556741, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TimingPtr] [line 2309]
!2193 = metadata !{i32 2309, i32 63, metadata !197, null}
!2194 = metadata !{i32 2312, i32 2, metadata !2195, null}
!2195 = metadata !{i32 786443, metadata !1, metadata !2196, i32 2312, i32 2, i32 0, i32 472} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2196 = metadata !{i32 786443, metadata !1, metadata !197, i32 2312, i32 2, i32 0, i32 471} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2197 = metadata !{i32 2312, i32 2, metadata !2198, null}
!2198 = metadata !{i32 786443, metadata !1, metadata !2199, i32 2312, i32 2, i32 1, i32 787} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2199 = metadata !{i32 786443, metadata !1, metadata !2195, i32 2312, i32 2, i32 0, i32 473} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2200 = metadata !{i32 2312, i32 2, metadata !2201, null}
!2201 = metadata !{i32 786443, metadata !1, metadata !2202, i32 2312, i32 2, i32 2, i32 788} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2202 = metadata !{i32 786443, metadata !1, metadata !2195, i32 2312, i32 2, i32 0, i32 474} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2203 = metadata !{i32 2313, i32 2, metadata !2204, null}
!2204 = metadata !{i32 786443, metadata !1, metadata !2205, i32 2313, i32 2, i32 0, i32 476} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2205 = metadata !{i32 786443, metadata !1, metadata !197, i32 2313, i32 2, i32 0, i32 475} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2206 = metadata !{i32 2313, i32 2, metadata !2207, null}
!2207 = metadata !{i32 786443, metadata !1, metadata !2208, i32 2313, i32 2, i32 1, i32 789} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2208 = metadata !{i32 786443, metadata !1, metadata !2204, i32 2313, i32 2, i32 0, i32 477} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2209 = metadata !{i32 2313, i32 2, metadata !2210, null}
!2210 = metadata !{i32 786443, metadata !1, metadata !2211, i32 2313, i32 2, i32 2, i32 790} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2211 = metadata !{i32 786443, metadata !1, metadata !2204, i32 2313, i32 2, i32 0, i32 478} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2212 = metadata !{i32 2314, i32 2, metadata !2213, null}
!2213 = metadata !{i32 786443, metadata !1, metadata !2214, i32 2314, i32 2, i32 0, i32 480} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2214 = metadata !{i32 786443, metadata !1, metadata !197, i32 2314, i32 2, i32 0, i32 479} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2215 = metadata !{i32 2314, i32 2, metadata !2216, null}
!2216 = metadata !{i32 786443, metadata !1, metadata !2217, i32 2314, i32 2, i32 1, i32 791} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2217 = metadata !{i32 786443, metadata !1, metadata !2213, i32 2314, i32 2, i32 0, i32 481} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2218 = metadata !{i32 2314, i32 2, metadata !2219, null}
!2219 = metadata !{i32 786443, metadata !1, metadata !2220, i32 2314, i32 2, i32 2, i32 792} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2220 = metadata !{i32 786443, metadata !1, metadata !2213, i32 2314, i32 2, i32 0, i32 482} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2221 = metadata !{i32 2317, i32 5, metadata !2222, null}
!2222 = metadata !{i32 786443, metadata !1, metadata !197, i32 2317, i32 5, i32 0, i32 483} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2223 = metadata !{i32 2318, i32 6, metadata !2224, null}
!2224 = metadata !{i32 786443, metadata !1, metadata !2225, i32 2318, i32 6, i32 0, i32 485} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2225 = metadata !{i32 786443, metadata !1, metadata !2222, i32 2317, i32 33, i32 0, i32 484} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2226 = metadata !{i32 2319, i32 8, metadata !2227, null}
!2227 = metadata !{i32 786443, metadata !1, metadata !2228, i32 2319, i32 8, i32 0, i32 487} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2228 = metadata !{i32 786443, metadata !1, metadata !2224, i32 2318, i32 39, i32 0, i32 486} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2229 = metadata !{i32 2320, i32 5, metadata !2230, null}
!2230 = metadata !{i32 786443, metadata !1, metadata !2227, i32 2319, i32 40, i32 0, i32 488} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2231 = metadata !{i32 2322, i32 13, metadata !2232, null}
!2232 = metadata !{i32 786443, metadata !1, metadata !2227, i32 2322, i32 13, i32 0, i32 489} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2233 = metadata !{i32 2323, i32 5, metadata !2234, null}
!2234 = metadata !{i32 786443, metadata !1, metadata !2232, i32 2322, i32 46, i32 0, i32 490} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2235 = metadata !{i32 2326, i32 3, metadata !2228, null}
!2236 = metadata !{i32 2327, i32 11, metadata !2237, null}
!2237 = metadata !{i32 786443, metadata !1, metadata !2224, i32 2327, i32 11, i32 0, i32 491} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2238 = metadata !{i32 2327, i32 11, metadata !2239, null}
!2239 = metadata !{i32 786443, metadata !1, metadata !2237, i32 2327, i32 11, i32 1, i32 793} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2240 = metadata !{i32 2329, i32 4, metadata !2241, null}
!2241 = metadata !{i32 786443, metadata !1, metadata !2237, i32 2328, i32 40, i32 0, i32 492} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2242 = metadata !{i32 2331, i32 11, metadata !2243, null}
!2243 = metadata !{i32 786443, metadata !1, metadata !2237, i32 2331, i32 11, i32 0, i32 493} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2244 = metadata !{i32 2332, i32 8, metadata !2245, null}
!2245 = metadata !{i32 786443, metadata !1, metadata !2246, i32 2332, i32 8, i32 0, i32 495} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2246 = metadata !{i32 786443, metadata !1, metadata !2243, i32 2331, i32 43, i32 0, i32 494} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2247 = metadata !{i32 2333, i32 5, metadata !2248, null}
!2248 = metadata !{i32 786443, metadata !1, metadata !2245, i32 2332, i32 40, i32 0, i32 496} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2249 = metadata !{i32 2335, i32 13, metadata !2250, null}
!2250 = metadata !{i32 786443, metadata !1, metadata !2245, i32 2335, i32 13, i32 0, i32 497} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2251 = metadata !{i32 2336, i32 5, metadata !2252, null}
!2252 = metadata !{i32 786443, metadata !1, metadata !2250, i32 2335, i32 45, i32 0, i32 498} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2253 = metadata !{i32 2338, i32 3, metadata !2246, null}
!2254 = metadata !{i32 2339, i32 11, metadata !2255, null}
!2255 = metadata !{i32 786443, metadata !1, metadata !2243, i32 2339, i32 11, i32 0, i32 499} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2256 = metadata !{i32 2339, i32 11, metadata !2257, null}
!2257 = metadata !{i32 786443, metadata !1, metadata !2255, i32 2339, i32 11, i32 1, i32 794} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2258 = metadata !{i32 2341, i32 4, metadata !2259, null}
!2259 = metadata !{i32 786443, metadata !1, metadata !2255, i32 2340, i32 39, i32 0, i32 500} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2260 = metadata !{i32 2343, i32 11, metadata !2261, null}
!2261 = metadata !{i32 786443, metadata !1, metadata !2255, i32 2343, i32 11, i32 0, i32 501} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2262 = metadata !{i32 2343, i32 11, metadata !2263, null}
!2263 = metadata !{i32 786443, metadata !1, metadata !2261, i32 2343, i32 11, i32 1, i32 795} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2264 = metadata !{i32 2345, i32 4, metadata !2265, null}
!2265 = metadata !{i32 786443, metadata !1, metadata !2261, i32 2344, i32 39, i32 0, i32 502} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2266 = metadata !{i32 2347, i32 11, metadata !2267, null}
!2267 = metadata !{i32 786443, metadata !1, metadata !2261, i32 2347, i32 11, i32 0, i32 503} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2268 = metadata !{i32 2347, i32 11, metadata !2269, null}
!2269 = metadata !{i32 786443, metadata !1, metadata !2267, i32 2347, i32 11, i32 1, i32 796} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2270 = metadata !{i32 2349, i32 4, metadata !2271, null}
!2271 = metadata !{i32 786443, metadata !1, metadata !2267, i32 2348, i32 38, i32 0, i32 504} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2272 = metadata !{i32 2351, i32 11, metadata !2273, null}
!2273 = metadata !{i32 786443, metadata !1, metadata !2267, i32 2351, i32 11, i32 0, i32 505} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2274 = metadata !{i32 2351, i32 11, metadata !2275, null}
!2275 = metadata !{i32 786443, metadata !1, metadata !2273, i32 2351, i32 11, i32 1, i32 797} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2276 = metadata !{i32 2353, i32 4, metadata !2277, null}
!2277 = metadata !{i32 786443, metadata !1, metadata !2273, i32 2352, i32 39, i32 0, i32 506} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2278 = metadata !{i32 2355, i32 11, metadata !2279, null}
!2279 = metadata !{i32 786443, metadata !1, metadata !2273, i32 2355, i32 11, i32 0, i32 507} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2280 = metadata !{i32 2355, i32 11, metadata !2281, null}
!2281 = metadata !{i32 786443, metadata !1, metadata !2279, i32 2355, i32 11, i32 1, i32 798} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2282 = metadata !{i32 2357, i32 4, metadata !2283, null}
!2283 = metadata !{i32 786443, metadata !1, metadata !2279, i32 2356, i32 40, i32 0, i32 508} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2284 = metadata !{i32 2360, i32 2, metadata !2225, null}
!2285 = metadata !{i32 2363, i32 6, metadata !2286, null}
!2286 = metadata !{i32 786443, metadata !1, metadata !2287, i32 2363, i32 6, i32 0, i32 510} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2287 = metadata !{i32 786443, metadata !1, metadata !2222, i32 2362, i32 7, i32 0, i32 509} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2288 = metadata !{i32 2363, i32 6, metadata !2289, null}
!2289 = metadata !{i32 786443, metadata !1, metadata !2286, i32 2363, i32 6, i32 1, i32 799} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2290 = metadata !{i32 2365, i32 4, metadata !2291, null}
!2291 = metadata !{i32 786443, metadata !1, metadata !2286, i32 2364, i32 38, i32 0, i32 511} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2292 = metadata !{i32 2367, i32 11, metadata !2293, null}
!2293 = metadata !{i32 786443, metadata !1, metadata !2286, i32 2367, i32 11, i32 0, i32 512} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2294 = metadata !{i32 2367, i32 11, metadata !2295, null}
!2295 = metadata !{i32 786443, metadata !1, metadata !2293, i32 2367, i32 11, i32 1, i32 800} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2296 = metadata !{i32 2369, i32 4, metadata !2297, null}
!2297 = metadata !{i32 786443, metadata !1, metadata !2293, i32 2368, i32 38, i32 0, i32 513} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2298 = metadata !{i32 2371, i32 11, metadata !2299, null}
!2299 = metadata !{i32 786443, metadata !1, metadata !2293, i32 2371, i32 11, i32 0, i32 514} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2300 = metadata !{i32 2371, i32 11, metadata !2301, null}
!2301 = metadata !{i32 786443, metadata !1, metadata !2299, i32 2371, i32 11, i32 1, i32 801} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2302 = metadata !{i32 2373, i32 4, metadata !2303, null}
!2303 = metadata !{i32 786443, metadata !1, metadata !2299, i32 2372, i32 39, i32 0, i32 515} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2304 = metadata !{i32 2379, i32 2, metadata !197, null}
!2305 = metadata !{i32 2380, i32 1, metadata !197, null}
!2306 = metadata !{i32 786689, metadata !200, metadata !"InstancePtr", metadata !5, i32 16779613, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2397]
!2307 = metadata !{i32 2397, i32 36, metadata !200, null}
!2308 = metadata !{i32 786689, metadata !200, metadata !"TimingPtr", metadata !5, i32 33556829, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TimingPtr] [line 2397]
!2309 = metadata !{i32 2397, i32 63, metadata !200, null}
!2310 = metadata !{i32 786688, metadata !200, metadata !"Polarity", metadata !5, i32 2399, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Polarity] [line 2399]
!2311 = metadata !{i32 2399, i32 16, metadata !200, null}
!2312 = metadata !{i32 786688, metadata !200, metadata !"Signal", metadata !5, i32 2400, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Signal] [line 2400]
!2313 = metadata !{i32 2400, i32 14, metadata !200, null}
!2314 = metadata !{i32 786688, metadata !200, metadata !"Hoff", metadata !5, i32 2401, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Hoff] [line 2401]
!2315 = metadata !{i32 2401, i32 19, metadata !200, null}
!2316 = metadata !{i32 2404, i32 2, metadata !2317, null}
!2317 = metadata !{i32 786443, metadata !1, metadata !2318, i32 2404, i32 2, i32 0, i32 517} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2318 = metadata !{i32 786443, metadata !1, metadata !200, i32 2404, i32 2, i32 0, i32 516} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2319 = metadata !{i32 2404, i32 2, metadata !2320, null}
!2320 = metadata !{i32 786443, metadata !1, metadata !2321, i32 2404, i32 2, i32 1, i32 802} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2321 = metadata !{i32 786443, metadata !1, metadata !2317, i32 2404, i32 2, i32 0, i32 518} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2322 = metadata !{i32 2404, i32 2, metadata !2323, null}
!2323 = metadata !{i32 786443, metadata !1, metadata !2324, i32 2404, i32 2, i32 2, i32 803} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2324 = metadata !{i32 786443, metadata !1, metadata !2317, i32 2404, i32 2, i32 0, i32 519} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2325 = metadata !{i32 2405, i32 2, metadata !2326, null}
!2326 = metadata !{i32 786443, metadata !1, metadata !2327, i32 2405, i32 2, i32 0, i32 521} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2327 = metadata !{i32 786443, metadata !1, metadata !200, i32 2405, i32 2, i32 0, i32 520} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2328 = metadata !{i32 2405, i32 2, metadata !2329, null}
!2329 = metadata !{i32 786443, metadata !1, metadata !2330, i32 2405, i32 2, i32 1, i32 804} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2330 = metadata !{i32 786443, metadata !1, metadata !2326, i32 2405, i32 2, i32 0, i32 522} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2331 = metadata !{i32 2405, i32 2, metadata !2332, null}
!2332 = metadata !{i32 786443, metadata !1, metadata !2333, i32 2405, i32 2, i32 2, i32 805} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2333 = metadata !{i32 786443, metadata !1, metadata !2326, i32 2405, i32 2, i32 0, i32 523} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2334 = metadata !{i32 2406, i32 2, metadata !2335, null}
!2335 = metadata !{i32 786443, metadata !1, metadata !2336, i32 2406, i32 2, i32 0, i32 525} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2336 = metadata !{i32 786443, metadata !1, metadata !200, i32 2406, i32 2, i32 0, i32 524} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2337 = metadata !{i32 2406, i32 2, metadata !2338, null}
!2338 = metadata !{i32 786443, metadata !1, metadata !2339, i32 2406, i32 2, i32 1, i32 806} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2339 = metadata !{i32 786443, metadata !1, metadata !2335, i32 2406, i32 2, i32 0, i32 526} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2340 = metadata !{i32 2406, i32 2, metadata !2341, null}
!2341 = metadata !{i32 786443, metadata !1, metadata !2342, i32 2406, i32 2, i32 2, i32 807} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2342 = metadata !{i32 786443, metadata !1, metadata !2335, i32 2406, i32 2, i32 0, i32 527} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2343 = metadata !{i32 2408, i32 2, metadata !200, null}
!2344 = metadata !{i32 2410, i32 2, metadata !200, null}
!2345 = metadata !{i32 2411, i32 2, metadata !200, null}
!2346 = metadata !{i32 2412, i32 2, metadata !200, null}
!2347 = metadata !{i32 2413, i32 1, metadata !200, null}
!2348 = metadata !{i32 2413, i32 1, metadata !2349, null}
!2349 = metadata !{i32 786443, metadata !1, metadata !200, i32 2413, i32 1, i32 1, i32 808} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2350 = metadata !{i32 786689, metadata !203, metadata !"InstancePtr", metadata !5, i32 16779646, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2430]
!2351 = metadata !{i32 2430, i32 39, metadata !203, null}
!2352 = metadata !{i32 786689, metadata !203, metadata !"Mode", metadata !5, i32 33556862, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Mode] [line 2430]
!2353 = metadata !{i32 2430, i32 56, metadata !203, null}
!2354 = metadata !{i32 786688, metadata !203, metadata !"Timing", metadata !5, i32 2432, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Timing] [line 2432]
!2355 = metadata !{i32 2432, i32 14, metadata !203, null}
!2356 = metadata !{i32 2435, i32 2, metadata !2357, null}
!2357 = metadata !{i32 786443, metadata !1, metadata !2358, i32 2435, i32 2, i32 0, i32 529} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2358 = metadata !{i32 786443, metadata !1, metadata !203, i32 2435, i32 2, i32 0, i32 528} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2359 = metadata !{i32 2435, i32 2, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !1, metadata !2361, i32 2435, i32 2, i32 1, i32 809} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2361 = metadata !{i32 786443, metadata !1, metadata !2357, i32 2435, i32 2, i32 0, i32 530} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2362 = metadata !{i32 2435, i32 2, metadata !2363, null}
!2363 = metadata !{i32 786443, metadata !1, metadata !2364, i32 2435, i32 2, i32 2, i32 810} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2364 = metadata !{i32 786443, metadata !1, metadata !2357, i32 2435, i32 2, i32 0, i32 531} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2365 = metadata !{i32 2436, i32 2, metadata !2366, null}
!2366 = metadata !{i32 786443, metadata !1, metadata !2367, i32 2436, i32 2, i32 0, i32 533} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2367 = metadata !{i32 786443, metadata !1, metadata !203, i32 2436, i32 2, i32 0, i32 532} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2368 = metadata !{i32 2436, i32 2, metadata !2369, null}
!2369 = metadata !{i32 786443, metadata !1, metadata !2370, i32 2436, i32 2, i32 1, i32 811} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2370 = metadata !{i32 786443, metadata !1, metadata !2366, i32 2436, i32 2, i32 0, i32 534} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2371 = metadata !{i32 2436, i32 2, metadata !2372, null}
!2372 = metadata !{i32 786443, metadata !1, metadata !2373, i32 2436, i32 2, i32 2, i32 812} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2373 = metadata !{i32 786443, metadata !1, metadata !2366, i32 2436, i32 2, i32 0, i32 535} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2374 = metadata !{i32 2438, i32 2, metadata !203, null}
!2375 = metadata !{i32 2440, i32 2, metadata !203, null}
!2376 = metadata !{i32 2442, i32 1, metadata !203, null}
!2377 = metadata !{i32 2442, i32 1, metadata !2378, null}
!2378 = metadata !{i32 786443, metadata !1, metadata !203, i32 2442, i32 1, i32 1, i32 813} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2379 = metadata !{i32 786689, metadata !206, metadata !"InstancePtr", metadata !5, i32 16779675, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2459]
!2380 = metadata !{i32 2459, i32 36, metadata !206, null}
!2381 = metadata !{i32 786689, metadata !206, metadata !"TimingPtr", metadata !5, i32 33556891, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TimingPtr] [line 2459]
!2382 = metadata !{i32 2459, i32 62, metadata !206, null}
!2383 = metadata !{i32 786688, metadata !206, metadata !"Polarity", metadata !5, i32 2462, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Polarity] [line 2462]
!2384 = metadata !{i32 2462, i32 16, metadata !206, null}
!2385 = metadata !{i32 786688, metadata !206, metadata !"Signal", metadata !5, i32 2463, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Signal] [line 2463]
!2386 = metadata !{i32 2463, i32 14, metadata !206, null}
!2387 = metadata !{i32 786688, metadata !206, metadata !"Hoff", metadata !5, i32 2464, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Hoff] [line 2464]
!2388 = metadata !{i32 2464, i32 19, metadata !206, null}
!2389 = metadata !{i32 2467, i32 2, metadata !2390, null}
!2390 = metadata !{i32 786443, metadata !1, metadata !2391, i32 2467, i32 2, i32 0, i32 537} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2391 = metadata !{i32 786443, metadata !1, metadata !206, i32 2467, i32 2, i32 0, i32 536} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2392 = metadata !{i32 2467, i32 2, metadata !2393, null}
!2393 = metadata !{i32 786443, metadata !1, metadata !2394, i32 2467, i32 2, i32 1, i32 814} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2394 = metadata !{i32 786443, metadata !1, metadata !2390, i32 2467, i32 2, i32 0, i32 538} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2395 = metadata !{i32 2467, i32 2, metadata !2396, null}
!2396 = metadata !{i32 786443, metadata !1, metadata !2397, i32 2467, i32 2, i32 2, i32 815} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2397 = metadata !{i32 786443, metadata !1, metadata !2390, i32 2467, i32 2, i32 0, i32 539} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2398 = metadata !{i32 2468, i32 2, metadata !2399, null}
!2399 = metadata !{i32 786443, metadata !1, metadata !2400, i32 2468, i32 2, i32 0, i32 541} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2400 = metadata !{i32 786443, metadata !1, metadata !206, i32 2468, i32 2, i32 0, i32 540} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2401 = metadata !{i32 2468, i32 2, metadata !2402, null}
!2402 = metadata !{i32 786443, metadata !1, metadata !2403, i32 2468, i32 2, i32 1, i32 816} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2403 = metadata !{i32 786443, metadata !1, metadata !2399, i32 2468, i32 2, i32 0, i32 542} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2404 = metadata !{i32 2468, i32 2, metadata !2405, null}
!2405 = metadata !{i32 786443, metadata !1, metadata !2406, i32 2468, i32 2, i32 2, i32 817} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2406 = metadata !{i32 786443, metadata !1, metadata !2399, i32 2468, i32 2, i32 0, i32 543} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2407 = metadata !{i32 2469, i32 2, metadata !2408, null}
!2408 = metadata !{i32 786443, metadata !1, metadata !2409, i32 2469, i32 2, i32 0, i32 545} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2409 = metadata !{i32 786443, metadata !1, metadata !206, i32 2469, i32 2, i32 0, i32 544} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2410 = metadata !{i32 2469, i32 2, metadata !2411, null}
!2411 = metadata !{i32 786443, metadata !1, metadata !2412, i32 2469, i32 2, i32 1, i32 818} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2412 = metadata !{i32 786443, metadata !1, metadata !2408, i32 2469, i32 2, i32 0, i32 546} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2413 = metadata !{i32 2469, i32 2, metadata !2414, null}
!2414 = metadata !{i32 786443, metadata !1, metadata !2415, i32 2469, i32 2, i32 2, i32 819} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2415 = metadata !{i32 786443, metadata !1, metadata !2408, i32 2469, i32 2, i32 0, i32 547} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2416 = metadata !{i32 2472, i32 2, metadata !206, null}
!2417 = metadata !{i32 2473, i32 2, metadata !206, null}
!2418 = metadata !{i32 2474, i32 2, metadata !206, null}
!2419 = metadata !{i32 2475, i32 2, metadata !206, null}
!2420 = metadata !{i32 2477, i32 2, metadata !206, null}
!2421 = metadata !{i32 2479, i32 1, metadata !206, null}
!2422 = metadata !{i32 2479, i32 1, metadata !2423, null}
!2423 = metadata !{i32 786443, metadata !1, metadata !206, i32 2479, i32 1, i32 1, i32 820} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2424 = metadata !{i32 786689, metadata !207, metadata !"InstancePtr", metadata !5, i32 16779712, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2496]
!2425 = metadata !{i32 2496, i32 38, metadata !207, null}
!2426 = metadata !{i32 786688, metadata !207, metadata !"mode", metadata !5, i32 2499, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 2499]
!2427 = metadata !{i32 2499, i32 6, metadata !207, null}
!2428 = metadata !{i32 786688, metadata !207, metadata !"Timing", metadata !5, i32 2500, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Timing] [line 2500]
!2429 = metadata !{i32 2500, i32 14, metadata !207, null}
!2430 = metadata !{i32 2503, i32 2, metadata !2431, null}
!2431 = metadata !{i32 786443, metadata !1, metadata !2432, i32 2503, i32 2, i32 0, i32 549} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2432 = metadata !{i32 786443, metadata !1, metadata !207, i32 2503, i32 2, i32 0, i32 548} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2433 = metadata !{i32 2503, i32 2, metadata !2434, null}
!2434 = metadata !{i32 786443, metadata !1, metadata !2435, i32 2503, i32 2, i32 1, i32 821} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2435 = metadata !{i32 786443, metadata !1, metadata !2431, i32 2503, i32 2, i32 0, i32 550} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2436 = metadata !{i32 2503, i32 2, metadata !2437, null}
!2437 = metadata !{i32 786443, metadata !1, metadata !2438, i32 2503, i32 2, i32 2, i32 822} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2438 = metadata !{i32 786443, metadata !1, metadata !2431, i32 2503, i32 2, i32 0, i32 551} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2439 = metadata !{i32 2504, i32 2, metadata !2440, null}
!2440 = metadata !{i32 786443, metadata !1, metadata !2441, i32 2504, i32 2, i32 0, i32 553} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2441 = metadata !{i32 786443, metadata !1, metadata !207, i32 2504, i32 2, i32 0, i32 552} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2442 = metadata !{i32 2504, i32 2, metadata !2443, null}
!2443 = metadata !{i32 786443, metadata !1, metadata !2444, i32 2504, i32 2, i32 1, i32 823} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2444 = metadata !{i32 786443, metadata !1, metadata !2440, i32 2504, i32 2, i32 0, i32 554} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2445 = metadata !{i32 2504, i32 2, metadata !2446, null}
!2446 = metadata !{i32 786443, metadata !1, metadata !2447, i32 2504, i32 2, i32 2, i32 824} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2447 = metadata !{i32 786443, metadata !1, metadata !2440, i32 2504, i32 2, i32 0, i32 555} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2448 = metadata !{i32 2506, i32 2, metadata !207, null}
!2449 = metadata !{i32 2507, i32 9, metadata !207, null}
!2450 = metadata !{i32 2509, i32 2, metadata !207, null}
!2451 = metadata !{i32 2510, i32 1, metadata !207, null}
!2452 = metadata !{i32 786689, metadata !210, metadata !"InstancePtr", metadata !5, i32 16779743, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2527]
!2453 = metadata !{i32 2527, i32 35, metadata !210, null}
!2454 = metadata !{i32 786689, metadata !210, metadata !"TimingPtr", metadata !5, i32 33556959, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [TimingPtr] [line 2527]
!2455 = metadata !{i32 2527, i32 61, metadata !210, null}
!2456 = metadata !{i32 786688, metadata !210, metadata !"Polarity", metadata !5, i32 2529, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Polarity] [line 2529]
!2457 = metadata !{i32 2529, i32 16, metadata !210, null}
!2458 = metadata !{i32 786688, metadata !210, metadata !"Signal", metadata !5, i32 2530, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Signal] [line 2530]
!2459 = metadata !{i32 2530, i32 14, metadata !210, null}
!2460 = metadata !{i32 786688, metadata !210, metadata !"Hoff", metadata !5, i32 2531, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Hoff] [line 2531]
!2461 = metadata !{i32 2531, i32 19, metadata !210, null}
!2462 = metadata !{i32 2534, i32 2, metadata !2463, null}
!2463 = metadata !{i32 786443, metadata !1, metadata !2464, i32 2534, i32 2, i32 0, i32 557} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2464 = metadata !{i32 786443, metadata !1, metadata !210, i32 2534, i32 2, i32 0, i32 556} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2465 = metadata !{i32 2534, i32 2, metadata !2466, null}
!2466 = metadata !{i32 786443, metadata !1, metadata !2467, i32 2534, i32 2, i32 1, i32 825} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2467 = metadata !{i32 786443, metadata !1, metadata !2463, i32 2534, i32 2, i32 0, i32 558} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2468 = metadata !{i32 2534, i32 2, metadata !2469, null}
!2469 = metadata !{i32 786443, metadata !1, metadata !2470, i32 2534, i32 2, i32 2, i32 826} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2470 = metadata !{i32 786443, metadata !1, metadata !2463, i32 2534, i32 2, i32 0, i32 559} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2471 = metadata !{i32 2535, i32 2, metadata !2472, null}
!2472 = metadata !{i32 786443, metadata !1, metadata !2473, i32 2535, i32 2, i32 0, i32 561} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2473 = metadata !{i32 786443, metadata !1, metadata !210, i32 2535, i32 2, i32 0, i32 560} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2474 = metadata !{i32 2535, i32 2, metadata !2475, null}
!2475 = metadata !{i32 786443, metadata !1, metadata !2476, i32 2535, i32 2, i32 1, i32 827} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2476 = metadata !{i32 786443, metadata !1, metadata !2472, i32 2535, i32 2, i32 0, i32 562} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2477 = metadata !{i32 2535, i32 2, metadata !2478, null}
!2478 = metadata !{i32 786443, metadata !1, metadata !2479, i32 2535, i32 2, i32 2, i32 828} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2479 = metadata !{i32 786443, metadata !1, metadata !2472, i32 2535, i32 2, i32 0, i32 563} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2480 = metadata !{i32 2536, i32 2, metadata !2481, null}
!2481 = metadata !{i32 786443, metadata !1, metadata !2482, i32 2536, i32 2, i32 0, i32 565} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2482 = metadata !{i32 786443, metadata !1, metadata !210, i32 2536, i32 2, i32 0, i32 564} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2483 = metadata !{i32 2536, i32 2, metadata !2484, null}
!2484 = metadata !{i32 786443, metadata !1, metadata !2485, i32 2536, i32 2, i32 1, i32 829} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2485 = metadata !{i32 786443, metadata !1, metadata !2481, i32 2536, i32 2, i32 0, i32 566} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2486 = metadata !{i32 2536, i32 2, metadata !2487, null}
!2487 = metadata !{i32 786443, metadata !1, metadata !2488, i32 2536, i32 2, i32 2, i32 830} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2488 = metadata !{i32 786443, metadata !1, metadata !2481, i32 2536, i32 2, i32 0, i32 567} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2489 = metadata !{i32 2539, i32 2, metadata !210, null}
!2490 = metadata !{i32 2540, i32 2, metadata !210, null}
!2491 = metadata !{i32 2541, i32 2, metadata !210, null}
!2492 = metadata !{i32 2542, i32 2, metadata !210, null}
!2493 = metadata !{i32 2544, i32 2, metadata !210, null}
!2494 = metadata !{i32 2546, i32 1, metadata !210, null}
!2495 = metadata !{i32 2546, i32 1, metadata !2496, null}
!2496 = metadata !{i32 786443, metadata !1, metadata !210, i32 2546, i32 1, i32 1, i32 831} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2497 = metadata !{i32 786689, metadata !211, metadata !"InstancePtr", metadata !5, i32 16779779, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 2563]
!2498 = metadata !{i32 2563, i32 37, metadata !211, null}
!2499 = metadata !{i32 786688, metadata !211, metadata !"mode", metadata !5, i32 2565, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 2565]
!2500 = metadata !{i32 2565, i32 6, metadata !211, null}
!2501 = metadata !{i32 786688, metadata !211, metadata !"Timing", metadata !5, i32 2566, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Timing] [line 2566]
!2502 = metadata !{i32 2566, i32 14, metadata !211, null}
!2503 = metadata !{i32 2569, i32 2, metadata !2504, null}
!2504 = metadata !{i32 786443, metadata !1, metadata !2505, i32 2569, i32 2, i32 0, i32 569} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2505 = metadata !{i32 786443, metadata !1, metadata !211, i32 2569, i32 2, i32 0, i32 568} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2506 = metadata !{i32 2569, i32 2, metadata !2507, null}
!2507 = metadata !{i32 786443, metadata !1, metadata !2508, i32 2569, i32 2, i32 1, i32 832} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2508 = metadata !{i32 786443, metadata !1, metadata !2504, i32 2569, i32 2, i32 0, i32 570} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2509 = metadata !{i32 2569, i32 2, metadata !2510, null}
!2510 = metadata !{i32 786443, metadata !1, metadata !2511, i32 2569, i32 2, i32 2, i32 833} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2511 = metadata !{i32 786443, metadata !1, metadata !2504, i32 2569, i32 2, i32 0, i32 571} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2512 = metadata !{i32 2570, i32 2, metadata !2513, null}
!2513 = metadata !{i32 786443, metadata !1, metadata !2514, i32 2570, i32 2, i32 0, i32 573} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2514 = metadata !{i32 786443, metadata !1, metadata !211, i32 2570, i32 2, i32 0, i32 572} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2515 = metadata !{i32 2570, i32 2, metadata !2516, null}
!2516 = metadata !{i32 786443, metadata !1, metadata !2517, i32 2570, i32 2, i32 1, i32 834} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2517 = metadata !{i32 786443, metadata !1, metadata !2513, i32 2570, i32 2, i32 0, i32 574} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2518 = metadata !{i32 2570, i32 2, metadata !2519, null}
!2519 = metadata !{i32 786443, metadata !1, metadata !2520, i32 2570, i32 2, i32 2, i32 835} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2520 = metadata !{i32 786443, metadata !1, metadata !2513, i32 2570, i32 2, i32 0, i32 575} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.c]
!2521 = metadata !{i32 2573, i32 2, metadata !211, null}
!2522 = metadata !{i32 2574, i32 9, metadata !211, null}
!2523 = metadata !{i32 2576, i32 2, metadata !211, null}
!2524 = metadata !{i32 2577, i32 1, metadata !211, null}
