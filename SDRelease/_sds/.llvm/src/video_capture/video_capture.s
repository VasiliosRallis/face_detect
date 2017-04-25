; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.VideoCapture = type { %struct.XAxiVdma*, %struct.XAxiVdma_DmaSetup, %struct.XVtc, %struct.XVtc_Timing, [3 x i8*], i32, i32, %struct.XGpio, i32, i32 }
%struct.XAxiVdma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.XAxiVdma_ChannelCallBack, %struct.XAxiVdma_ChannelCallBack, [20 x i8], %struct.XAxiVdma_Channel, %struct.XAxiVdma_Channel, i32, [28 x i8] }
%struct.XAxiVdma_ChannelCallBack = type { void (i8*, i32)*, i8*, void (i8*, i32)*, i8* }
%struct.XAxiVdma_Channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], [32 x [8 x i32]], i32, i32, i32, [20 x i8] }
%struct.XAxiVdma_DmaSetup = type { i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32 }
%struct.XVtc = type { %struct.XVtc_Config, i32, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8* }
%struct.XVtc_Config = type { i16, i32 }
%struct.XVtc_Timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.XGpio = type { i32, i32, i32, i32 }
%struct.XGpio_Config = type { i16, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Starting VDMA for Video capture\0A\0D\00", align 1
@.str1 = private unnamed_addr constant [33 x i8] c"Write channel config failed %d\0D\0A\00", align 1
@.str2 = private unnamed_addr constant [45 x i8] c"Write channel set buffer address failed %d\0D\0A\00", align 1
@.str3 = private unnamed_addr constant [33 x i8] c"Start Write transfer failed %d\0D\0A\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"Unable to park the Write channel %d\0D\0A\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"Video Init started\0A\0D\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"XGPIO video Init failed\0A\0D\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c"Video init : OK\0A\0D\00", align 1
@.str8 = private unnamed_addr constant [50 x i8] c"Cannot change frame, unable to start parking %d\0D\0A\00", align 1

; Function Attrs: nounwind
define i32 @VideoStop(%struct.VideoCapture* %videoPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.VideoCapture*, align 4
  store %struct.VideoCapture* %videoPtr, %struct.VideoCapture** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.VideoCapture** %2}, metadata !235), !dbg !236
  %3 = load %struct.VideoCapture** %2, align 4, !dbg !237
  %4 = getelementptr inbounds %struct.VideoCapture* %3, i32 0, i32 9, !dbg !237
  %5 = load i32* %4, align 4, !dbg !237
  %6 = icmp eq i32 %5, 2, !dbg !237
  br i1 %6, label %12, label %7, !dbg !237

; <label>:7                                       ; preds = %0
  %8 = load %struct.VideoCapture** %2, align 4, !dbg !239
  %9 = getelementptr inbounds %struct.VideoCapture* %8, i32 0, i32 9, !dbg !239
  %10 = load i32* %9, align 4, !dbg !239
  %11 = icmp eq i32 %10, 0, !dbg !239
  br i1 %11, label %12, label %13, !dbg !239

; <label>:12                                      ; preds = %7, %0
  store i32 0, i32* %1, !dbg !241
  br label %27, !dbg !241

; <label>:13                                      ; preds = %7
  %14 = load %struct.VideoCapture** %2, align 4, !dbg !243
  %15 = getelementptr inbounds %struct.VideoCapture* %14, i32 0, i32 0, !dbg !243
  %16 = load %struct.XAxiVdma** %15, align 4, !dbg !243
  call void @XAxiVdma_Reset(%struct.XAxiVdma* %16, i16 zeroext 1), !dbg !243
  br label %17, !dbg !244

; <label>:17                                      ; preds = %23, %13
  %18 = load %struct.VideoCapture** %2, align 4, !dbg !245
  %19 = getelementptr inbounds %struct.VideoCapture* %18, i32 0, i32 0, !dbg !245
  %20 = load %struct.XAxiVdma** %19, align 4, !dbg !245
  %21 = call i32 @XAxiVdma_ResetNotDone(%struct.XAxiVdma* %20, i16 zeroext 1), !dbg !245
  %22 = icmp ne i32 %21, 0, !dbg !245
  br i1 %22, label %23, label %24, !dbg !245

; <label>:23                                      ; preds = %17
  br label %17, !dbg !248

; <label>:24                                      ; preds = %17
  %25 = load %struct.VideoCapture** %2, align 4, !dbg !250
  %26 = getelementptr inbounds %struct.VideoCapture* %25, i32 0, i32 9, !dbg !250
  store i32 2, i32* %26, align 4, !dbg !250
  store i32 0, i32* %1, !dbg !251
  br label %27, !dbg !251

; <label>:27                                      ; preds = %24, %12
  %28 = load i32* %1, !dbg !252
  ret i32 %28, !dbg !252
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @XAxiVdma_Reset(%struct.XAxiVdma*, i16 zeroext) #2

declare i32 @XAxiVdma_ResetNotDone(%struct.XAxiVdma*, i16 zeroext) #2

; Function Attrs: nounwind
define i32 @VideoStart(%struct.VideoCapture* %videoPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.VideoCapture*, align 4
  %Status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.VideoCapture* %videoPtr, %struct.VideoCapture** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.VideoCapture** %2}, metadata !253), !dbg !254
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !255), !dbg !256
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !257), !dbg !258
  %3 = load %struct.VideoCapture** %2, align 4, !dbg !259
  %4 = getelementptr inbounds %struct.VideoCapture* %3, i32 0, i32 9, !dbg !259
  %5 = load i32* %4, align 4, !dbg !259
  %6 = icmp eq i32 %5, 0, !dbg !259
  br i1 %6, label %7, label %8, !dbg !259

; <label>:7                                       ; preds = %0
  store i32 13, i32* %1, !dbg !261
  br label %115, !dbg !261

; <label>:8                                       ; preds = %0
  %9 = load %struct.VideoCapture** %2, align 4, !dbg !262
  %10 = getelementptr inbounds %struct.VideoCapture* %9, i32 0, i32 9, !dbg !262
  %11 = load i32* %10, align 4, !dbg !262
  %12 = icmp eq i32 %11, 1, !dbg !262
  br i1 %12, label %13, label %14, !dbg !262

; <label>:13                                      ; preds = %8
  store i32 0, i32* %1, !dbg !264
  br label %115, !dbg !264

; <label>:14                                      ; preds = %8
  %15 = load %struct.VideoCapture** %2, align 4, !dbg !265
  %16 = getelementptr inbounds %struct.VideoCapture* %15, i32 0, i32 3, !dbg !265
  %17 = getelementptr inbounds %struct.XVtc_Timing* %16, i32 0, i32 5, !dbg !265
  %18 = load i16* %17, align 2, !dbg !265
  %19 = zext i16 %18 to i32, !dbg !265
  %20 = load %struct.VideoCapture** %2, align 4, !dbg !265
  %21 = getelementptr inbounds %struct.VideoCapture* %20, i32 0, i32 1, !dbg !265
  %22 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %21, i32 0, i32 0, !dbg !265
  store i32 %19, i32* %22, align 4, !dbg !265
  %23 = load %struct.VideoCapture** %2, align 4, !dbg !266
  %24 = getelementptr inbounds %struct.VideoCapture* %23, i32 0, i32 3, !dbg !266
  %25 = getelementptr inbounds %struct.XVtc_Timing* %24, i32 0, i32 0, !dbg !266
  %26 = load i16* %25, align 2, !dbg !266
  %27 = zext i16 %26 to i32, !dbg !266
  %28 = mul nsw i32 %27, 2, !dbg !266
  %29 = load %struct.VideoCapture** %2, align 4, !dbg !266
  %30 = getelementptr inbounds %struct.VideoCapture* %29, i32 0, i32 1, !dbg !266
  %31 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %30, i32 0, i32 1, !dbg !266
  store i32 %28, i32* %31, align 4, !dbg !266
  %32 = load %struct.VideoCapture** %2, align 4, !dbg !267
  %33 = getelementptr inbounds %struct.VideoCapture* %32, i32 0, i32 6, !dbg !267
  %34 = load i32* %33, align 4, !dbg !267
  %35 = load %struct.VideoCapture** %2, align 4, !dbg !267
  %36 = getelementptr inbounds %struct.VideoCapture* %35, i32 0, i32 1, !dbg !267
  %37 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %36, i32 0, i32 9, !dbg !267
  store i32 %34, i32* %37, align 4, !dbg !267
  %38 = load %struct.VideoCapture** %2, align 4, !dbg !268
  %39 = getelementptr inbounds %struct.VideoCapture* %38, i32 0, i32 5, !dbg !268
  %40 = load i32* %39, align 4, !dbg !268
  %41 = load %struct.VideoCapture** %2, align 4, !dbg !268
  %42 = getelementptr inbounds %struct.VideoCapture* %41, i32 0, i32 1, !dbg !268
  %43 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %42, i32 0, i32 2, !dbg !268
  store i32 %40, i32* %43, align 4, !dbg !268
  store i32 0, i32* %i, align 4, !dbg !269
  br label %44, !dbg !269

; <label>:44                                      ; preds = %59, %14
  %45 = load i32* %i, align 4, !dbg !271
  %46 = icmp slt i32 %45, 3, !dbg !271
  br i1 %46, label %47, label %62, !dbg !271

; <label>:47                                      ; preds = %44
  %48 = load i32* %i, align 4, !dbg !274
  %49 = load %struct.VideoCapture** %2, align 4, !dbg !274
  %50 = getelementptr inbounds %struct.VideoCapture* %49, i32 0, i32 4, !dbg !274
  %51 = getelementptr inbounds [3 x i8*]* %50, i32 0, i32 %48, !dbg !274
  %52 = load i8** %51, align 4, !dbg !274
  %53 = ptrtoint i8* %52 to i32, !dbg !274
  %54 = load i32* %i, align 4, !dbg !274
  %55 = load %struct.VideoCapture** %2, align 4, !dbg !274
  %56 = getelementptr inbounds %struct.VideoCapture* %55, i32 0, i32 1, !dbg !274
  %57 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %56, i32 0, i32 8, !dbg !274
  %58 = getelementptr inbounds [32 x i32]* %57, i32 0, i32 %54, !dbg !274
  store i32 %53, i32* %58, align 4, !dbg !274
  br label %59, !dbg !276

; <label>:59                                      ; preds = %47
  %60 = load i32* %i, align 4, !dbg !277
  %61 = add nsw i32 %60, 1, !dbg !277
  store i32 %61, i32* %i, align 4, !dbg !277
  br label %44, !dbg !277

; <label>:62                                      ; preds = %44
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str, i32 0, i32 0)), !dbg !278
  %64 = load %struct.VideoCapture** %2, align 4, !dbg !279
  %65 = getelementptr inbounds %struct.VideoCapture* %64, i32 0, i32 0, !dbg !279
  %66 = load %struct.XAxiVdma** %65, align 4, !dbg !279
  %67 = load %struct.VideoCapture** %2, align 4, !dbg !279
  %68 = getelementptr inbounds %struct.VideoCapture* %67, i32 0, i32 1, !dbg !279
  %69 = call i32 @XAxiVdma_DmaConfig(%struct.XAxiVdma* %66, i16 zeroext 1, %struct.XAxiVdma_DmaSetup* %68), !dbg !279
  store i32 %69, i32* %Status, align 4, !dbg !279
  %70 = load i32* %Status, align 4, !dbg !280
  %71 = icmp ne i32 %70, 0, !dbg !280
  br i1 %71, label %72, label %75, !dbg !280

; <label>:72                                      ; preds = %62
  %73 = load i32* %Status, align 4, !dbg !282
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str1, i32 0, i32 0), i32 %73), !dbg !282
  store i32 1, i32* %1, !dbg !284
  br label %115, !dbg !284

; <label>:75                                      ; preds = %62
  %76 = load %struct.VideoCapture** %2, align 4, !dbg !285
  %77 = getelementptr inbounds %struct.VideoCapture* %76, i32 0, i32 0, !dbg !285
  %78 = load %struct.XAxiVdma** %77, align 4, !dbg !285
  %79 = load %struct.VideoCapture** %2, align 4, !dbg !285
  %80 = getelementptr inbounds %struct.VideoCapture* %79, i32 0, i32 1, !dbg !285
  %81 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %80, i32 0, i32 8, !dbg !285
  %82 = getelementptr inbounds [32 x i32]* %81, i32 0, i32 0, !dbg !285
  %83 = call i32 @XAxiVdma_DmaSetBufferAddr(%struct.XAxiVdma* %78, i16 zeroext 1, i32* %82), !dbg !285
  store i32 %83, i32* %Status, align 4, !dbg !285
  %84 = load i32* %Status, align 4, !dbg !286
  %85 = icmp ne i32 %84, 0, !dbg !286
  br i1 %85, label %86, label %89, !dbg !286

; <label>:86                                      ; preds = %75
  %87 = load i32* %Status, align 4, !dbg !288
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str2, i32 0, i32 0), i32 %87), !dbg !288
  store i32 1, i32* %1, !dbg !290
  br label %115, !dbg !290

; <label>:89                                      ; preds = %75
  %90 = load %struct.VideoCapture** %2, align 4, !dbg !291
  %91 = getelementptr inbounds %struct.VideoCapture* %90, i32 0, i32 0, !dbg !291
  %92 = load %struct.XAxiVdma** %91, align 4, !dbg !291
  %93 = call i32 @XAxiVdma_DmaStart(%struct.XAxiVdma* %92, i16 zeroext 1), !dbg !291
  store i32 %93, i32* %Status, align 4, !dbg !291
  %94 = load i32* %Status, align 4, !dbg !292
  %95 = icmp ne i32 %94, 0, !dbg !292
  br i1 %95, label %96, label %99, !dbg !292

; <label>:96                                      ; preds = %89
  %97 = load i32* %Status, align 4, !dbg !294
  %98 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str3, i32 0, i32 0), i32 %97), !dbg !294
  store i32 1, i32* %1, !dbg !296
  br label %115, !dbg !296

; <label>:99                                      ; preds = %89
  %100 = load %struct.VideoCapture** %2, align 4, !dbg !297
  %101 = getelementptr inbounds %struct.VideoCapture* %100, i32 0, i32 0, !dbg !297
  %102 = load %struct.XAxiVdma** %101, align 4, !dbg !297
  %103 = load %struct.VideoCapture** %2, align 4, !dbg !297
  %104 = getelementptr inbounds %struct.VideoCapture* %103, i32 0, i32 6, !dbg !297
  %105 = load i32* %104, align 4, !dbg !297
  %106 = call i32 @XAxiVdma_StartParking(%struct.XAxiVdma* %102, i32 %105, i16 zeroext 1), !dbg !297
  store i32 %106, i32* %Status, align 4, !dbg !297
  %107 = load i32* %Status, align 4, !dbg !298
  %108 = icmp ne i32 %107, 0, !dbg !298
  br i1 %108, label %109, label %112, !dbg !298

; <label>:109                                     ; preds = %99
  %110 = load i32* %Status, align 4, !dbg !300
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str4, i32 0, i32 0), i32 %110), !dbg !300
  store i32 1, i32* %1, !dbg !302
  br label %115, !dbg !302

; <label>:112                                     ; preds = %99
  %113 = load %struct.VideoCapture** %2, align 4, !dbg !303
  %114 = getelementptr inbounds %struct.VideoCapture* %113, i32 0, i32 9, !dbg !303
  store i32 1, i32* %114, align 4, !dbg !303
  store i32 0, i32* %1, !dbg !304
  br label %115, !dbg !304

; <label>:115                                     ; preds = %112, %109, %96, %86, %72, %13, %7
  %116 = load i32* %1, !dbg !305
  ret i32 %116, !dbg !305
}

declare i32 @printf(i8*, ...) #2

declare i32 @XAxiVdma_DmaConfig(%struct.XAxiVdma*, i16 zeroext, %struct.XAxiVdma_DmaSetup*) #2

declare i32 @XAxiVdma_DmaSetBufferAddr(%struct.XAxiVdma*, i16 zeroext, i32*) #2

declare i32 @XAxiVdma_DmaStart(%struct.XAxiVdma*, i16 zeroext) #2

declare i32 @XAxiVdma_StartParking(%struct.XAxiVdma*, i32, i16 zeroext) #2

; Function Attrs: nounwind
define i32 @VideoInitialize(%struct.VideoCapture* %videoPtr, %struct.XAxiVdma* %vdma, i16 zeroext %vtcId, i16 zeroext %gpio_Id, i32 %addVirtVtc, i32 %addVirtGpio, i8** %framePtr, i32 %stride, i32 %startOnDet) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.VideoCapture*, align 4
  %3 = alloca %struct.XAxiVdma*, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %Status = alloca i32, align 4
  %i = alloca i32, align 4
  %gpioVideoCfg = alloca %struct.XGpio_Config*, align 4
  store %struct.VideoCapture* %videoPtr, %struct.VideoCapture** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.VideoCapture** %2}, metadata !306), !dbg !307
  store %struct.XAxiVdma* %vdma, %struct.XAxiVdma** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %3}, metadata !308), !dbg !309
  store i16 %vtcId, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !310), !dbg !311
  store i16 %gpio_Id, i16* %5, align 2
  call void @llvm.dbg.declare(metadata !{i16* %5}, metadata !312), !dbg !313
  store i32 %addVirtVtc, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !314), !dbg !315
  store i32 %addVirtGpio, i32* %7, align 4
  call void @llvm.dbg.declare(metadata !{i32* %7}, metadata !316), !dbg !317
  store i8** %framePtr, i8*** %8, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %8}, metadata !318), !dbg !319
  store i32 %stride, i32* %9, align 4
  call void @llvm.dbg.declare(metadata !{i32* %9}, metadata !320), !dbg !321
  store i32 %startOnDet, i32* %10, align 4
  call void @llvm.dbg.declare(metadata !{i32* %10}, metadata !322), !dbg !323
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !324), !dbg !325
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !326), !dbg !327
  call void @llvm.dbg.declare(metadata !{%struct.XGpio_Config** %gpioVideoCfg}, metadata !328), !dbg !337
  %11 = load %struct.VideoCapture** %2, align 4, !dbg !338
  %12 = getelementptr inbounds %struct.VideoCapture* %11, i32 0, i32 6, !dbg !338
  store i32 0, i32* %12, align 4, !dbg !338
  store i32 0, i32* %i, align 4, !dbg !339
  br label %13, !dbg !339

; <label>:13                                      ; preds = %25, %0
  %14 = load i32* %i, align 4, !dbg !341
  %15 = icmp slt i32 %14, 3, !dbg !341
  br i1 %15, label %16, label %28, !dbg !341

; <label>:16                                      ; preds = %13
  %17 = load i32* %i, align 4, !dbg !344
  %18 = load i8*** %8, align 4, !dbg !344
  %19 = getelementptr inbounds i8** %18, i32 %17, !dbg !344
  %20 = load i8** %19, align 4, !dbg !344
  %21 = load i32* %i, align 4, !dbg !344
  %22 = load %struct.VideoCapture** %2, align 4, !dbg !344
  %23 = getelementptr inbounds %struct.VideoCapture* %22, i32 0, i32 4, !dbg !344
  %24 = getelementptr inbounds [3 x i8*]* %23, i32 0, i32 %21, !dbg !344
  store i8* %20, i8** %24, align 4, !dbg !344
  br label %25, !dbg !346

; <label>:25                                      ; preds = %16
  %26 = load i32* %i, align 4, !dbg !347
  %27 = add nsw i32 %26, 1, !dbg !347
  store i32 %27, i32* %i, align 4, !dbg !347
  br label %13, !dbg !347

; <label>:28                                      ; preds = %13
  %29 = load %struct.VideoCapture** %2, align 4, !dbg !348
  %30 = getelementptr inbounds %struct.VideoCapture* %29, i32 0, i32 9, !dbg !348
  store i32 0, i32* %30, align 4, !dbg !348
  %31 = load i32* %9, align 4, !dbg !349
  %32 = load %struct.VideoCapture** %2, align 4, !dbg !349
  %33 = getelementptr inbounds %struct.VideoCapture* %32, i32 0, i32 5, !dbg !349
  store i32 %31, i32* %33, align 4, !dbg !349
  %34 = load %struct.XAxiVdma** %3, align 4, !dbg !350
  %35 = load %struct.VideoCapture** %2, align 4, !dbg !350
  %36 = getelementptr inbounds %struct.VideoCapture* %35, i32 0, i32 0, !dbg !350
  store %struct.XAxiVdma* %34, %struct.XAxiVdma** %36, align 4, !dbg !350
  %37 = load i32* %10, align 4, !dbg !351
  %38 = load %struct.VideoCapture** %2, align 4, !dbg !351
  %39 = getelementptr inbounds %struct.VideoCapture* %38, i32 0, i32 8, !dbg !351
  store i32 %37, i32* %39, align 4, !dbg !351
  %40 = load %struct.VideoCapture** %2, align 4, !dbg !352
  %41 = getelementptr inbounds %struct.VideoCapture* %40, i32 0, i32 1, !dbg !352
  %42 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %41, i32 0, i32 3, !dbg !352
  store i32 0, i32* %42, align 4, !dbg !352
  %43 = load %struct.VideoCapture** %2, align 4, !dbg !353
  %44 = getelementptr inbounds %struct.VideoCapture* %43, i32 0, i32 1, !dbg !353
  %45 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %44, i32 0, i32 4, !dbg !353
  store i32 1, i32* %45, align 4, !dbg !353
  %46 = load %struct.VideoCapture** %2, align 4, !dbg !354
  %47 = getelementptr inbounds %struct.VideoCapture* %46, i32 0, i32 1, !dbg !354
  %48 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %47, i32 0, i32 5, !dbg !354
  store i32 0, i32* %48, align 4, !dbg !354
  %49 = load %struct.VideoCapture** %2, align 4, !dbg !355
  %50 = getelementptr inbounds %struct.VideoCapture* %49, i32 0, i32 1, !dbg !355
  %51 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %50, i32 0, i32 6, !dbg !355
  store i32 0, i32* %51, align 4, !dbg !355
  %52 = load %struct.VideoCapture** %2, align 4, !dbg !356
  %53 = getelementptr inbounds %struct.VideoCapture* %52, i32 0, i32 1, !dbg !356
  %54 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %53, i32 0, i32 7, !dbg !356
  store i32 0, i32* %54, align 4, !dbg !356
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)), !dbg !357
  %56 = load i16* %5, align 2, !dbg !358
  %57 = call %struct.XGpio_Config* @XGpio_LookupConfig(i16 zeroext %56), !dbg !358
  store %struct.XGpio_Config* %57, %struct.XGpio_Config** %gpioVideoCfg, align 4, !dbg !358
  %58 = load %struct.VideoCapture** %2, align 4, !dbg !359
  %59 = getelementptr inbounds %struct.VideoCapture* %58, i32 0, i32 7, !dbg !359
  %60 = load %struct.XGpio_Config** %gpioVideoCfg, align 4, !dbg !359
  %61 = load i32* %7, align 4, !dbg !359
  %62 = call i32 @XGpio_CfgInitialize(%struct.XGpio* %59, %struct.XGpio_Config* %60, i32 %61), !dbg !359
  store i32 %62, i32* %Status, align 4, !dbg !359
  %63 = load i32* %Status, align 4, !dbg !360
  %64 = icmp ne i32 %63, 0, !dbg !360
  br i1 %64, label %65, label %67, !dbg !360

; <label>:65                                      ; preds = %28
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0)), !dbg !362
  store i32 1, i32* %1, !dbg !364
  br label %76, !dbg !364

; <label>:67                                      ; preds = %28
  %68 = load %struct.VideoCapture** %2, align 4, !dbg !365
  %69 = getelementptr inbounds %struct.VideoCapture* %68, i32 0, i32 7, !dbg !365
  call void @XGpio_SetDataDirection(%struct.XGpio* %69, i32 1, i32 0), !dbg !365
  %70 = load %struct.VideoCapture** %2, align 4, !dbg !366
  %71 = getelementptr inbounds %struct.VideoCapture* %70, i32 0, i32 7, !dbg !366
  call void @XGpio_SetDataDirection(%struct.XGpio* %71, i32 2, i32 1), !dbg !366
  %72 = load %struct.VideoCapture** %2, align 4, !dbg !367
  %73 = getelementptr inbounds %struct.VideoCapture* %72, i32 0, i32 7, !dbg !367
  call void @XGpio_DiscreteWrite(%struct.XGpio* %73, i32 1, i32 1), !dbg !367
  %74 = load %struct.VideoCapture** %2, align 4, !dbg !368
  call void @VideoDetect(%struct.VideoCapture* %74), !dbg !368
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str7, i32 0, i32 0)), !dbg !369
  store i32 0, i32* %1, !dbg !370
  br label %76, !dbg !370

; <label>:76                                      ; preds = %67, %65
  %77 = load i32* %1, !dbg !371
  ret i32 %77, !dbg !371
}

declare %struct.XGpio_Config* @XGpio_LookupConfig(i16 zeroext) #2

declare i32 @XGpio_CfgInitialize(%struct.XGpio*, %struct.XGpio_Config*, i32) #2

declare void @XGpio_SetDataDirection(%struct.XGpio*, i32, i32) #2

declare void @XGpio_DiscreteWrite(%struct.XGpio*, i32, i32) #2

; Function Attrs: nounwind
define void @VideoDetect(%struct.VideoCapture* %videoPtr) #0 {
  %1 = alloca %struct.VideoCapture*, align 4
  %GpioPtr = alloca %struct.XGpio*, align 4
  %locked = alloca i32, align 4
  store %struct.VideoCapture* %videoPtr, %struct.VideoCapture** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.VideoCapture** %1}, metadata !372), !dbg !373
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %GpioPtr}, metadata !374), !dbg !376
  %2 = load %struct.VideoCapture** %1, align 4, !dbg !377
  %3 = getelementptr inbounds %struct.VideoCapture* %2, i32 0, i32 7, !dbg !377
  store %struct.XGpio* %3, %struct.XGpio** %GpioPtr, align 4, !dbg !377
  call void @llvm.dbg.declare(metadata !{i32* %locked}, metadata !378), !dbg !379
  store i32 0, i32* %locked, align 4, !dbg !380
  br label %4, !dbg !381

; <label>:4                                       ; preds = %8, %0
  %5 = load i32* %locked, align 4, !dbg !382
  %6 = icmp ne i32 %5, 0, !dbg !382
  %7 = xor i1 %6, true, !dbg !382
  br i1 %7, label %8, label %11, !dbg !382

; <label>:8                                       ; preds = %4
  %9 = load %struct.XGpio** %GpioPtr, align 4, !dbg !384
  %10 = call i32 @XGpio_DiscreteRead(%struct.XGpio* %9, i32 2), !dbg !384
  store i32 %10, i32* %locked, align 4, !dbg !384
  br label %4, !dbg !386

; <label>:11                                      ; preds = %4
  %12 = call i32 @sleep(i32 3), !dbg !387
  %13 = load %struct.VideoCapture** %1, align 4, !dbg !388
  %14 = getelementptr inbounds %struct.VideoCapture* %13, i32 0, i32 3, !dbg !388
  %15 = getelementptr inbounds %struct.XVtc_Timing* %14, i32 0, i32 0, !dbg !388
  store i16 1280, i16* %15, align 2, !dbg !388
  %16 = load %struct.VideoCapture** %1, align 4, !dbg !389
  %17 = getelementptr inbounds %struct.VideoCapture* %16, i32 0, i32 3, !dbg !389
  %18 = getelementptr inbounds %struct.XVtc_Timing* %17, i32 0, i32 1, !dbg !389
  store i16 110, i16* %18, align 2, !dbg !389
  %19 = load %struct.VideoCapture** %1, align 4, !dbg !390
  %20 = getelementptr inbounds %struct.VideoCapture* %19, i32 0, i32 3, !dbg !390
  %21 = getelementptr inbounds %struct.XVtc_Timing* %20, i32 0, i32 2, !dbg !390
  store i16 40, i16* %21, align 2, !dbg !390
  %22 = load %struct.VideoCapture** %1, align 4, !dbg !391
  %23 = getelementptr inbounds %struct.VideoCapture* %22, i32 0, i32 3, !dbg !391
  %24 = getelementptr inbounds %struct.XVtc_Timing* %23, i32 0, i32 3, !dbg !391
  store i16 220, i16* %24, align 2, !dbg !391
  %25 = load %struct.VideoCapture** %1, align 4, !dbg !392
  %26 = getelementptr inbounds %struct.VideoCapture* %25, i32 0, i32 3, !dbg !392
  %27 = getelementptr inbounds %struct.XVtc_Timing* %26, i32 0, i32 4, !dbg !392
  store i16 1, i16* %27, align 2, !dbg !392
  %28 = load %struct.VideoCapture** %1, align 4, !dbg !393
  %29 = getelementptr inbounds %struct.VideoCapture* %28, i32 0, i32 3, !dbg !393
  %30 = getelementptr inbounds %struct.XVtc_Timing* %29, i32 0, i32 5, !dbg !393
  store i16 720, i16* %30, align 2, !dbg !393
  %31 = load %struct.VideoCapture** %1, align 4, !dbg !394
  %32 = getelementptr inbounds %struct.VideoCapture* %31, i32 0, i32 3, !dbg !394
  %33 = getelementptr inbounds %struct.XVtc_Timing* %32, i32 0, i32 6, !dbg !394
  store i16 5, i16* %33, align 2, !dbg !394
  %34 = load %struct.VideoCapture** %1, align 4, !dbg !395
  %35 = getelementptr inbounds %struct.VideoCapture* %34, i32 0, i32 3, !dbg !395
  %36 = getelementptr inbounds %struct.XVtc_Timing* %35, i32 0, i32 7, !dbg !395
  store i16 6, i16* %36, align 2, !dbg !395
  %37 = load %struct.VideoCapture** %1, align 4, !dbg !396
  %38 = getelementptr inbounds %struct.VideoCapture* %37, i32 0, i32 3, !dbg !396
  %39 = getelementptr inbounds %struct.XVtc_Timing* %38, i32 0, i32 8, !dbg !396
  store i16 21, i16* %39, align 2, !dbg !396
  %40 = load %struct.VideoCapture** %1, align 4, !dbg !397
  %41 = getelementptr inbounds %struct.VideoCapture* %40, i32 0, i32 3, !dbg !397
  %42 = getelementptr inbounds %struct.XVtc_Timing* %41, i32 0, i32 9, !dbg !397
  store i16 -719, i16* %42, align 2, !dbg !397
  %43 = load %struct.VideoCapture** %1, align 4, !dbg !398
  %44 = getelementptr inbounds %struct.VideoCapture* %43, i32 0, i32 3, !dbg !398
  %45 = getelementptr inbounds %struct.XVtc_Timing* %44, i32 0, i32 10, !dbg !398
  store i16 1, i16* %45, align 2, !dbg !398
  %46 = load %struct.VideoCapture** %1, align 4, !dbg !399
  %47 = getelementptr inbounds %struct.VideoCapture* %46, i32 0, i32 3, !dbg !399
  %48 = getelementptr inbounds %struct.XVtc_Timing* %47, i32 0, i32 11, !dbg !399
  store i16 0, i16* %48, align 2, !dbg !399
  %49 = load %struct.VideoCapture** %1, align 4, !dbg !400
  %50 = getelementptr inbounds %struct.VideoCapture* %49, i32 0, i32 3, !dbg !400
  %51 = getelementptr inbounds %struct.XVtc_Timing* %50, i32 0, i32 12, !dbg !400
  store i16 1, i16* %51, align 2, !dbg !400
  %52 = load %struct.VideoCapture** %1, align 4, !dbg !401
  %53 = getelementptr inbounds %struct.VideoCapture* %52, i32 0, i32 3, !dbg !401
  %54 = getelementptr inbounds %struct.XVtc_Timing* %53, i32 0, i32 13, !dbg !401
  store i8 0, i8* %54, align 1, !dbg !401
  %55 = load %struct.VideoCapture** %1, align 4, !dbg !402
  %56 = getelementptr inbounds %struct.VideoCapture* %55, i32 0, i32 9, !dbg !402
  store i32 2, i32* %56, align 4, !dbg !402
  %57 = load %struct.VideoCapture** %1, align 4, !dbg !403
  %58 = getelementptr inbounds %struct.VideoCapture* %57, i32 0, i32 8, !dbg !403
  %59 = load i32* %58, align 4, !dbg !403
  %60 = icmp ne i32 %59, 0, !dbg !403
  br i1 %60, label %61, label %64, !dbg !403

; <label>:61                                      ; preds = %11
  %62 = load %struct.VideoCapture** %1, align 4, !dbg !405
  %63 = call i32 @VideoStart(%struct.VideoCapture* %62), !dbg !405
  br label %64, !dbg !407

; <label>:64                                      ; preds = %61, %11
  ret void, !dbg !408
}

; Function Attrs: nounwind
define i32 @VideoChangeFrame(%struct.VideoCapture* %videoPtr, i32 %frameIndex) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.VideoCapture*, align 4
  %3 = alloca i32, align 4
  %Status = alloca i32, align 4
  store %struct.VideoCapture* %videoPtr, %struct.VideoCapture** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.VideoCapture** %2}, metadata !409), !dbg !410
  store i32 %frameIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !411), !dbg !412
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !413), !dbg !414
  %4 = load i32* %3, align 4, !dbg !415
  %5 = load %struct.VideoCapture** %2, align 4, !dbg !415
  %6 = getelementptr inbounds %struct.VideoCapture* %5, i32 0, i32 6, !dbg !415
  store i32 %4, i32* %6, align 4, !dbg !415
  %7 = load %struct.VideoCapture** %2, align 4, !dbg !416
  %8 = getelementptr inbounds %struct.VideoCapture* %7, i32 0, i32 9, !dbg !416
  %9 = load i32* %8, align 4, !dbg !416
  %10 = icmp eq i32 %9, 1, !dbg !416
  br i1 %10, label %11, label %25, !dbg !416

; <label>:11                                      ; preds = %0
  %12 = load %struct.VideoCapture** %2, align 4, !dbg !418
  %13 = getelementptr inbounds %struct.VideoCapture* %12, i32 0, i32 0, !dbg !418
  %14 = load %struct.XAxiVdma** %13, align 4, !dbg !418
  %15 = load %struct.VideoCapture** %2, align 4, !dbg !418
  %16 = getelementptr inbounds %struct.VideoCapture* %15, i32 0, i32 6, !dbg !418
  %17 = load i32* %16, align 4, !dbg !418
  %18 = call i32 @XAxiVdma_StartParking(%struct.XAxiVdma* %14, i32 %17, i16 zeroext 1), !dbg !418
  store i32 %18, i32* %Status, align 4, !dbg !418
  %19 = load i32* %Status, align 4, !dbg !420
  %20 = icmp ne i32 %19, 0, !dbg !420
  br i1 %20, label %21, label %24, !dbg !420

; <label>:21                                      ; preds = %11
  %22 = load i32* %Status, align 4, !dbg !422
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str8, i32 0, i32 0), i32 %22), !dbg !422
  store i32 1, i32* %1, !dbg !424
  br label %26, !dbg !424

; <label>:24                                      ; preds = %11
  br label %25, !dbg !425

; <label>:25                                      ; preds = %24, %0
  store i32 0, i32* %1, !dbg !426
  br label %26, !dbg !426

; <label>:26                                      ; preds = %25, %21
  %27 = load i32* %1, !dbg !427
  ret i32 %27, !dbg !427
}

declare i32 @XGpio_DiscreteRead(%struct.XGpio*, i32) #2

declare i32 @sleep(i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!192, !193, !194, !195, !196, !197, !198, !193, !199, !200, !201, !202, !203, !204, !205, !197, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !215, !217, !218, !219, !220, !221, !222, !223, !224}
!xidane.function_declaration_filename = !{!192, !225, !194, !226, !196, !226, !198, !225, !199, !227, !201, !226, !203, !226, !205, !226, !206, !226, !208, !225, !210, !228, !212, !228, !214, !228, !216, !228, !217, !225, !219, !225, !221, !228, !223, !229}
!xidane.ExternC = !{!192, !194, !196, !198, !199, !201, !203, !205, !206, !208, !210, !212, !214, !216, !217, !219, !221, !223}
!llvm.module.flags = !{!230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !9, metadata !10, metadata !9, metadata !9, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 106, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 106, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"VIDEO_DISCONNECTED", i64 0} ; [ DW_TAG_enumerator ] [VIDEO_DISCONNECTED :: 0]
!7 = metadata !{i32 786472, metadata !"VIDEO_STREAMING", i64 1} ; [ DW_TAG_enumerator ] [VIDEO_STREAMING :: 1]
!8 = metadata !{i32 786472, metadata !"VIDEO_PAUSED", i64 2} ; [ DW_TAG_enumerator ] [VIDEO_PAUSED :: 2]
!9 = metadata !{}
!10 = metadata !{metadata !11, metadata !181, metadata !182, metadata !186, metadata !189}
!11 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"VideoStop", metadata !"VideoStop", metadata !"", i32 122, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.VideoCapture*)* @VideoStop, null, null, metadata !9, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [VideoStop]
!12 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !16}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from VideoCapture]
!17 = metadata !{i32 786454, metadata !4, null, metadata !"VideoCapture", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [VideoCapture] [line 131, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 117, i64 2368, i64 32, i32 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 117, size 2368, align 32, offset 0] [def] [from ]
!19 = metadata !{metadata !20, metadata !98, metadata !114, metadata !141, metadata !162, metadata !167, metadata !168, metadata !169, metadata !178, metadata !179}
!20 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"vdma", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [vdma] [line 118, size 32, align 32, offset 0] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma]
!22 = metadata !{i32 786454, metadata !23, null, metadata !"XAxiVdma", i32 525, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [XAxiVdma] [line 525, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/../vdma/xaxivdma.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!24 = metadata !{i32 786451, metadata !23, null, metadata !"", i32 504, i64 19456, i64 256, i32 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 504, size 19456, align 256, offset 0] [def] [from ]
!25 = metadata !{metadata !26, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !57, metadata !58, metadata !96, metadata !97}
!26 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"BaseAddr", i32 505, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [BaseAddr] [line 505, size 32, align 32, offset 0] [from UINTPTR]
!27 = metadata !{i32 786454, metadata !28, null, metadata !"UINTPTR", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [UINTPTR] [line 143, size 0, align 0, offset 0] [from u_int32_t]
!28 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/../xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!29 = metadata !{i32 786454, metadata !30, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!30 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!31 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"HasSG", i32 506, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [HasSG] [line 506, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"IsReady", i32 507, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [IsReady] [line 507, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"MaxNumFrames", i32 509, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [MaxNumFrames] [line 509, size 32, align 32, offset 96] [from int]
!35 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"HasMm2S", i32 510, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [HasMm2S] [line 510, size 32, align 32, offset 128] [from int]
!36 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"HasMm2SDRE", i32 511, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [HasMm2SDRE] [line 511, size 32, align 32, offset 160] [from int]
!37 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"HasS2Mm", i32 512, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [HasS2Mm] [line 512, size 32, align 32, offset 192] [from int]
!38 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"HasS2MmDRE", i32 513, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [HasS2MmDRE] [line 513, size 32, align 32, offset 224] [from int]
!39 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"EnableVIDParamRead", i32 514, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [EnableVIDParamRead] [line 514, size 32, align 32, offset 256] [from int]
!40 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"UseFsync", i32 516, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [UseFsync] [line 516, size 32, align 32, offset 288] [from int]
!41 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"InternalGenLock", i32 518, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [InternalGenLock] [line 518, size 32, align 32, offset 320] [from int]
!42 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"ReadCallBack", i32 519, i64 128, i64 32, i64 352, i32 0, metadata !43} ; [ DW_TAG_member ] [ReadCallBack] [line 519, size 128, align 32, offset 352] [from XAxiVdma_ChannelCallBack]
!43 = metadata !{i32 786454, metadata !23, null, metadata !"XAxiVdma_ChannelCallBack", i32 499, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [XAxiVdma_ChannelCallBack] [line 499, size 0, align 0, offset 0] [from ]
!44 = metadata !{i32 786451, metadata !23, null, metadata !"", i32 493, i64 128, i64 32, i32 0, i32 0, null, metadata !45, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 493, size 128, align 32, offset 0] [def] [from ]
!45 = metadata !{metadata !46, metadata !53, metadata !54, metadata !56}
!46 = metadata !{i32 786445, metadata !23, metadata !44, metadata !"CompletionCallBack", i32 494, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [CompletionCallBack] [line 494, size 32, align 32, offset 0] [from XAxiVdma_CallBack]
!47 = metadata !{i32 786454, metadata !23, null, metadata !"XAxiVdma_CallBack", i32 381, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [XAxiVdma_CallBack] [line 381, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!49 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null, metadata !51, metadata !52}
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!52 = metadata !{i32 786454, metadata !28, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!53 = metadata !{i32 786445, metadata !23, metadata !44, metadata !"CompletionRef", i32 495, i64 32, i64 32, i64 32, i32 0, metadata !51} ; [ DW_TAG_member ] [CompletionRef] [line 495, size 32, align 32, offset 32] [from ]
!54 = metadata !{i32 786445, metadata !23, metadata !44, metadata !"ErrCallBack", i32 497, i64 32, i64 32, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [ErrCallBack] [line 497, size 32, align 32, offset 64] [from XAxiVdma_ErrorCallBack]
!55 = metadata !{i32 786454, metadata !23, null, metadata !"XAxiVdma_ErrorCallBack", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [XAxiVdma_ErrorCallBack] [line 394, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786445, metadata !23, metadata !44, metadata !"ErrRef", i32 498, i64 32, i64 32, i64 96, i32 0, metadata !51} ; [ DW_TAG_member ] [ErrRef] [line 498, size 32, align 32, offset 96] [from ]
!57 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"WriteCallBack", i32 520, i64 128, i64 32, i64 480, i32 0, metadata !43} ; [ DW_TAG_member ] [WriteCallBack] [line 520, size 128, align 32, offset 480] [from XAxiVdma_ChannelCallBack]
!58 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"ReadChannel", i32 522, i64 9216, i64 256, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [ReadChannel] [line 522, size 9216, align 256, offset 768] [from XAxiVdma_Channel]
!59 = metadata !{i32 786454, metadata !60, null, metadata !"XAxiVdma_Channel", i32 120, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [XAxiVdma_Channel] [line 120, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/../vdma/xaxivdma_i.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!61 = metadata !{i32 786451, metadata !60, null, metadata !"", i32 86, i64 9216, i64 256, i32 0, i32 0, null, metadata !62, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 86, size 9216, align 256, offset 0] [def] [from ]
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !93, metadata !94, metadata !95}
!63 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"ChanBase", i32 87, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [ChanBase] [line 87, size 32, align 32, offset 0] [from u32]
!64 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"InstanceBase", i32 88, i64 32, i64 32, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [InstanceBase] [line 88, size 32, align 32, offset 32] [from u32]
!65 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"StartAddrBase", i32 89, i64 32, i64 32, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [StartAddrBase] [line 89, size 32, align 32, offset 64] [from u32]
!66 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"IsValid", i32 91, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [IsValid] [line 91, size 32, align 32, offset 96] [from int]
!67 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"FlushonFsync", i32 92, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [FlushonFsync] [line 92, size 32, align 32, offset 128] [from int]
!68 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"HasSG", i32 94, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [HasSG] [line 94, size 32, align 32, offset 160] [from int]
!69 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"IsRead", i32 95, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [IsRead] [line 95, size 32, align 32, offset 192] [from int]
!70 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"HasDRE", i32 96, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [HasDRE] [line 96, size 32, align 32, offset 224] [from int]
!71 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"LineBufDepth", i32 97, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [LineBufDepth] [line 97, size 32, align 32, offset 256] [from int]
!72 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"LineBufThreshold", i32 98, i64 32, i64 32, i64 288, i32 0, metadata !15} ; [ DW_TAG_member ] [LineBufThreshold] [line 98, size 32, align 32, offset 288] [from int]
!73 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"WordLength", i32 100, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [WordLength] [line 100, size 32, align 32, offset 320] [from int]
!74 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"NumFrames", i32 101, i64 32, i64 32, i64 352, i32 0, metadata !15} ; [ DW_TAG_member ] [NumFrames] [line 101, size 32, align 32, offset 352] [from int]
!75 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"HeadBdPhysAddr", i32 103, i64 32, i64 32, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [HeadBdPhysAddr] [line 103, size 32, align 32, offset 384] [from UINTPTR]
!76 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"HeadBdAddr", i32 104, i64 32, i64 32, i64 416, i32 0, metadata !27} ; [ DW_TAG_member ] [HeadBdAddr] [line 104, size 32, align 32, offset 416] [from UINTPTR]
!77 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"TailBdPhysAddr", i32 105, i64 32, i64 32, i64 448, i32 0, metadata !27} ; [ DW_TAG_member ] [TailBdPhysAddr] [line 105, size 32, align 32, offset 448] [from UINTPTR]
!78 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"TailBdAddr", i32 106, i64 32, i64 32, i64 480, i32 0, metadata !27} ; [ DW_TAG_member ] [TailBdAddr] [line 106, size 32, align 32, offset 480] [from UINTPTR]
!79 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"Hsize", i32 107, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [Hsize] [line 107, size 32, align 32, offset 512] [from int]
!80 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"Vsize", i32 108, i64 32, i64 32, i64 544, i32 0, metadata !15} ; [ DW_TAG_member ] [Vsize] [line 108, size 32, align 32, offset 544] [from int]
!81 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"AllCnt", i32 110, i64 32, i64 32, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [AllCnt] [line 110, size 32, align 32, offset 576] [from int]
!82 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"GenLock", i32 112, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [GenLock] [line 112, size 32, align 32, offset 608] [from int]
!83 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"S2MmSOF", i32 113, i64 32, i64 32, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [S2MmSOF] [line 113, size 32, align 32, offset 640] [from int]
!84 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"StreamWidth", i32 114, i64 32, i64 32, i64 672, i32 0, metadata !15} ; [ DW_TAG_member ] [StreamWidth] [line 114, size 32, align 32, offset 672] [from int]
!85 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"BDs", i32 115, i64 8192, i64 32, i64 768, i32 0, metadata !86} ; [ DW_TAG_member ] [BDs] [line 115, size 8192, align 32, offset 768] [from ]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !87, metadata !91, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from XAxiVdma_Bd]
!87 = metadata !{i32 786454, metadata !60, null, metadata !"XAxiVdma_Bd", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [XAxiVdma_Bd] [line 82, size 0, align 0, offset 0] [from ]
!88 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !52, metadata !89, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from u32]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!93 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"DbgFeatureFlags", i32 117, i64 32, i64 32, i64 8960, i32 0, metadata !52} ; [ DW_TAG_member ] [DbgFeatureFlags] [line 117, size 32, align 32, offset 8960] [from u32]
!94 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"AddrWidth", i32 118, i64 32, i64 32, i64 8992, i32 0, metadata !15} ; [ DW_TAG_member ] [AddrWidth] [line 118, size 32, align 32, offset 8992] [from int]
!95 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"direction", i32 119, i64 32, i64 32, i64 9024, i32 0, metadata !15} ; [ DW_TAG_member ] [direction] [line 119, size 32, align 32, offset 9024] [from int]
!96 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"WriteChannel", i32 523, i64 9216, i64 256, i64 9984, i32 0, metadata !59} ; [ DW_TAG_member ] [WriteChannel] [line 523, size 9216, align 256, offset 9984] [from XAxiVdma_Channel]
!97 = metadata !{i32 786445, metadata !23, metadata !24, metadata !"AddrWidth", i32 524, i64 32, i64 32, i64 19200, i32 0, metadata !15} ; [ DW_TAG_member ] [AddrWidth] [line 524, size 32, align 32, offset 19200] [from int]
!98 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"vdmaConfig", i32 119, i64 1344, i64 32, i64 32, i32 0, metadata !99} ; [ DW_TAG_member ] [vdmaConfig] [line 119, size 1344, align 32, offset 32] [from XAxiVdma_DmaSetup]
!99 = metadata !{i32 786454, metadata !23, null, metadata !"XAxiVdma_DmaSetup", i32 476, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [XAxiVdma_DmaSetup] [line 476, size 0, align 0, offset 0] [from ]
!100 = metadata !{i32 786451, metadata !23, null, metadata !"", i32 462, i64 1344, i64 32, i32 0, i32 0, null, metadata !101, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 462, size 1344, align 32, offset 0] [def] [from ]
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !112, metadata !113}
!102 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"VertSizeInput", i32 463, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [VertSizeInput] [line 463, size 32, align 32, offset 0] [from int]
!103 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"HoriSizeInput", i32 464, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [HoriSizeInput] [line 464, size 32, align 32, offset 32] [from int]
!104 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"Stride", i32 465, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [Stride] [line 465, size 32, align 32, offset 64] [from int]
!105 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"FrameDelay", i32 466, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [FrameDelay] [line 466, size 32, align 32, offset 96] [from int]
!106 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"EnableCircularBuf", i32 468, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [EnableCircularBuf] [line 468, size 32, align 32, offset 128] [from int]
!107 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"EnableSync", i32 469, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [EnableSync] [line 469, size 32, align 32, offset 160] [from int]
!108 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"PointNum", i32 470, i64 32, i64 32, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [PointNum] [line 470, size 32, align 32, offset 192] [from int]
!109 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"EnableFrameCounter", i32 471, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [EnableFrameCounter] [line 471, size 32, align 32, offset 224] [from int]
!110 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"FrameStoreStartAddr", i32 472, i64 1024, i64 32, i64 256, i32 0, metadata !111} ; [ DW_TAG_member ] [FrameStoreStartAddr] [line 472, size 1024, align 32, offset 256] [from ]
!111 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !27, metadata !91, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from UINTPTR]
!112 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"FixedFrameStoreAddr", i32 474, i64 32, i64 32, i64 1280, i32 0, metadata !15} ; [ DW_TAG_member ] [FixedFrameStoreAddr] [line 474, size 32, align 32, offset 1280] [from int]
!113 = metadata !{i32 786445, metadata !23, metadata !100, metadata !"GenLockRepeat", i32 475, i64 32, i64 32, i64 1312, i32 0, metadata !15} ; [ DW_TAG_member ] [GenLockRepeat] [line 475, size 32, align 32, offset 1312] [from int]
!114 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"vtc", i32 121, i64 416, i64 32, i64 1376, i32 0, metadata !115} ; [ DW_TAG_member ] [vtc] [line 121, size 416, align 32, offset 1376] [from XVtc]
!115 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc", i32 583, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [XVtc] [line 583, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/../vtc/xvtc.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!117 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 555, i64 416, i64 32, i32 0, i32 0, null, metadata !118, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 555, size 416, align 32, offset 0] [def] [from ]
!118 = metadata !{metadata !119, metadata !128, metadata !129, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !140}
!119 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"Config", i32 556, i64 64, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [Config] [line 556, size 64, align 32, offset 0] [from XVtc_Config]
!120 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_Config", i32 372, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [XVtc_Config] [line 372, size 0, align 0, offset 0] [from ]
!121 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 367, i64 64, i64 32, i32 0, i32 0, null, metadata !122, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 367, size 64, align 32, offset 0] [def] [from ]
!122 = metadata !{metadata !123, metadata !127}
!123 = metadata !{i32 786445, metadata !116, metadata !121, metadata !"DeviceId", i32 368, i64 16, i64 16, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [DeviceId] [line 368, size 16, align 16, offset 0] [from u16]
!124 = metadata !{i32 786454, metadata !28, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!125 = metadata !{i32 786454, metadata !30, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!126 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!127 = metadata !{i32 786445, metadata !116, metadata !121, metadata !"BaseAddress", i32 370, i64 32, i64 32, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [BaseAddress] [line 370, size 32, align 32, offset 32] [from u32]
!128 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"IsReady", i32 557, i64 32, i64 32, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [IsReady] [line 557, size 32, align 32, offset 64] [from u32]
!129 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"FrameSyncCallBack", i32 561, i64 32, i64 32, i64 96, i32 0, metadata !130} ; [ DW_TAG_member ] [FrameSyncCallBack] [line 561, size 32, align 32, offset 96] [from XVtc_CallBack]
!130 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_CallBack", i32 531, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [XVtc_CallBack] [line 531, size 0, align 0, offset 0] [from ]
!131 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"FrameSyncRef", i32 563, i64 32, i64 32, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [FrameSyncRef] [line 563, size 32, align 32, offset 128] [from ]
!132 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"LockCallBack", i32 566, i64 32, i64 32, i64 160, i32 0, metadata !130} ; [ DW_TAG_member ] [LockCallBack] [line 566, size 32, align 32, offset 160] [from XVtc_CallBack]
!133 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"LockRef", i32 568, i64 32, i64 32, i64 192, i32 0, metadata !51} ; [ DW_TAG_member ] [LockRef] [line 568, size 32, align 32, offset 192] [from ]
!134 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"DetectorCallBack", i32 571, i64 32, i64 32, i64 224, i32 0, metadata !130} ; [ DW_TAG_member ] [DetectorCallBack] [line 571, size 32, align 32, offset 224] [from XVtc_CallBack]
!135 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"DetectorRef", i32 572, i64 32, i64 32, i64 256, i32 0, metadata !51} ; [ DW_TAG_member ] [DetectorRef] [line 572, size 32, align 32, offset 256] [from ]
!136 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"GeneratorCallBack", i32 575, i64 32, i64 32, i64 288, i32 0, metadata !130} ; [ DW_TAG_member ] [GeneratorCallBack] [line 575, size 32, align 32, offset 288] [from XVtc_CallBack]
!137 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"GeneratorRef", i32 577, i64 32, i64 32, i64 320, i32 0, metadata !51} ; [ DW_TAG_member ] [GeneratorRef] [line 577, size 32, align 32, offset 320] [from ]
!138 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"ErrCallBack", i32 580, i64 32, i64 32, i64 352, i32 0, metadata !139} ; [ DW_TAG_member ] [ErrCallBack] [line 580, size 32, align 32, offset 352] [from XVtc_ErrorCallBack]
!139 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_ErrorCallBack", i32 549, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [XVtc_ErrorCallBack] [line 549, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"ErrRef", i32 581, i64 32, i64 32, i64 384, i32 0, metadata !51} ; [ DW_TAG_member ] [ErrRef] [line 581, size 32, align 32, offset 384] [from ]
!141 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"timing", i32 122, i64 224, i64 16, i64 1792, i32 0, metadata !142} ; [ DW_TAG_member ] [timing] [line 122, size 224, align 16, offset 1792] [from XVtc_Timing]
!142 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_Timing", i32 513, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [XVtc_Timing] [line 513, size 0, align 0, offset 0] [from ]
!143 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 492, i64 224, i64 16, i32 0, i32 0, null, metadata !144, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 492, size 224, align 16, offset 0] [def] [from ]
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158}
!145 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"HActiveVideo", i32 494, i64 16, i64 16, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [HActiveVideo] [line 494, size 16, align 16, offset 0] [from u16]
!146 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"HFrontPorch", i32 495, i64 16, i64 16, i64 16, i32 0, metadata !124} ; [ DW_TAG_member ] [HFrontPorch] [line 495, size 16, align 16, offset 16] [from u16]
!147 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"HSyncWidth", i32 496, i64 16, i64 16, i64 32, i32 0, metadata !124} ; [ DW_TAG_member ] [HSyncWidth] [line 496, size 16, align 16, offset 32] [from u16]
!148 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"HBackPorch", i32 497, i64 16, i64 16, i64 48, i32 0, metadata !124} ; [ DW_TAG_member ] [HBackPorch] [line 497, size 16, align 16, offset 48] [from u16]
!149 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"HSyncPolarity", i32 498, i64 16, i64 16, i64 64, i32 0, metadata !124} ; [ DW_TAG_member ] [HSyncPolarity] [line 498, size 16, align 16, offset 64] [from u16]
!150 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"VActiveVideo", i32 501, i64 16, i64 16, i64 80, i32 0, metadata !124} ; [ DW_TAG_member ] [VActiveVideo] [line 501, size 16, align 16, offset 80] [from u16]
!151 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"V0FrontPorch", i32 502, i64 16, i64 16, i64 96, i32 0, metadata !124} ; [ DW_TAG_member ] [V0FrontPorch] [line 502, size 16, align 16, offset 96] [from u16]
!152 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"V0SyncWidth", i32 503, i64 16, i64 16, i64 112, i32 0, metadata !124} ; [ DW_TAG_member ] [V0SyncWidth] [line 503, size 16, align 16, offset 112] [from u16]
!153 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"V0BackPorch", i32 504, i64 16, i64 16, i64 128, i32 0, metadata !124} ; [ DW_TAG_member ] [V0BackPorch] [line 504, size 16, align 16, offset 128] [from u16]
!154 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"V1FrontPorch", i32 506, i64 16, i64 16, i64 144, i32 0, metadata !124} ; [ DW_TAG_member ] [V1FrontPorch] [line 506, size 16, align 16, offset 144] [from u16]
!155 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"V1SyncWidth", i32 507, i64 16, i64 16, i64 160, i32 0, metadata !124} ; [ DW_TAG_member ] [V1SyncWidth] [line 507, size 16, align 16, offset 160] [from u16]
!156 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"V1BackPorch", i32 508, i64 16, i64 16, i64 176, i32 0, metadata !124} ; [ DW_TAG_member ] [V1BackPorch] [line 508, size 16, align 16, offset 176] [from u16]
!157 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"VSyncPolarity", i32 510, i64 16, i64 16, i64 192, i32 0, metadata !124} ; [ DW_TAG_member ] [VSyncPolarity] [line 510, size 16, align 16, offset 192] [from u16]
!158 = metadata !{i32 786445, metadata !116, metadata !143, metadata !"Interlaced", i32 512, i64 8, i64 8, i64 208, i32 0, metadata !159} ; [ DW_TAG_member ] [Interlaced] [line 512, size 8, align 8, offset 208] [from u8]
!159 = metadata !{i32 786454, metadata !28, null, metadata !"u8", i32 90, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [u8] [line 90, size 0, align 0, offset 0] [from u_int8_t]
!160 = metadata !{i32 786454, metadata !30, null, metadata !"u_int8_t", i32 200, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [u_int8_t] [line 200, size 0, align 0, offset 0] [from unsigned char]
!161 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!162 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"framePtr", i32 124, i64 96, i64 32, i64 2016, i32 0, metadata !163} ; [ DW_TAG_member ] [framePtr] [line 124, size 96, align 32, offset 2016] [from ]
!163 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !164, metadata !165, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from ]
!164 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u8]
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!167 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"stride", i32 125, i64 32, i64 32, i64 2112, i32 0, metadata !52} ; [ DW_TAG_member ] [stride] [line 125, size 32, align 32, offset 2112] [from u32]
!168 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"curFrame", i32 126, i64 32, i64 32, i64 2144, i32 0, metadata !52} ; [ DW_TAG_member ] [curFrame] [line 126, size 32, align 32, offset 2144] [from u32]
!169 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"gpio", i32 127, i64 128, i64 32, i64 2176, i32 0, metadata !170} ; [ DW_TAG_member ] [gpio] [line 127, size 128, align 32, offset 2176] [from XGpio]
!170 = metadata !{i32 786454, metadata !171, null, metadata !"XGpio", i32 147, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [XGpio] [line 147, size 0, align 0, offset 0] [from ]
!171 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/../gpio/xgpio.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!172 = metadata !{i32 786451, metadata !171, null, metadata !"", i32 142, i64 128, i64 32, i32 0, i32 0, null, metadata !173, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 142, size 128, align 32, offset 0] [def] [from ]
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177}
!174 = metadata !{i32 786445, metadata !171, metadata !172, metadata !"BaseAddress", i32 143, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [BaseAddress] [line 143, size 32, align 32, offset 0] [from u32]
!175 = metadata !{i32 786445, metadata !171, metadata !172, metadata !"IsReady", i32 144, i64 32, i64 32, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [IsReady] [line 144, size 32, align 32, offset 32] [from u32]
!176 = metadata !{i32 786445, metadata !171, metadata !172, metadata !"InterruptPresent", i32 145, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [InterruptPresent] [line 145, size 32, align 32, offset 64] [from int]
!177 = metadata !{i32 786445, metadata !171, metadata !172, metadata !"IsDual", i32 146, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [IsDual] [line 146, size 32, align 32, offset 96] [from int]
!178 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"startOnDetect", i32 129, i64 32, i64 32, i64 2304, i32 0, metadata !52} ; [ DW_TAG_member ] [startOnDetect] [line 129, size 32, align 32, offset 2304] [from u32]
!179 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"state", i32 130, i64 32, i64 32, i64 2336, i32 0, metadata !180} ; [ DW_TAG_member ] [state] [line 130, size 32, align 32, offset 2336] [from VideoState]
!180 = metadata !{i32 786454, metadata !4, null, metadata !"VideoState", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [VideoState] [line 110, size 0, align 0, offset 0] [from ]
!181 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"VideoStart", metadata !"VideoStart", metadata !"", i32 157, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.VideoCapture*)* @VideoStart, null, null, metadata !9, i32 158} ; [ DW_TAG_subprogram ] [line 157] [def] [scope 158] [VideoStart]
!182 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"VideoInitialize", metadata !"VideoInitialize", metadata !"", i32 247, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.VideoCapture*, %struct.XAxiVdma*, i16, i16, i32, i32, i8**, i32, i32)* @VideoInitialize, null, null, metadata !9, i32 248} ; [ DW_TAG_subprogram ] [line 247] [def] [scope 248] [VideoInitialize]
!183 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{metadata !15, metadata !16, metadata !21, metadata !124, metadata !124, metadata !52, metadata !52, metadata !185, metadata !52, metadata !52}
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!186 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"VideoChangeFrame", metadata !"VideoChangeFrame", metadata !"", i32 333, metadata !187, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.VideoCapture*, i32)* @VideoChangeFrame, null, null, metadata !9, i32 334} ; [ DW_TAG_subprogram ] [line 333] [def] [scope 334] [VideoChangeFrame]
!187 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!188 = metadata !{metadata !15, metadata !16, metadata !52}
!189 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"VideoDetect", metadata !"VideoDetect", metadata !"", i32 371, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.VideoCapture*)* @VideoDetect, null, null, metadata !9, i32 372} ; [ DW_TAG_subprogram ] [line 371] [def] [scope 372] [VideoDetect]
!190 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!191 = metadata !{null, metadata !16}
!192 = metadata !{i32 (%struct.VideoCapture*)* @VideoStop}
!193 = metadata !{metadata !"int.VideoCapture *.1"}
!194 = metadata !{void (%struct.XAxiVdma*, i16)* @XAxiVdma_Reset}
!195 = metadata !{metadata !"void.XAxiVdma *.1.u16.0"}
!196 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_ResetNotDone}
!197 = metadata !{metadata !"int.XAxiVdma *.1.u16.0"}
!198 = metadata !{i32 (%struct.VideoCapture*)* @VideoStart}
!199 = metadata !{i32 (i8*, ...)* @printf}
!200 = metadata !{metadata !"int.const char *restrict.1"}
!201 = metadata !{i32 (%struct.XAxiVdma*, i16, %struct.XAxiVdma_DmaSetup*)* @XAxiVdma_DmaConfig}
!202 = metadata !{metadata !"int.XAxiVdma *.1.u16.0.XAxiVdma_DmaSetup *.1"}
!203 = metadata !{i32 (%struct.XAxiVdma*, i16, i32*)* @XAxiVdma_DmaSetBufferAddr}
!204 = metadata !{metadata !"int.XAxiVdma *.1.u16.0.UINTPTR *.1"}
!205 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaStart}
!206 = metadata !{i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_StartParking}
!207 = metadata !{metadata !"int.XAxiVdma *.1.int.0.u16.0"}
!208 = metadata !{i32 (%struct.VideoCapture*, %struct.XAxiVdma*, i16, i16, i32, i32, i8**, i32, i32)* @VideoInitialize}
!209 = metadata !{metadata !"int.VideoCapture *.1.XAxiVdma *.1.u16.0.u16.0.u32.0.u32.0.u8 *[3].1.u32.0.u32.0"}
!210 = metadata !{%struct.XGpio_Config* (i16)* @XGpio_LookupConfig}
!211 = metadata !{metadata !"XGpio_Config .u16.0"}
!212 = metadata !{i32 (%struct.XGpio*, %struct.XGpio_Config*, i32)* @XGpio_CfgInitialize}
!213 = metadata !{metadata !"int.XGpio *.1.XGpio_Config *.1.u32.0"}
!214 = metadata !{void (%struct.XGpio*, i32, i32)* @XGpio_SetDataDirection}
!215 = metadata !{metadata !"void.XGpio *.1.unsigned int.0.u32.0"}
!216 = metadata !{void (%struct.XGpio*, i32, i32)* @XGpio_DiscreteWrite}
!217 = metadata !{void (%struct.VideoCapture*)* @VideoDetect}
!218 = metadata !{metadata !"void.VideoCapture *.1"}
!219 = metadata !{i32 (%struct.VideoCapture*, i32)* @VideoChangeFrame}
!220 = metadata !{metadata !"int.VideoCapture *.1.u32.0"}
!221 = metadata !{i32 (%struct.XGpio*, i32)* @XGpio_DiscreteRead}
!222 = metadata !{metadata !"u32.XGpio *.1.unsigned int.0"}
!223 = metadata !{i32 (i32)* @sleep}
!224 = metadata !{metadata !"unsigned int.unsigned int.0"}
!225 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.h"}
!226 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/../vdma/xaxivdma.h"}
!227 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!228 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/video_capture/../gpio/xgpio.h"}
!229 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/unistd.h"}
!230 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!231 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!232 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!233 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!234 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!235 = metadata !{i32 786689, metadata !11, metadata !"videoPtr", metadata !12, i32 16777338, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [videoPtr] [line 122]
!236 = metadata !{i32 122, i32 29, metadata !11, null}
!237 = metadata !{i32 128, i32 6, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !11, i32 128, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!239 = metadata !{i32 128, i32 6, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !238, i32 128, i32 6, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!241 = metadata !{i32 130, i32 3, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !238, i32 129, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!243 = metadata !{i32 133, i32 2, metadata !11, null}
!244 = metadata !{i32 134, i32 2, metadata !11, null}
!245 = metadata !{i32 134, i32 8, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !247, i32 134, i32 8, i32 3, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!247 = metadata !{i32 786443, metadata !1, metadata !11, i32 134, i32 8, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!248 = metadata !{i32 134, i32 8, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !11, i32 134, i32 8, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!250 = metadata !{i32 135, i32 2, metadata !11, null}
!251 = metadata !{i32 137, i32 2, metadata !11, null}
!252 = metadata !{i32 138, i32 1, metadata !11, null}
!253 = metadata !{i32 786689, metadata !181, metadata !"videoPtr", metadata !12, i32 16777373, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [videoPtr] [line 157]
!254 = metadata !{i32 157, i32 30, metadata !181, null}
!255 = metadata !{i32 786688, metadata !181, metadata !"Status", metadata !12, i32 159, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 159]
!256 = metadata !{i32 159, i32 6, metadata !181, null}
!257 = metadata !{i32 786688, metadata !181, metadata !"i", metadata !12, i32 160, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 160]
!258 = metadata !{i32 160, i32 6, metadata !181, null}
!259 = metadata !{i32 162, i32 6, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !181, i32 162, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!261 = metadata !{i32 163, i32 3, metadata !260, null}
!262 = metadata !{i32 164, i32 6, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !181, i32 164, i32 6, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!264 = metadata !{i32 165, i32 3, metadata !263, null}
!265 = metadata !{i32 171, i32 2, metadata !181, null}
!266 = metadata !{i32 172, i32 2, metadata !181, null}
!267 = metadata !{i32 173, i32 2, metadata !181, null}
!268 = metadata !{i32 177, i32 2, metadata !181, null}
!269 = metadata !{i32 178, i32 7, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !181, i32 178, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!271 = metadata !{i32 178, i32 7, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !273, i32 178, i32 7, i32 2, i32 30} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!273 = metadata !{i32 786443, metadata !1, metadata !270, i32 178, i32 7, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!274 = metadata !{i32 180, i32 3, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !270, i32 179, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!276 = metadata !{i32 181, i32 2, metadata !275, null}
!277 = metadata !{i32 178, i32 36, metadata !270, null}
!278 = metadata !{i32 183, i32 2, metadata !181, null}
!279 = metadata !{i32 184, i32 11, metadata !181, null}
!280 = metadata !{i32 185, i32 6, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !181, i32 185, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!282 = metadata !{i32 187, i32 3, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !281, i32 186, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!284 = metadata !{i32 188, i32 3, metadata !283, null}
!285 = metadata !{i32 190, i32 11, metadata !181, null}
!286 = metadata !{i32 191, i32 6, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !181, i32 191, i32 6, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!288 = metadata !{i32 193, i32 3, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !287, i32 192, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!290 = metadata !{i32 194, i32 3, metadata !289, null}
!291 = metadata !{i32 196, i32 11, metadata !181, null}
!292 = metadata !{i32 197, i32 6, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !181, i32 197, i32 6, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!294 = metadata !{i32 199, i32 3, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !293, i32 198, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!296 = metadata !{i32 200, i32 3, metadata !295, null}
!297 = metadata !{i32 202, i32 11, metadata !181, null}
!298 = metadata !{i32 203, i32 6, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !181, i32 203, i32 6, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!300 = metadata !{i32 205, i32 3, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !299, i32 204, i32 2, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!302 = metadata !{i32 206, i32 3, metadata !301, null}
!303 = metadata !{i32 209, i32 2, metadata !181, null}
!304 = metadata !{i32 211, i32 2, metadata !181, null}
!305 = metadata !{i32 212, i32 1, metadata !181, null}
!306 = metadata !{i32 786689, metadata !182, metadata !"videoPtr", metadata !12, i32 16777463, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [videoPtr] [line 247]
!307 = metadata !{i32 247, i32 35, metadata !182, null}
!308 = metadata !{i32 786689, metadata !182, metadata !"vdma", metadata !12, i32 33554679, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vdma] [line 247]
!309 = metadata !{i32 247, i32 55, metadata !182, null}
!310 = metadata !{i32 786689, metadata !182, metadata !"vtcId", metadata !12, i32 50331895, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtcId] [line 247]
!311 = metadata !{i32 247, i32 65, metadata !182, null}
!312 = metadata !{i32 786689, metadata !182, metadata !"gpio_Id", metadata !12, i32 67109111, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gpio_Id] [line 247]
!313 = metadata !{i32 247, i32 76, metadata !182, null}
!314 = metadata !{i32 786689, metadata !182, metadata !"addVirtVtc", metadata !12, i32 83886327, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addVirtVtc] [line 247]
!315 = metadata !{i32 247, i32 89, metadata !182, null}
!316 = metadata !{i32 786689, metadata !182, metadata !"addVirtGpio", metadata !12, i32 100663543, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addVirtGpio] [line 247]
!317 = metadata !{i32 247, i32 105, metadata !182, null}
!318 = metadata !{i32 786689, metadata !182, metadata !"framePtr", metadata !12, i32 117440759, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [framePtr] [line 247]
!319 = metadata !{i32 247, i32 122, metadata !182, null}
!320 = metadata !{i32 786689, metadata !182, metadata !"stride", metadata !12, i32 134217975, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stride] [line 247]
!321 = metadata !{i32 247, i32 154, metadata !182, null}
!322 = metadata !{i32 786689, metadata !182, metadata !"startOnDet", metadata !12, i32 150995191, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [startOnDet] [line 247]
!323 = metadata !{i32 247, i32 166, metadata !182, null}
!324 = metadata !{i32 786688, metadata !182, metadata !"Status", metadata !12, i32 249, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 249]
!325 = metadata !{i32 249, i32 6, metadata !182, null}
!326 = metadata !{i32 786688, metadata !182, metadata !"i", metadata !12, i32 250, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 250]
!327 = metadata !{i32 250, i32 6, metadata !182, null}
!328 = metadata !{i32 786688, metadata !182, metadata !"gpioVideoCfg", metadata !12, i32 252, metadata !329, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gpioVideoCfg] [line 252]
!329 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !330} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XGpio_Config]
!330 = metadata !{i32 786454, metadata !171, null, metadata !"XGpio_Config", i32 135, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_typedef ] [XGpio_Config] [line 135, size 0, align 0, offset 0] [from ]
!331 = metadata !{i32 786451, metadata !171, null, metadata !"", i32 130, i64 128, i64 32, i32 0, i32 0, null, metadata !332, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 130, size 128, align 32, offset 0] [def] [from ]
!332 = metadata !{metadata !333, metadata !334, metadata !335, metadata !336}
!333 = metadata !{i32 786445, metadata !171, metadata !331, metadata !"DeviceId", i32 131, i64 16, i64 16, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [DeviceId] [line 131, size 16, align 16, offset 0] [from u16]
!334 = metadata !{i32 786445, metadata !171, metadata !331, metadata !"BaseAddress", i32 132, i64 32, i64 32, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [BaseAddress] [line 132, size 32, align 32, offset 32] [from u32]
!335 = metadata !{i32 786445, metadata !171, metadata !331, metadata !"InterruptPresent", i32 133, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [InterruptPresent] [line 133, size 32, align 32, offset 64] [from int]
!336 = metadata !{i32 786445, metadata !171, metadata !331, metadata !"IsDual", i32 134, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [IsDual] [line 134, size 32, align 32, offset 96] [from int]
!337 = metadata !{i32 252, i32 16, metadata !182, null}
!338 = metadata !{i32 257, i32 2, metadata !182, null}
!339 = metadata !{i32 260, i32 7, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !182, i32 260, i32 2, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!341 = metadata !{i32 260, i32 7, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !343, i32 260, i32 7, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!343 = metadata !{i32 786443, metadata !1, metadata !340, i32 260, i32 7, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!344 = metadata !{i32 262, i32 3, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !340, i32 261, i32 2, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!346 = metadata !{i32 263, i32 2, metadata !345, null}
!347 = metadata !{i32 260, i32 36, metadata !340, null}
!348 = metadata !{i32 265, i32 2, metadata !182, null}
!349 = metadata !{i32 266, i32 2, metadata !182, null}
!350 = metadata !{i32 267, i32 2, metadata !182, null}
!351 = metadata !{i32 268, i32 2, metadata !182, null}
!352 = metadata !{i32 273, i32 2, metadata !182, null}
!353 = metadata !{i32 274, i32 2, metadata !182, null}
!354 = metadata !{i32 275, i32 2, metadata !182, null}
!355 = metadata !{i32 276, i32 2, metadata !182, null}
!356 = metadata !{i32 277, i32 2, metadata !182, null}
!357 = metadata !{i32 281, i32 2, metadata !182, null}
!358 = metadata !{i32 283, i32 17, metadata !182, null}
!359 = metadata !{i32 286, i32 11, metadata !182, null}
!360 = metadata !{i32 287, i32 6, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !182, i32 287, i32 6, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!362 = metadata !{i32 289, i32 3, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !361, i32 288, i32 2, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!364 = metadata !{i32 290, i32 3, metadata !363, null}
!365 = metadata !{i32 298, i32 2, metadata !182, null}
!366 = metadata !{i32 299, i32 2, metadata !182, null}
!367 = metadata !{i32 304, i32 2, metadata !182, null}
!368 = metadata !{i32 307, i32 2, metadata !182, null}
!369 = metadata !{i32 309, i32 2, metadata !182, null}
!370 = metadata !{i32 311, i32 2, metadata !182, null}
!371 = metadata !{i32 312, i32 1, metadata !182, null}
!372 = metadata !{i32 786689, metadata !189, metadata !"videoPtr", metadata !12, i32 16777587, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [videoPtr] [line 371]
!373 = metadata !{i32 371, i32 32, metadata !189, null}
!374 = metadata !{i32 786688, metadata !189, metadata !"GpioPtr", metadata !12, i32 373, metadata !375, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GpioPtr] [line 373]
!375 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XGpio]
!376 = metadata !{i32 373, i32 9, metadata !189, null}
!377 = metadata !{i32 373, i32 2, metadata !189, null}
!378 = metadata !{i32 786688, metadata !189, metadata !"locked", metadata !12, i32 374, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locked] [line 374]
!379 = metadata !{i32 374, i32 6, metadata !189, null}
!380 = metadata !{i32 374, i32 2, metadata !189, null}
!381 = metadata !{i32 377, i32 2, metadata !189, null}
!382 = metadata !{i32 377, i32 2, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !189, i32 377, i32 2, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!384 = metadata !{i32 379, i32 12, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !189, i32 378, i32 2, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!386 = metadata !{i32 380, i32 2, metadata !385, null}
!387 = metadata !{i32 382, i32 2, metadata !189, null}
!388 = metadata !{i32 387, i32 2, metadata !189, null}
!389 = metadata !{i32 388, i32 2, metadata !189, null}
!390 = metadata !{i32 389, i32 2, metadata !189, null}
!391 = metadata !{i32 390, i32 2, metadata !189, null}
!392 = metadata !{i32 391, i32 2, metadata !189, null}
!393 = metadata !{i32 392, i32 2, metadata !189, null}
!394 = metadata !{i32 393, i32 2, metadata !189, null}
!395 = metadata !{i32 394, i32 2, metadata !189, null}
!396 = metadata !{i32 395, i32 2, metadata !189, null}
!397 = metadata !{i32 396, i32 2, metadata !189, null}
!398 = metadata !{i32 397, i32 2, metadata !189, null}
!399 = metadata !{i32 398, i32 2, metadata !189, null}
!400 = metadata !{i32 399, i32 2, metadata !189, null}
!401 = metadata !{i32 400, i32 2, metadata !189, null}
!402 = metadata !{i32 420, i32 2, metadata !189, null}
!403 = metadata !{i32 421, i32 6, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !189, i32 421, i32 6, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!405 = metadata !{i32 423, i32 3, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !404, i32 422, i32 2, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!407 = metadata !{i32 424, i32 2, metadata !406, null}
!408 = metadata !{i32 426, i32 1, metadata !189, null}
!409 = metadata !{i32 786689, metadata !186, metadata !"videoPtr", metadata !12, i32 16777549, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [videoPtr] [line 333]
!410 = metadata !{i32 333, i32 36, metadata !186, null}
!411 = metadata !{i32 786689, metadata !186, metadata !"frameIndex", metadata !12, i32 33554765, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frameIndex] [line 333]
!412 = metadata !{i32 333, i32 50, metadata !186, null}
!413 = metadata !{i32 786688, metadata !186, metadata !"Status", metadata !12, i32 335, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 335]
!414 = metadata !{i32 335, i32 6, metadata !186, null}
!415 = metadata !{i32 337, i32 2, metadata !186, null}
!416 = metadata !{i32 342, i32 6, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !186, i32 342, i32 6, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!418 = metadata !{i32 344, i32 12, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !417, i32 343, i32 2, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!420 = metadata !{i32 345, i32 7, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !419, i32 345, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!422 = metadata !{i32 347, i32 4, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !421, i32 346, i32 3, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/video_capture/video_capture.c]
!424 = metadata !{i32 348, i32 4, metadata !423, null}
!425 = metadata !{i32 350, i32 2, metadata !419, null}
!426 = metadata !{i32 352, i32 2, metadata !186, null}
!427 = metadata !{i32 353, i32 1, metadata !186, null}
