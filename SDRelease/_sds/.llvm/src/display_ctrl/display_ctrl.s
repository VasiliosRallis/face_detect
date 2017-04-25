; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.VideoMode = type { [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double }
%struct.DisplayCtrl = type { i32, %struct.XAxiVdma*, %struct.XAxiVdma_DmaSetup, %struct.XVtc, %struct.VideoMode, [3 x i8*], i32, double, i32, i32 }
%struct.XAxiVdma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.XAxiVdma_ChannelCallBack, %struct.XAxiVdma_ChannelCallBack, [20 x i8], %struct.XAxiVdma_Channel, %struct.XAxiVdma_Channel, i32, [28 x i8] }
%struct.XAxiVdma_ChannelCallBack = type { void (i8*, i32)*, i8*, void (i8*, i32)*, i8* }
%struct.XAxiVdma_Channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], [32 x [8 x i32]], i32, i32, i32, [20 x i8] }
%struct.XAxiVdma_DmaSetup = type { i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32 }
%struct.XVtc = type { %struct.XVtc_Config, i32, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8* }
%struct.XVtc_Config = type { i16, i32 }
%struct.ClkConfig = type { i32, i32, i32, i32, i32, i32 }
%struct.ClkMode = type { double, i32, i32, i32 }
%struct.XVtc_Timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.XVtc_SourceSelect = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [25 x i8] c"Clearing DMA errors...\0D\0A\00", align 1
@.str1 = private unnamed_addr constant [24 x i8] c"display start entered\0A\0D\00", align 1
@.str2 = private unnamed_addr constant [40 x i8] c"Error calculating CLK register values\0A\0D\00", align 1
@.str3 = private unnamed_addr constant [32 x i8] c"Read channel config failed %d\0D\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"Read channel set buffer address failed %d\0D\0A\00", align 1
@.str5 = private unnamed_addr constant [32 x i8] c"Start read transfer failed %d\0D\0A\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"Unable to park the channel %d\0D\0A\00", align 1
@VMODE_1280x720 = internal constant %struct.VideoMode { [64 x i8] c"1280x720@60Hz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1280, i32 720, i32 1390, i32 1430, i32 1649, i32 1, i32 725, i32 730, i32 749, i32 1, double 7.425000e+01 }, align 8
@.str7 = private unnamed_addr constant [48 x i8] c"Cannot change mode, unable to stop display %d\0D\0A\00", align 1
@.str8 = private unnamed_addr constant [50 x i8] c"Cannot change frame, unable to start parking %d\0D\0A\00", align 1

; Function Attrs: nounwind
define i32 @DisplayStop(%struct.DisplayCtrl* %dispPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DisplayCtrl*, align 4
  store %struct.DisplayCtrl* %dispPtr, %struct.DisplayCtrl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DisplayCtrl** %2}, metadata !254), !dbg !255
  %3 = load %struct.DisplayCtrl** %2, align 4, !dbg !256
  %4 = getelementptr inbounds %struct.DisplayCtrl* %3, i32 0, i32 9, !dbg !256
  %5 = load i32* %4, align 4, !dbg !256
  %6 = icmp eq i32 %5, 0, !dbg !256
  br i1 %6, label %7, label %8, !dbg !256

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1, !dbg !258
  br label %36, !dbg !258

; <label>:8                                       ; preds = %0
  %9 = load %struct.DisplayCtrl** %2, align 4, !dbg !260
  %10 = getelementptr inbounds %struct.DisplayCtrl* %9, i32 0, i32 3, !dbg !260
  call void @XVtc_DisableGenerator(%struct.XVtc* %10), !dbg !260
  %11 = load %struct.DisplayCtrl** %2, align 4, !dbg !261
  %12 = getelementptr inbounds %struct.DisplayCtrl* %11, i32 0, i32 1, !dbg !261
  %13 = load %struct.XAxiVdma** %12, align 4, !dbg !261
  call void @XAxiVdma_DmaStop(%struct.XAxiVdma* %13, i16 zeroext 2), !dbg !261
  br label %14, !dbg !262

; <label>:14                                      ; preds = %20, %8
  %15 = load %struct.DisplayCtrl** %2, align 4, !dbg !263
  %16 = getelementptr inbounds %struct.DisplayCtrl* %15, i32 0, i32 1, !dbg !263
  %17 = load %struct.XAxiVdma** %16, align 4, !dbg !263
  %18 = call i32 @XAxiVdma_IsBusy(%struct.XAxiVdma* %17, i16 zeroext 2), !dbg !263
  %19 = icmp ne i32 %18, 0, !dbg !263
  br i1 %19, label %20, label %21, !dbg !263

; <label>:20                                      ; preds = %14
  br label %14, !dbg !266

; <label>:21                                      ; preds = %14
  %22 = load %struct.DisplayCtrl** %2, align 4, !dbg !268
  %23 = getelementptr inbounds %struct.DisplayCtrl* %22, i32 0, i32 9, !dbg !268
  store i32 0, i32* %23, align 4, !dbg !268
  %24 = load %struct.DisplayCtrl** %2, align 4, !dbg !269
  %25 = getelementptr inbounds %struct.DisplayCtrl* %24, i32 0, i32 1, !dbg !269
  %26 = load %struct.XAxiVdma** %25, align 4, !dbg !269
  %27 = call i32 @XAxiVdma_GetDmaChannelErrors(%struct.XAxiVdma* %26, i16 zeroext 2), !dbg !269
  %28 = icmp ne i32 %27, 0, !dbg !269
  br i1 %28, label %29, label %35, !dbg !269

; <label>:29                                      ; preds = %21
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str, i32 0, i32 0)), !dbg !271
  %31 = load %struct.DisplayCtrl** %2, align 4, !dbg !273
  %32 = getelementptr inbounds %struct.DisplayCtrl* %31, i32 0, i32 1, !dbg !273
  %33 = load %struct.XAxiVdma** %32, align 4, !dbg !273
  %34 = call i32 @XAxiVdma_ClearDmaChannelErrors(%struct.XAxiVdma* %33, i16 zeroext 2, i32 -1), !dbg !273
  store i32 9, i32* %1, !dbg !274
  br label %36, !dbg !274

; <label>:35                                      ; preds = %21
  store i32 0, i32* %1, !dbg !275
  br label %36, !dbg !275

; <label>:36                                      ; preds = %35, %29, %7
  %37 = load i32* %1, !dbg !276
  ret i32 %37, !dbg !276
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @XVtc_DisableGenerator(%struct.XVtc*) #2

declare void @XAxiVdma_DmaStop(%struct.XAxiVdma*, i16 zeroext) #2

declare i32 @XAxiVdma_IsBusy(%struct.XAxiVdma*, i16 zeroext) #2

declare i32 @XAxiVdma_GetDmaChannelErrors(%struct.XAxiVdma*, i16 zeroext) #2

declare i32 @printf(i8*, ...) #2

declare i32 @XAxiVdma_ClearDmaChannelErrors(%struct.XAxiVdma*, i16 zeroext, i32) #2

; Function Attrs: nounwind
define i32 @DisplayStart(%struct.DisplayCtrl* %dispPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DisplayCtrl*, align 4
  %Status = alloca i32, align 4
  %clkReg = alloca %struct.ClkConfig, align 4
  %clkMode = alloca %struct.ClkMode, align 8
  %i = alloca i32, align 4
  %vtcTiming = alloca %struct.XVtc_Timing, align 2
  %SourceSelect = alloca %struct.XVtc_SourceSelect, align 1
  store %struct.DisplayCtrl* %dispPtr, %struct.DisplayCtrl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DisplayCtrl** %2}, metadata !277), !dbg !278
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !279), !dbg !280
  call void @llvm.dbg.declare(metadata !{%struct.ClkConfig* %clkReg}, metadata !281), !dbg !292
  call void @llvm.dbg.declare(metadata !{%struct.ClkMode* %clkMode}, metadata !293), !dbg !301
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !302), !dbg !303
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Timing* %vtcTiming}, metadata !304), !dbg !322
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_SourceSelect* %SourceSelect}, metadata !323), !dbg !346
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0)), !dbg !347
  %4 = load %struct.DisplayCtrl** %2, align 4, !dbg !348
  %5 = getelementptr inbounds %struct.DisplayCtrl* %4, i32 0, i32 9, !dbg !348
  %6 = load i32* %5, align 4, !dbg !348
  %7 = icmp eq i32 %6, 1, !dbg !348
  br i1 %7, label %8, label %9, !dbg !348

; <label>:8                                       ; preds = %0
  store i32 0, i32* %1, !dbg !350
  br label %298, !dbg !350

; <label>:9                                       ; preds = %0
  %10 = load %struct.DisplayCtrl** %2, align 4, !dbg !352
  %11 = getelementptr inbounds %struct.DisplayCtrl* %10, i32 0, i32 4, !dbg !352
  %12 = getelementptr inbounds %struct.VideoMode* %11, i32 0, i32 11, !dbg !352
  %13 = load double* %12, align 8, !dbg !352
  %14 = call double @ClkFindParams(double %13, %struct.ClkMode* %clkMode), !dbg !352
  %15 = getelementptr inbounds %struct.ClkMode* %clkMode, i32 0, i32 0, !dbg !353
  %16 = load double* %15, align 8, !dbg !353
  %17 = load %struct.DisplayCtrl** %2, align 4, !dbg !353
  %18 = getelementptr inbounds %struct.DisplayCtrl* %17, i32 0, i32 7, !dbg !353
  store double %16, double* %18, align 8, !dbg !353
  %19 = call i32 @ClkFindReg(%struct.ClkConfig* %clkReg, %struct.ClkMode* %clkMode), !dbg !354
  %20 = icmp ne i32 %19, 0, !dbg !354
  br i1 %20, label %23, label %21, !dbg !354

; <label>:21                                      ; preds = %9
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str2, i32 0, i32 0)), !dbg !356
  store i32 1, i32* %1, !dbg !358
  br label %298, !dbg !358

; <label>:23                                      ; preds = %9
  %24 = load %struct.DisplayCtrl** %2, align 4, !dbg !359
  %25 = getelementptr inbounds %struct.DisplayCtrl* %24, i32 0, i32 0, !dbg !359
  %26 = load i32* %25, align 4, !dbg !359
  call void @ClkWriteReg(%struct.ClkConfig* %clkReg, i32 %26), !dbg !359
  %27 = load %struct.DisplayCtrl** %2, align 4, !dbg !360
  %28 = getelementptr inbounds %struct.DisplayCtrl* %27, i32 0, i32 0, !dbg !360
  %29 = load i32* %28, align 4, !dbg !360
  call void @ClkStop(i32 %29), !dbg !360
  %30 = load %struct.DisplayCtrl** %2, align 4, !dbg !361
  %31 = getelementptr inbounds %struct.DisplayCtrl* %30, i32 0, i32 0, !dbg !361
  %32 = load i32* %31, align 4, !dbg !361
  call void @ClkStart(i32 %32), !dbg !361
  %33 = load %struct.DisplayCtrl** %2, align 4, !dbg !362
  %34 = getelementptr inbounds %struct.DisplayCtrl* %33, i32 0, i32 4, !dbg !362
  %35 = getelementptr inbounds %struct.VideoMode* %34, i32 0, i32 1, !dbg !362
  %36 = load i32* %35, align 4, !dbg !362
  %37 = trunc i32 %36 to i16, !dbg !362
  %38 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 0, !dbg !362
  store i16 %37, i16* %38, align 2, !dbg !362
  %39 = load %struct.DisplayCtrl** %2, align 4, !dbg !363
  %40 = getelementptr inbounds %struct.DisplayCtrl* %39, i32 0, i32 4, !dbg !363
  %41 = getelementptr inbounds %struct.VideoMode* %40, i32 0, i32 3, !dbg !363
  %42 = load i32* %41, align 4, !dbg !363
  %43 = load %struct.DisplayCtrl** %2, align 4, !dbg !363
  %44 = getelementptr inbounds %struct.DisplayCtrl* %43, i32 0, i32 4, !dbg !363
  %45 = getelementptr inbounds %struct.VideoMode* %44, i32 0, i32 1, !dbg !363
  %46 = load i32* %45, align 4, !dbg !363
  %47 = sub i32 %42, %46, !dbg !363
  %48 = trunc i32 %47 to i16, !dbg !363
  %49 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 1, !dbg !363
  store i16 %48, i16* %49, align 2, !dbg !363
  %50 = load %struct.DisplayCtrl** %2, align 4, !dbg !364
  %51 = getelementptr inbounds %struct.DisplayCtrl* %50, i32 0, i32 4, !dbg !364
  %52 = getelementptr inbounds %struct.VideoMode* %51, i32 0, i32 4, !dbg !364
  %53 = load i32* %52, align 4, !dbg !364
  %54 = load %struct.DisplayCtrl** %2, align 4, !dbg !364
  %55 = getelementptr inbounds %struct.DisplayCtrl* %54, i32 0, i32 4, !dbg !364
  %56 = getelementptr inbounds %struct.VideoMode* %55, i32 0, i32 3, !dbg !364
  %57 = load i32* %56, align 4, !dbg !364
  %58 = sub i32 %53, %57, !dbg !364
  %59 = trunc i32 %58 to i16, !dbg !364
  %60 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 2, !dbg !364
  store i16 %59, i16* %60, align 2, !dbg !364
  %61 = load %struct.DisplayCtrl** %2, align 4, !dbg !365
  %62 = getelementptr inbounds %struct.DisplayCtrl* %61, i32 0, i32 4, !dbg !365
  %63 = getelementptr inbounds %struct.VideoMode* %62, i32 0, i32 5, !dbg !365
  %64 = load i32* %63, align 4, !dbg !365
  %65 = load %struct.DisplayCtrl** %2, align 4, !dbg !365
  %66 = getelementptr inbounds %struct.DisplayCtrl* %65, i32 0, i32 4, !dbg !365
  %67 = getelementptr inbounds %struct.VideoMode* %66, i32 0, i32 4, !dbg !365
  %68 = load i32* %67, align 4, !dbg !365
  %69 = sub i32 %64, %68, !dbg !365
  %70 = add i32 %69, 1, !dbg !365
  %71 = trunc i32 %70 to i16, !dbg !365
  %72 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 3, !dbg !365
  store i16 %71, i16* %72, align 2, !dbg !365
  %73 = load %struct.DisplayCtrl** %2, align 4, !dbg !366
  %74 = getelementptr inbounds %struct.DisplayCtrl* %73, i32 0, i32 4, !dbg !366
  %75 = getelementptr inbounds %struct.VideoMode* %74, i32 0, i32 6, !dbg !366
  %76 = load i32* %75, align 4, !dbg !366
  %77 = trunc i32 %76 to i16, !dbg !366
  %78 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 4, !dbg !366
  store i16 %77, i16* %78, align 2, !dbg !366
  %79 = load %struct.DisplayCtrl** %2, align 4, !dbg !367
  %80 = getelementptr inbounds %struct.DisplayCtrl* %79, i32 0, i32 4, !dbg !367
  %81 = getelementptr inbounds %struct.VideoMode* %80, i32 0, i32 2, !dbg !367
  %82 = load i32* %81, align 4, !dbg !367
  %83 = trunc i32 %82 to i16, !dbg !367
  %84 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 5, !dbg !367
  store i16 %83, i16* %84, align 2, !dbg !367
  %85 = load %struct.DisplayCtrl** %2, align 4, !dbg !368
  %86 = getelementptr inbounds %struct.DisplayCtrl* %85, i32 0, i32 4, !dbg !368
  %87 = getelementptr inbounds %struct.VideoMode* %86, i32 0, i32 7, !dbg !368
  %88 = load i32* %87, align 4, !dbg !368
  %89 = load %struct.DisplayCtrl** %2, align 4, !dbg !368
  %90 = getelementptr inbounds %struct.DisplayCtrl* %89, i32 0, i32 4, !dbg !368
  %91 = getelementptr inbounds %struct.VideoMode* %90, i32 0, i32 2, !dbg !368
  %92 = load i32* %91, align 4, !dbg !368
  %93 = sub i32 %88, %92, !dbg !368
  %94 = trunc i32 %93 to i16, !dbg !368
  %95 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 6, !dbg !368
  store i16 %94, i16* %95, align 2, !dbg !368
  %96 = load %struct.DisplayCtrl** %2, align 4, !dbg !369
  %97 = getelementptr inbounds %struct.DisplayCtrl* %96, i32 0, i32 4, !dbg !369
  %98 = getelementptr inbounds %struct.VideoMode* %97, i32 0, i32 8, !dbg !369
  %99 = load i32* %98, align 4, !dbg !369
  %100 = load %struct.DisplayCtrl** %2, align 4, !dbg !369
  %101 = getelementptr inbounds %struct.DisplayCtrl* %100, i32 0, i32 4, !dbg !369
  %102 = getelementptr inbounds %struct.VideoMode* %101, i32 0, i32 7, !dbg !369
  %103 = load i32* %102, align 4, !dbg !369
  %104 = sub i32 %99, %103, !dbg !369
  %105 = trunc i32 %104 to i16, !dbg !369
  %106 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 7, !dbg !369
  store i16 %105, i16* %106, align 2, !dbg !369
  %107 = load %struct.DisplayCtrl** %2, align 4, !dbg !370
  %108 = getelementptr inbounds %struct.DisplayCtrl* %107, i32 0, i32 4, !dbg !370
  %109 = getelementptr inbounds %struct.VideoMode* %108, i32 0, i32 9, !dbg !370
  %110 = load i32* %109, align 4, !dbg !370
  %111 = load %struct.DisplayCtrl** %2, align 4, !dbg !370
  %112 = getelementptr inbounds %struct.DisplayCtrl* %111, i32 0, i32 4, !dbg !370
  %113 = getelementptr inbounds %struct.VideoMode* %112, i32 0, i32 8, !dbg !370
  %114 = load i32* %113, align 4, !dbg !370
  %115 = sub i32 %110, %114, !dbg !370
  %116 = add i32 %115, 1, !dbg !370
  %117 = trunc i32 %116 to i16, !dbg !370
  %118 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 8, !dbg !370
  store i16 %117, i16* %118, align 2, !dbg !370
  %119 = load %struct.DisplayCtrl** %2, align 4, !dbg !371
  %120 = getelementptr inbounds %struct.DisplayCtrl* %119, i32 0, i32 4, !dbg !371
  %121 = getelementptr inbounds %struct.VideoMode* %120, i32 0, i32 7, !dbg !371
  %122 = load i32* %121, align 4, !dbg !371
  %123 = load %struct.DisplayCtrl** %2, align 4, !dbg !371
  %124 = getelementptr inbounds %struct.DisplayCtrl* %123, i32 0, i32 4, !dbg !371
  %125 = getelementptr inbounds %struct.VideoMode* %124, i32 0, i32 2, !dbg !371
  %126 = load i32* %125, align 4, !dbg !371
  %127 = sub i32 %122, %126, !dbg !371
  %128 = trunc i32 %127 to i16, !dbg !371
  %129 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 9, !dbg !371
  store i16 %128, i16* %129, align 2, !dbg !371
  %130 = load %struct.DisplayCtrl** %2, align 4, !dbg !372
  %131 = getelementptr inbounds %struct.DisplayCtrl* %130, i32 0, i32 4, !dbg !372
  %132 = getelementptr inbounds %struct.VideoMode* %131, i32 0, i32 8, !dbg !372
  %133 = load i32* %132, align 4, !dbg !372
  %134 = load %struct.DisplayCtrl** %2, align 4, !dbg !372
  %135 = getelementptr inbounds %struct.DisplayCtrl* %134, i32 0, i32 4, !dbg !372
  %136 = getelementptr inbounds %struct.VideoMode* %135, i32 0, i32 7, !dbg !372
  %137 = load i32* %136, align 4, !dbg !372
  %138 = sub i32 %133, %137, !dbg !372
  %139 = trunc i32 %138 to i16, !dbg !372
  %140 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 10, !dbg !372
  store i16 %139, i16* %140, align 2, !dbg !372
  %141 = load %struct.DisplayCtrl** %2, align 4, !dbg !373
  %142 = getelementptr inbounds %struct.DisplayCtrl* %141, i32 0, i32 4, !dbg !373
  %143 = getelementptr inbounds %struct.VideoMode* %142, i32 0, i32 9, !dbg !373
  %144 = load i32* %143, align 4, !dbg !373
  %145 = load %struct.DisplayCtrl** %2, align 4, !dbg !373
  %146 = getelementptr inbounds %struct.DisplayCtrl* %145, i32 0, i32 4, !dbg !373
  %147 = getelementptr inbounds %struct.VideoMode* %146, i32 0, i32 8, !dbg !373
  %148 = load i32* %147, align 4, !dbg !373
  %149 = sub i32 %144, %148, !dbg !373
  %150 = add i32 %149, 1, !dbg !373
  %151 = trunc i32 %150 to i16, !dbg !373
  %152 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 11, !dbg !373
  store i16 %151, i16* %152, align 2, !dbg !373
  %153 = load %struct.DisplayCtrl** %2, align 4, !dbg !374
  %154 = getelementptr inbounds %struct.DisplayCtrl* %153, i32 0, i32 4, !dbg !374
  %155 = getelementptr inbounds %struct.VideoMode* %154, i32 0, i32 10, !dbg !374
  %156 = load i32* %155, align 4, !dbg !374
  %157 = trunc i32 %156 to i16, !dbg !374
  %158 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 12, !dbg !374
  store i16 %157, i16* %158, align 2, !dbg !374
  %159 = getelementptr inbounds %struct.XVtc_Timing* %vtcTiming, i32 0, i32 13, !dbg !375
  store i8 0, i8* %159, align 1, !dbg !375
  %160 = bitcast %struct.XVtc_SourceSelect* %SourceSelect to i8*, !dbg !376
  call void @llvm.memset.p0i8.i32(i8* %160, i8 0, i32 19, i32 1, i1 false), !dbg !376
  %161 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 6, !dbg !377
  store i8 1, i8* %161, align 1, !dbg !377
  %162 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 4, !dbg !378
  store i8 1, i8* %162, align 1, !dbg !378
  %163 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 5, !dbg !379
  store i8 1, i8* %163, align 1, !dbg !379
  %164 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 3, !dbg !380
  store i8 1, i8* %164, align 1, !dbg !380
  %165 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 2, !dbg !381
  store i8 1, i8* %165, align 1, !dbg !381
  %166 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 1, !dbg !382
  store i8 1, i8* %166, align 1, !dbg !382
  %167 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 7, !dbg !383
  store i8 1, i8* %167, align 1, !dbg !383
  %168 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 8, !dbg !384
  store i8 1, i8* %168, align 1, !dbg !384
  %169 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 9, !dbg !385
  store i8 1, i8* %169, align 1, !dbg !385
  %170 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 10, !dbg !386
  store i8 1, i8* %170, align 1, !dbg !386
  %171 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 11, !dbg !387
  store i8 1, i8* %171, align 1, !dbg !387
  %172 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 12, !dbg !388
  store i8 1, i8* %172, align 1, !dbg !388
  %173 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 13, !dbg !389
  store i8 1, i8* %173, align 1, !dbg !389
  %174 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 14, !dbg !390
  store i8 1, i8* %174, align 1, !dbg !390
  %175 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 15, !dbg !391
  store i8 1, i8* %175, align 1, !dbg !391
  %176 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 16, !dbg !392
  store i8 1, i8* %176, align 1, !dbg !392
  %177 = getelementptr inbounds %struct.XVtc_SourceSelect* %SourceSelect, i32 0, i32 17, !dbg !393
  store i8 1, i8* %177, align 1, !dbg !393
  %178 = load %struct.DisplayCtrl** %2, align 4, !dbg !394
  %179 = getelementptr inbounds %struct.DisplayCtrl* %178, i32 0, i32 3, !dbg !394
  %180 = call i32 @XVtc_SelfTest(%struct.XVtc* %179), !dbg !394
  %181 = load %struct.DisplayCtrl** %2, align 4, !dbg !395
  %182 = getelementptr inbounds %struct.DisplayCtrl* %181, i32 0, i32 3, !dbg !395
  %183 = getelementptr inbounds %struct.XVtc* %182, i32 0, i32 0, !dbg !395
  %184 = getelementptr inbounds %struct.XVtc_Config* %183, i32 0, i32 1, !dbg !395
  %185 = load i32* %184, align 4, !dbg !395
  %186 = add i32 %185, 0, !dbg !395
  %187 = load %struct.DisplayCtrl** %2, align 4, !dbg !395
  %188 = getelementptr inbounds %struct.DisplayCtrl* %187, i32 0, i32 3, !dbg !395
  %189 = getelementptr inbounds %struct.XVtc* %188, i32 0, i32 0, !dbg !395
  %190 = getelementptr inbounds %struct.XVtc_Config* %189, i32 0, i32 1, !dbg !395
  %191 = load i32* %190, align 4, !dbg !395
  %192 = add i32 %191, 0, !dbg !395
  %193 = call i32 @Xil_In32(i32 %192), !dbg !395
  %194 = or i32 %193, 2, !dbg !395
  call void @Xil_Out32(i32 %186, i32 %194), !dbg !395
  %195 = load %struct.DisplayCtrl** %2, align 4, !dbg !396
  %196 = getelementptr inbounds %struct.DisplayCtrl* %195, i32 0, i32 3, !dbg !396
  call void @XVtc_SetGeneratorTiming(%struct.XVtc* %196, %struct.XVtc_Timing* %vtcTiming), !dbg !396
  %197 = load %struct.DisplayCtrl** %2, align 4, !dbg !397
  %198 = getelementptr inbounds %struct.DisplayCtrl* %197, i32 0, i32 3, !dbg !397
  call void @XVtc_SetSource(%struct.XVtc* %198, %struct.XVtc_SourceSelect* %SourceSelect), !dbg !397
  %199 = load %struct.DisplayCtrl** %2, align 4, !dbg !398
  %200 = getelementptr inbounds %struct.DisplayCtrl* %199, i32 0, i32 3, !dbg !398
  call void @XVtc_EnableGenerator(%struct.XVtc* %200), !dbg !398
  %201 = load %struct.DisplayCtrl** %2, align 4, !dbg !399
  %202 = getelementptr inbounds %struct.DisplayCtrl* %201, i32 0, i32 4, !dbg !399
  %203 = getelementptr inbounds %struct.VideoMode* %202, i32 0, i32 2, !dbg !399
  %204 = load i32* %203, align 4, !dbg !399
  %205 = load %struct.DisplayCtrl** %2, align 4, !dbg !399
  %206 = getelementptr inbounds %struct.DisplayCtrl* %205, i32 0, i32 2, !dbg !399
  %207 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %206, i32 0, i32 0, !dbg !399
  store i32 %204, i32* %207, align 4, !dbg !399
  %208 = load %struct.DisplayCtrl** %2, align 4, !dbg !400
  %209 = getelementptr inbounds %struct.DisplayCtrl* %208, i32 0, i32 4, !dbg !400
  %210 = getelementptr inbounds %struct.VideoMode* %209, i32 0, i32 1, !dbg !400
  %211 = load i32* %210, align 4, !dbg !400
  %212 = mul i32 %211, 2, !dbg !400
  %213 = load %struct.DisplayCtrl** %2, align 4, !dbg !400
  %214 = getelementptr inbounds %struct.DisplayCtrl* %213, i32 0, i32 2, !dbg !400
  %215 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %214, i32 0, i32 1, !dbg !400
  store i32 %212, i32* %215, align 4, !dbg !400
  %216 = load %struct.DisplayCtrl** %2, align 4, !dbg !401
  %217 = getelementptr inbounds %struct.DisplayCtrl* %216, i32 0, i32 8, !dbg !401
  %218 = load i32* %217, align 4, !dbg !401
  %219 = load %struct.DisplayCtrl** %2, align 4, !dbg !401
  %220 = getelementptr inbounds %struct.DisplayCtrl* %219, i32 0, i32 2, !dbg !401
  %221 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %220, i32 0, i32 9, !dbg !401
  store i32 %218, i32* %221, align 4, !dbg !401
  %222 = load %struct.DisplayCtrl** %2, align 4, !dbg !402
  %223 = getelementptr inbounds %struct.DisplayCtrl* %222, i32 0, i32 6, !dbg !402
  %224 = load i32* %223, align 4, !dbg !402
  %225 = load %struct.DisplayCtrl** %2, align 4, !dbg !402
  %226 = getelementptr inbounds %struct.DisplayCtrl* %225, i32 0, i32 2, !dbg !402
  %227 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %226, i32 0, i32 2, !dbg !402
  store i32 %224, i32* %227, align 4, !dbg !402
  store i32 0, i32* %i, align 4, !dbg !403
  br label %228, !dbg !403

; <label>:228                                     ; preds = %243, %23
  %229 = load i32* %i, align 4, !dbg !405
  %230 = icmp slt i32 %229, 3, !dbg !405
  br i1 %230, label %231, label %246, !dbg !405

; <label>:231                                     ; preds = %228
  %232 = load i32* %i, align 4, !dbg !408
  %233 = load %struct.DisplayCtrl** %2, align 4, !dbg !408
  %234 = getelementptr inbounds %struct.DisplayCtrl* %233, i32 0, i32 5, !dbg !408
  %235 = getelementptr inbounds [3 x i8*]* %234, i32 0, i32 %232, !dbg !408
  %236 = load i8** %235, align 4, !dbg !408
  %237 = ptrtoint i8* %236 to i32, !dbg !408
  %238 = load i32* %i, align 4, !dbg !408
  %239 = load %struct.DisplayCtrl** %2, align 4, !dbg !408
  %240 = getelementptr inbounds %struct.DisplayCtrl* %239, i32 0, i32 2, !dbg !408
  %241 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %240, i32 0, i32 8, !dbg !408
  %242 = getelementptr inbounds [32 x i32]* %241, i32 0, i32 %238, !dbg !408
  store i32 %237, i32* %242, align 4, !dbg !408
  br label %243, !dbg !410

; <label>:243                                     ; preds = %231
  %244 = load i32* %i, align 4, !dbg !411
  %245 = add nsw i32 %244, 1, !dbg !411
  store i32 %245, i32* %i, align 4, !dbg !411
  br label %228, !dbg !411

; <label>:246                                     ; preds = %228
  %247 = load %struct.DisplayCtrl** %2, align 4, !dbg !412
  %248 = getelementptr inbounds %struct.DisplayCtrl* %247, i32 0, i32 1, !dbg !412
  %249 = load %struct.XAxiVdma** %248, align 4, !dbg !412
  %250 = load %struct.DisplayCtrl** %2, align 4, !dbg !412
  %251 = getelementptr inbounds %struct.DisplayCtrl* %250, i32 0, i32 2, !dbg !412
  %252 = call i32 @XAxiVdma_DmaConfig(%struct.XAxiVdma* %249, i16 zeroext 2, %struct.XAxiVdma_DmaSetup* %251), !dbg !412
  store i32 %252, i32* %Status, align 4, !dbg !412
  %253 = load i32* %Status, align 4, !dbg !413
  %254 = icmp ne i32 %253, 0, !dbg !413
  br i1 %254, label %255, label %258, !dbg !413

; <label>:255                                     ; preds = %246
  %256 = load i32* %Status, align 4, !dbg !415
  %257 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str3, i32 0, i32 0), i32 %256), !dbg !415
  store i32 1, i32* %1, !dbg !417
  br label %298, !dbg !417

; <label>:258                                     ; preds = %246
  %259 = load %struct.DisplayCtrl** %2, align 4, !dbg !418
  %260 = getelementptr inbounds %struct.DisplayCtrl* %259, i32 0, i32 1, !dbg !418
  %261 = load %struct.XAxiVdma** %260, align 4, !dbg !418
  %262 = load %struct.DisplayCtrl** %2, align 4, !dbg !418
  %263 = getelementptr inbounds %struct.DisplayCtrl* %262, i32 0, i32 2, !dbg !418
  %264 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %263, i32 0, i32 8, !dbg !418
  %265 = getelementptr inbounds [32 x i32]* %264, i32 0, i32 0, !dbg !418
  %266 = call i32 @XAxiVdma_DmaSetBufferAddr(%struct.XAxiVdma* %261, i16 zeroext 2, i32* %265), !dbg !418
  store i32 %266, i32* %Status, align 4, !dbg !418
  %267 = load i32* %Status, align 4, !dbg !419
  %268 = icmp ne i32 %267, 0, !dbg !419
  br i1 %268, label %269, label %272, !dbg !419

; <label>:269                                     ; preds = %258
  %270 = load i32* %Status, align 4, !dbg !421
  %271 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str4, i32 0, i32 0), i32 %270), !dbg !421
  store i32 1, i32* %1, !dbg !423
  br label %298, !dbg !423

; <label>:272                                     ; preds = %258
  %273 = load %struct.DisplayCtrl** %2, align 4, !dbg !424
  %274 = getelementptr inbounds %struct.DisplayCtrl* %273, i32 0, i32 1, !dbg !424
  %275 = load %struct.XAxiVdma** %274, align 4, !dbg !424
  %276 = call i32 @XAxiVdma_DmaStart(%struct.XAxiVdma* %275, i16 zeroext 2), !dbg !424
  store i32 %276, i32* %Status, align 4, !dbg !424
  %277 = load i32* %Status, align 4, !dbg !425
  %278 = icmp ne i32 %277, 0, !dbg !425
  br i1 %278, label %279, label %282, !dbg !425

; <label>:279                                     ; preds = %272
  %280 = load i32* %Status, align 4, !dbg !427
  %281 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str5, i32 0, i32 0), i32 %280), !dbg !427
  store i32 1, i32* %1, !dbg !429
  br label %298, !dbg !429

; <label>:282                                     ; preds = %272
  %283 = load %struct.DisplayCtrl** %2, align 4, !dbg !430
  %284 = getelementptr inbounds %struct.DisplayCtrl* %283, i32 0, i32 1, !dbg !430
  %285 = load %struct.XAxiVdma** %284, align 4, !dbg !430
  %286 = load %struct.DisplayCtrl** %2, align 4, !dbg !430
  %287 = getelementptr inbounds %struct.DisplayCtrl* %286, i32 0, i32 8, !dbg !430
  %288 = load i32* %287, align 4, !dbg !430
  %289 = call i32 @XAxiVdma_StartParking(%struct.XAxiVdma* %285, i32 %288, i16 zeroext 2), !dbg !430
  store i32 %289, i32* %Status, align 4, !dbg !430
  %290 = load i32* %Status, align 4, !dbg !431
  %291 = icmp ne i32 %290, 0, !dbg !431
  br i1 %291, label %292, label %295, !dbg !431

; <label>:292                                     ; preds = %282
  %293 = load i32* %Status, align 4, !dbg !433
  %294 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str6, i32 0, i32 0), i32 %293), !dbg !433
  store i32 1, i32* %1, !dbg !435
  br label %298, !dbg !435

; <label>:295                                     ; preds = %282
  %296 = load %struct.DisplayCtrl** %2, align 4, !dbg !436
  %297 = getelementptr inbounds %struct.DisplayCtrl* %296, i32 0, i32 9, !dbg !436
  store i32 1, i32* %297, align 4, !dbg !436
  store i32 0, i32* %1, !dbg !437
  br label %298, !dbg !437

; <label>:298                                     ; preds = %295, %292, %279, %269, %255, %21, %8
  %299 = load i32* %1, !dbg !438
  ret i32 %299, !dbg !438
}

declare double @ClkFindParams(double, %struct.ClkMode*) #2

declare i32 @ClkFindReg(%struct.ClkConfig*, %struct.ClkMode*) #2

declare void @ClkWriteReg(%struct.ClkConfig*, i32) #2

declare void @ClkStop(i32) #2

declare void @ClkStart(i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #3

declare i32 @XVtc_SelfTest(%struct.XVtc*) #2

declare void @Xil_Out32(i32, i32) #2

declare i32 @Xil_In32(i32) #2

declare void @XVtc_SetGeneratorTiming(%struct.XVtc*, %struct.XVtc_Timing*) #2

declare void @XVtc_SetSource(%struct.XVtc*, %struct.XVtc_SourceSelect*) #2

declare void @XVtc_EnableGenerator(%struct.XVtc*) #2

declare i32 @XAxiVdma_DmaConfig(%struct.XAxiVdma*, i16 zeroext, %struct.XAxiVdma_DmaSetup*) #2

declare i32 @XAxiVdma_DmaSetBufferAddr(%struct.XAxiVdma*, i16 zeroext, i32*) #2

declare i32 @XAxiVdma_DmaStart(%struct.XAxiVdma*, i16 zeroext) #2

declare i32 @XAxiVdma_StartParking(%struct.XAxiVdma*, i32, i16 zeroext) #2

; Function Attrs: nounwind
define i32 @DisplayInitialize(%struct.DisplayCtrl* %dispPtr, %struct.XAxiVdma* %vdma, i16 zeroext %vtcId, i32 %vtcVirtAddr, i32 %dynVirtClkAddr, i8** %framePtr, i32 %stride) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DisplayCtrl*, align 4
  %3 = alloca %struct.XAxiVdma*, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 4
  %8 = alloca i32, align 4
  %Status = alloca i32, align 4
  %i = alloca i32, align 4
  %vtcConfig = alloca %struct.XVtc_Config*, align 4
  %clkReg = alloca %struct.ClkConfig, align 4
  %clkMode = alloca %struct.ClkMode, align 8
  store %struct.DisplayCtrl* %dispPtr, %struct.DisplayCtrl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DisplayCtrl** %2}, metadata !439), !dbg !440
  store %struct.XAxiVdma* %vdma, %struct.XAxiVdma** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %3}, metadata !441), !dbg !442
  store i16 %vtcId, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !443), !dbg !444
  store i32 %vtcVirtAddr, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !445), !dbg !446
  store i32 %dynVirtClkAddr, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !447), !dbg !448
  store i8** %framePtr, i8*** %7, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %7}, metadata !449), !dbg !450
  store i32 %stride, i32* %8, align 4
  call void @llvm.dbg.declare(metadata !{i32* %8}, metadata !451), !dbg !452
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !453), !dbg !454
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !455), !dbg !456
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Config** %vtcConfig}, metadata !457), !dbg !459
  call void @llvm.dbg.declare(metadata !{%struct.ClkConfig* %clkReg}, metadata !460), !dbg !461
  call void @llvm.dbg.declare(metadata !{%struct.ClkMode* %clkMode}, metadata !462), !dbg !463
  %9 = load %struct.DisplayCtrl** %2, align 4, !dbg !464
  %10 = getelementptr inbounds %struct.DisplayCtrl* %9, i32 0, i32 8, !dbg !464
  store i32 0, i32* %10, align 4, !dbg !464
  %11 = load i32* %6, align 4, !dbg !465
  %12 = load %struct.DisplayCtrl** %2, align 4, !dbg !465
  %13 = getelementptr inbounds %struct.DisplayCtrl* %12, i32 0, i32 0, !dbg !465
  store i32 %11, i32* %13, align 4, !dbg !465
  store i32 0, i32* %i, align 4, !dbg !466
  br label %14, !dbg !466

; <label>:14                                      ; preds = %26, %0
  %15 = load i32* %i, align 4, !dbg !468
  %16 = icmp slt i32 %15, 3, !dbg !468
  br i1 %16, label %17, label %29, !dbg !468

; <label>:17                                      ; preds = %14
  %18 = load i32* %i, align 4, !dbg !471
  %19 = load i8*** %7, align 4, !dbg !471
  %20 = getelementptr inbounds i8** %19, i32 %18, !dbg !471
  %21 = load i8** %20, align 4, !dbg !471
  %22 = load i32* %i, align 4, !dbg !471
  %23 = load %struct.DisplayCtrl** %2, align 4, !dbg !471
  %24 = getelementptr inbounds %struct.DisplayCtrl* %23, i32 0, i32 5, !dbg !471
  %25 = getelementptr inbounds [3 x i8*]* %24, i32 0, i32 %22, !dbg !471
  store i8* %21, i8** %25, align 4, !dbg !471
  br label %26, !dbg !473

; <label>:26                                      ; preds = %17
  %27 = load i32* %i, align 4, !dbg !474
  %28 = add nsw i32 %27, 1, !dbg !474
  store i32 %28, i32* %i, align 4, !dbg !474
  br label %14, !dbg !474

; <label>:29                                      ; preds = %14
  %30 = load %struct.DisplayCtrl** %2, align 4, !dbg !475
  %31 = getelementptr inbounds %struct.DisplayCtrl* %30, i32 0, i32 9, !dbg !475
  store i32 0, i32* %31, align 4, !dbg !475
  %32 = load i32* %8, align 4, !dbg !476
  %33 = load %struct.DisplayCtrl** %2, align 4, !dbg !476
  %34 = getelementptr inbounds %struct.DisplayCtrl* %33, i32 0, i32 6, !dbg !476
  store i32 %32, i32* %34, align 4, !dbg !476
  %35 = load %struct.DisplayCtrl** %2, align 4, !dbg !477
  %36 = getelementptr inbounds %struct.DisplayCtrl* %35, i32 0, i32 4, !dbg !477
  %37 = bitcast %struct.VideoMode* %36 to i8*, !dbg !477
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %37, i8* getelementptr inbounds (%struct.VideoMode* @VMODE_1280x720, i32 0, i32 0, i32 0), i32 112, i32 8, i1 false), !dbg !477
  %38 = load %struct.DisplayCtrl** %2, align 4, !dbg !478
  %39 = getelementptr inbounds %struct.DisplayCtrl* %38, i32 0, i32 4, !dbg !478
  %40 = getelementptr inbounds %struct.VideoMode* %39, i32 0, i32 11, !dbg !478
  %41 = load double* %40, align 8, !dbg !478
  %42 = call double @ClkFindParams(double %41, %struct.ClkMode* %clkMode), !dbg !478
  %43 = getelementptr inbounds %struct.ClkMode* %clkMode, i32 0, i32 0, !dbg !479
  %44 = load double* %43, align 8, !dbg !479
  %45 = load %struct.DisplayCtrl** %2, align 4, !dbg !479
  %46 = getelementptr inbounds %struct.DisplayCtrl* %45, i32 0, i32 7, !dbg !479
  store double %44, double* %46, align 8, !dbg !479
  %47 = call i32 @ClkFindReg(%struct.ClkConfig* %clkReg, %struct.ClkMode* %clkMode), !dbg !480
  %48 = icmp ne i32 %47, 0, !dbg !480
  br i1 %48, label %51, label %49, !dbg !480

; <label>:49                                      ; preds = %29
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str2, i32 0, i32 0)), !dbg !482
  store i32 1, i32* %1, !dbg !484
  br label %91, !dbg !484

; <label>:51                                      ; preds = %29
  %52 = load %struct.DisplayCtrl** %2, align 4, !dbg !485
  %53 = getelementptr inbounds %struct.DisplayCtrl* %52, i32 0, i32 0, !dbg !485
  %54 = load i32* %53, align 4, !dbg !485
  call void @ClkWriteReg(%struct.ClkConfig* %clkReg, i32 %54), !dbg !485
  %55 = load %struct.DisplayCtrl** %2, align 4, !dbg !486
  %56 = getelementptr inbounds %struct.DisplayCtrl* %55, i32 0, i32 0, !dbg !486
  %57 = load i32* %56, align 4, !dbg !486
  call void @ClkStart(i32 %57), !dbg !486
  %58 = load i16* %4, align 2, !dbg !487
  %59 = call %struct.XVtc_Config* @XVtc_LookupConfig(i16 zeroext %58), !dbg !487
  store %struct.XVtc_Config* %59, %struct.XVtc_Config** %vtcConfig, align 4, !dbg !487
  %60 = load %struct.XVtc_Config** %vtcConfig, align 4, !dbg !488
  %61 = icmp eq %struct.XVtc_Config* null, %60, !dbg !488
  br i1 %61, label %62, label %63, !dbg !488

; <label>:62                                      ; preds = %51
  store i32 1, i32* %1, !dbg !490
  br label %91, !dbg !490

; <label>:63                                      ; preds = %51
  %64 = load %struct.DisplayCtrl** %2, align 4, !dbg !492
  %65 = getelementptr inbounds %struct.DisplayCtrl* %64, i32 0, i32 3, !dbg !492
  %66 = load %struct.XVtc_Config** %vtcConfig, align 4, !dbg !492
  %67 = load i32* %5, align 4, !dbg !492
  %68 = call i32 @XVtc_CfgInitialize(%struct.XVtc* %65, %struct.XVtc_Config* %66, i32 %67), !dbg !492
  store i32 %68, i32* %Status, align 4, !dbg !492
  %69 = load i32* %Status, align 4, !dbg !493
  %70 = icmp ne i32 %69, 0, !dbg !493
  br i1 %70, label %71, label %72, !dbg !493

; <label>:71                                      ; preds = %63
  store i32 1, i32* %1, !dbg !495
  br label %91, !dbg !495

; <label>:72                                      ; preds = %63
  %73 = load %struct.XAxiVdma** %3, align 4, !dbg !497
  %74 = load %struct.DisplayCtrl** %2, align 4, !dbg !497
  %75 = getelementptr inbounds %struct.DisplayCtrl* %74, i32 0, i32 1, !dbg !497
  store %struct.XAxiVdma* %73, %struct.XAxiVdma** %75, align 4, !dbg !497
  %76 = load %struct.DisplayCtrl** %2, align 4, !dbg !498
  %77 = getelementptr inbounds %struct.DisplayCtrl* %76, i32 0, i32 2, !dbg !498
  %78 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %77, i32 0, i32 3, !dbg !498
  store i32 0, i32* %78, align 4, !dbg !498
  %79 = load %struct.DisplayCtrl** %2, align 4, !dbg !499
  %80 = getelementptr inbounds %struct.DisplayCtrl* %79, i32 0, i32 2, !dbg !499
  %81 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %80, i32 0, i32 4, !dbg !499
  store i32 1, i32* %81, align 4, !dbg !499
  %82 = load %struct.DisplayCtrl** %2, align 4, !dbg !500
  %83 = getelementptr inbounds %struct.DisplayCtrl* %82, i32 0, i32 2, !dbg !500
  %84 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %83, i32 0, i32 5, !dbg !500
  store i32 0, i32* %84, align 4, !dbg !500
  %85 = load %struct.DisplayCtrl** %2, align 4, !dbg !501
  %86 = getelementptr inbounds %struct.DisplayCtrl* %85, i32 0, i32 2, !dbg !501
  %87 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %86, i32 0, i32 6, !dbg !501
  store i32 0, i32* %87, align 4, !dbg !501
  %88 = load %struct.DisplayCtrl** %2, align 4, !dbg !502
  %89 = getelementptr inbounds %struct.DisplayCtrl* %88, i32 0, i32 2, !dbg !502
  %90 = getelementptr inbounds %struct.XAxiVdma_DmaSetup* %89, i32 0, i32 7, !dbg !502
  store i32 0, i32* %90, align 4, !dbg !502
  store i32 0, i32* %1, !dbg !503
  br label %91, !dbg !503

; <label>:91                                      ; preds = %72, %71, %62, %49
  %92 = load i32* %1, !dbg !504
  ret i32 %92, !dbg !504
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

declare %struct.XVtc_Config* @XVtc_LookupConfig(i16 zeroext) #2

declare i32 @XVtc_CfgInitialize(%struct.XVtc*, %struct.XVtc_Config*, i32) #2

; Function Attrs: nounwind
define i32 @DisplaySetMode(%struct.DisplayCtrl* %dispPtr, %struct.VideoMode* %newMode) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DisplayCtrl*, align 4
  %3 = alloca %struct.VideoMode*, align 4
  %Status = alloca i32, align 4
  store %struct.DisplayCtrl* %dispPtr, %struct.DisplayCtrl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DisplayCtrl** %2}, metadata !505), !dbg !506
  store %struct.VideoMode* %newMode, %struct.VideoMode** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.VideoMode** %3}, metadata !507), !dbg !508
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !509), !dbg !510
  %4 = load %struct.DisplayCtrl** %2, align 4, !dbg !511
  %5 = getelementptr inbounds %struct.DisplayCtrl* %4, i32 0, i32 9, !dbg !511
  %6 = load i32* %5, align 4, !dbg !511
  %7 = icmp eq i32 %6, 1, !dbg !511
  br i1 %7, label %8, label %17, !dbg !511

; <label>:8                                       ; preds = %0
  %9 = load %struct.DisplayCtrl** %2, align 4, !dbg !513
  %10 = call i32 @DisplayStop(%struct.DisplayCtrl* %9), !dbg !513
  store i32 %10, i32* %Status, align 4, !dbg !513
  %11 = load i32* %Status, align 4, !dbg !515
  %12 = icmp ne i32 %11, 0, !dbg !515
  br i1 %12, label %13, label %16, !dbg !515

; <label>:13                                      ; preds = %8
  %14 = load i32* %Status, align 4, !dbg !517
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str7, i32 0, i32 0), i32 %14), !dbg !517
  store i32 1, i32* %1, !dbg !519
  br label %23, !dbg !519

; <label>:16                                      ; preds = %8
  br label %17, !dbg !520

; <label>:17                                      ; preds = %16, %0
  %18 = load %struct.DisplayCtrl** %2, align 4, !dbg !521
  %19 = getelementptr inbounds %struct.DisplayCtrl* %18, i32 0, i32 4, !dbg !521
  %20 = load %struct.VideoMode** %3, align 4, !dbg !521
  %21 = bitcast %struct.VideoMode* %19 to i8*, !dbg !521
  %22 = bitcast %struct.VideoMode* %20 to i8*, !dbg !521
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 112, i32 8, i1 false), !dbg !521
  store i32 0, i32* %1, !dbg !522
  br label %23, !dbg !522

; <label>:23                                      ; preds = %17, %13
  %24 = load i32* %1, !dbg !523
  ret i32 %24, !dbg !523
}

; Function Attrs: nounwind
define i32 @DisplayChangeFrame(%struct.DisplayCtrl* %dispPtr, i32 %frameIndex) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DisplayCtrl*, align 4
  %3 = alloca i32, align 4
  %Status = alloca i32, align 4
  store %struct.DisplayCtrl* %dispPtr, %struct.DisplayCtrl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DisplayCtrl** %2}, metadata !524), !dbg !525
  store i32 %frameIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !526), !dbg !527
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !528), !dbg !529
  %4 = load i32* %3, align 4, !dbg !530
  %5 = load %struct.DisplayCtrl** %2, align 4, !dbg !530
  %6 = getelementptr inbounds %struct.DisplayCtrl* %5, i32 0, i32 8, !dbg !530
  store i32 %4, i32* %6, align 4, !dbg !530
  %7 = load %struct.DisplayCtrl** %2, align 4, !dbg !531
  %8 = getelementptr inbounds %struct.DisplayCtrl* %7, i32 0, i32 9, !dbg !531
  %9 = load i32* %8, align 4, !dbg !531
  %10 = icmp eq i32 %9, 1, !dbg !531
  br i1 %10, label %11, label %25, !dbg !531

; <label>:11                                      ; preds = %0
  %12 = load %struct.DisplayCtrl** %2, align 4, !dbg !533
  %13 = getelementptr inbounds %struct.DisplayCtrl* %12, i32 0, i32 1, !dbg !533
  %14 = load %struct.XAxiVdma** %13, align 4, !dbg !533
  %15 = load %struct.DisplayCtrl** %2, align 4, !dbg !533
  %16 = getelementptr inbounds %struct.DisplayCtrl* %15, i32 0, i32 8, !dbg !533
  %17 = load i32* %16, align 4, !dbg !533
  %18 = call i32 @XAxiVdma_StartParking(%struct.XAxiVdma* %14, i32 %17, i16 zeroext 2), !dbg !533
  store i32 %18, i32* %Status, align 4, !dbg !533
  %19 = load i32* %Status, align 4, !dbg !535
  %20 = icmp ne i32 %19, 0, !dbg !535
  br i1 %20, label %21, label %24, !dbg !535

; <label>:21                                      ; preds = %11
  %22 = load i32* %Status, align 4, !dbg !537
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str8, i32 0, i32 0), i32 %22), !dbg !537
  store i32 1, i32* %1, !dbg !539
  br label %26, !dbg !539

; <label>:24                                      ; preds = %11
  br label %25, !dbg !540

; <label>:25                                      ; preds = %24, %0
  store i32 0, i32* %1, !dbg !541
  br label %26, !dbg !541

; <label>:26                                      ; preds = %25, %21
  %27 = load i32* %1, !dbg !542
  ret i32 %27, !dbg !542
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !199, !201, !202, !203, !204, !205, !193, !206, !207, !208, !209, !210, !211, !212, !213, !214, !213, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !195, !226, !227, !228, !229, !230, !199, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!xidane.function_declaration_filename = !{!192, !243, !194, !244, !196, !245, !198, !245, !200, !245, !201, !246, !203, !245, !205, !243, !206, !247, !208, !247, !210, !247, !212, !247, !214, !247, !215, !244, !217, !248, !219, !248, !221, !244, !223, !244, !225, !244, !226, !245, !228, !245, !230, !245, !231, !245, !233, !243, !235, !244, !237, !244, !239, !243, !241, !243}
!xidane.ExternC = !{!192, !194, !196, !198, !200, !201, !203, !205, !206, !208, !210, !212, !214, !215, !217, !219, !221, !223, !225, !226, !228, !230, !231, !233, !235, !237, !239, !241}
!llvm.module.flags = !{!249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !189, metadata !8, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 113, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 113, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"DISPLAY_STOPPED", i64 0} ; [ DW_TAG_enumerator ] [DISPLAY_STOPPED :: 0]
!7 = metadata !{i32 786472, metadata !"DISPLAY_RUNNING", i64 1} ; [ DW_TAG_enumerator ] [DISPLAY_RUNNING :: 1]
!8 = metadata !{}
!9 = metadata !{metadata !10, metadata !176, metadata !177, metadata !181, metadata !186}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"DisplayStop", metadata !"DisplayStop", metadata !"", i32 116, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.DisplayCtrl*)* @DisplayStop, null, null, metadata !8, i32 117} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 117] [DisplayStop]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from DisplayCtrl]
!16 = metadata !{i32 786454, metadata !4, null, metadata !"DisplayCtrl", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [DisplayCtrl] [line 129, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 118, i64 3008, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 118, size 3008, align 64, offset 0] [def] [from ]
!18 = metadata !{metadata !19, metadata !25, metadata !98, metadata !114, metadata !141, metadata !163, metadata !171, metadata !172, metadata !173, metadata !174}
!19 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"dynClkAddr", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [dynClkAddr] [line 119, size 32, align 32, offset 0] [from u32]
!20 = metadata !{i32 786454, metadata !21, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!21 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/../xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!22 = metadata !{i32 786454, metadata !23, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!23 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!24 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!25 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"vdma", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [vdma] [line 120, size 32, align 32, offset 32] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma]
!27 = metadata !{i32 786454, metadata !28, null, metadata !"XAxiVdma", i32 525, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [XAxiVdma] [line 525, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/../vdma/xaxivdma.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!29 = metadata !{i32 786451, metadata !28, null, metadata !"", i32 504, i64 19456, i64 256, i32 0, i32 0, null, metadata !30, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 504, size 19456, align 256, offset 0] [def] [from ]
!30 = metadata !{metadata !31, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !57, metadata !58, metadata !96, metadata !97}
!31 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"BaseAddr", i32 505, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [BaseAddr] [line 505, size 32, align 32, offset 0] [from UINTPTR]
!32 = metadata !{i32 786454, metadata !21, null, metadata !"UINTPTR", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [UINTPTR] [line 143, size 0, align 0, offset 0] [from u_int32_t]
!33 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"HasSG", i32 506, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [HasSG] [line 506, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"IsReady", i32 507, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [IsReady] [line 507, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"MaxNumFrames", i32 509, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [MaxNumFrames] [line 509, size 32, align 32, offset 96] [from int]
!36 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"HasMm2S", i32 510, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [HasMm2S] [line 510, size 32, align 32, offset 128] [from int]
!37 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"HasMm2SDRE", i32 511, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [HasMm2SDRE] [line 511, size 32, align 32, offset 160] [from int]
!38 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"HasS2Mm", i32 512, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [HasS2Mm] [line 512, size 32, align 32, offset 192] [from int]
!39 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"HasS2MmDRE", i32 513, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [HasS2MmDRE] [line 513, size 32, align 32, offset 224] [from int]
!40 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"EnableVIDParamRead", i32 514, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [EnableVIDParamRead] [line 514, size 32, align 32, offset 256] [from int]
!41 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"UseFsync", i32 516, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [UseFsync] [line 516, size 32, align 32, offset 288] [from int]
!42 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"InternalGenLock", i32 518, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [InternalGenLock] [line 518, size 32, align 32, offset 320] [from int]
!43 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"ReadCallBack", i32 519, i64 128, i64 32, i64 352, i32 0, metadata !44} ; [ DW_TAG_member ] [ReadCallBack] [line 519, size 128, align 32, offset 352] [from XAxiVdma_ChannelCallBack]
!44 = metadata !{i32 786454, metadata !28, null, metadata !"XAxiVdma_ChannelCallBack", i32 499, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [XAxiVdma_ChannelCallBack] [line 499, size 0, align 0, offset 0] [from ]
!45 = metadata !{i32 786451, metadata !28, null, metadata !"", i32 493, i64 128, i64 32, i32 0, i32 0, null, metadata !46, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 493, size 128, align 32, offset 0] [def] [from ]
!46 = metadata !{metadata !47, metadata !53, metadata !54, metadata !56}
!47 = metadata !{i32 786445, metadata !28, metadata !45, metadata !"CompletionCallBack", i32 494, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [CompletionCallBack] [line 494, size 32, align 32, offset 0] [from XAxiVdma_CallBack]
!48 = metadata !{i32 786454, metadata !28, null, metadata !"XAxiVdma_CallBack", i32 381, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [XAxiVdma_CallBack] [line 381, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null, metadata !52, metadata !20}
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !28, metadata !45, metadata !"CompletionRef", i32 495, i64 32, i64 32, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [CompletionRef] [line 495, size 32, align 32, offset 32] [from ]
!54 = metadata !{i32 786445, metadata !28, metadata !45, metadata !"ErrCallBack", i32 497, i64 32, i64 32, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [ErrCallBack] [line 497, size 32, align 32, offset 64] [from XAxiVdma_ErrorCallBack]
!55 = metadata !{i32 786454, metadata !28, null, metadata !"XAxiVdma_ErrorCallBack", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [XAxiVdma_ErrorCallBack] [line 394, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786445, metadata !28, metadata !45, metadata !"ErrRef", i32 498, i64 32, i64 32, i64 96, i32 0, metadata !52} ; [ DW_TAG_member ] [ErrRef] [line 498, size 32, align 32, offset 96] [from ]
!57 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"WriteCallBack", i32 520, i64 128, i64 32, i64 480, i32 0, metadata !44} ; [ DW_TAG_member ] [WriteCallBack] [line 520, size 128, align 32, offset 480] [from XAxiVdma_ChannelCallBack]
!58 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"ReadChannel", i32 522, i64 9216, i64 256, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [ReadChannel] [line 522, size 9216, align 256, offset 768] [from XAxiVdma_Channel]
!59 = metadata !{i32 786454, metadata !60, null, metadata !"XAxiVdma_Channel", i32 120, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [XAxiVdma_Channel] [line 120, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/../vdma/xaxivdma_i.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!61 = metadata !{i32 786451, metadata !60, null, metadata !"", i32 86, i64 9216, i64 256, i32 0, i32 0, null, metadata !62, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 86, size 9216, align 256, offset 0] [def] [from ]
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !93, metadata !94, metadata !95}
!63 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"ChanBase", i32 87, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [ChanBase] [line 87, size 32, align 32, offset 0] [from u32]
!64 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"InstanceBase", i32 88, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [InstanceBase] [line 88, size 32, align 32, offset 32] [from u32]
!65 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"StartAddrBase", i32 89, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [StartAddrBase] [line 89, size 32, align 32, offset 64] [from u32]
!66 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"IsValid", i32 91, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [IsValid] [line 91, size 32, align 32, offset 96] [from int]
!67 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"FlushonFsync", i32 92, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [FlushonFsync] [line 92, size 32, align 32, offset 128] [from int]
!68 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"HasSG", i32 94, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [HasSG] [line 94, size 32, align 32, offset 160] [from int]
!69 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"IsRead", i32 95, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [IsRead] [line 95, size 32, align 32, offset 192] [from int]
!70 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"HasDRE", i32 96, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [HasDRE] [line 96, size 32, align 32, offset 224] [from int]
!71 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"LineBufDepth", i32 97, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [LineBufDepth] [line 97, size 32, align 32, offset 256] [from int]
!72 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"LineBufThreshold", i32 98, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [LineBufThreshold] [line 98, size 32, align 32, offset 288] [from int]
!73 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"WordLength", i32 100, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [WordLength] [line 100, size 32, align 32, offset 320] [from int]
!74 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"NumFrames", i32 101, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [NumFrames] [line 101, size 32, align 32, offset 352] [from int]
!75 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"HeadBdPhysAddr", i32 103, i64 32, i64 32, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [HeadBdPhysAddr] [line 103, size 32, align 32, offset 384] [from UINTPTR]
!76 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"HeadBdAddr", i32 104, i64 32, i64 32, i64 416, i32 0, metadata !32} ; [ DW_TAG_member ] [HeadBdAddr] [line 104, size 32, align 32, offset 416] [from UINTPTR]
!77 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"TailBdPhysAddr", i32 105, i64 32, i64 32, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [TailBdPhysAddr] [line 105, size 32, align 32, offset 448] [from UINTPTR]
!78 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"TailBdAddr", i32 106, i64 32, i64 32, i64 480, i32 0, metadata !32} ; [ DW_TAG_member ] [TailBdAddr] [line 106, size 32, align 32, offset 480] [from UINTPTR]
!79 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"Hsize", i32 107, i64 32, i64 32, i64 512, i32 0, metadata !14} ; [ DW_TAG_member ] [Hsize] [line 107, size 32, align 32, offset 512] [from int]
!80 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"Vsize", i32 108, i64 32, i64 32, i64 544, i32 0, metadata !14} ; [ DW_TAG_member ] [Vsize] [line 108, size 32, align 32, offset 544] [from int]
!81 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"AllCnt", i32 110, i64 32, i64 32, i64 576, i32 0, metadata !14} ; [ DW_TAG_member ] [AllCnt] [line 110, size 32, align 32, offset 576] [from int]
!82 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"GenLock", i32 112, i64 32, i64 32, i64 608, i32 0, metadata !14} ; [ DW_TAG_member ] [GenLock] [line 112, size 32, align 32, offset 608] [from int]
!83 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"S2MmSOF", i32 113, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [S2MmSOF] [line 113, size 32, align 32, offset 640] [from int]
!84 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"StreamWidth", i32 114, i64 32, i64 32, i64 672, i32 0, metadata !14} ; [ DW_TAG_member ] [StreamWidth] [line 114, size 32, align 32, offset 672] [from int]
!85 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"BDs", i32 115, i64 8192, i64 32, i64 768, i32 0, metadata !86} ; [ DW_TAG_member ] [BDs] [line 115, size 8192, align 32, offset 768] [from ]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !87, metadata !91, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from XAxiVdma_Bd]
!87 = metadata !{i32 786454, metadata !60, null, metadata !"XAxiVdma_Bd", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [XAxiVdma_Bd] [line 82, size 0, align 0, offset 0] [from ]
!88 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !20, metadata !89, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from u32]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!93 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"DbgFeatureFlags", i32 117, i64 32, i64 32, i64 8960, i32 0, metadata !20} ; [ DW_TAG_member ] [DbgFeatureFlags] [line 117, size 32, align 32, offset 8960] [from u32]
!94 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"AddrWidth", i32 118, i64 32, i64 32, i64 8992, i32 0, metadata !14} ; [ DW_TAG_member ] [AddrWidth] [line 118, size 32, align 32, offset 8992] [from int]
!95 = metadata !{i32 786445, metadata !60, metadata !61, metadata !"direction", i32 119, i64 32, i64 32, i64 9024, i32 0, metadata !14} ; [ DW_TAG_member ] [direction] [line 119, size 32, align 32, offset 9024] [from int]
!96 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"WriteChannel", i32 523, i64 9216, i64 256, i64 9984, i32 0, metadata !59} ; [ DW_TAG_member ] [WriteChannel] [line 523, size 9216, align 256, offset 9984] [from XAxiVdma_Channel]
!97 = metadata !{i32 786445, metadata !28, metadata !29, metadata !"AddrWidth", i32 524, i64 32, i64 32, i64 19200, i32 0, metadata !14} ; [ DW_TAG_member ] [AddrWidth] [line 524, size 32, align 32, offset 19200] [from int]
!98 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"vdmaConfig", i32 121, i64 1344, i64 32, i64 64, i32 0, metadata !99} ; [ DW_TAG_member ] [vdmaConfig] [line 121, size 1344, align 32, offset 64] [from XAxiVdma_DmaSetup]
!99 = metadata !{i32 786454, metadata !28, null, metadata !"XAxiVdma_DmaSetup", i32 476, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [XAxiVdma_DmaSetup] [line 476, size 0, align 0, offset 0] [from ]
!100 = metadata !{i32 786451, metadata !28, null, metadata !"", i32 462, i64 1344, i64 32, i32 0, i32 0, null, metadata !101, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 462, size 1344, align 32, offset 0] [def] [from ]
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !112, metadata !113}
!102 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"VertSizeInput", i32 463, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [VertSizeInput] [line 463, size 32, align 32, offset 0] [from int]
!103 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"HoriSizeInput", i32 464, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [HoriSizeInput] [line 464, size 32, align 32, offset 32] [from int]
!104 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"Stride", i32 465, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [Stride] [line 465, size 32, align 32, offset 64] [from int]
!105 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"FrameDelay", i32 466, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [FrameDelay] [line 466, size 32, align 32, offset 96] [from int]
!106 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"EnableCircularBuf", i32 468, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [EnableCircularBuf] [line 468, size 32, align 32, offset 128] [from int]
!107 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"EnableSync", i32 469, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [EnableSync] [line 469, size 32, align 32, offset 160] [from int]
!108 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"PointNum", i32 470, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [PointNum] [line 470, size 32, align 32, offset 192] [from int]
!109 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"EnableFrameCounter", i32 471, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [EnableFrameCounter] [line 471, size 32, align 32, offset 224] [from int]
!110 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"FrameStoreStartAddr", i32 472, i64 1024, i64 32, i64 256, i32 0, metadata !111} ; [ DW_TAG_member ] [FrameStoreStartAddr] [line 472, size 1024, align 32, offset 256] [from ]
!111 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !32, metadata !91, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from UINTPTR]
!112 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"FixedFrameStoreAddr", i32 474, i64 32, i64 32, i64 1280, i32 0, metadata !14} ; [ DW_TAG_member ] [FixedFrameStoreAddr] [line 474, size 32, align 32, offset 1280] [from int]
!113 = metadata !{i32 786445, metadata !28, metadata !100, metadata !"GenLockRepeat", i32 475, i64 32, i64 32, i64 1312, i32 0, metadata !14} ; [ DW_TAG_member ] [GenLockRepeat] [line 475, size 32, align 32, offset 1312] [from int]
!114 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"vtc", i32 122, i64 416, i64 32, i64 1408, i32 0, metadata !115} ; [ DW_TAG_member ] [vtc] [line 122, size 416, align 32, offset 1408] [from XVtc]
!115 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc", i32 583, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [XVtc] [line 583, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/../vtc/xvtc.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!117 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 555, i64 416, i64 32, i32 0, i32 0, null, metadata !118, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 555, size 416, align 32, offset 0] [def] [from ]
!118 = metadata !{metadata !119, metadata !128, metadata !129, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !140}
!119 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"Config", i32 556, i64 64, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [Config] [line 556, size 64, align 32, offset 0] [from XVtc_Config]
!120 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_Config", i32 372, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [XVtc_Config] [line 372, size 0, align 0, offset 0] [from ]
!121 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 367, i64 64, i64 32, i32 0, i32 0, null, metadata !122, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 367, size 64, align 32, offset 0] [def] [from ]
!122 = metadata !{metadata !123, metadata !127}
!123 = metadata !{i32 786445, metadata !116, metadata !121, metadata !"DeviceId", i32 368, i64 16, i64 16, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [DeviceId] [line 368, size 16, align 16, offset 0] [from u16]
!124 = metadata !{i32 786454, metadata !21, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!125 = metadata !{i32 786454, metadata !23, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!126 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!127 = metadata !{i32 786445, metadata !116, metadata !121, metadata !"BaseAddress", i32 370, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [BaseAddress] [line 370, size 32, align 32, offset 32] [from u32]
!128 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"IsReady", i32 557, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [IsReady] [line 557, size 32, align 32, offset 64] [from u32]
!129 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"FrameSyncCallBack", i32 561, i64 32, i64 32, i64 96, i32 0, metadata !130} ; [ DW_TAG_member ] [FrameSyncCallBack] [line 561, size 32, align 32, offset 96] [from XVtc_CallBack]
!130 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_CallBack", i32 531, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [XVtc_CallBack] [line 531, size 0, align 0, offset 0] [from ]
!131 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"FrameSyncRef", i32 563, i64 32, i64 32, i64 128, i32 0, metadata !52} ; [ DW_TAG_member ] [FrameSyncRef] [line 563, size 32, align 32, offset 128] [from ]
!132 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"LockCallBack", i32 566, i64 32, i64 32, i64 160, i32 0, metadata !130} ; [ DW_TAG_member ] [LockCallBack] [line 566, size 32, align 32, offset 160] [from XVtc_CallBack]
!133 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"LockRef", i32 568, i64 32, i64 32, i64 192, i32 0, metadata !52} ; [ DW_TAG_member ] [LockRef] [line 568, size 32, align 32, offset 192] [from ]
!134 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"DetectorCallBack", i32 571, i64 32, i64 32, i64 224, i32 0, metadata !130} ; [ DW_TAG_member ] [DetectorCallBack] [line 571, size 32, align 32, offset 224] [from XVtc_CallBack]
!135 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"DetectorRef", i32 572, i64 32, i64 32, i64 256, i32 0, metadata !52} ; [ DW_TAG_member ] [DetectorRef] [line 572, size 32, align 32, offset 256] [from ]
!136 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"GeneratorCallBack", i32 575, i64 32, i64 32, i64 288, i32 0, metadata !130} ; [ DW_TAG_member ] [GeneratorCallBack] [line 575, size 32, align 32, offset 288] [from XVtc_CallBack]
!137 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"GeneratorRef", i32 577, i64 32, i64 32, i64 320, i32 0, metadata !52} ; [ DW_TAG_member ] [GeneratorRef] [line 577, size 32, align 32, offset 320] [from ]
!138 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"ErrCallBack", i32 580, i64 32, i64 32, i64 352, i32 0, metadata !139} ; [ DW_TAG_member ] [ErrCallBack] [line 580, size 32, align 32, offset 352] [from XVtc_ErrorCallBack]
!139 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_ErrorCallBack", i32 549, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [XVtc_ErrorCallBack] [line 549, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786445, metadata !116, metadata !117, metadata !"ErrRef", i32 581, i64 32, i64 32, i64 384, i32 0, metadata !52} ; [ DW_TAG_member ] [ErrRef] [line 581, size 32, align 32, offset 384] [from ]
!141 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"vMode", i32 123, i64 896, i64 64, i64 1856, i32 0, metadata !142} ; [ DW_TAG_member ] [vMode] [line 123, size 896, align 64, offset 1856] [from VideoMode]
!142 = metadata !{i32 786454, metadata !143, null, metadata !"VideoMode", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [VideoMode] [line 68, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/vga_modes.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!144 = metadata !{i32 786451, metadata !143, null, metadata !"", i32 55, i64 896, i64 64, i32 0, i32 0, null, metadata !145, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 55, size 896, align 64, offset 0] [def] [from ]
!145 = metadata !{metadata !146, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!146 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"label", i32 56, i64 512, i64 8, i64 0, i32 0, metadata !147} ; [ DW_TAG_member ] [label] [line 56, size 512, align 8, offset 0] [from ]
!147 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !148, metadata !149, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!148 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!151 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"width", i32 57, i64 32, i64 32, i64 512, i32 0, metadata !20} ; [ DW_TAG_member ] [width] [line 57, size 32, align 32, offset 512] [from u32]
!152 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"height", i32 58, i64 32, i64 32, i64 544, i32 0, metadata !20} ; [ DW_TAG_member ] [height] [line 58, size 32, align 32, offset 544] [from u32]
!153 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"hps", i32 59, i64 32, i64 32, i64 576, i32 0, metadata !20} ; [ DW_TAG_member ] [hps] [line 59, size 32, align 32, offset 576] [from u32]
!154 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"hpe", i32 60, i64 32, i64 32, i64 608, i32 0, metadata !20} ; [ DW_TAG_member ] [hpe] [line 60, size 32, align 32, offset 608] [from u32]
!155 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"hmax", i32 61, i64 32, i64 32, i64 640, i32 0, metadata !20} ; [ DW_TAG_member ] [hmax] [line 61, size 32, align 32, offset 640] [from u32]
!156 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"hpol", i32 62, i64 32, i64 32, i64 672, i32 0, metadata !20} ; [ DW_TAG_member ] [hpol] [line 62, size 32, align 32, offset 672] [from u32]
!157 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"vps", i32 63, i64 32, i64 32, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [vps] [line 63, size 32, align 32, offset 704] [from u32]
!158 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"vpe", i32 64, i64 32, i64 32, i64 736, i32 0, metadata !20} ; [ DW_TAG_member ] [vpe] [line 64, size 32, align 32, offset 736] [from u32]
!159 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"vmax", i32 65, i64 32, i64 32, i64 768, i32 0, metadata !20} ; [ DW_TAG_member ] [vmax] [line 65, size 32, align 32, offset 768] [from u32]
!160 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"vpol", i32 66, i64 32, i64 32, i64 800, i32 0, metadata !20} ; [ DW_TAG_member ] [vpol] [line 66, size 32, align 32, offset 800] [from u32]
!161 = metadata !{i32 786445, metadata !143, metadata !144, metadata !"freq", i32 67, i64 64, i64 64, i64 832, i32 0, metadata !162} ; [ DW_TAG_member ] [freq] [line 67, size 64, align 64, offset 832] [from double]
!162 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!163 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"framePtr", i32 124, i64 96, i64 32, i64 2752, i32 0, metadata !164} ; [ DW_TAG_member ] [framePtr] [line 124, size 96, align 32, offset 2752] [from ]
!164 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !165, metadata !169, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from ]
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u8]
!166 = metadata !{i32 786454, metadata !21, null, metadata !"u8", i32 90, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [u8] [line 90, size 0, align 0, offset 0] [from u_int8_t]
!167 = metadata !{i32 786454, metadata !23, null, metadata !"u_int8_t", i32 200, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [u_int8_t] [line 200, size 0, align 0, offset 0] [from unsigned char]
!168 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!169 = metadata !{metadata !170}
!170 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!171 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"stride", i32 125, i64 32, i64 32, i64 2848, i32 0, metadata !20} ; [ DW_TAG_member ] [stride] [line 125, size 32, align 32, offset 2848] [from u32]
!172 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"pxlFreq", i32 126, i64 64, i64 64, i64 2880, i32 0, metadata !162} ; [ DW_TAG_member ] [pxlFreq] [line 126, size 64, align 64, offset 2880] [from double]
!173 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"curFrame", i32 127, i64 32, i64 32, i64 2944, i32 0, metadata !20} ; [ DW_TAG_member ] [curFrame] [line 127, size 32, align 32, offset 2944] [from u32]
!174 = metadata !{i32 786445, metadata !4, metadata !17, metadata !"state", i32 128, i64 32, i64 32, i64 2976, i32 0, metadata !175} ; [ DW_TAG_member ] [state] [line 128, size 32, align 32, offset 2976] [from DisplayState]
!175 = metadata !{i32 786454, metadata !4, null, metadata !"DisplayState", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [DisplayState] [line 116, size 0, align 0, offset 0] [from ]
!176 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"DisplayStart", metadata !"DisplayStart", metadata !"", i32 170, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.DisplayCtrl*)* @DisplayStart, null, null, metadata !8, i32 171} ; [ DW_TAG_subprogram ] [line 170] [def] [scope 171] [DisplayStart]
!177 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"DisplayInitialize", metadata !"DisplayInitialize", metadata !"", i32 348, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.DisplayCtrl*, %struct.XAxiVdma*, i16, i32, i32, i8**, i32)* @DisplayInitialize, null, null, metadata !8, i32 349} ; [ DW_TAG_subprogram ] [line 348] [def] [scope 349] [DisplayInitialize]
!178 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{metadata !14, metadata !15, metadata !26, metadata !124, metadata !20, metadata !20, metadata !180, metadata !20}
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!181 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"DisplaySetMode", metadata !"DisplaySetMode", metadata !"", i32 444, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.DisplayCtrl*, %struct.VideoMode*)* @DisplaySetMode, null, null, metadata !8, i32 445} ; [ DW_TAG_subprogram ] [line 444] [def] [scope 445] [DisplaySetMode]
!182 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!183 = metadata !{metadata !14, metadata !15, metadata !184}
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !185} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!185 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from VideoMode]
!186 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"DisplayChangeFrame", metadata !"DisplayChangeFrame", metadata !"", i32 484, metadata !187, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.DisplayCtrl*, i32)* @DisplayChangeFrame, null, null, metadata !8, i32 485} ; [ DW_TAG_subprogram ] [line 484] [def] [scope 485] [DisplayChangeFrame]
!187 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!188 = metadata !{metadata !14, metadata !15, metadata !20}
!189 = metadata !{metadata !190}
!190 = metadata !{i32 786484, i32 0, null, metadata !"VMODE_1280x720", metadata !"VMODE_1280x720", metadata !"", metadata !191, i32 85, metadata !185, i32 1, i32 1, %struct.VideoMode* @VMODE_1280x720, null} ; [ DW_TAG_variable ] [VMODE_1280x720] [line 85] [local] [def]
!191 = metadata !{i32 786473, metadata !143}      ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/vga_modes.h]
!192 = metadata !{i32 (%struct.DisplayCtrl*)* @DisplayStop}
!193 = metadata !{metadata !"int.DisplayCtrl *.1"}
!194 = metadata !{void (%struct.XVtc*)* @XVtc_DisableGenerator}
!195 = metadata !{metadata !"void.XVtc *.1"}
!196 = metadata !{void (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaStop}
!197 = metadata !{metadata !"void.XAxiVdma *.1.u16.0"}
!198 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_IsBusy}
!199 = metadata !{metadata !"int.XAxiVdma *.1.u16.0"}
!200 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_GetDmaChannelErrors}
!201 = metadata !{i32 (i8*, ...)* @printf}
!202 = metadata !{metadata !"int.const char *restrict.1"}
!203 = metadata !{i32 (%struct.XAxiVdma*, i16, i32)* @XAxiVdma_ClearDmaChannelErrors}
!204 = metadata !{metadata !"int.XAxiVdma *.1.u16.0.u32.0"}
!205 = metadata !{i32 (%struct.DisplayCtrl*)* @DisplayStart}
!206 = metadata !{double (double, %struct.ClkMode*)* @ClkFindParams}
!207 = metadata !{metadata !"double.double.0.ClkMode *.1"}
!208 = metadata !{i32 (%struct.ClkConfig*, %struct.ClkMode*)* @ClkFindReg}
!209 = metadata !{metadata !"u32.ClkConfig *.1.ClkMode *.1"}
!210 = metadata !{void (%struct.ClkConfig*, i32)* @ClkWriteReg}
!211 = metadata !{metadata !"void.ClkConfig *.1.u32.0"}
!212 = metadata !{void (i32)* @ClkStop}
!213 = metadata !{metadata !"void.u32.0"}
!214 = metadata !{void (i32)* @ClkStart}
!215 = metadata !{i32 (%struct.XVtc*)* @XVtc_SelfTest}
!216 = metadata !{metadata !"int.XVtc *.1"}
!217 = metadata !{void (i32, i32)* @Xil_Out32}
!218 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!219 = metadata !{i32 (i32)* @Xil_In32}
!220 = metadata !{metadata !"u32.INTPTR.0"}
!221 = metadata !{void (%struct.XVtc*, %struct.XVtc_Timing*)* @XVtc_SetGeneratorTiming}
!222 = metadata !{metadata !"void.XVtc *.1.XVtc_Timing *.1"}
!223 = metadata !{void (%struct.XVtc*, %struct.XVtc_SourceSelect*)* @XVtc_SetSource}
!224 = metadata !{metadata !"void.XVtc *.1.XVtc_SourceSelect *.1"}
!225 = metadata !{void (%struct.XVtc*)* @XVtc_EnableGenerator}
!226 = metadata !{i32 (%struct.XAxiVdma*, i16, %struct.XAxiVdma_DmaSetup*)* @XAxiVdma_DmaConfig}
!227 = metadata !{metadata !"int.XAxiVdma *.1.u16.0.XAxiVdma_DmaSetup *.1"}
!228 = metadata !{i32 (%struct.XAxiVdma*, i16, i32*)* @XAxiVdma_DmaSetBufferAddr}
!229 = metadata !{metadata !"int.XAxiVdma *.1.u16.0.UINTPTR *.1"}
!230 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaStart}
!231 = metadata !{i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_StartParking}
!232 = metadata !{metadata !"int.XAxiVdma *.1.int.0.u16.0"}
!233 = metadata !{i32 (%struct.DisplayCtrl*, %struct.XAxiVdma*, i16, i32, i32, i8**, i32)* @DisplayInitialize}
!234 = metadata !{metadata !"int.DisplayCtrl *.1.XAxiVdma *.1.u16.0.u32.0.u32.0.u8 *[3].1.u32.0"}
!235 = metadata !{%struct.XVtc_Config* (i16)* @XVtc_LookupConfig}
!236 = metadata !{metadata !"XVtc_Config .u16.0"}
!237 = metadata !{i32 (%struct.XVtc*, %struct.XVtc_Config*, i32)* @XVtc_CfgInitialize}
!238 = metadata !{metadata !"int.XVtc *.1.XVtc_Config *.1.u32.0"}
!239 = metadata !{i32 (%struct.DisplayCtrl*, %struct.VideoMode*)* @DisplaySetMode}
!240 = metadata !{metadata !"int.DisplayCtrl *.1.const VideoMode *.1"}
!241 = metadata !{i32 (%struct.DisplayCtrl*, i32)* @DisplayChangeFrame}
!242 = metadata !{metadata !"int.DisplayCtrl *.1.u32.0"}
!243 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.h"}
!244 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/../vtc/xvtc.h"}
!245 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/../vdma/xaxivdma.h"}
!246 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!247 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/../dynclk/dynclk.h"}
!248 = metadata !{metadata !"../src/xil/xil_io.h"}
!249 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!250 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!251 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!252 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!253 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!254 = metadata !{i32 786689, metadata !10, metadata !"dispPtr", metadata !11, i32 16777332, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dispPtr] [line 116]
!255 = metadata !{i32 116, i32 30, metadata !10, null}
!256 = metadata !{i32 121, i32 6, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !10, i32 121, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!258 = metadata !{i32 123, i32 3, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !257, i32 122, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!260 = metadata !{i32 130, i32 2, metadata !10, null}
!261 = metadata !{i32 135, i32 2, metadata !10, null}
!262 = metadata !{i32 136, i32 2, metadata !10, null}
!263 = metadata !{i32 136, i32 8, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !265, i32 136, i32 8, i32 3, i32 36} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!265 = metadata !{i32 786443, metadata !1, metadata !10, i32 136, i32 8, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!266 = metadata !{i32 136, i32 8, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !10, i32 136, i32 8, i32 2, i32 35} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!268 = metadata !{i32 141, i32 2, metadata !10, null}
!269 = metadata !{i32 145, i32 6, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !10, i32 145, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!271 = metadata !{i32 147, i32 3, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !270, i32 146, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!273 = metadata !{i32 148, i32 3, metadata !272, null}
!274 = metadata !{i32 149, i32 3, metadata !272, null}
!275 = metadata !{i32 152, i32 2, metadata !10, null}
!276 = metadata !{i32 153, i32 1, metadata !10, null}
!277 = metadata !{i32 786689, metadata !176, metadata !"dispPtr", metadata !11, i32 16777386, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dispPtr] [line 170]
!278 = metadata !{i32 170, i32 31, metadata !176, null}
!279 = metadata !{i32 786688, metadata !176, metadata !"Status", metadata !11, i32 172, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 172]
!280 = metadata !{i32 172, i32 6, metadata !176, null}
!281 = metadata !{i32 786688, metadata !176, metadata !"clkReg", metadata !11, i32 173, metadata !282, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clkReg] [line 173]
!282 = metadata !{i32 786454, metadata !283, null, metadata !"ClkConfig", i32 113, i64 0, i64 0, i64 0, i32 0, metadata !284} ; [ DW_TAG_typedef ] [ClkConfig] [line 113, size 0, align 0, offset 0] [from ]
!283 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/display_ctrl/../dynclk/dynclk.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!284 = metadata !{i32 786451, metadata !283, null, metadata !"", i32 106, i64 192, i64 32, i32 0, i32 0, null, metadata !285, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 106, size 192, align 32, offset 0] [def] [from ]
!285 = metadata !{metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291}
!286 = metadata !{i32 786445, metadata !283, metadata !284, metadata !"clk0L", i32 107, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [clk0L] [line 107, size 32, align 32, offset 0] [from u32]
!287 = metadata !{i32 786445, metadata !283, metadata !284, metadata !"clkFBL", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [clkFBL] [line 108, size 32, align 32, offset 32] [from u32]
!288 = metadata !{i32 786445, metadata !283, metadata !284, metadata !"clkFBH_clk0H", i32 109, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [clkFBH_clk0H] [line 109, size 32, align 32, offset 64] [from u32]
!289 = metadata !{i32 786445, metadata !283, metadata !284, metadata !"divclk", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [divclk] [line 110, size 32, align 32, offset 96] [from u32]
!290 = metadata !{i32 786445, metadata !283, metadata !284, metadata !"lockL", i32 111, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [lockL] [line 111, size 32, align 32, offset 128] [from u32]
!291 = metadata !{i32 786445, metadata !283, metadata !284, metadata !"fltr_lockH", i32 112, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [fltr_lockH] [line 112, size 32, align 32, offset 160] [from u32]
!292 = metadata !{i32 173, i32 12, metadata !176, null}
!293 = metadata !{i32 786688, metadata !176, metadata !"clkMode", metadata !11, i32 174, metadata !294, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clkMode] [line 174]
!294 = metadata !{i32 786454, metadata !283, null, metadata !"ClkMode", i32 120, i64 0, i64 0, i64 0, i32 0, metadata !295} ; [ DW_TAG_typedef ] [ClkMode] [line 120, size 0, align 0, offset 0] [from ]
!295 = metadata !{i32 786451, metadata !283, null, metadata !"", i32 115, i64 192, i64 64, i32 0, i32 0, null, metadata !296, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 115, size 192, align 64, offset 0] [def] [from ]
!296 = metadata !{metadata !297, metadata !298, metadata !299, metadata !300}
!297 = metadata !{i32 786445, metadata !283, metadata !295, metadata !"freq", i32 116, i64 64, i64 64, i64 0, i32 0, metadata !162} ; [ DW_TAG_member ] [freq] [line 116, size 64, align 64, offset 0] [from double]
!298 = metadata !{i32 786445, metadata !283, metadata !295, metadata !"fbmult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [fbmult] [line 117, size 32, align 32, offset 64] [from u32]
!299 = metadata !{i32 786445, metadata !283, metadata !295, metadata !"clkdiv", i32 118, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [clkdiv] [line 118, size 32, align 32, offset 96] [from u32]
!300 = metadata !{i32 786445, metadata !283, metadata !295, metadata !"maindiv", i32 119, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [maindiv] [line 119, size 32, align 32, offset 128] [from u32]
!301 = metadata !{i32 174, i32 10, metadata !176, null}
!302 = metadata !{i32 786688, metadata !176, metadata !"i", metadata !11, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 175]
!303 = metadata !{i32 175, i32 6, metadata !176, null}
!304 = metadata !{i32 786688, metadata !176, metadata !"vtcTiming", metadata !11, i32 176, metadata !305, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtcTiming] [line 176]
!305 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_Timing", i32 513, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_typedef ] [XVtc_Timing] [line 513, size 0, align 0, offset 0] [from ]
!306 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 492, i64 224, i64 16, i32 0, i32 0, null, metadata !307, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 492, size 224, align 16, offset 0] [def] [from ]
!307 = metadata !{metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321}
!308 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"HActiveVideo", i32 494, i64 16, i64 16, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [HActiveVideo] [line 494, size 16, align 16, offset 0] [from u16]
!309 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"HFrontPorch", i32 495, i64 16, i64 16, i64 16, i32 0, metadata !124} ; [ DW_TAG_member ] [HFrontPorch] [line 495, size 16, align 16, offset 16] [from u16]
!310 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"HSyncWidth", i32 496, i64 16, i64 16, i64 32, i32 0, metadata !124} ; [ DW_TAG_member ] [HSyncWidth] [line 496, size 16, align 16, offset 32] [from u16]
!311 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"HBackPorch", i32 497, i64 16, i64 16, i64 48, i32 0, metadata !124} ; [ DW_TAG_member ] [HBackPorch] [line 497, size 16, align 16, offset 48] [from u16]
!312 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"HSyncPolarity", i32 498, i64 16, i64 16, i64 64, i32 0, metadata !124} ; [ DW_TAG_member ] [HSyncPolarity] [line 498, size 16, align 16, offset 64] [from u16]
!313 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"VActiveVideo", i32 501, i64 16, i64 16, i64 80, i32 0, metadata !124} ; [ DW_TAG_member ] [VActiveVideo] [line 501, size 16, align 16, offset 80] [from u16]
!314 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"V0FrontPorch", i32 502, i64 16, i64 16, i64 96, i32 0, metadata !124} ; [ DW_TAG_member ] [V0FrontPorch] [line 502, size 16, align 16, offset 96] [from u16]
!315 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"V0SyncWidth", i32 503, i64 16, i64 16, i64 112, i32 0, metadata !124} ; [ DW_TAG_member ] [V0SyncWidth] [line 503, size 16, align 16, offset 112] [from u16]
!316 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"V0BackPorch", i32 504, i64 16, i64 16, i64 128, i32 0, metadata !124} ; [ DW_TAG_member ] [V0BackPorch] [line 504, size 16, align 16, offset 128] [from u16]
!317 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"V1FrontPorch", i32 506, i64 16, i64 16, i64 144, i32 0, metadata !124} ; [ DW_TAG_member ] [V1FrontPorch] [line 506, size 16, align 16, offset 144] [from u16]
!318 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"V1SyncWidth", i32 507, i64 16, i64 16, i64 160, i32 0, metadata !124} ; [ DW_TAG_member ] [V1SyncWidth] [line 507, size 16, align 16, offset 160] [from u16]
!319 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"V1BackPorch", i32 508, i64 16, i64 16, i64 176, i32 0, metadata !124} ; [ DW_TAG_member ] [V1BackPorch] [line 508, size 16, align 16, offset 176] [from u16]
!320 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"VSyncPolarity", i32 510, i64 16, i64 16, i64 192, i32 0, metadata !124} ; [ DW_TAG_member ] [VSyncPolarity] [line 510, size 16, align 16, offset 192] [from u16]
!321 = metadata !{i32 786445, metadata !116, metadata !306, metadata !"Interlaced", i32 512, i64 8, i64 8, i64 208, i32 0, metadata !166} ; [ DW_TAG_member ] [Interlaced] [line 512, size 8, align 8, offset 208] [from u8]
!322 = metadata !{i32 176, i32 14, metadata !176, null}
!323 = metadata !{i32 786688, metadata !176, metadata !"SourceSelect", metadata !11, i32 177, metadata !324, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SourceSelect] [line 177]
!324 = metadata !{i32 786454, metadata !116, null, metadata !"XVtc_SourceSelect", i32 423, i64 0, i64 0, i64 0, i32 0, metadata !325} ; [ DW_TAG_typedef ] [XVtc_SourceSelect] [line 423, size 0, align 0, offset 0] [from ]
!325 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 392, i64 152, i64 8, i32 0, i32 0, null, metadata !326, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 392, size 152, align 8, offset 0] [def] [from ]
!326 = metadata !{metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345}
!327 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"FieldIdPolSrc", i32 393, i64 8, i64 8, i64 0, i32 0, metadata !166} ; [ DW_TAG_member ] [FieldIdPolSrc] [line 393, size 8, align 8, offset 0] [from u8]
!328 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"ActiveChromaPolSrc", i32 394, i64 8, i64 8, i64 8, i32 0, metadata !166} ; [ DW_TAG_member ] [ActiveChromaPolSrc] [line 394, size 8, align 8, offset 8] [from u8]
!329 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"ActiveVideoPolSrc", i32 395, i64 8, i64 8, i64 16, i32 0, metadata !166} ; [ DW_TAG_member ] [ActiveVideoPolSrc] [line 395, size 8, align 8, offset 16] [from u8]
!330 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"HSyncPolSrc", i32 396, i64 8, i64 8, i64 24, i32 0, metadata !166} ; [ DW_TAG_member ] [HSyncPolSrc] [line 396, size 8, align 8, offset 24] [from u8]
!331 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"VSyncPolSrc", i32 397, i64 8, i64 8, i64 32, i32 0, metadata !166} ; [ DW_TAG_member ] [VSyncPolSrc] [line 397, size 8, align 8, offset 32] [from u8]
!332 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"HBlankPolSrc", i32 398, i64 8, i64 8, i64 40, i32 0, metadata !166} ; [ DW_TAG_member ] [HBlankPolSrc] [line 398, size 8, align 8, offset 40] [from u8]
!333 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"VBlankPolSrc", i32 399, i64 8, i64 8, i64 48, i32 0, metadata !166} ; [ DW_TAG_member ] [VBlankPolSrc] [line 399, size 8, align 8, offset 48] [from u8]
!334 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"VChromaSrc", i32 401, i64 8, i64 8, i64 56, i32 0, metadata !166} ; [ DW_TAG_member ] [VChromaSrc] [line 401, size 8, align 8, offset 56] [from u8]
!335 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"VActiveSrc", i32 403, i64 8, i64 8, i64 64, i32 0, metadata !166} ; [ DW_TAG_member ] [VActiveSrc] [line 403, size 8, align 8, offset 64] [from u8]
!336 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"VBackPorchSrc", i32 405, i64 8, i64 8, i64 72, i32 0, metadata !166} ; [ DW_TAG_member ] [VBackPorchSrc] [line 405, size 8, align 8, offset 72] [from u8]
!337 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"VSyncSrc", i32 407, i64 8, i64 8, i64 80, i32 0, metadata !166} ; [ DW_TAG_member ] [VSyncSrc] [line 407, size 8, align 8, offset 80] [from u8]
!338 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"VFrontPorchSrc", i32 409, i64 8, i64 8, i64 88, i32 0, metadata !166} ; [ DW_TAG_member ] [VFrontPorchSrc] [line 409, size 8, align 8, offset 88] [from u8]
!339 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"VTotalSrc", i32 411, i64 8, i64 8, i64 96, i32 0, metadata !166} ; [ DW_TAG_member ] [VTotalSrc] [line 411, size 8, align 8, offset 96] [from u8]
!340 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"HActiveSrc", i32 412, i64 8, i64 8, i64 104, i32 0, metadata !166} ; [ DW_TAG_member ] [HActiveSrc] [line 412, size 8, align 8, offset 104] [from u8]
!341 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"HBackPorchSrc", i32 414, i64 8, i64 8, i64 112, i32 0, metadata !166} ; [ DW_TAG_member ] [HBackPorchSrc] [line 414, size 8, align 8, offset 112] [from u8]
!342 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"HSyncSrc", i32 416, i64 8, i64 8, i64 120, i32 0, metadata !166} ; [ DW_TAG_member ] [HSyncSrc] [line 416, size 8, align 8, offset 120] [from u8]
!343 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"HFrontPorchSrc", i32 418, i64 8, i64 8, i64 128, i32 0, metadata !166} ; [ DW_TAG_member ] [HFrontPorchSrc] [line 418, size 8, align 8, offset 128] [from u8]
!344 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"HTotalSrc", i32 420, i64 8, i64 8, i64 136, i32 0, metadata !166} ; [ DW_TAG_member ] [HTotalSrc] [line 420, size 8, align 8, offset 136] [from u8]
!345 = metadata !{i32 786445, metadata !116, metadata !325, metadata !"InterlacedMode", i32 421, i64 8, i64 8, i64 144, i32 0, metadata !166} ; [ DW_TAG_member ] [InterlacedMode] [line 421, size 8, align 8, offset 144] [from u8]
!346 = metadata !{i32 177, i32 20, metadata !176, null}
!347 = metadata !{i32 179, i32 2, metadata !176, null}
!348 = metadata !{i32 183, i32 6, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !176, i32 183, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!350 = metadata !{i32 185, i32 3, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 184, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!352 = metadata !{i32 192, i32 2, metadata !176, null}
!353 = metadata !{i32 198, i32 2, metadata !176, null}
!354 = metadata !{i32 204, i32 7, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !176, i32 204, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!356 = metadata !{i32 206, i32 3, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !355, i32 205, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!358 = metadata !{i32 207, i32 3, metadata !357, null}
!359 = metadata !{i32 209, i32 2, metadata !176, null}
!360 = metadata !{i32 214, i32 2, metadata !176, null}
!361 = metadata !{i32 215, i32 2, metadata !176, null}
!362 = metadata !{i32 220, i32 2, metadata !176, null}
!363 = metadata !{i32 221, i32 2, metadata !176, null}
!364 = metadata !{i32 222, i32 2, metadata !176, null}
!365 = metadata !{i32 223, i32 2, metadata !176, null}
!366 = metadata !{i32 224, i32 2, metadata !176, null}
!367 = metadata !{i32 225, i32 2, metadata !176, null}
!368 = metadata !{i32 226, i32 2, metadata !176, null}
!369 = metadata !{i32 227, i32 2, metadata !176, null}
!370 = metadata !{i32 228, i32 2, metadata !176, null}
!371 = metadata !{i32 229, i32 2, metadata !176, null}
!372 = metadata !{i32 230, i32 2, metadata !176, null}
!373 = metadata !{i32 231, i32 2, metadata !176, null}
!374 = metadata !{i32 232, i32 2, metadata !176, null}
!375 = metadata !{i32 233, i32 2, metadata !176, null}
!376 = metadata !{i32 239, i32 2, metadata !176, null}
!377 = metadata !{i32 240, i32 2, metadata !176, null}
!378 = metadata !{i32 241, i32 2, metadata !176, null}
!379 = metadata !{i32 242, i32 2, metadata !176, null}
!380 = metadata !{i32 243, i32 2, metadata !176, null}
!381 = metadata !{i32 244, i32 2, metadata !176, null}
!382 = metadata !{i32 245, i32 2, metadata !176, null}
!383 = metadata !{i32 246, i32 2, metadata !176, null}
!384 = metadata !{i32 247, i32 2, metadata !176, null}
!385 = metadata !{i32 248, i32 2, metadata !176, null}
!386 = metadata !{i32 249, i32 2, metadata !176, null}
!387 = metadata !{i32 250, i32 2, metadata !176, null}
!388 = metadata !{i32 251, i32 2, metadata !176, null}
!389 = metadata !{i32 252, i32 2, metadata !176, null}
!390 = metadata !{i32 253, i32 2, metadata !176, null}
!391 = metadata !{i32 254, i32 2, metadata !176, null}
!392 = metadata !{i32 255, i32 2, metadata !176, null}
!393 = metadata !{i32 256, i32 2, metadata !176, null}
!394 = metadata !{i32 258, i32 2, metadata !176, null}
!395 = metadata !{i32 260, i32 2, metadata !176, null}
!396 = metadata !{i32 261, i32 2, metadata !176, null}
!397 = metadata !{i32 262, i32 2, metadata !176, null}
!398 = metadata !{i32 266, i32 2, metadata !176, null}
!399 = metadata !{i32 272, i32 2, metadata !176, null}
!400 = metadata !{i32 281, i32 2, metadata !176, null}
!401 = metadata !{i32 282, i32 2, metadata !176, null}
!402 = metadata !{i32 286, i32 2, metadata !176, null}
!403 = metadata !{i32 287, i32 7, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !176, i32 287, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!405 = metadata !{i32 287, i32 7, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !407, i32 287, i32 7, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!407 = metadata !{i32 786443, metadata !1, metadata !404, i32 287, i32 7, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!408 = metadata !{i32 289, i32 3, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !404, i32 288, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!410 = metadata !{i32 290, i32 2, metadata !409, null}
!411 = metadata !{i32 287, i32 38, metadata !404, null}
!412 = metadata !{i32 297, i32 11, metadata !176, null}
!413 = metadata !{i32 298, i32 6, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !176, i32 298, i32 6, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!415 = metadata !{i32 300, i32 5, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !414, i32 299, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!417 = metadata !{i32 301, i32 3, metadata !416, null}
!418 = metadata !{i32 303, i32 11, metadata !176, null}
!419 = metadata !{i32 304, i32 6, metadata !420, null}
!420 = metadata !{i32 786443, metadata !1, metadata !176, i32 304, i32 6, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!421 = metadata !{i32 306, i32 3, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !420, i32 305, i32 2, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!423 = metadata !{i32 307, i32 3, metadata !422, null}
!424 = metadata !{i32 309, i32 11, metadata !176, null}
!425 = metadata !{i32 310, i32 6, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !176, i32 310, i32 6, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!427 = metadata !{i32 312, i32 3, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !426, i32 311, i32 2, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!429 = metadata !{i32 313, i32 3, metadata !428, null}
!430 = metadata !{i32 315, i32 11, metadata !176, null}
!431 = metadata !{i32 316, i32 6, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !176, i32 316, i32 6, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!433 = metadata !{i32 318, i32 3, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !432, i32 317, i32 2, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!435 = metadata !{i32 319, i32 3, metadata !434, null}
!436 = metadata !{i32 322, i32 2, metadata !176, null}
!437 = metadata !{i32 324, i32 2, metadata !176, null}
!438 = metadata !{i32 325, i32 1, metadata !176, null}
!439 = metadata !{i32 786689, metadata !177, metadata !"dispPtr", metadata !11, i32 16777564, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dispPtr] [line 348]
!440 = metadata !{i32 348, i32 36, metadata !177, null}
!441 = metadata !{i32 786689, metadata !177, metadata !"vdma", metadata !11, i32 33554780, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vdma] [line 348]
!442 = metadata !{i32 348, i32 55, metadata !177, null}
!443 = metadata !{i32 786689, metadata !177, metadata !"vtcId", metadata !11, i32 50331996, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtcId] [line 348]
!444 = metadata !{i32 348, i32 65, metadata !177, null}
!445 = metadata !{i32 786689, metadata !177, metadata !"vtcVirtAddr", metadata !11, i32 67109212, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtcVirtAddr] [line 348]
!446 = metadata !{i32 348, i32 75, metadata !177, null}
!447 = metadata !{i32 786689, metadata !177, metadata !"dynVirtClkAddr", metadata !11, i32 83886428, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dynVirtClkAddr] [line 348]
!448 = metadata !{i32 348, i32 92, metadata !177, null}
!449 = metadata !{i32 786689, metadata !177, metadata !"framePtr", metadata !11, i32 100663644, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [framePtr] [line 348]
!450 = metadata !{i32 348, i32 112, metadata !177, null}
!451 = metadata !{i32 786689, metadata !177, metadata !"stride", metadata !11, i32 117440860, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stride] [line 348]
!452 = metadata !{i32 348, i32 146, metadata !177, null}
!453 = metadata !{i32 786688, metadata !177, metadata !"Status", metadata !11, i32 350, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 350]
!454 = metadata !{i32 350, i32 6, metadata !177, null}
!455 = metadata !{i32 786688, metadata !177, metadata !"i", metadata !11, i32 351, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 351]
!456 = metadata !{i32 351, i32 6, metadata !177, null}
!457 = metadata !{i32 786688, metadata !177, metadata !"vtcConfig", metadata !11, i32 352, metadata !458, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtcConfig] [line 352]
!458 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc_Config]
!459 = metadata !{i32 352, i32 15, metadata !177, null}
!460 = metadata !{i32 786688, metadata !177, metadata !"clkReg", metadata !11, i32 353, metadata !282, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clkReg] [line 353]
!461 = metadata !{i32 353, i32 12, metadata !177, null}
!462 = metadata !{i32 786688, metadata !177, metadata !"clkMode", metadata !11, i32 354, metadata !294, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clkMode] [line 354]
!463 = metadata !{i32 354, i32 10, metadata !177, null}
!464 = metadata !{i32 359, i32 2, metadata !177, null}
!465 = metadata !{i32 360, i32 2, metadata !177, null}
!466 = metadata !{i32 361, i32 7, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !177, i32 361, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!468 = metadata !{i32 361, i32 7, metadata !469, null}
!469 = metadata !{i32 786443, metadata !1, metadata !470, i32 361, i32 7, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!470 = metadata !{i32 786443, metadata !1, metadata !467, i32 361, i32 7, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!471 = metadata !{i32 363, i32 3, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !467, i32 362, i32 2, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!473 = metadata !{i32 364, i32 2, metadata !472, null}
!474 = metadata !{i32 361, i32 38, metadata !467, null}
!475 = metadata !{i32 365, i32 2, metadata !177, null}
!476 = metadata !{i32 366, i32 2, metadata !177, null}
!477 = metadata !{i32 369, i32 2, metadata !177, null}
!478 = metadata !{i32 373, i32 2, metadata !177, null}
!479 = metadata !{i32 379, i32 2, metadata !177, null}
!480 = metadata !{i32 385, i32 7, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !177, i32 385, i32 6, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!482 = metadata !{i32 387, i32 3, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !481, i32 386, i32 2, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!484 = metadata !{i32 388, i32 3, metadata !483, null}
!485 = metadata !{i32 390, i32 2, metadata !177, null}
!486 = metadata !{i32 395, i32 2, metadata !177, null}
!487 = metadata !{i32 400, i32 14, metadata !177, null}
!488 = metadata !{i32 402, i32 6, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !177, i32 402, i32 6, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!490 = metadata !{i32 403, i32 3, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !489, i32 402, i32 25, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!492 = metadata !{i32 406, i32 11, metadata !177, null}
!493 = metadata !{i32 408, i32 6, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !177, i32 408, i32 6, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!495 = metadata !{i32 409, i32 3, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !494, i32 408, i32 31, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!497 = metadata !{i32 412, i32 2, metadata !177, null}
!498 = metadata !{i32 417, i32 2, metadata !177, null}
!499 = metadata !{i32 418, i32 2, metadata !177, null}
!500 = metadata !{i32 419, i32 2, metadata !177, null}
!501 = metadata !{i32 420, i32 2, metadata !177, null}
!502 = metadata !{i32 421, i32 2, metadata !177, null}
!503 = metadata !{i32 423, i32 2, metadata !177, null}
!504 = metadata !{i32 424, i32 1, metadata !177, null}
!505 = metadata !{i32 786689, metadata !181, metadata !"dispPtr", metadata !11, i32 16777660, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dispPtr] [line 444]
!506 = metadata !{i32 444, i32 33, metadata !181, null}
!507 = metadata !{i32 786689, metadata !181, metadata !"newMode", metadata !11, i32 33554876, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newMode] [line 444]
!508 = metadata !{i32 444, i32 59, metadata !181, null}
!509 = metadata !{i32 786688, metadata !181, metadata !"Status", metadata !11, i32 446, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 446]
!510 = metadata !{i32 446, i32 6, metadata !181, null}
!511 = metadata !{i32 451, i32 6, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !181, i32 451, i32 6, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!513 = metadata !{i32 453, i32 12, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !512, i32 452, i32 2, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!515 = metadata !{i32 454, i32 7, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !514, i32 454, i32 7, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!517 = metadata !{i32 456, i32 4, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !516, i32 455, i32 3, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!519 = metadata !{i32 457, i32 4, metadata !518, null}
!520 = metadata !{i32 459, i32 2, metadata !514, null}
!521 = metadata !{i32 461, i32 2, metadata !181, null}
!522 = metadata !{i32 463, i32 2, metadata !181, null}
!523 = metadata !{i32 464, i32 1, metadata !181, null}
!524 = metadata !{i32 786689, metadata !186, metadata !"dispPtr", metadata !11, i32 16777700, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dispPtr] [line 484]
!525 = metadata !{i32 484, i32 37, metadata !186, null}
!526 = metadata !{i32 786689, metadata !186, metadata !"frameIndex", metadata !11, i32 33554916, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frameIndex] [line 484]
!527 = metadata !{i32 484, i32 50, metadata !186, null}
!528 = metadata !{i32 786688, metadata !186, metadata !"Status", metadata !11, i32 486, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 486]
!529 = metadata !{i32 486, i32 6, metadata !186, null}
!530 = metadata !{i32 488, i32 2, metadata !186, null}
!531 = metadata !{i32 493, i32 6, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !186, i32 493, i32 6, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!533 = metadata !{i32 495, i32 12, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !532, i32 494, i32 2, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!535 = metadata !{i32 496, i32 7, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !534, i32 496, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!537 = metadata !{i32 498, i32 4, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !536, i32 497, i32 3, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/display_ctrl/display_ctrl.c]
!539 = metadata !{i32 499, i32 4, metadata !538, null}
!540 = metadata !{i32 501, i32 2, metadata !534, null}
!541 = metadata !{i32 503, i32 2, metadata !186, null}
!542 = metadata !{i32 504, i32 1, metadata !186, null}
