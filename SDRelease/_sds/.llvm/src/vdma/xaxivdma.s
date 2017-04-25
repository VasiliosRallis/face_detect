; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XAxiVdma_Channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], [32 x [8 x i32]], i32, i32, i32, [20 x i8] }
%struct.XAxiVdma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.XAxiVdma_ChannelCallBack, %struct.XAxiVdma_ChannelCallBack, [20 x i8], %struct.XAxiVdma_Channel, %struct.XAxiVdma_Channel, i32, [28 x i8] }
%struct.XAxiVdma_ChannelCallBack = type { void (i8*, i32)*, i8*, void (i8*, i32)*, i8* }
%struct.XAxiVdma_Config = type { i16, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.XAxiVdma_DmaSetup = type { i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32 }
%struct.XAxiVdma_ChannelSetup = type { i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32 }
%struct.XAxiVdma_FrameCounter = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid direction %x\0D\0A\00", align 1
@Xil_AssertStatus = external global i32
@.str1 = private unnamed_addr constant [57 x i8] c"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"Read Channel Buffer Threshold %d bytes\0A\0D\00", align 1
@.str3 = private unnamed_addr constant [31 x i8] c"Read channel reset failed %x\0A\0D\00", align 1
@.str4 = private unnamed_addr constant [42 x i8] c"Write Channel Buffer Threshold %d bytes\0A\0D\00", align 1
@.str5 = private unnamed_addr constant [32 x i8] c"Write channel reset failed %x\0A\0D\00", align 1
@.str6 = private unnamed_addr constant [33 x i8] c"Threshold Register is disabled\0A\0D\00", align 1
@.str7 = private unnamed_addr constant [34 x i8] c"Line Buffer Threshold set to %x\0A\0D\00", align 1
@.str8 = private unnamed_addr constant [32 x i8] c"Invalid Line Buffer Threshold\0A\0D\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"Failed to set Threshold\0A\0D\00", align 1
@.str10 = private unnamed_addr constant [47 x i8] c"This bit is not valid for this configuration\0A\0D\00", align 1
@.str11 = private unnamed_addr constant [19 x i8] c"Invalid argument\0A\0D\00", align 1
@.str12 = private unnamed_addr constant [30 x i8] c"Invalid frame to park on %d\0D\0A\00", align 1
@.str13 = private unnamed_addr constant [29 x i8] c"Failed to start channel %x\0D\0A\00", align 1
@.str14 = private unnamed_addr constant [52 x i8] c"Setting read channel frame counter failed with %d\0D\0A\00", align 1
@.str15 = private unnamed_addr constant [53 x i8] c"Setting write channel frame counter failed with %d\0D\0A\00", align 1
@.str16 = private unnamed_addr constant [47 x i8] c"Cannot set frame store... channel is running\0D\0A\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"Frame Store Register is disabled\0A\0D\00", align 1

; Function Attrs: nounwind
define %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !311), !dbg !312
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !313), !dbg !314
  %4 = load i16* %3, align 2, !dbg !315
  %5 = zext i16 %4 to i32, !dbg !315
  %6 = icmp eq i32 %5, 2, !dbg !315
  br i1 %6, label %7, label %10, !dbg !315

; <label>:7                                       ; preds = %0
  %8 = load %struct.XAxiVdma** %2, align 4, !dbg !317
  %9 = getelementptr inbounds %struct.XAxiVdma* %8, i32 0, i32 14, !dbg !317
  store %struct.XAxiVdma_Channel* %9, %struct.XAxiVdma_Channel** %1, !dbg !317
  br label %21, !dbg !317

; <label>:10                                      ; preds = %0
  %11 = load i16* %3, align 2, !dbg !319
  %12 = zext i16 %11 to i32, !dbg !319
  %13 = icmp eq i32 %12, 1, !dbg !319
  br i1 %13, label %14, label %17, !dbg !319

; <label>:14                                      ; preds = %10
  %15 = load %struct.XAxiVdma** %2, align 4, !dbg !321
  %16 = getelementptr inbounds %struct.XAxiVdma* %15, i32 0, i32 15, !dbg !321
  store %struct.XAxiVdma_Channel* %16, %struct.XAxiVdma_Channel** %1, !dbg !321
  br label %21, !dbg !321

; <label>:17                                      ; preds = %10
  %18 = load i16* %3, align 2, !dbg !323
  %19 = zext i16 %18 to i32, !dbg !323
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0), i32 %19), !dbg !323
  store %struct.XAxiVdma_Channel* null, %struct.XAxiVdma_Channel** %1, !dbg !325
  br label %21, !dbg !325

; <label>:21                                      ; preds = %17, %14, %7
  %22 = load %struct.XAxiVdma_Channel** %1, !dbg !326
  ret %struct.XAxiVdma_Channel* %22, !dbg !326
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_CfgInitialize(%struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma_Config* %CfgPtr, i32 %EffectiveAddr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca %struct.XAxiVdma_Config*, align 4
  %4 = alloca i32, align 4
  %RdChannel = alloca %struct.XAxiVdma_Channel*, align 4
  %WrChannel = alloca %struct.XAxiVdma_Channel*, align 4
  %Polls = alloca i32, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !327), !dbg !328
  store %struct.XAxiVdma_Config* %CfgPtr, %struct.XAxiVdma_Config** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Config** %3}, metadata !329), !dbg !330
  store i32 %EffectiveAddr, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !331), !dbg !332
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %RdChannel}, metadata !333), !dbg !334
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %WrChannel}, metadata !335), !dbg !336
  call void @llvm.dbg.declare(metadata !{i32* %Polls}, metadata !337), !dbg !338
  %5 = load %struct.XAxiVdma** %2, align 4, !dbg !339
  %6 = icmp ne %struct.XAxiVdma* %5, null, !dbg !339
  br i1 %6, label %7, label %8, !dbg !339

; <label>:7                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !342
  br label %9, !dbg !342

; <label>:8                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0), i32 151), !dbg !345
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !345
  store i32 0, i32* %1, !dbg !345
  br label %415, !dbg !345

; <label>:9                                       ; preds = %7
  %10 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !348
  %11 = icmp ne %struct.XAxiVdma_Config* %10, null, !dbg !348
  br i1 %11, label %12, label %13, !dbg !348

; <label>:12                                      ; preds = %9
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !351
  br label %14, !dbg !351

; <label>:13                                      ; preds = %9
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0), i32 152), !dbg !354
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !354
  store i32 0, i32* %1, !dbg !354
  br label %415, !dbg !354

; <label>:14                                      ; preds = %12
  %15 = load %struct.XAxiVdma** %2, align 4, !dbg !357
  %16 = getelementptr inbounds %struct.XAxiVdma* %15, i32 0, i32 11, !dbg !357
  %17 = getelementptr inbounds %struct.XAxiVdma_ChannelCallBack* %16, i32 0, i32 0, !dbg !357
  store void (i8*, i32)* null, void (i8*, i32)** %17, align 4, !dbg !357
  %18 = load %struct.XAxiVdma** %2, align 4, !dbg !358
  %19 = getelementptr inbounds %struct.XAxiVdma* %18, i32 0, i32 11, !dbg !358
  %20 = getelementptr inbounds %struct.XAxiVdma_ChannelCallBack* %19, i32 0, i32 2, !dbg !358
  store void (i8*, i32)* null, void (i8*, i32)** %20, align 4, !dbg !358
  %21 = load %struct.XAxiVdma** %2, align 4, !dbg !359
  %22 = getelementptr inbounds %struct.XAxiVdma* %21, i32 0, i32 12, !dbg !359
  %23 = getelementptr inbounds %struct.XAxiVdma_ChannelCallBack* %22, i32 0, i32 0, !dbg !359
  store void (i8*, i32)* null, void (i8*, i32)** %23, align 4, !dbg !359
  %24 = load %struct.XAxiVdma** %2, align 4, !dbg !360
  %25 = getelementptr inbounds %struct.XAxiVdma* %24, i32 0, i32 12, !dbg !360
  %26 = getelementptr inbounds %struct.XAxiVdma_ChannelCallBack* %25, i32 0, i32 2, !dbg !360
  store void (i8*, i32)* null, void (i8*, i32)** %26, align 4, !dbg !360
  %27 = load i32* %4, align 4, !dbg !361
  %28 = load %struct.XAxiVdma** %2, align 4, !dbg !361
  %29 = getelementptr inbounds %struct.XAxiVdma* %28, i32 0, i32 0, !dbg !361
  store i32 %27, i32* %29, align 4, !dbg !361
  %30 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !362
  %31 = getelementptr inbounds %struct.XAxiVdma_Config* %30, i32 0, i32 2, !dbg !362
  %32 = load i16* %31, align 2, !dbg !362
  %33 = zext i16 %32 to i32, !dbg !362
  %34 = load %struct.XAxiVdma** %2, align 4, !dbg !362
  %35 = getelementptr inbounds %struct.XAxiVdma* %34, i32 0, i32 3, !dbg !362
  store i32 %33, i32* %35, align 4, !dbg !362
  %36 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !363
  %37 = getelementptr inbounds %struct.XAxiVdma_Config* %36, i32 0, i32 3, !dbg !363
  %38 = load i32* %37, align 4, !dbg !363
  %39 = load %struct.XAxiVdma** %2, align 4, !dbg !363
  %40 = getelementptr inbounds %struct.XAxiVdma* %39, i32 0, i32 4, !dbg !363
  store i32 %38, i32* %40, align 4, !dbg !363
  %41 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !364
  %42 = getelementptr inbounds %struct.XAxiVdma_Config* %41, i32 0, i32 6, !dbg !364
  %43 = load i32* %42, align 4, !dbg !364
  %44 = load %struct.XAxiVdma** %2, align 4, !dbg !364
  %45 = getelementptr inbounds %struct.XAxiVdma* %44, i32 0, i32 6, !dbg !364
  store i32 %43, i32* %45, align 4, !dbg !364
  %46 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !365
  %47 = getelementptr inbounds %struct.XAxiVdma_Config* %46, i32 0, i32 11, !dbg !365
  %48 = load i32* %47, align 4, !dbg !365
  %49 = load %struct.XAxiVdma** %2, align 4, !dbg !365
  %50 = getelementptr inbounds %struct.XAxiVdma* %49, i32 0, i32 9, !dbg !365
  store i32 %48, i32* %50, align 4, !dbg !365
  %51 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !366
  %52 = getelementptr inbounds %struct.XAxiVdma_Config* %51, i32 0, i32 17, !dbg !366
  %53 = load i32* %52, align 4, !dbg !366
  %54 = load %struct.XAxiVdma** %2, align 4, !dbg !366
  %55 = getelementptr inbounds %struct.XAxiVdma* %54, i32 0, i32 10, !dbg !366
  store i32 %53, i32* %55, align 4, !dbg !366
  %56 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !367
  %57 = getelementptr inbounds %struct.XAxiVdma_Config* %56, i32 0, i32 30, !dbg !367
  %58 = load i32* %57, align 4, !dbg !367
  %59 = load %struct.XAxiVdma** %2, align 4, !dbg !367
  %60 = getelementptr inbounds %struct.XAxiVdma* %59, i32 0, i32 16, !dbg !367
  store i32 %58, i32* %60, align 4, !dbg !367
  %61 = load %struct.XAxiVdma** %2, align 4, !dbg !368
  %62 = call i32 @XAxiVdma_Major(%struct.XAxiVdma* %61), !dbg !368
  %63 = icmp slt i32 %62, 3, !dbg !368
  br i1 %63, label %64, label %67, !dbg !368

; <label>:64                                      ; preds = %14
  %65 = load %struct.XAxiVdma** %2, align 4, !dbg !370
  %66 = getelementptr inbounds %struct.XAxiVdma* %65, i32 0, i32 1, !dbg !370
  store i32 1, i32* %66, align 4, !dbg !370
  br label %73, !dbg !372

; <label>:67                                      ; preds = %14
  %68 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !373
  %69 = getelementptr inbounds %struct.XAxiVdma_Config* %68, i32 0, i32 9, !dbg !373
  %70 = load i32* %69, align 4, !dbg !373
  %71 = load %struct.XAxiVdma** %2, align 4, !dbg !373
  %72 = getelementptr inbounds %struct.XAxiVdma* %71, i32 0, i32 1, !dbg !373
  store i32 %70, i32* %72, align 4, !dbg !373
  br label %73

; <label>:73                                      ; preds = %67, %64
  %74 = load %struct.XAxiVdma** %2, align 4, !dbg !375
  %75 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %74, i16 zeroext 2), !dbg !375
  store %struct.XAxiVdma_Channel* %75, %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !375
  %76 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !376
  %77 = getelementptr inbounds %struct.XAxiVdma_Channel* %76, i32 0, i32 3, !dbg !376
  store i32 0, i32* %77, align 4, !dbg !376
  %78 = load %struct.XAxiVdma** %2, align 4, !dbg !377
  %79 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %78, i16 zeroext 1), !dbg !377
  store %struct.XAxiVdma_Channel* %79, %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !377
  %80 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !378
  %81 = getelementptr inbounds %struct.XAxiVdma_Channel* %80, i32 0, i32 3, !dbg !378
  store i32 0, i32* %81, align 4, !dbg !378
  %82 = load %struct.XAxiVdma** %2, align 4, !dbg !379
  %83 = getelementptr inbounds %struct.XAxiVdma* %82, i32 0, i32 4, !dbg !379
  %84 = load i32* %83, align 4, !dbg !379
  %85 = icmp ne i32 %84, 0, !dbg !379
  br i1 %85, label %86, label %244, !dbg !379

; <label>:86                                      ; preds = %73
  %87 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !381
  %88 = getelementptr inbounds %struct.XAxiVdma_Channel* %87, i32 0, i32 26, !dbg !381
  store i32 2, i32* %88, align 4, !dbg !381
  %89 = load %struct.XAxiVdma** %2, align 4, !dbg !383
  %90 = getelementptr inbounds %struct.XAxiVdma* %89, i32 0, i32 0, !dbg !383
  %91 = load i32* %90, align 4, !dbg !383
  %92 = add i32 %91, 0, !dbg !383
  %93 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !383
  %94 = getelementptr inbounds %struct.XAxiVdma_Channel* %93, i32 0, i32 0, !dbg !383
  store i32 %92, i32* %94, align 4, !dbg !383
  %95 = load %struct.XAxiVdma** %2, align 4, !dbg !384
  %96 = getelementptr inbounds %struct.XAxiVdma* %95, i32 0, i32 0, !dbg !384
  %97 = load i32* %96, align 4, !dbg !384
  %98 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !384
  %99 = getelementptr inbounds %struct.XAxiVdma_Channel* %98, i32 0, i32 1, !dbg !384
  store i32 %97, i32* %99, align 4, !dbg !384
  %100 = load %struct.XAxiVdma** %2, align 4, !dbg !385
  %101 = getelementptr inbounds %struct.XAxiVdma* %100, i32 0, i32 1, !dbg !385
  %102 = load i32* %101, align 4, !dbg !385
  %103 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !385
  %104 = getelementptr inbounds %struct.XAxiVdma_Channel* %103, i32 0, i32 5, !dbg !385
  store i32 %102, i32* %104, align 4, !dbg !385
  %105 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !386
  %106 = getelementptr inbounds %struct.XAxiVdma_Channel* %105, i32 0, i32 6, !dbg !386
  store i32 1, i32* %106, align 4, !dbg !386
  %107 = load %struct.XAxiVdma** %2, align 4, !dbg !387
  %108 = getelementptr inbounds %struct.XAxiVdma* %107, i32 0, i32 0, !dbg !387
  %109 = load i32* %108, align 4, !dbg !387
  %110 = add i32 %109, 80, !dbg !387
  %111 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !387
  %112 = getelementptr inbounds %struct.XAxiVdma_Channel* %111, i32 0, i32 2, !dbg !387
  store i32 %110, i32* %112, align 4, !dbg !387
  %113 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !388
  %114 = getelementptr inbounds %struct.XAxiVdma_Config* %113, i32 0, i32 2, !dbg !388
  %115 = load i16* %114, align 2, !dbg !388
  %116 = zext i16 %115 to i32, !dbg !388
  %117 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !388
  %118 = getelementptr inbounds %struct.XAxiVdma_Channel* %117, i32 0, i32 11, !dbg !388
  store i32 %116, i32* %118, align 4, !dbg !388
  %119 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !389
  %120 = getelementptr inbounds %struct.XAxiVdma_Config* %119, i32 0, i32 12, !dbg !389
  %121 = load i32* %120, align 4, !dbg !389
  %122 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !389
  %123 = getelementptr inbounds %struct.XAxiVdma_Channel* %122, i32 0, i32 4, !dbg !389
  store i32 %121, i32* %123, align 4, !dbg !389
  %124 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !390
  %125 = getelementptr inbounds %struct.XAxiVdma_Config* %124, i32 0, i32 13, !dbg !390
  %126 = load i32* %125, align 4, !dbg !390
  %127 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !390
  %128 = getelementptr inbounds %struct.XAxiVdma_Channel* %127, i32 0, i32 8, !dbg !390
  store i32 %126, i32* %128, align 4, !dbg !390
  %129 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !391
  %130 = getelementptr inbounds %struct.XAxiVdma_Channel* %129, i32 0, i32 8, !dbg !391
  %131 = load i32* %130, align 4, !dbg !391
  %132 = icmp sgt i32 %131, 0, !dbg !391
  br i1 %132, label %133, label %145, !dbg !391

; <label>:133                                     ; preds = %86
  %134 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !393
  %135 = getelementptr inbounds %struct.XAxiVdma_Channel* %134, i32 0, i32 0, !dbg !393
  %136 = load i32* %135, align 4, !dbg !393
  %137 = add i32 %136, 28, !dbg !393
  %138 = call i32 @Xil_In32(i32 %137), !dbg !393
  %139 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !393
  %140 = getelementptr inbounds %struct.XAxiVdma_Channel* %139, i32 0, i32 9, !dbg !393
  store i32 %138, i32* %140, align 4, !dbg !393
  %141 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !395
  %142 = getelementptr inbounds %struct.XAxiVdma_Channel* %141, i32 0, i32 9, !dbg !395
  %143 = load i32* %142, align 4, !dbg !395
  %144 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str2, i32 0, i32 0), i32 %143), !dbg !395
  br label %145, !dbg !396

; <label>:145                                     ; preds = %133, %86
  %146 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !397
  %147 = getelementptr inbounds %struct.XAxiVdma_Config* %146, i32 0, i32 4, !dbg !397
  %148 = load i32* %147, align 4, !dbg !397
  %149 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !397
  %150 = getelementptr inbounds %struct.XAxiVdma_Channel* %149, i32 0, i32 7, !dbg !397
  store i32 %148, i32* %150, align 4, !dbg !397
  %151 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !398
  %152 = getelementptr inbounds %struct.XAxiVdma_Config* %151, i32 0, i32 5, !dbg !398
  %153 = load i32* %152, align 4, !dbg !398
  %154 = ashr i32 %153, 3, !dbg !398
  %155 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !398
  %156 = getelementptr inbounds %struct.XAxiVdma_Channel* %155, i32 0, i32 10, !dbg !398
  store i32 %154, i32* %156, align 4, !dbg !398
  %157 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !399
  %158 = getelementptr inbounds %struct.XAxiVdma_Config* %157, i32 0, i32 19, !dbg !399
  %159 = load i32* %158, align 4, !dbg !399
  %160 = ashr i32 %159, 3, !dbg !399
  %161 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !399
  %162 = getelementptr inbounds %struct.XAxiVdma_Channel* %161, i32 0, i32 21, !dbg !399
  store i32 %160, i32* %162, align 4, !dbg !399
  %163 = load %struct.XAxiVdma** %2, align 4, !dbg !400
  %164 = getelementptr inbounds %struct.XAxiVdma* %163, i32 0, i32 16, !dbg !400
  %165 = load i32* %164, align 4, !dbg !400
  %166 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !400
  %167 = getelementptr inbounds %struct.XAxiVdma_Channel* %166, i32 0, i32 25, !dbg !400
  store i32 %165, i32* %167, align 4, !dbg !400
  %168 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !401
  %169 = getelementptr inbounds %struct.XAxiVdma_Config* %168, i32 0, i32 15, !dbg !401
  %170 = load i32* %169, align 4, !dbg !401
  %171 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !401
  %172 = getelementptr inbounds %struct.XAxiVdma_Channel* %171, i32 0, i32 19, !dbg !401
  store i32 %170, i32* %172, align 4, !dbg !401
  %173 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !402
  %174 = getelementptr inbounds %struct.XAxiVdma_Config* %173, i32 0, i32 29, !dbg !402
  %175 = load i32* %174, align 4, !dbg !402
  %176 = icmp ne i32 %175, 0, !dbg !402
  br i1 %176, label %218, label %177, !dbg !402

; <label>:177                                     ; preds = %145
  %178 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !404
  %179 = getelementptr inbounds %struct.XAxiVdma_Config* %178, i32 0, i32 21, !dbg !404
  %180 = load i32* %179, align 4, !dbg !404
  %181 = icmp ne i32 %180, 0, !dbg !404
  br i1 %181, label %182, label %187, !dbg !404

; <label>:182                                     ; preds = %177
  %183 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !407
  %184 = getelementptr inbounds %struct.XAxiVdma_Channel* %183, i32 0, i32 24, !dbg !407
  %185 = load i32* %184, align 4, !dbg !407
  %186 = or i32 %185, 1, !dbg !407
  store i32 %186, i32* %184, align 4, !dbg !407
  br label %187, !dbg !409

; <label>:187                                     ; preds = %182, %177
  %188 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !410
  %189 = getelementptr inbounds %struct.XAxiVdma_Config* %188, i32 0, i32 22, !dbg !410
  %190 = load i32* %189, align 4, !dbg !410
  %191 = icmp ne i32 %190, 0, !dbg !410
  br i1 %191, label %192, label %197, !dbg !410

; <label>:192                                     ; preds = %187
  %193 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !412
  %194 = getelementptr inbounds %struct.XAxiVdma_Channel* %193, i32 0, i32 24, !dbg !412
  %195 = load i32* %194, align 4, !dbg !412
  %196 = or i32 %195, 2, !dbg !412
  store i32 %196, i32* %194, align 4, !dbg !412
  br label %197, !dbg !414

; <label>:197                                     ; preds = %192, %187
  %198 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !415
  %199 = getelementptr inbounds %struct.XAxiVdma_Config* %198, i32 0, i32 23, !dbg !415
  %200 = load i32* %199, align 4, !dbg !415
  %201 = icmp ne i32 %200, 0, !dbg !415
  br i1 %201, label %202, label %207, !dbg !415

; <label>:202                                     ; preds = %197
  %203 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !417
  %204 = getelementptr inbounds %struct.XAxiVdma_Channel* %203, i32 0, i32 24, !dbg !417
  %205 = load i32* %204, align 4, !dbg !417
  %206 = or i32 %205, 8, !dbg !417
  store i32 %206, i32* %204, align 4, !dbg !417
  br label %207, !dbg !419

; <label>:207                                     ; preds = %202, %197
  %208 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !420
  %209 = getelementptr inbounds %struct.XAxiVdma_Config* %208, i32 0, i32 24, !dbg !420
  %210 = load i32* %209, align 4, !dbg !420
  %211 = icmp ne i32 %210, 0, !dbg !420
  br i1 %211, label %212, label %217, !dbg !420

; <label>:212                                     ; preds = %207
  %213 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !422
  %214 = getelementptr inbounds %struct.XAxiVdma_Channel* %213, i32 0, i32 24, !dbg !422
  %215 = load i32* %214, align 4, !dbg !422
  %216 = or i32 %215, 4, !dbg !422
  store i32 %216, i32* %214, align 4, !dbg !422
  br label %217, !dbg !424

; <label>:217                                     ; preds = %212, %207
  br label %221, !dbg !425

; <label>:218                                     ; preds = %145
  %219 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !426
  %220 = getelementptr inbounds %struct.XAxiVdma_Channel* %219, i32 0, i32 24, !dbg !426
  store i32 15, i32* %220, align 4, !dbg !426
  br label %221

; <label>:221                                     ; preds = %218, %217
  %222 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !428
  call void @XAxiVdma_ChannelInit(%struct.XAxiVdma_Channel* %222), !dbg !428
  %223 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !429
  call void @XAxiVdma_ChannelReset(%struct.XAxiVdma_Channel* %223), !dbg !429
  store i32 100000, i32* %Polls, align 4, !dbg !430
  br label %224, !dbg !431

; <label>:224                                     ; preds = %233, %221
  %225 = load i32* %Polls, align 4, !dbg !432
  %226 = icmp ne i32 %225, 0, !dbg !432
  br i1 %226, label %227, label %231, !dbg !432

; <label>:227                                     ; preds = %224
  %228 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !434
  %229 = call i32 @XAxiVdma_ChannelResetNotDone(%struct.XAxiVdma_Channel* %228), !dbg !434
  %230 = icmp ne i32 %229, 0, !dbg !434
  br label %231

; <label>:231                                     ; preds = %227, %224
  %232 = phi i1 [ false, %224 ], [ %230, %227 ]
  br i1 %232, label %233, label %236, !dbg !436

; <label>:233                                     ; preds = %231
  %234 = load i32* %Polls, align 4, !dbg !438
  %235 = sub nsw i32 %234, 1, !dbg !438
  store i32 %235, i32* %Polls, align 4, !dbg !438
  br label %224, !dbg !440

; <label>:236                                     ; preds = %231
  %237 = load i32* %Polls, align 4, !dbg !441
  %238 = icmp ne i32 %237, 0, !dbg !441
  br i1 %238, label %243, label %239, !dbg !441

; <label>:239                                     ; preds = %236
  %240 = load %struct.XAxiVdma_Channel** %RdChannel, align 4, !dbg !443
  %241 = call i32 @XAxiVdma_ChannelGetStatus(%struct.XAxiVdma_Channel* %240), !dbg !443
  %242 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str3, i32 0, i32 0), i32 %241), !dbg !445
  store i32 1, i32* %1, !dbg !446
  br label %415, !dbg !446

; <label>:243                                     ; preds = %236
  br label %244, !dbg !447

; <label>:244                                     ; preds = %243, %73
  %245 = load %struct.XAxiVdma** %2, align 4, !dbg !448
  %246 = getelementptr inbounds %struct.XAxiVdma* %245, i32 0, i32 6, !dbg !448
  %247 = load i32* %246, align 4, !dbg !448
  %248 = icmp ne i32 %247, 0, !dbg !448
  br i1 %248, label %249, label %412, !dbg !448

; <label>:249                                     ; preds = %244
  %250 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !450
  %251 = getelementptr inbounds %struct.XAxiVdma_Channel* %250, i32 0, i32 26, !dbg !450
  store i32 1, i32* %251, align 4, !dbg !450
  %252 = load %struct.XAxiVdma** %2, align 4, !dbg !452
  %253 = getelementptr inbounds %struct.XAxiVdma* %252, i32 0, i32 0, !dbg !452
  %254 = load i32* %253, align 4, !dbg !452
  %255 = add i32 %254, 48, !dbg !452
  %256 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !452
  %257 = getelementptr inbounds %struct.XAxiVdma_Channel* %256, i32 0, i32 0, !dbg !452
  store i32 %255, i32* %257, align 4, !dbg !452
  %258 = load %struct.XAxiVdma** %2, align 4, !dbg !453
  %259 = getelementptr inbounds %struct.XAxiVdma* %258, i32 0, i32 0, !dbg !453
  %260 = load i32* %259, align 4, !dbg !453
  %261 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !453
  %262 = getelementptr inbounds %struct.XAxiVdma_Channel* %261, i32 0, i32 1, !dbg !453
  store i32 %260, i32* %262, align 4, !dbg !453
  %263 = load %struct.XAxiVdma** %2, align 4, !dbg !454
  %264 = getelementptr inbounds %struct.XAxiVdma* %263, i32 0, i32 1, !dbg !454
  %265 = load i32* %264, align 4, !dbg !454
  %266 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !454
  %267 = getelementptr inbounds %struct.XAxiVdma_Channel* %266, i32 0, i32 5, !dbg !454
  store i32 %265, i32* %267, align 4, !dbg !454
  %268 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !455
  %269 = getelementptr inbounds %struct.XAxiVdma_Channel* %268, i32 0, i32 6, !dbg !455
  store i32 0, i32* %269, align 4, !dbg !455
  %270 = load %struct.XAxiVdma** %2, align 4, !dbg !456
  %271 = getelementptr inbounds %struct.XAxiVdma* %270, i32 0, i32 0, !dbg !456
  %272 = load i32* %271, align 4, !dbg !456
  %273 = add i32 %272, 160, !dbg !456
  %274 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !456
  %275 = getelementptr inbounds %struct.XAxiVdma_Channel* %274, i32 0, i32 2, !dbg !456
  store i32 %273, i32* %275, align 4, !dbg !456
  %276 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !457
  %277 = getelementptr inbounds %struct.XAxiVdma_Config* %276, i32 0, i32 2, !dbg !457
  %278 = load i16* %277, align 2, !dbg !457
  %279 = zext i16 %278 to i32, !dbg !457
  %280 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !457
  %281 = getelementptr inbounds %struct.XAxiVdma_Channel* %280, i32 0, i32 11, !dbg !457
  store i32 %279, i32* %281, align 4, !dbg !457
  %282 = load %struct.XAxiVdma** %2, align 4, !dbg !458
  %283 = getelementptr inbounds %struct.XAxiVdma* %282, i32 0, i32 16, !dbg !458
  %284 = load i32* %283, align 4, !dbg !458
  %285 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !458
  %286 = getelementptr inbounds %struct.XAxiVdma_Channel* %285, i32 0, i32 25, !dbg !458
  store i32 %284, i32* %286, align 4, !dbg !458
  %287 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !459
  %288 = getelementptr inbounds %struct.XAxiVdma_Config* %287, i32 0, i32 12, !dbg !459
  %289 = load i32* %288, align 4, !dbg !459
  %290 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !459
  %291 = getelementptr inbounds %struct.XAxiVdma_Channel* %290, i32 0, i32 4, !dbg !459
  store i32 %289, i32* %291, align 4, !dbg !459
  %292 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !460
  %293 = getelementptr inbounds %struct.XAxiVdma_Config* %292, i32 0, i32 14, !dbg !460
  %294 = load i32* %293, align 4, !dbg !460
  %295 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !460
  %296 = getelementptr inbounds %struct.XAxiVdma_Channel* %295, i32 0, i32 8, !dbg !460
  store i32 %294, i32* %296, align 4, !dbg !460
  %297 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !461
  %298 = getelementptr inbounds %struct.XAxiVdma_Channel* %297, i32 0, i32 8, !dbg !461
  %299 = load i32* %298, align 4, !dbg !461
  %300 = icmp sgt i32 %299, 0, !dbg !461
  br i1 %300, label %301, label %313, !dbg !461

; <label>:301                                     ; preds = %249
  %302 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !463
  %303 = getelementptr inbounds %struct.XAxiVdma_Channel* %302, i32 0, i32 0, !dbg !463
  %304 = load i32* %303, align 4, !dbg !463
  %305 = add i32 %304, 28, !dbg !463
  %306 = call i32 @Xil_In32(i32 %305), !dbg !463
  %307 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !463
  %308 = getelementptr inbounds %struct.XAxiVdma_Channel* %307, i32 0, i32 9, !dbg !463
  store i32 %306, i32* %308, align 4, !dbg !463
  %309 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !465
  %310 = getelementptr inbounds %struct.XAxiVdma_Channel* %309, i32 0, i32 9, !dbg !465
  %311 = load i32* %310, align 4, !dbg !465
  %312 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str4, i32 0, i32 0), i32 %311), !dbg !465
  br label %313, !dbg !466

; <label>:313                                     ; preds = %301, %249
  %314 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !467
  %315 = getelementptr inbounds %struct.XAxiVdma_Config* %314, i32 0, i32 7, !dbg !467
  %316 = load i32* %315, align 4, !dbg !467
  %317 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !467
  %318 = getelementptr inbounds %struct.XAxiVdma_Channel* %317, i32 0, i32 7, !dbg !467
  store i32 %316, i32* %318, align 4, !dbg !467
  %319 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !468
  %320 = getelementptr inbounds %struct.XAxiVdma_Config* %319, i32 0, i32 8, !dbg !468
  %321 = load i32* %320, align 4, !dbg !468
  %322 = ashr i32 %321, 3, !dbg !468
  %323 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !468
  %324 = getelementptr inbounds %struct.XAxiVdma_Channel* %323, i32 0, i32 10, !dbg !468
  store i32 %322, i32* %324, align 4, !dbg !468
  %325 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !469
  %326 = getelementptr inbounds %struct.XAxiVdma_Config* %325, i32 0, i32 20, !dbg !469
  %327 = load i32* %326, align 4, !dbg !469
  %328 = ashr i32 %327, 3, !dbg !469
  %329 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !469
  %330 = getelementptr inbounds %struct.XAxiVdma_Channel* %329, i32 0, i32 21, !dbg !469
  store i32 %328, i32* %330, align 4, !dbg !469
  %331 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !470
  %332 = getelementptr inbounds %struct.XAxiVdma_Config* %331, i32 0, i32 16, !dbg !470
  %333 = load i32* %332, align 4, !dbg !470
  %334 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !470
  %335 = getelementptr inbounds %struct.XAxiVdma_Channel* %334, i32 0, i32 19, !dbg !470
  store i32 %333, i32* %335, align 4, !dbg !470
  %336 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !471
  %337 = getelementptr inbounds %struct.XAxiVdma_Config* %336, i32 0, i32 18, !dbg !471
  %338 = load i32* %337, align 4, !dbg !471
  %339 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !471
  %340 = getelementptr inbounds %struct.XAxiVdma_Channel* %339, i32 0, i32 20, !dbg !471
  store i32 %338, i32* %340, align 4, !dbg !471
  %341 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !472
  %342 = getelementptr inbounds %struct.XAxiVdma_Config* %341, i32 0, i32 29, !dbg !472
  %343 = load i32* %342, align 4, !dbg !472
  %344 = icmp ne i32 %343, 0, !dbg !472
  br i1 %344, label %386, label %345, !dbg !472

; <label>:345                                     ; preds = %313
  %346 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !474
  %347 = getelementptr inbounds %struct.XAxiVdma_Config* %346, i32 0, i32 25, !dbg !474
  %348 = load i32* %347, align 4, !dbg !474
  %349 = icmp ne i32 %348, 0, !dbg !474
  br i1 %349, label %350, label %355, !dbg !474

; <label>:350                                     ; preds = %345
  %351 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !477
  %352 = getelementptr inbounds %struct.XAxiVdma_Channel* %351, i32 0, i32 24, !dbg !477
  %353 = load i32* %352, align 4, !dbg !477
  %354 = or i32 %353, 1, !dbg !477
  store i32 %354, i32* %352, align 4, !dbg !477
  br label %355, !dbg !479

; <label>:355                                     ; preds = %350, %345
  %356 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !480
  %357 = getelementptr inbounds %struct.XAxiVdma_Config* %356, i32 0, i32 26, !dbg !480
  %358 = load i32* %357, align 4, !dbg !480
  %359 = icmp ne i32 %358, 0, !dbg !480
  br i1 %359, label %360, label %365, !dbg !480

; <label>:360                                     ; preds = %355
  %361 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !482
  %362 = getelementptr inbounds %struct.XAxiVdma_Channel* %361, i32 0, i32 24, !dbg !482
  %363 = load i32* %362, align 4, !dbg !482
  %364 = or i32 %363, 2, !dbg !482
  store i32 %364, i32* %362, align 4, !dbg !482
  br label %365, !dbg !484

; <label>:365                                     ; preds = %360, %355
  %366 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !485
  %367 = getelementptr inbounds %struct.XAxiVdma_Config* %366, i32 0, i32 27, !dbg !485
  %368 = load i32* %367, align 4, !dbg !485
  %369 = icmp ne i32 %368, 0, !dbg !485
  br i1 %369, label %370, label %375, !dbg !485

; <label>:370                                     ; preds = %365
  %371 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !487
  %372 = getelementptr inbounds %struct.XAxiVdma_Channel* %371, i32 0, i32 24, !dbg !487
  %373 = load i32* %372, align 4, !dbg !487
  %374 = or i32 %373, 8, !dbg !487
  store i32 %374, i32* %372, align 4, !dbg !487
  br label %375, !dbg !489

; <label>:375                                     ; preds = %370, %365
  %376 = load %struct.XAxiVdma_Config** %3, align 4, !dbg !490
  %377 = getelementptr inbounds %struct.XAxiVdma_Config* %376, i32 0, i32 28, !dbg !490
  %378 = load i32* %377, align 4, !dbg !490
  %379 = icmp ne i32 %378, 0, !dbg !490
  br i1 %379, label %380, label %385, !dbg !490

; <label>:380                                     ; preds = %375
  %381 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !492
  %382 = getelementptr inbounds %struct.XAxiVdma_Channel* %381, i32 0, i32 24, !dbg !492
  %383 = load i32* %382, align 4, !dbg !492
  %384 = or i32 %383, 4, !dbg !492
  store i32 %384, i32* %382, align 4, !dbg !492
  br label %385, !dbg !494

; <label>:385                                     ; preds = %380, %375
  br label %389, !dbg !495

; <label>:386                                     ; preds = %313
  %387 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !496
  %388 = getelementptr inbounds %struct.XAxiVdma_Channel* %387, i32 0, i32 24, !dbg !496
  store i32 15, i32* %388, align 4, !dbg !496
  br label %389

; <label>:389                                     ; preds = %386, %385
  %390 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !498
  call void @XAxiVdma_ChannelInit(%struct.XAxiVdma_Channel* %390), !dbg !498
  %391 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !499
  call void @XAxiVdma_ChannelReset(%struct.XAxiVdma_Channel* %391), !dbg !499
  store i32 100000, i32* %Polls, align 4, !dbg !500
  br label %392, !dbg !501

; <label>:392                                     ; preds = %401, %389
  %393 = load i32* %Polls, align 4, !dbg !502
  %394 = icmp ne i32 %393, 0, !dbg !502
  br i1 %394, label %395, label %399, !dbg !502

; <label>:395                                     ; preds = %392
  %396 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !504
  %397 = call i32 @XAxiVdma_ChannelResetNotDone(%struct.XAxiVdma_Channel* %396), !dbg !504
  %398 = icmp ne i32 %397, 0, !dbg !504
  br label %399

; <label>:399                                     ; preds = %395, %392
  %400 = phi i1 [ false, %392 ], [ %398, %395 ]
  br i1 %400, label %401, label %404, !dbg !506

; <label>:401                                     ; preds = %399
  %402 = load i32* %Polls, align 4, !dbg !508
  %403 = sub nsw i32 %402, 1, !dbg !508
  store i32 %403, i32* %Polls, align 4, !dbg !508
  br label %392, !dbg !510

; <label>:404                                     ; preds = %399
  %405 = load i32* %Polls, align 4, !dbg !511
  %406 = icmp ne i32 %405, 0, !dbg !511
  br i1 %406, label %411, label %407, !dbg !511

; <label>:407                                     ; preds = %404
  %408 = load %struct.XAxiVdma_Channel** %WrChannel, align 4, !dbg !513
  %409 = call i32 @XAxiVdma_ChannelGetStatus(%struct.XAxiVdma_Channel* %408), !dbg !513
  %410 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str5, i32 0, i32 0), i32 %409), !dbg !515
  store i32 1, i32* %1, !dbg !516
  br label %415, !dbg !516

; <label>:411                                     ; preds = %404
  br label %412, !dbg !517

; <label>:412                                     ; preds = %411, %244
  %413 = load %struct.XAxiVdma** %2, align 4, !dbg !518
  %414 = getelementptr inbounds %struct.XAxiVdma* %413, i32 0, i32 2, !dbg !518
  store i32 286331153, i32* %414, align 4, !dbg !518
  store i32 0, i32* %1, !dbg !519
  br label %415, !dbg !519

; <label>:415                                     ; preds = %412, %407, %239, %13, %8
  %416 = load i32* %1, !dbg !520
  ret i32 %416, !dbg !520
}

declare void @Xil_Assert(i8*, i32) #2

; Function Attrs: nounwind
define internal i32 @XAxiVdma_Major(%struct.XAxiVdma* %InstancePtr) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  %Reg = alloca i32, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !521), !dbg !522
  call void @llvm.dbg.declare(metadata !{i32* %Reg}, metadata !523), !dbg !524
  %2 = load %struct.XAxiVdma** %1, align 4, !dbg !525
  %3 = getelementptr inbounds %struct.XAxiVdma* %2, i32 0, i32 0, !dbg !525
  %4 = load i32* %3, align 4, !dbg !525
  %5 = add i32 %4, 44, !dbg !525
  %6 = call i32 @Xil_In32(i32 %5), !dbg !525
  store i32 %6, i32* %Reg, align 4, !dbg !525
  %7 = load i32* %Reg, align 4, !dbg !526
  %8 = and i32 %7, -268435456, !dbg !526
  %9 = lshr i32 %8, 28, !dbg !526
  ret i32 %9, !dbg !526
}

declare i32 @Xil_In32(i32) #2

declare void @XAxiVdma_ChannelInit(%struct.XAxiVdma_Channel*) #2

declare void @XAxiVdma_ChannelReset(%struct.XAxiVdma_Channel*) #2

declare i32 @XAxiVdma_ChannelResetNotDone(%struct.XAxiVdma_Channel*) #2

declare i32 @XAxiVdma_ChannelGetStatus(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define void @XAxiVdma_Reset(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  %2 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !527), !dbg !528
  store i16 %Direction, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !529), !dbg !530
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !531), !dbg !532
  %3 = load %struct.XAxiVdma** %1, align 4, !dbg !533
  %4 = load i16* %2, align 2, !dbg !533
  %5 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %3, i16 zeroext %4), !dbg !533
  store %struct.XAxiVdma_Channel* %5, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !533
  %6 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !534
  %7 = icmp ne %struct.XAxiVdma_Channel* %6, null, !dbg !534
  br i1 %7, label %9, label %8, !dbg !534

; <label>:8                                       ; preds = %0
  br label %16, !dbg !536

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !538
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 3, !dbg !538
  %12 = load i32* %11, align 4, !dbg !538
  %13 = icmp ne i32 %12, 0, !dbg !538
  br i1 %13, label %14, label %16, !dbg !538

; <label>:14                                      ; preds = %9
  %15 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !540
  call void @XAxiVdma_ChannelReset(%struct.XAxiVdma_Channel* %15), !dbg !540
  br label %16, !dbg !542

; <label>:16                                      ; preds = %8, %14, %9
  ret void, !dbg !543
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ResetNotDone(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !544), !dbg !545
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !546), !dbg !547
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !548), !dbg !549
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !550
  %5 = load i16* %3, align 2, !dbg !550
  %6 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %4, i16 zeroext %5), !dbg !550
  store %struct.XAxiVdma_Channel* %6, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !550
  %7 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !551
  %8 = icmp ne %struct.XAxiVdma_Channel* %7, null, !dbg !551
  br i1 %8, label %10, label %9, !dbg !551

; <label>:9                                       ; preds = %0
  store i32 1, i32* %1, !dbg !553
  br label %13, !dbg !553

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !555
  %12 = call i32 @XAxiVdma_ChannelResetNotDone(%struct.XAxiVdma_Channel* %11), !dbg !555
  store i32 %12, i32* %1, !dbg !555
  br label %13, !dbg !555

; <label>:13                                      ; preds = %10, %9
  %14 = load i32* %1, !dbg !556
  ret i32 %14, !dbg !556
}

; Function Attrs: nounwind
define i32 @XAxiVdma_IsBusy(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !557), !dbg !558
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !559), !dbg !560
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !561), !dbg !562
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !563
  %5 = load i16* %3, align 2, !dbg !563
  %6 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %4, i16 zeroext %5), !dbg !563
  store %struct.XAxiVdma_Channel* %6, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !563
  %7 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !564
  %8 = icmp ne %struct.XAxiVdma_Channel* %7, null, !dbg !564
  br i1 %8, label %10, label %9, !dbg !564

; <label>:9                                       ; preds = %0
  store i32 0, i32* %1, !dbg !566
  br label %19, !dbg !566

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !568
  %12 = getelementptr inbounds %struct.XAxiVdma_Channel* %11, i32 0, i32 3, !dbg !568
  %13 = load i32* %12, align 4, !dbg !568
  %14 = icmp ne i32 %13, 0, !dbg !568
  br i1 %14, label %15, label %18, !dbg !568

; <label>:15                                      ; preds = %10
  %16 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !570
  %17 = call i32 @XAxiVdma_ChannelIsBusy(%struct.XAxiVdma_Channel* %16), !dbg !570
  store i32 %17, i32* %1, !dbg !570
  br label %19, !dbg !570

; <label>:18                                      ; preds = %10
  store i32 0, i32* %1, !dbg !572
  br label %19, !dbg !572

; <label>:19                                      ; preds = %18, %15, %9
  %20 = load i32* %1, !dbg !574
  ret i32 %20, !dbg !574
}

declare i32 @XAxiVdma_ChannelIsBusy(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_CurrFrameStore(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %Rc = alloca i32, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !575), !dbg !576
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !577), !dbg !578
  call void @llvm.dbg.declare(metadata !{i32* %Rc}, metadata !579), !dbg !580
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !581
  %5 = getelementptr inbounds %struct.XAxiVdma* %4, i32 0, i32 0, !dbg !581
  %6 = load i32* %5, align 4, !dbg !581
  %7 = add i32 %6, 40, !dbg !581
  %8 = call i32 @Xil_In32(i32 %7), !dbg !581
  store i32 %8, i32* %Rc, align 4, !dbg !581
  %9 = load i16* %3, align 2, !dbg !582
  %10 = zext i16 %9 to i32, !dbg !582
  %11 = icmp eq i32 %10, 2, !dbg !582
  br i1 %11, label %12, label %17, !dbg !582

; <label>:12                                      ; preds = %0
  %13 = load i32* %Rc, align 4, !dbg !584
  %14 = and i32 %13, 2031616, !dbg !584
  store i32 %14, i32* %Rc, align 4, !dbg !584
  %15 = load i32* %Rc, align 4, !dbg !586
  %16 = lshr i32 %15, 16, !dbg !586
  store i32 %16, i32* %1, !dbg !586
  br label %27, !dbg !586

; <label>:17                                      ; preds = %0
  %18 = load i16* %3, align 2, !dbg !587
  %19 = zext i16 %18 to i32, !dbg !587
  %20 = icmp eq i32 %19, 1, !dbg !587
  br i1 %20, label %21, label %26, !dbg !587

; <label>:21                                      ; preds = %17
  %22 = load i32* %Rc, align 4, !dbg !589
  %23 = and i32 %22, 520093696, !dbg !589
  store i32 %23, i32* %Rc, align 4, !dbg !589
  %24 = load i32* %Rc, align 4, !dbg !591
  %25 = lshr i32 %24, 24, !dbg !591
  store i32 %25, i32* %1, !dbg !591
  br label %27, !dbg !591

; <label>:26                                      ; preds = %17
  store i32 -1, i32* %1, !dbg !592
  br label %27, !dbg !592

; <label>:27                                      ; preds = %26, %21, %12
  %28 = load i32* %1, !dbg !594
  ret i32 %28, !dbg !594
}

; Function Attrs: nounwind
define i32 @XAxiVdma_GetVersion(%struct.XAxiVdma* %InstancePtr) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !595), !dbg !596
  %2 = load %struct.XAxiVdma** %1, align 4, !dbg !597
  %3 = getelementptr inbounds %struct.XAxiVdma* %2, i32 0, i32 0, !dbg !597
  %4 = load i32* %3, align 4, !dbg !597
  %5 = add i32 %4, 44, !dbg !597
  %6 = call i32 @Xil_In32(i32 %5), !dbg !597
  ret i32 %6, !dbg !597
}

; Function Attrs: nounwind
define i32 @XAxiVdma_GetStatus(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !598), !dbg !599
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !600), !dbg !601
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !602), !dbg !603
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !604
  %5 = load i16* %3, align 2, !dbg !604
  %6 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %4, i16 zeroext %5), !dbg !604
  store %struct.XAxiVdma_Channel* %6, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !604
  %7 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !605
  %8 = icmp ne %struct.XAxiVdma_Channel* %7, null, !dbg !605
  br i1 %8, label %10, label %9, !dbg !605

; <label>:9                                       ; preds = %0
  store i32 -1, i32* %1, !dbg !607
  br label %19, !dbg !607

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !609
  %12 = getelementptr inbounds %struct.XAxiVdma_Channel* %11, i32 0, i32 3, !dbg !609
  %13 = load i32* %12, align 4, !dbg !609
  %14 = icmp ne i32 %13, 0, !dbg !609
  br i1 %14, label %15, label %18, !dbg !609

; <label>:15                                      ; preds = %10
  %16 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !611
  %17 = call i32 @XAxiVdma_ChannelGetStatus(%struct.XAxiVdma_Channel* %16), !dbg !611
  store i32 %17, i32* %1, !dbg !611
  br label %19, !dbg !611

; <label>:18                                      ; preds = %10
  store i32 -1, i32* %1, !dbg !613
  br label %19, !dbg !613

; <label>:19                                      ; preds = %18, %15, %9
  %20 = load i32* %1, !dbg !615
  ret i32 %20, !dbg !615
}

; Function Attrs: nounwind
define i32 @XAxiVdma_SetLineBufThreshold(%struct.XAxiVdma* %InstancePtr, i32 %LineBufThreshold, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !616), !dbg !617
  store i32 %LineBufThreshold, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !618), !dbg !619
  store i16 %Direction, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !620), !dbg !621
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !622), !dbg !623
  %5 = load %struct.XAxiVdma** %2, align 4, !dbg !624
  %6 = load i16* %4, align 2, !dbg !624
  %7 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %5, i16 zeroext %6), !dbg !624
  store %struct.XAxiVdma_Channel* %7, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !624
  %8 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !625
  %9 = getelementptr inbounds %struct.XAxiVdma_Channel* %8, i32 0, i32 24, !dbg !625
  %10 = load i32* %9, align 4, !dbg !625
  %11 = and i32 %10, 1, !dbg !625
  %12 = icmp ne i32 %11, 0, !dbg !625
  br i1 %12, label %15, label %13, !dbg !625

; <label>:13                                      ; preds = %0
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str6, i32 0, i32 0)), !dbg !627
  store i32 19, i32* %1, !dbg !629
  br label %51, !dbg !629

; <label>:15                                      ; preds = %0
  %16 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !630
  %17 = getelementptr inbounds %struct.XAxiVdma_Channel* %16, i32 0, i32 9, !dbg !630
  %18 = load i32* %17, align 4, !dbg !630
  %19 = icmp ne i32 %18, 0, !dbg !630
  br i1 %19, label %20, label %48, !dbg !630

; <label>:20                                      ; preds = %15
  %21 = load i32* %3, align 4, !dbg !632
  %22 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !632
  %23 = getelementptr inbounds %struct.XAxiVdma_Channel* %22, i32 0, i32 8, !dbg !632
  %24 = load i32* %23, align 4, !dbg !632
  %25 = icmp slt i32 %21, %24, !dbg !632
  br i1 %25, label %26, label %45, !dbg !632

; <label>:26                                      ; preds = %20
  %27 = load i32* %3, align 4, !dbg !635
  %28 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !635
  %29 = getelementptr inbounds %struct.XAxiVdma_Channel* %28, i32 0, i32 21, !dbg !635
  %30 = load i32* %29, align 4, !dbg !635
  %31 = srem i32 %27, %30, !dbg !635
  %32 = icmp eq i32 %31, 0, !dbg !635
  br i1 %32, label %33, label %45, !dbg !635

; <label>:33                                      ; preds = %26
  %34 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !637
  %35 = getelementptr inbounds %struct.XAxiVdma_Channel* %34, i32 0, i32 0, !dbg !637
  %36 = load i32* %35, align 4, !dbg !637
  %37 = add i32 %36, 28, !dbg !637
  %38 = load i32* %3, align 4, !dbg !637
  call void @Xil_Out32(i32 %37, i32 %38), !dbg !637
  %39 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !639
  %40 = getelementptr inbounds %struct.XAxiVdma_Channel* %39, i32 0, i32 0, !dbg !639
  %41 = load i32* %40, align 4, !dbg !639
  %42 = add i32 %41, 28, !dbg !639
  %43 = call i32 @Xil_In32(i32 %42), !dbg !639
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str7, i32 0, i32 0), i32 %43), !dbg !640
  br label %47, !dbg !641

; <label>:45                                      ; preds = %26, %20
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str8, i32 0, i32 0)), !dbg !642
  store i32 1, i32* %1, !dbg !644
  br label %51, !dbg !644

; <label>:47                                      ; preds = %33
  br label %50, !dbg !645

; <label>:48                                      ; preds = %15
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str9, i32 0, i32 0)), !dbg !646
  store i32 1, i32* %1, !dbg !648
  br label %51, !dbg !648

; <label>:50                                      ; preds = %47
  store i32 0, i32* %1, !dbg !649
  br label %51, !dbg !649

; <label>:51                                      ; preds = %50, %48, %45, %13
  %52 = load i32* %1, !dbg !650
  ret i32 %52, !dbg !650
}

declare void @Xil_Out32(i32, i32) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_FsyncSrcSelect(%struct.XAxiVdma* %InstancePtr, i32 %Source, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  %CrBits = alloca i32, align 4
  %UseFsync = alloca i32, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !651), !dbg !652
  store i32 %Source, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !653), !dbg !654
  store i16 %Direction, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !655), !dbg !656
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !657), !dbg !658
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !659), !dbg !660
  call void @llvm.dbg.declare(metadata !{i32* %UseFsync}, metadata !661), !dbg !662
  %5 = load %struct.XAxiVdma** %2, align 4, !dbg !663
  %6 = load i16* %4, align 2, !dbg !663
  %7 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %5, i16 zeroext %6), !dbg !663
  store %struct.XAxiVdma_Channel* %7, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !663
  %8 = load i16* %4, align 2, !dbg !664
  %9 = zext i16 %8 to i32, !dbg !664
  %10 = icmp eq i32 %9, 1, !dbg !664
  br i1 %10, label %11, label %24, !dbg !664

; <label>:11                                      ; preds = %0
  %12 = load %struct.XAxiVdma** %2, align 4, !dbg !666
  %13 = getelementptr inbounds %struct.XAxiVdma* %12, i32 0, i32 9, !dbg !666
  %14 = load i32* %13, align 4, !dbg !666
  %15 = icmp eq i32 %14, 1, !dbg !666
  br i1 %15, label %21, label %16, !dbg !666

; <label>:16                                      ; preds = %11
  %17 = load %struct.XAxiVdma** %2, align 4, !dbg !668
  %18 = getelementptr inbounds %struct.XAxiVdma* %17, i32 0, i32 9, !dbg !668
  %19 = load i32* %18, align 4, !dbg !668
  %20 = icmp eq i32 %19, 3, !dbg !668
  br label %21, !dbg !668

; <label>:21                                      ; preds = %16, %11
  %22 = phi i1 [ true, %11 ], [ %20, %16 ]
  %23 = select i1 %22, i32 1, i32 0, !dbg !670
  store i32 %23, i32* %UseFsync, align 4, !dbg !670
  br label %37, !dbg !673

; <label>:24                                      ; preds = %0
  %25 = load %struct.XAxiVdma** %2, align 4, !dbg !674
  %26 = getelementptr inbounds %struct.XAxiVdma* %25, i32 0, i32 9, !dbg !674
  %27 = load i32* %26, align 4, !dbg !674
  %28 = icmp eq i32 %27, 1, !dbg !674
  br i1 %28, label %34, label %29, !dbg !674

; <label>:29                                      ; preds = %24
  %30 = load %struct.XAxiVdma** %2, align 4, !dbg !676
  %31 = getelementptr inbounds %struct.XAxiVdma* %30, i32 0, i32 9, !dbg !676
  %32 = load i32* %31, align 4, !dbg !676
  %33 = icmp eq i32 %32, 2, !dbg !676
  br label %34, !dbg !676

; <label>:34                                      ; preds = %29, %24
  %35 = phi i1 [ true, %24 ], [ %33, %29 ]
  %36 = select i1 %35, i32 1, i32 0, !dbg !678
  store i32 %36, i32* %UseFsync, align 4, !dbg !678
  br label %37

; <label>:37                                      ; preds = %34, %21
  %38 = load i32* %UseFsync, align 4, !dbg !681
  %39 = icmp ne i32 %38, 0, !dbg !681
  br i1 %39, label %40, label %69, !dbg !681

; <label>:40                                      ; preds = %37
  %41 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !683
  %42 = getelementptr inbounds %struct.XAxiVdma_Channel* %41, i32 0, i32 0, !dbg !683
  %43 = load i32* %42, align 4, !dbg !683
  %44 = add i32 %43, 0, !dbg !683
  %45 = call i32 @Xil_In32(i32 %44), !dbg !683
  store i32 %45, i32* %CrBits, align 4, !dbg !683
  %46 = load i32* %3, align 4, !dbg !685
  switch i32 %46, label %63 [
    i32 0, label %47
    i32 1, label %50
    i32 2, label %53
  ], !dbg !685

; <label>:47                                      ; preds = %40
  %48 = load i32* %CrBits, align 4, !dbg !686
  %49 = and i32 %48, -97, !dbg !686
  store i32 %49, i32* %CrBits, align 4, !dbg !686
  br label %63, !dbg !688

; <label>:50                                      ; preds = %40
  %51 = load i32* %CrBits, align 4, !dbg !689
  %52 = or i32 %51, 32, !dbg !689
  store i32 %52, i32* %CrBits, align 4, !dbg !689
  br label %63, !dbg !690

; <label>:53                                      ; preds = %40
  %54 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !691
  %55 = getelementptr inbounds %struct.XAxiVdma_Channel* %54, i32 0, i32 20, !dbg !691
  %56 = load i32* %55, align 4, !dbg !691
  %57 = icmp ne i32 %56, 0, !dbg !691
  br i1 %57, label %58, label %61, !dbg !691

; <label>:58                                      ; preds = %53
  %59 = load i32* %CrBits, align 4, !dbg !693
  %60 = or i32 %59, 64, !dbg !693
  store i32 %60, i32* %CrBits, align 4, !dbg !693
  br label %62, !dbg !695

; <label>:61                                      ; preds = %53
  store i32 1, i32* %1, !dbg !696
  br label %71, !dbg !696

; <label>:62                                      ; preds = %58
  br label %63, !dbg !697

; <label>:63                                      ; preds = %40, %62, %50, %47
  %64 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !698
  %65 = getelementptr inbounds %struct.XAxiVdma_Channel* %64, i32 0, i32 0, !dbg !698
  %66 = load i32* %65, align 4, !dbg !698
  %67 = add i32 %66, 0, !dbg !698
  %68 = load i32* %CrBits, align 4, !dbg !698
  call void @Xil_Out32(i32 %67, i32 %68), !dbg !698
  store i32 0, i32* %1, !dbg !699
  br label %71, !dbg !699

; <label>:69                                      ; preds = %37
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str10, i32 0, i32 0)), !dbg !700
  store i32 1, i32* %1, !dbg !701
  br label %71, !dbg !701

; <label>:71                                      ; preds = %69, %63, %61
  %72 = load i32* %1, !dbg !702
  ret i32 %72, !dbg !702
}

; Function Attrs: nounwind
define i32 @XAxiVdma_GenLockSourceSelect(%struct.XAxiVdma* %InstancePtr, i32 %Source, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  %XChannel = alloca %struct.XAxiVdma_Channel*, align 4
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !703), !dbg !704
  store i32 %Source, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !705), !dbg !706
  store i16 %Direction, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !707), !dbg !708
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !709), !dbg !710
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %XChannel}, metadata !711), !dbg !712
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !713), !dbg !714
  %5 = load %struct.XAxiVdma** %2, align 4, !dbg !715
  %6 = getelementptr inbounds %struct.XAxiVdma* %5, i32 0, i32 4, !dbg !715
  %7 = load i32* %6, align 4, !dbg !715
  %8 = icmp ne i32 %7, 0, !dbg !715
  br i1 %8, label %9, label %102, !dbg !715

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma** %2, align 4, !dbg !717
  %11 = getelementptr inbounds %struct.XAxiVdma* %10, i32 0, i32 6, !dbg !717
  %12 = load i32* %11, align 4, !dbg !717
  %13 = icmp ne i32 %12, 0, !dbg !717
  br i1 %13, label %14, label %102, !dbg !717

; <label>:14                                      ; preds = %9
  %15 = load %struct.XAxiVdma** %2, align 4, !dbg !719
  %16 = getelementptr inbounds %struct.XAxiVdma* %15, i32 0, i32 10, !dbg !719
  %17 = load i32* %16, align 4, !dbg !719
  %18 = icmp ne i32 %17, 0, !dbg !719
  br i1 %18, label %19, label %102, !dbg !719

; <label>:19                                      ; preds = %14
  %20 = load i16* %4, align 2, !dbg !721
  %21 = zext i16 %20 to i32, !dbg !721
  %22 = icmp eq i32 %21, 1, !dbg !721
  br i1 %22, label %23, label %29, !dbg !721

; <label>:23                                      ; preds = %19
  %24 = load %struct.XAxiVdma** %2, align 4, !dbg !724
  %25 = load i16* %4, align 2, !dbg !724
  %26 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %24, i16 zeroext %25), !dbg !724
  store %struct.XAxiVdma_Channel* %26, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !724
  %27 = load %struct.XAxiVdma** %2, align 4, !dbg !726
  %28 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %27, i16 zeroext 2), !dbg !726
  store %struct.XAxiVdma_Channel* %28, %struct.XAxiVdma_Channel** %XChannel, align 4, !dbg !726
  br label %35, !dbg !727

; <label>:29                                      ; preds = %19
  %30 = load %struct.XAxiVdma** %2, align 4, !dbg !728
  %31 = load i16* %4, align 2, !dbg !728
  %32 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %30, i16 zeroext %31), !dbg !728
  store %struct.XAxiVdma_Channel* %32, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !728
  %33 = load %struct.XAxiVdma** %2, align 4, !dbg !730
  %34 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %33, i16 zeroext 1), !dbg !730
  store %struct.XAxiVdma_Channel* %34, %struct.XAxiVdma_Channel** %XChannel, align 4, !dbg !730
  br label %35

; <label>:35                                      ; preds = %29, %23
  %36 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !731
  %37 = getelementptr inbounds %struct.XAxiVdma_Channel* %36, i32 0, i32 19, !dbg !731
  %38 = load i32* %37, align 4, !dbg !731
  %39 = icmp eq i32 %38, 0, !dbg !731
  br i1 %39, label %40, label %45, !dbg !731

; <label>:40                                      ; preds = %35
  %41 = load %struct.XAxiVdma_Channel** %XChannel, align 4, !dbg !733
  %42 = getelementptr inbounds %struct.XAxiVdma_Channel* %41, i32 0, i32 19, !dbg !733
  %43 = load i32* %42, align 4, !dbg !733
  %44 = icmp eq i32 %43, 1, !dbg !733
  br i1 %44, label %75, label %45, !dbg !733

; <label>:45                                      ; preds = %40, %35
  %46 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !735
  %47 = getelementptr inbounds %struct.XAxiVdma_Channel* %46, i32 0, i32 19, !dbg !735
  %48 = load i32* %47, align 4, !dbg !735
  %49 = icmp eq i32 %48, 1, !dbg !735
  br i1 %49, label %50, label %55, !dbg !735

; <label>:50                                      ; preds = %45
  %51 = load %struct.XAxiVdma_Channel** %XChannel, align 4, !dbg !738
  %52 = getelementptr inbounds %struct.XAxiVdma_Channel* %51, i32 0, i32 19, !dbg !738
  %53 = load i32* %52, align 4, !dbg !738
  %54 = icmp eq i32 %53, 0, !dbg !738
  br i1 %54, label %75, label %55, !dbg !738

; <label>:55                                      ; preds = %50, %45
  %56 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !740
  %57 = getelementptr inbounds %struct.XAxiVdma_Channel* %56, i32 0, i32 19, !dbg !740
  %58 = load i32* %57, align 4, !dbg !740
  %59 = icmp eq i32 %58, 2, !dbg !740
  br i1 %59, label %60, label %65, !dbg !740

; <label>:60                                      ; preds = %55
  %61 = load %struct.XAxiVdma_Channel** %XChannel, align 4, !dbg !743
  %62 = getelementptr inbounds %struct.XAxiVdma_Channel* %61, i32 0, i32 19, !dbg !743
  %63 = load i32* %62, align 4, !dbg !743
  %64 = icmp eq i32 %63, 3, !dbg !743
  br i1 %64, label %75, label %65, !dbg !743

; <label>:65                                      ; preds = %60, %55
  %66 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !745
  %67 = getelementptr inbounds %struct.XAxiVdma_Channel* %66, i32 0, i32 19, !dbg !745
  %68 = load i32* %67, align 4, !dbg !745
  %69 = icmp eq i32 %68, 3, !dbg !745
  br i1 %69, label %70, label %101, !dbg !745

; <label>:70                                      ; preds = %65
  %71 = load %struct.XAxiVdma_Channel** %XChannel, align 4, !dbg !748
  %72 = getelementptr inbounds %struct.XAxiVdma_Channel* %71, i32 0, i32 19, !dbg !748
  %73 = load i32* %72, align 4, !dbg !748
  %74 = icmp eq i32 %73, 2, !dbg !748
  br i1 %74, label %75, label %101, !dbg !748

; <label>:75                                      ; preds = %70, %60, %50, %40
  %76 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !750
  %77 = getelementptr inbounds %struct.XAxiVdma_Channel* %76, i32 0, i32 0, !dbg !750
  %78 = load i32* %77, align 4, !dbg !750
  %79 = add i32 %78, 0, !dbg !750
  %80 = call i32 @Xil_In32(i32 %79), !dbg !750
  store i32 %80, i32* %CrBits, align 4, !dbg !750
  %81 = load i32* %3, align 4, !dbg !752
  %82 = icmp eq i32 %81, 1, !dbg !752
  br i1 %82, label %83, label %86, !dbg !752

; <label>:83                                      ; preds = %75
  %84 = load i32* %CrBits, align 4, !dbg !754
  %85 = or i32 %84, 128, !dbg !754
  store i32 %85, i32* %CrBits, align 4, !dbg !754
  br label %95, !dbg !754

; <label>:86                                      ; preds = %75
  %87 = load i32* %3, align 4, !dbg !755
  %88 = icmp eq i32 %87, 0, !dbg !755
  br i1 %88, label %89, label %92, !dbg !755

; <label>:89                                      ; preds = %86
  %90 = load i32* %CrBits, align 4, !dbg !757
  %91 = and i32 %90, -129, !dbg !757
  store i32 %91, i32* %CrBits, align 4, !dbg !757
  br label %94, !dbg !757

; <label>:92                                      ; preds = %86
  %93 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str11, i32 0, i32 0)), !dbg !758
  store i32 1, i32* %1, !dbg !760
  br label %104, !dbg !760

; <label>:94                                      ; preds = %89
  br label %95

; <label>:95                                      ; preds = %94, %83
  %96 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !761
  %97 = getelementptr inbounds %struct.XAxiVdma_Channel* %96, i32 0, i32 0, !dbg !761
  %98 = load i32* %97, align 4, !dbg !761
  %99 = add i32 %98, 0, !dbg !761
  %100 = load i32* %CrBits, align 4, !dbg !761
  call void @Xil_Out32(i32 %99, i32 %100), !dbg !761
  store i32 0, i32* %1, !dbg !762
  br label %104, !dbg !762

; <label>:101                                     ; preds = %70, %65
  br label %102, !dbg !763

; <label>:102                                     ; preds = %101, %14, %9, %0
  %103 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str10, i32 0, i32 0)), !dbg !764
  store i32 1, i32* %1, !dbg !765
  br label %104, !dbg !765

; <label>:104                                     ; preds = %102, %95, %92
  %105 = load i32* %1, !dbg !766
  ret i32 %105, !dbg !766
}

; Function Attrs: nounwind
define i32 @XAxiVdma_StartParking(%struct.XAxiVdma* %InstancePtr, i32 %FrameIndex, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  %FrmBits = alloca i32, align 4
  %RegValue = alloca i32, align 4
  %Status = alloca i32, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !767), !dbg !768
  store i32 %FrameIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !769), !dbg !770
  store i16 %Direction, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !771), !dbg !772
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !773), !dbg !774
  call void @llvm.dbg.declare(metadata !{i32* %FrmBits}, metadata !775), !dbg !776
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !777), !dbg !778
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !779), !dbg !780
  %5 = load i32* %3, align 4, !dbg !781
  %6 = icmp sgt i32 %5, 15, !dbg !781
  br i1 %6, label %7, label %10, !dbg !781

; <label>:7                                       ; preds = %0
  %8 = load i32* %3, align 4, !dbg !783
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str12, i32 0, i32 0), i32 %8), !dbg !783
  store i32 15, i32* %1, !dbg !785
  br label %77, !dbg !785

; <label>:10                                      ; preds = %0
  %11 = load i16* %4, align 2, !dbg !786
  %12 = zext i16 %11 to i32, !dbg !786
  %13 = icmp eq i32 %12, 2, !dbg !786
  br i1 %13, label %14, label %32, !dbg !786

; <label>:14                                      ; preds = %10
  %15 = load i32* %3, align 4, !dbg !788
  %16 = and i32 %15, 31, !dbg !788
  store i32 %16, i32* %FrmBits, align 4, !dbg !788
  %17 = load %struct.XAxiVdma** %2, align 4, !dbg !790
  %18 = getelementptr inbounds %struct.XAxiVdma* %17, i32 0, i32 0, !dbg !790
  %19 = load i32* %18, align 4, !dbg !790
  %20 = add i32 %19, 40, !dbg !790
  %21 = call i32 @Xil_In32(i32 %20), !dbg !790
  store i32 %21, i32* %RegValue, align 4, !dbg !790
  %22 = load i32* %RegValue, align 4, !dbg !791
  %23 = and i32 %22, -32, !dbg !791
  store i32 %23, i32* %RegValue, align 4, !dbg !791
  %24 = load i32* %FrmBits, align 4, !dbg !792
  %25 = load i32* %RegValue, align 4, !dbg !792
  %26 = or i32 %25, %24, !dbg !792
  store i32 %26, i32* %RegValue, align 4, !dbg !792
  %27 = load %struct.XAxiVdma** %2, align 4, !dbg !793
  %28 = getelementptr inbounds %struct.XAxiVdma* %27, i32 0, i32 0, !dbg !793
  %29 = load i32* %28, align 4, !dbg !793
  %30 = add i32 %29, 40, !dbg !793
  %31 = load i32* %RegValue, align 4, !dbg !793
  call void @Xil_Out32(i32 %30, i32 %31), !dbg !793
  br label %58, !dbg !794

; <label>:32                                      ; preds = %10
  %33 = load i16* %4, align 2, !dbg !795
  %34 = zext i16 %33 to i32, !dbg !795
  %35 = icmp eq i32 %34, 1, !dbg !795
  br i1 %35, label %36, label %56, !dbg !795

; <label>:36                                      ; preds = %32
  %37 = load i32* %3, align 4, !dbg !797
  %38 = shl i32 %37, 8, !dbg !797
  store i32 %38, i32* %FrmBits, align 4, !dbg !797
  %39 = load i32* %FrmBits, align 4, !dbg !799
  %40 = and i32 %39, 7936, !dbg !799
  store i32 %40, i32* %FrmBits, align 4, !dbg !799
  %41 = load %struct.XAxiVdma** %2, align 4, !dbg !800
  %42 = getelementptr inbounds %struct.XAxiVdma* %41, i32 0, i32 0, !dbg !800
  %43 = load i32* %42, align 4, !dbg !800
  %44 = add i32 %43, 40, !dbg !800
  %45 = call i32 @Xil_In32(i32 %44), !dbg !800
  store i32 %45, i32* %RegValue, align 4, !dbg !800
  %46 = load i32* %RegValue, align 4, !dbg !801
  %47 = and i32 %46, -7937, !dbg !801
  store i32 %47, i32* %RegValue, align 4, !dbg !801
  %48 = load i32* %FrmBits, align 4, !dbg !802
  %49 = load i32* %RegValue, align 4, !dbg !802
  %50 = or i32 %49, %48, !dbg !802
  store i32 %50, i32* %RegValue, align 4, !dbg !802
  %51 = load %struct.XAxiVdma** %2, align 4, !dbg !803
  %52 = getelementptr inbounds %struct.XAxiVdma* %51, i32 0, i32 0, !dbg !803
  %53 = load i32* %52, align 4, !dbg !803
  %54 = add i32 %53, 40, !dbg !803
  %55 = load i32* %RegValue, align 4, !dbg !803
  call void @Xil_Out32(i32 %54, i32 %55), !dbg !803
  br label %57, !dbg !804

; <label>:56                                      ; preds = %32
  store i32 15, i32* %1, !dbg !805
  br label %77, !dbg !805

; <label>:57                                      ; preds = %36
  br label %58

; <label>:58                                      ; preds = %57, %14
  %59 = load %struct.XAxiVdma** %2, align 4, !dbg !807
  %60 = load i16* %4, align 2, !dbg !807
  %61 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %59, i16 zeroext %60), !dbg !807
  store %struct.XAxiVdma_Channel* %61, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !807
  %62 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !808
  %63 = getelementptr inbounds %struct.XAxiVdma_Channel* %62, i32 0, i32 3, !dbg !808
  %64 = load i32* %63, align 4, !dbg !808
  %65 = icmp ne i32 %64, 0, !dbg !808
  br i1 %65, label %66, label %76, !dbg !808

; <label>:66                                      ; preds = %58
  %67 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !810
  %68 = call i32 @XAxiVdma_ChannelStartParking(%struct.XAxiVdma_Channel* %67), !dbg !810
  store i32 %68, i32* %Status, align 4, !dbg !810
  %69 = load i32* %Status, align 4, !dbg !812
  %70 = icmp ne i32 %69, 0, !dbg !812
  br i1 %70, label %71, label %75, !dbg !812

; <label>:71                                      ; preds = %66
  %72 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !814
  %73 = ptrtoint %struct.XAxiVdma_Channel* %72 to i32, !dbg !814
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str13, i32 0, i32 0), i32 %73), !dbg !814
  store i32 1, i32* %1, !dbg !816
  br label %77, !dbg !816

; <label>:75                                      ; preds = %66
  br label %76, !dbg !817

; <label>:76                                      ; preds = %75, %58
  store i32 0, i32* %1, !dbg !818
  br label %77, !dbg !818

; <label>:77                                      ; preds = %76, %71, %56, %7
  %78 = load i32* %1, !dbg !819
  ret i32 %78, !dbg !819
}

declare i32 @XAxiVdma_ChannelStartParking(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define void @XAxiVdma_StopParking(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  %2 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !820), !dbg !821
  store i16 %Direction, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !822), !dbg !823
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !824), !dbg !825
  %3 = load %struct.XAxiVdma** %1, align 4, !dbg !826
  %4 = load i16* %2, align 2, !dbg !826
  %5 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %3, i16 zeroext %4), !dbg !826
  store %struct.XAxiVdma_Channel* %5, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !826
  %6 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !827
  %7 = icmp ne %struct.XAxiVdma_Channel* %6, null, !dbg !827
  br i1 %7, label %9, label %8, !dbg !827

; <label>:8                                       ; preds = %0
  br label %17, !dbg !829

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !831
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 3, !dbg !831
  %12 = load i32* %11, align 4, !dbg !831
  %13 = icmp ne i32 %12, 0, !dbg !831
  br i1 %13, label %14, label %16, !dbg !831

; <label>:14                                      ; preds = %9
  %15 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !833
  call void @XAxiVdma_ChannelStopParking(%struct.XAxiVdma_Channel* %15), !dbg !833
  br label %16, !dbg !835

; <label>:16                                      ; preds = %14, %9
  br label %17, !dbg !836

; <label>:17                                      ; preds = %16, %8
  ret void, !dbg !837
}

declare void @XAxiVdma_ChannelStopParking(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define void @XAxiVdma_StartFrmCntEnable(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  %2 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !838), !dbg !839
  store i16 %Direction, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !840), !dbg !841
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !842), !dbg !843
  %3 = load %struct.XAxiVdma** %1, align 4, !dbg !844
  %4 = load i16* %2, align 2, !dbg !844
  %5 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %3, i16 zeroext %4), !dbg !844
  store %struct.XAxiVdma_Channel* %5, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !844
  %6 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !845
  %7 = getelementptr inbounds %struct.XAxiVdma_Channel* %6, i32 0, i32 3, !dbg !845
  %8 = load i32* %7, align 4, !dbg !845
  %9 = icmp ne i32 %8, 0, !dbg !845
  br i1 %9, label %10, label %12, !dbg !845

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !847
  call void @XAxiVdma_ChannelStartFrmCntEnable(%struct.XAxiVdma_Channel* %11), !dbg !847
  br label %12, !dbg !849

; <label>:12                                      ; preds = %10, %0
  ret void, !dbg !850
}

declare void @XAxiVdma_ChannelStartFrmCntEnable(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_SetBdAddrs(%struct.XAxiVdma* %InstancePtr, i32 %BdAddrPhys, i32 %BdAddrVirt, i32 %NumBds, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !851), !dbg !852
  store i32 %BdAddrPhys, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !853), !dbg !854
  store i32 %BdAddrVirt, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !855), !dbg !856
  store i32 %NumBds, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !857), !dbg !858
  store i16 %Direction, i16* %6, align 2
  call void @llvm.dbg.declare(metadata !{i16* %6}, metadata !859), !dbg !860
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !861), !dbg !862
  %7 = load %struct.XAxiVdma** %2, align 4, !dbg !863
  %8 = load i16* %6, align 2, !dbg !863
  %9 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %7, i16 zeroext %8), !dbg !863
  store %struct.XAxiVdma_Channel* %9, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !863
  %10 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !864
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 3, !dbg !864
  %12 = load i32* %11, align 4, !dbg !864
  %13 = icmp ne i32 %12, 0, !dbg !864
  br i1 %13, label %14, label %36, !dbg !864

; <label>:14                                      ; preds = %0
  %15 = load i32* %5, align 4, !dbg !866
  %16 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !866
  %17 = getelementptr inbounds %struct.XAxiVdma_Channel* %16, i32 0, i32 18, !dbg !866
  %18 = load i32* %17, align 4, !dbg !866
  %19 = icmp ne i32 %15, %18, !dbg !866
  br i1 %19, label %20, label %21, !dbg !866

; <label>:20                                      ; preds = %14
  store i32 15, i32* %1, !dbg !869
  br label %37, !dbg !869

; <label>:21                                      ; preds = %14
  %22 = load i32* %3, align 4, !dbg !871
  %23 = and i32 %22, 31, !dbg !871
  %24 = icmp ne i32 %23, 0, !dbg !871
  br i1 %24, label %25, label %26, !dbg !871

; <label>:25                                      ; preds = %21
  store i32 15, i32* %1, !dbg !873
  br label %37, !dbg !873

; <label>:26                                      ; preds = %21
  %27 = load i32* %4, align 4, !dbg !875
  %28 = and i32 %27, 31, !dbg !875
  %29 = icmp ne i32 %28, 0, !dbg !875
  br i1 %29, label %30, label %31, !dbg !875

; <label>:30                                      ; preds = %26
  store i32 15, i32* %1, !dbg !877
  br label %37, !dbg !877

; <label>:31                                      ; preds = %26
  %32 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !879
  %33 = load i32* %3, align 4, !dbg !879
  %34 = load i32* %4, align 4, !dbg !879
  %35 = call i32 @XAxiVdma_ChannelSetBdAddrs(%struct.XAxiVdma_Channel* %32, i32 %33, i32 %34), !dbg !879
  store i32 %35, i32* %1, !dbg !879
  br label %37, !dbg !879

; <label>:36                                      ; preds = %0
  store i32 2, i32* %1, !dbg !880
  br label %37, !dbg !880

; <label>:37                                      ; preds = %36, %31, %30, %25, %20
  %38 = load i32* %1, !dbg !882
  ret i32 %38, !dbg !882
}

declare i32 @XAxiVdma_ChannelSetBdAddrs(%struct.XAxiVdma_Channel*, i32, i32) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_StartWriteFrame(%struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma_DmaSetup* %DmaConfigPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca %struct.XAxiVdma_DmaSetup*, align 4
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !883), !dbg !884
  store %struct.XAxiVdma_DmaSetup* %DmaConfigPtr, %struct.XAxiVdma_DmaSetup** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_DmaSetup** %3}, metadata !885), !dbg !886
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !887), !dbg !888
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !889
  %5 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %4, i16 zeroext 1), !dbg !889
  store %struct.XAxiVdma_Channel* %5, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !889
  %6 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !890
  %7 = getelementptr inbounds %struct.XAxiVdma_Channel* %6, i32 0, i32 3, !dbg !890
  %8 = load i32* %7, align 4, !dbg !890
  %9 = icmp ne i32 %8, 0, !dbg !890
  br i1 %9, label %10, label %15, !dbg !890

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !892
  %12 = load %struct.XAxiVdma_DmaSetup** %3, align 4, !dbg !892
  %13 = bitcast %struct.XAxiVdma_DmaSetup* %12 to %struct.XAxiVdma_ChannelSetup*, !dbg !892
  %14 = call i32 @XAxiVdma_ChannelStartTransfer(%struct.XAxiVdma_Channel* %11, %struct.XAxiVdma_ChannelSetup* %13), !dbg !892
  store i32 %14, i32* %1, !dbg !892
  br label %16, !dbg !892

; <label>:15                                      ; preds = %0
  store i32 2, i32* %1, !dbg !894
  br label %16, !dbg !894

; <label>:16                                      ; preds = %15, %10
  %17 = load i32* %1, !dbg !896
  ret i32 %17, !dbg !896
}

declare i32 @XAxiVdma_ChannelStartTransfer(%struct.XAxiVdma_Channel*, %struct.XAxiVdma_ChannelSetup*) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_StartReadFrame(%struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma_DmaSetup* %DmaConfigPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca %struct.XAxiVdma_DmaSetup*, align 4
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !897), !dbg !898
  store %struct.XAxiVdma_DmaSetup* %DmaConfigPtr, %struct.XAxiVdma_DmaSetup** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_DmaSetup** %3}, metadata !899), !dbg !900
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !901), !dbg !902
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !903
  %5 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %4, i16 zeroext 2), !dbg !903
  store %struct.XAxiVdma_Channel* %5, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !903
  %6 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !904
  %7 = getelementptr inbounds %struct.XAxiVdma_Channel* %6, i32 0, i32 3, !dbg !904
  %8 = load i32* %7, align 4, !dbg !904
  %9 = icmp ne i32 %8, 0, !dbg !904
  br i1 %9, label %10, label %15, !dbg !904

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !906
  %12 = load %struct.XAxiVdma_DmaSetup** %3, align 4, !dbg !906
  %13 = bitcast %struct.XAxiVdma_DmaSetup* %12 to %struct.XAxiVdma_ChannelSetup*, !dbg !906
  %14 = call i32 @XAxiVdma_ChannelStartTransfer(%struct.XAxiVdma_Channel* %11, %struct.XAxiVdma_ChannelSetup* %13), !dbg !906
  store i32 %14, i32* %1, !dbg !906
  br label %16, !dbg !906

; <label>:15                                      ; preds = %0
  store i32 2, i32* %1, !dbg !908
  br label %16, !dbg !908

; <label>:16                                      ; preds = %15, %10
  %17 = load i32* %1, !dbg !910
  ret i32 %17, !dbg !910
}

; Function Attrs: nounwind
define i32 @XAxiVdma_DmaConfig(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction, %struct.XAxiVdma_DmaSetup* %DmaConfigPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %4 = alloca %struct.XAxiVdma_DmaSetup*, align 4
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !911), !dbg !912
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !913), !dbg !914
  store %struct.XAxiVdma_DmaSetup* %DmaConfigPtr, %struct.XAxiVdma_DmaSetup** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_DmaSetup** %4}, metadata !915), !dbg !916
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !917), !dbg !918
  %5 = load %struct.XAxiVdma** %2, align 4, !dbg !919
  %6 = load i16* %3, align 2, !dbg !919
  %7 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %5, i16 zeroext %6), !dbg !919
  store %struct.XAxiVdma_Channel* %7, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !919
  %8 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !920
  %9 = icmp ne %struct.XAxiVdma_Channel* %8, null, !dbg !920
  br i1 %9, label %11, label %10, !dbg !920

; <label>:10                                      ; preds = %0
  store i32 15, i32* %1, !dbg !922
  br label %22, !dbg !922

; <label>:11                                      ; preds = %0
  %12 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !924
  %13 = getelementptr inbounds %struct.XAxiVdma_Channel* %12, i32 0, i32 3, !dbg !924
  %14 = load i32* %13, align 4, !dbg !924
  %15 = icmp ne i32 %14, 0, !dbg !924
  br i1 %15, label %16, label %21, !dbg !924

; <label>:16                                      ; preds = %11
  %17 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !926
  %18 = load %struct.XAxiVdma_DmaSetup** %4, align 4, !dbg !926
  %19 = bitcast %struct.XAxiVdma_DmaSetup* %18 to %struct.XAxiVdma_ChannelSetup*, !dbg !926
  %20 = call i32 @XAxiVdma_ChannelConfig(%struct.XAxiVdma_Channel* %17, %struct.XAxiVdma_ChannelSetup* %19), !dbg !926
  store i32 %20, i32* %1, !dbg !926
  br label %22, !dbg !926

; <label>:21                                      ; preds = %11
  store i32 2, i32* %1, !dbg !928
  br label %22, !dbg !928

; <label>:22                                      ; preds = %21, %16, %10
  %23 = load i32* %1, !dbg !930
  ret i32 %23, !dbg !930
}

declare i32 @XAxiVdma_ChannelConfig(%struct.XAxiVdma_Channel*, %struct.XAxiVdma_ChannelSetup*) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_DmaSetBufferAddr(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction, i32* %BufferAddrSet) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32*, align 4
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !931), !dbg !932
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !933), !dbg !934
  store i32* %BufferAddrSet, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !935), !dbg !936
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !937), !dbg !938
  %5 = load %struct.XAxiVdma** %2, align 4, !dbg !939
  %6 = load i16* %3, align 2, !dbg !939
  %7 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %5, i16 zeroext %6), !dbg !939
  store %struct.XAxiVdma_Channel* %7, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !939
  %8 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !940
  %9 = icmp ne %struct.XAxiVdma_Channel* %8, null, !dbg !940
  br i1 %9, label %11, label %10, !dbg !940

; <label>:10                                      ; preds = %0
  store i32 15, i32* %1, !dbg !942
  br label %24, !dbg !942

; <label>:11                                      ; preds = %0
  %12 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !944
  %13 = getelementptr inbounds %struct.XAxiVdma_Channel* %12, i32 0, i32 3, !dbg !944
  %14 = load i32* %13, align 4, !dbg !944
  %15 = icmp ne i32 %14, 0, !dbg !944
  br i1 %15, label %16, label %23, !dbg !944

; <label>:16                                      ; preds = %11
  %17 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !946
  %18 = load i32** %4, align 4, !dbg !946
  %19 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !946
  %20 = getelementptr inbounds %struct.XAxiVdma_Channel* %19, i32 0, i32 11, !dbg !946
  %21 = load i32* %20, align 4, !dbg !946
  %22 = call i32 @XAxiVdma_ChannelSetBufferAddr(%struct.XAxiVdma_Channel* %17, i32* %18, i32 %21), !dbg !946
  store i32 %22, i32* %1, !dbg !946
  br label %24, !dbg !946

; <label>:23                                      ; preds = %11
  store i32 2, i32* %1, !dbg !948
  br label %24, !dbg !948

; <label>:24                                      ; preds = %23, %16, %10
  %25 = load i32* %1, !dbg !950
  ret i32 %25, !dbg !950
}

declare i32 @XAxiVdma_ChannelSetBufferAddr(%struct.XAxiVdma_Channel*, i32*, i32) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_DmaStart(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !951), !dbg !952
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !953), !dbg !954
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !955), !dbg !956
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !957
  %5 = load i16* %3, align 2, !dbg !957
  %6 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %4, i16 zeroext %5), !dbg !957
  store %struct.XAxiVdma_Channel* %6, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !957
  %7 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !958
  %8 = icmp ne %struct.XAxiVdma_Channel* %7, null, !dbg !958
  br i1 %8, label %10, label %9, !dbg !958

; <label>:9                                       ; preds = %0
  store i32 15, i32* %1, !dbg !960
  br label %19, !dbg !960

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !962
  %12 = getelementptr inbounds %struct.XAxiVdma_Channel* %11, i32 0, i32 3, !dbg !962
  %13 = load i32* %12, align 4, !dbg !962
  %14 = icmp ne i32 %13, 0, !dbg !962
  br i1 %14, label %15, label %18, !dbg !962

; <label>:15                                      ; preds = %10
  %16 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !964
  %17 = call i32 @XAxiVdma_ChannelStart(%struct.XAxiVdma_Channel* %16), !dbg !964
  store i32 %17, i32* %1, !dbg !964
  br label %19, !dbg !964

; <label>:18                                      ; preds = %10
  store i32 2, i32* %1, !dbg !966
  br label %19, !dbg !966

; <label>:19                                      ; preds = %18, %15, %9
  %20 = load i32* %1, !dbg !968
  ret i32 %20, !dbg !968
}

declare i32 @XAxiVdma_ChannelStart(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define void @XAxiVdma_DmaStop(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  %2 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !969), !dbg !970
  store i16 %Direction, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !971), !dbg !972
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !973), !dbg !974
  %3 = load %struct.XAxiVdma** %1, align 4, !dbg !975
  %4 = load i16* %2, align 2, !dbg !975
  %5 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %3, i16 zeroext %4), !dbg !975
  store %struct.XAxiVdma_Channel* %5, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !975
  %6 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !976
  %7 = icmp ne %struct.XAxiVdma_Channel* %6, null, !dbg !976
  br i1 %7, label %9, label %8, !dbg !976

; <label>:8                                       ; preds = %0
  br label %17, !dbg !978

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !980
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 3, !dbg !980
  %12 = load i32* %11, align 4, !dbg !980
  %13 = icmp ne i32 %12, 0, !dbg !980
  br i1 %13, label %14, label %16, !dbg !980

; <label>:14                                      ; preds = %9
  %15 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !982
  call void @XAxiVdma_ChannelStop(%struct.XAxiVdma_Channel* %15), !dbg !982
  br label %16, !dbg !984

; <label>:16                                      ; preds = %14, %9
  br label %17, !dbg !985

; <label>:17                                      ; preds = %16, %8
  ret void, !dbg !986
}

declare void @XAxiVdma_ChannelStop(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define void @XAxiVdma_DmaRegisterDump(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  %2 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !987), !dbg !988
  store i16 %Direction, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !989), !dbg !990
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !991), !dbg !992
  %3 = load %struct.XAxiVdma** %1, align 4, !dbg !993
  %4 = load i16* %2, align 2, !dbg !993
  %5 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %3, i16 zeroext %4), !dbg !993
  store %struct.XAxiVdma_Channel* %5, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !993
  %6 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !994
  %7 = icmp ne %struct.XAxiVdma_Channel* %6, null, !dbg !994
  br i1 %7, label %9, label %8, !dbg !994

; <label>:8                                       ; preds = %0
  br label %17, !dbg !996

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !998
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 3, !dbg !998
  %12 = load i32* %11, align 4, !dbg !998
  %13 = icmp ne i32 %12, 0, !dbg !998
  br i1 %13, label %14, label %16, !dbg !998

; <label>:14                                      ; preds = %9
  %15 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1000
  call void @XAxiVdma_ChannelRegisterDump(%struct.XAxiVdma_Channel* %15), !dbg !1000
  br label %16, !dbg !1002

; <label>:16                                      ; preds = %14, %9
  br label %17, !dbg !1003

; <label>:17                                      ; preds = %16, %8
  ret void, !dbg !1004
}

declare void @XAxiVdma_ChannelRegisterDump(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_SetFrameCounter(%struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma_FrameCounter* %CfgPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca %struct.XAxiVdma_FrameCounter*, align 4
  %Status = alloca i32, align 4
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !1005), !dbg !1006
  store %struct.XAxiVdma_FrameCounter* %CfgPtr, %struct.XAxiVdma_FrameCounter** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_FrameCounter** %3}, metadata !1007), !dbg !1008
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !1009), !dbg !1010
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !1011), !dbg !1012
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !1013
  %5 = icmp ne %struct.XAxiVdma* %4, null, !dbg !1013
  br i1 %5, label %6, label %7, !dbg !1013

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1016
  br label %8, !dbg !1016

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0), i32 1148), !dbg !1019
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1019
  store i32 0, i32* %1, !dbg !1019
  br label %80, !dbg !1019

; <label>:8                                       ; preds = %6
  %9 = load %struct.XAxiVdma** %2, align 4, !dbg !1022
  %10 = getelementptr inbounds %struct.XAxiVdma* %9, i32 0, i32 2, !dbg !1022
  %11 = load i32* %10, align 4, !dbg !1022
  %12 = icmp eq i32 %11, 286331153, !dbg !1022
  br i1 %12, label %13, label %14, !dbg !1022

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1025
  br label %15, !dbg !1025

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0), i32 1149), !dbg !1028
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1028
  store i32 0, i32* %1, !dbg !1028
  br label %80, !dbg !1028

; <label>:15                                      ; preds = %13
  %16 = load %struct.XAxiVdma_FrameCounter** %3, align 4, !dbg !1031
  %17 = icmp ne %struct.XAxiVdma_FrameCounter* %16, null, !dbg !1031
  br i1 %17, label %18, label %19, !dbg !1031

; <label>:18                                      ; preds = %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1034
  br label %20, !dbg !1034

; <label>:19                                      ; preds = %15
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0), i32 1150), !dbg !1037
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1037
  store i32 0, i32* %1, !dbg !1037
  br label %80, !dbg !1037

; <label>:20                                      ; preds = %18
  %21 = load %struct.XAxiVdma_FrameCounter** %3, align 4, !dbg !1040
  %22 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %21, i32 0, i32 0, !dbg !1040
  %23 = load i8* %22, align 1, !dbg !1040
  %24 = zext i8 %23 to i32, !dbg !1040
  %25 = icmp eq i32 %24, 0, !dbg !1040
  br i1 %25, label %32, label %26, !dbg !1040

; <label>:26                                      ; preds = %20
  %27 = load %struct.XAxiVdma_FrameCounter** %3, align 4, !dbg !1042
  %28 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %27, i32 0, i32 2, !dbg !1042
  %29 = load i8* %28, align 1, !dbg !1042
  %30 = zext i8 %29 to i32, !dbg !1042
  %31 = icmp eq i32 %30, 0, !dbg !1042
  br i1 %31, label %32, label %33, !dbg !1042

; <label>:32                                      ; preds = %26, %20
  store i32 15, i32* %1, !dbg !1044
  br label %80, !dbg !1044

; <label>:33                                      ; preds = %26
  %34 = load %struct.XAxiVdma** %2, align 4, !dbg !1046
  %35 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %34, i16 zeroext 2), !dbg !1046
  store %struct.XAxiVdma_Channel* %35, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1046
  %36 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1047
  %37 = getelementptr inbounds %struct.XAxiVdma_Channel* %36, i32 0, i32 3, !dbg !1047
  %38 = load i32* %37, align 4, !dbg !1047
  %39 = icmp ne i32 %38, 0, !dbg !1047
  br i1 %39, label %40, label %56, !dbg !1047

; <label>:40                                      ; preds = %33
  %41 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1049
  %42 = load %struct.XAxiVdma_FrameCounter** %3, align 4, !dbg !1049
  %43 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %42, i32 0, i32 0, !dbg !1049
  %44 = load i8* %43, align 1, !dbg !1049
  %45 = load %struct.XAxiVdma_FrameCounter** %3, align 4, !dbg !1049
  %46 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %45, i32 0, i32 1, !dbg !1049
  %47 = load i8* %46, align 1, !dbg !1049
  %48 = call i32 @XAxiVdma_ChannelSetFrmCnt(%struct.XAxiVdma_Channel* %41, i8 zeroext %44, i8 zeroext %47), !dbg !1049
  store i32 %48, i32* %Status, align 4, !dbg !1049
  %49 = load i32* %Status, align 4, !dbg !1051
  %50 = icmp ne i32 %49, 0, !dbg !1051
  br i1 %50, label %51, label %55, !dbg !1051

; <label>:51                                      ; preds = %40
  %52 = load i32* %Status, align 4, !dbg !1053
  %53 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str14, i32 0, i32 0), i32 %52), !dbg !1053
  %54 = load i32* %Status, align 4, !dbg !1055
  store i32 %54, i32* %1, !dbg !1055
  br label %80, !dbg !1055

; <label>:55                                      ; preds = %40
  br label %56, !dbg !1056

; <label>:56                                      ; preds = %55, %33
  %57 = load %struct.XAxiVdma** %2, align 4, !dbg !1057
  %58 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %57, i16 zeroext 1), !dbg !1057
  store %struct.XAxiVdma_Channel* %58, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1057
  %59 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1058
  %60 = getelementptr inbounds %struct.XAxiVdma_Channel* %59, i32 0, i32 3, !dbg !1058
  %61 = load i32* %60, align 4, !dbg !1058
  %62 = icmp ne i32 %61, 0, !dbg !1058
  br i1 %62, label %63, label %79, !dbg !1058

; <label>:63                                      ; preds = %56
  %64 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1060
  %65 = load %struct.XAxiVdma_FrameCounter** %3, align 4, !dbg !1060
  %66 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %65, i32 0, i32 2, !dbg !1060
  %67 = load i8* %66, align 1, !dbg !1060
  %68 = load %struct.XAxiVdma_FrameCounter** %3, align 4, !dbg !1060
  %69 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %68, i32 0, i32 3, !dbg !1060
  %70 = load i8* %69, align 1, !dbg !1060
  %71 = call i32 @XAxiVdma_ChannelSetFrmCnt(%struct.XAxiVdma_Channel* %64, i8 zeroext %67, i8 zeroext %70), !dbg !1060
  store i32 %71, i32* %Status, align 4, !dbg !1060
  %72 = load i32* %Status, align 4, !dbg !1062
  %73 = icmp ne i32 %72, 0, !dbg !1062
  br i1 %73, label %74, label %78, !dbg !1062

; <label>:74                                      ; preds = %63
  %75 = load i32* %Status, align 4, !dbg !1064
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str15, i32 0, i32 0), i32 %75), !dbg !1064
  %77 = load i32* %Status, align 4, !dbg !1066
  store i32 %77, i32* %1, !dbg !1066
  br label %80, !dbg !1066

; <label>:78                                      ; preds = %63
  br label %79, !dbg !1067

; <label>:79                                      ; preds = %78, %56
  store i32 0, i32* %1, !dbg !1068
  br label %80, !dbg !1068

; <label>:80                                      ; preds = %79, %74, %51, %32, %19, %14, %7
  %81 = load i32* %1, !dbg !1069
  ret i32 %81, !dbg !1069
}

declare i32 @XAxiVdma_ChannelSetFrmCnt(%struct.XAxiVdma_Channel*, i8 zeroext, i8 zeroext) #2

; Function Attrs: nounwind
define void @XAxiVdma_GetFrameCounter(%struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma_FrameCounter* %CfgPtr) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  %2 = alloca %struct.XAxiVdma_FrameCounter*, align 4
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  %FrmCnt = alloca i8, align 1
  %DlyCnt = alloca i8, align 1
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !1070), !dbg !1071
  store %struct.XAxiVdma_FrameCounter* %CfgPtr, %struct.XAxiVdma_FrameCounter** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_FrameCounter** %2}, metadata !1072), !dbg !1073
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !1074), !dbg !1075
  call void @llvm.dbg.declare(metadata !{i8* %FrmCnt}, metadata !1076), !dbg !1077
  call void @llvm.dbg.declare(metadata !{i8* %DlyCnt}, metadata !1078), !dbg !1079
  %3 = load %struct.XAxiVdma** %1, align 4, !dbg !1080
  %4 = icmp ne %struct.XAxiVdma* %3, null, !dbg !1080
  br i1 %4, label %5, label %6, !dbg !1080

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1083
  br label %7, !dbg !1083

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0), i32 1213), !dbg !1086
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1086
  br label %50, !dbg !1086

; <label>:7                                       ; preds = %5
  %8 = load %struct.XAxiVdma** %1, align 4, !dbg !1089
  %9 = getelementptr inbounds %struct.XAxiVdma* %8, i32 0, i32 2, !dbg !1089
  %10 = load i32* %9, align 4, !dbg !1089
  %11 = icmp eq i32 %10, 286331153, !dbg !1089
  br i1 %11, label %12, label %13, !dbg !1089

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1092
  br label %14, !dbg !1092

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0), i32 1214), !dbg !1095
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1095
  br label %50, !dbg !1095

; <label>:14                                      ; preds = %12
  %15 = load %struct.XAxiVdma_FrameCounter** %2, align 4, !dbg !1098
  %16 = icmp ne %struct.XAxiVdma_FrameCounter* %15, null, !dbg !1098
  br i1 %16, label %17, label %18, !dbg !1098

; <label>:17                                      ; preds = %14
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !1101
  br label %19, !dbg !1101

; <label>:18                                      ; preds = %14
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0), i32 1215), !dbg !1104
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !1104
  br label %50, !dbg !1104

; <label>:19                                      ; preds = %17
  store i8 0, i8* %FrmCnt, align 1, !dbg !1107
  %20 = load %struct.XAxiVdma** %1, align 4, !dbg !1108
  %21 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %20, i16 zeroext 2), !dbg !1108
  store %struct.XAxiVdma_Channel* %21, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1108
  %22 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1109
  %23 = getelementptr inbounds %struct.XAxiVdma_Channel* %22, i32 0, i32 3, !dbg !1109
  %24 = load i32* %23, align 4, !dbg !1109
  %25 = icmp ne i32 %24, 0, !dbg !1109
  br i1 %25, label %26, label %28, !dbg !1109

; <label>:26                                      ; preds = %19
  %27 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1111
  call void @XAxiVdma_ChannelGetFrmCnt(%struct.XAxiVdma_Channel* %27, i8* %FrmCnt, i8* %DlyCnt), !dbg !1111
  br label %28, !dbg !1113

; <label>:28                                      ; preds = %26, %19
  %29 = load i8* %FrmCnt, align 1, !dbg !1114
  %30 = load %struct.XAxiVdma_FrameCounter** %2, align 4, !dbg !1114
  %31 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %30, i32 0, i32 0, !dbg !1114
  store i8 %29, i8* %31, align 1, !dbg !1114
  %32 = load i8* %DlyCnt, align 1, !dbg !1115
  %33 = load %struct.XAxiVdma_FrameCounter** %2, align 4, !dbg !1115
  %34 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %33, i32 0, i32 1, !dbg !1115
  store i8 %32, i8* %34, align 1, !dbg !1115
  store i8 0, i8* %FrmCnt, align 1, !dbg !1116
  %35 = load %struct.XAxiVdma** %1, align 4, !dbg !1117
  %36 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %35, i16 zeroext 1), !dbg !1117
  store %struct.XAxiVdma_Channel* %36, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1117
  %37 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1118
  %38 = getelementptr inbounds %struct.XAxiVdma_Channel* %37, i32 0, i32 3, !dbg !1118
  %39 = load i32* %38, align 4, !dbg !1118
  %40 = icmp ne i32 %39, 0, !dbg !1118
  br i1 %40, label %41, label %43, !dbg !1118

; <label>:41                                      ; preds = %28
  %42 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1120
  call void @XAxiVdma_ChannelGetFrmCnt(%struct.XAxiVdma_Channel* %42, i8* %FrmCnt, i8* %DlyCnt), !dbg !1120
  br label %43, !dbg !1122

; <label>:43                                      ; preds = %41, %28
  %44 = load i8* %FrmCnt, align 1, !dbg !1123
  %45 = load %struct.XAxiVdma_FrameCounter** %2, align 4, !dbg !1123
  %46 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %45, i32 0, i32 2, !dbg !1123
  store i8 %44, i8* %46, align 1, !dbg !1123
  %47 = load i8* %DlyCnt, align 1, !dbg !1124
  %48 = load %struct.XAxiVdma_FrameCounter** %2, align 4, !dbg !1124
  %49 = getelementptr inbounds %struct.XAxiVdma_FrameCounter* %48, i32 0, i32 3, !dbg !1124
  store i8 %47, i8* %49, align 1, !dbg !1124
  br label %50, !dbg !1125

; <label>:50                                      ; preds = %43, %18, %13, %6
  ret void, !dbg !1126
}

declare void @XAxiVdma_ChannelGetFrmCnt(%struct.XAxiVdma_Channel*, i8*, i8*) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_SetFrmStore(%struct.XAxiVdma* %InstancePtr, i8 zeroext %FrmStoreNum, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !1127), !dbg !1128
  store i8 %FrmStoreNum, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !1129), !dbg !1130
  store i16 %Direction, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !1131), !dbg !1132
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !1133), !dbg !1134
  %5 = load i8* %3, align 1, !dbg !1135
  %6 = zext i8 %5 to i32, !dbg !1135
  %7 = load %struct.XAxiVdma** %2, align 4, !dbg !1135
  %8 = getelementptr inbounds %struct.XAxiVdma* %7, i32 0, i32 3, !dbg !1135
  %9 = load i32* %8, align 4, !dbg !1135
  %10 = icmp sgt i32 %6, %9, !dbg !1135
  br i1 %10, label %11, label %12, !dbg !1135

; <label>:11                                      ; preds = %0
  store i32 1, i32* %1, !dbg !1137
  br label %46, !dbg !1137

; <label>:12                                      ; preds = %0
  %13 = load %struct.XAxiVdma** %2, align 4, !dbg !1139
  %14 = load i16* %4, align 2, !dbg !1139
  %15 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %13, i16 zeroext %14), !dbg !1139
  store %struct.XAxiVdma_Channel* %15, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1139
  %16 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1140
  %17 = icmp ne %struct.XAxiVdma_Channel* %16, null, !dbg !1140
  br i1 %17, label %19, label %18, !dbg !1140

; <label>:18                                      ; preds = %12
  store i32 1, i32* %1, !dbg !1142
  br label %46, !dbg !1142

; <label>:19                                      ; preds = %12
  %20 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1144
  %21 = call i32 @XAxiVdma_ChannelIsRunning(%struct.XAxiVdma_Channel* %20), !dbg !1144
  %22 = icmp ne i32 %21, 0, !dbg !1144
  br i1 %22, label %23, label %25, !dbg !1144

; <label>:23                                      ; preds = %19
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str16, i32 0, i32 0)), !dbg !1146
  store i32 1, i32* %1, !dbg !1148
  br label %46, !dbg !1148

; <label>:25                                      ; preds = %19
  %26 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1149
  %27 = getelementptr inbounds %struct.XAxiVdma_Channel* %26, i32 0, i32 24, !dbg !1149
  %28 = load i32* %27, align 4, !dbg !1149
  %29 = and i32 %28, 2, !dbg !1149
  %30 = icmp ne i32 %29, 0, !dbg !1149
  br i1 %30, label %33, label %31, !dbg !1149

; <label>:31                                      ; preds = %25
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str17, i32 0, i32 0)), !dbg !1151
  store i32 19, i32* %1, !dbg !1153
  br label %46, !dbg !1153

; <label>:33                                      ; preds = %25
  %34 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1154
  %35 = getelementptr inbounds %struct.XAxiVdma_Channel* %34, i32 0, i32 0, !dbg !1154
  %36 = load i32* %35, align 4, !dbg !1154
  %37 = add i32 %36, 24, !dbg !1154
  %38 = load i8* %3, align 1, !dbg !1154
  %39 = zext i8 %38 to i32, !dbg !1154
  %40 = and i32 %39, 63, !dbg !1154
  call void @Xil_Out32(i32 %37, i32 %40), !dbg !1154
  %41 = load i8* %3, align 1, !dbg !1155
  %42 = zext i8 %41 to i32, !dbg !1155
  %43 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1155
  %44 = getelementptr inbounds %struct.XAxiVdma_Channel* %43, i32 0, i32 11, !dbg !1155
  store i32 %42, i32* %44, align 4, !dbg !1155
  %45 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1156
  call void @XAxiVdma_ChannelInit(%struct.XAxiVdma_Channel* %45), !dbg !1156
  store i32 0, i32* %1, !dbg !1157
  br label %46, !dbg !1157

; <label>:46                                      ; preds = %33, %31, %23, %18, %11
  %47 = load i32* %1, !dbg !1158
  ret i32 %47, !dbg !1158
}

declare i32 @XAxiVdma_ChannelIsRunning(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define void @XAxiVdma_GetFrmStore(%struct.XAxiVdma* %InstancePtr, i8* %FrmStoreNum, i16 zeroext %Direction) #0 {
  %1 = alloca %struct.XAxiVdma*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %1}, metadata !1159), !dbg !1160
  store i8* %FrmStoreNum, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1161), !dbg !1162
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !1163), !dbg !1164
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !1165), !dbg !1166
  %4 = load %struct.XAxiVdma** %1, align 4, !dbg !1167
  %5 = load i16* %3, align 2, !dbg !1167
  %6 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %4, i16 zeroext %5), !dbg !1167
  store %struct.XAxiVdma_Channel* %6, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1167
  %7 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1168
  %8 = icmp ne %struct.XAxiVdma_Channel* %7, null, !dbg !1168
  br i1 %8, label %10, label %9, !dbg !1168

; <label>:9                                       ; preds = %0
  br label %27, !dbg !1170

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1172
  %12 = getelementptr inbounds %struct.XAxiVdma_Channel* %11, i32 0, i32 24, !dbg !1172
  %13 = load i32* %12, align 4, !dbg !1172
  %14 = and i32 %13, 2, !dbg !1172
  %15 = icmp ne i32 %14, 0, !dbg !1172
  br i1 %15, label %16, label %25, !dbg !1172

; <label>:16                                      ; preds = %10
  %17 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1174
  %18 = getelementptr inbounds %struct.XAxiVdma_Channel* %17, i32 0, i32 0, !dbg !1174
  %19 = load i32* %18, align 4, !dbg !1174
  %20 = add i32 %19, 24, !dbg !1174
  %21 = call i32 @Xil_In32(i32 %20), !dbg !1174
  %22 = and i32 %21, 63, !dbg !1174
  %23 = trunc i32 %22 to i8, !dbg !1174
  %24 = load i8** %2, align 4, !dbg !1174
  store i8 %23, i8* %24, align 1, !dbg !1174
  br label %27, !dbg !1176

; <label>:25                                      ; preds = %10
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str17, i32 0, i32 0)), !dbg !1177
  br label %27

; <label>:27                                      ; preds = %9, %25, %16
  ret void, !dbg !1179
}

; Function Attrs: nounwind
define i32 @XAxiVdma_GetDmaChannelErrors(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !1180), !dbg !1181
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !1182), !dbg !1183
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !1184), !dbg !1185
  %4 = load %struct.XAxiVdma** %2, align 4, !dbg !1186
  %5 = load i16* %3, align 2, !dbg !1186
  %6 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %4, i16 zeroext %5), !dbg !1186
  store %struct.XAxiVdma_Channel* %6, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1186
  %7 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1187
  %8 = icmp ne %struct.XAxiVdma_Channel* %7, null, !dbg !1187
  br i1 %8, label %10, label %9, !dbg !1187

; <label>:9                                       ; preds = %0
  store i32 15, i32* %1, !dbg !1189
  br label %19, !dbg !1189

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1191
  %12 = getelementptr inbounds %struct.XAxiVdma_Channel* %11, i32 0, i32 3, !dbg !1191
  %13 = load i32* %12, align 4, !dbg !1191
  %14 = icmp ne i32 %13, 0, !dbg !1191
  br i1 %14, label %15, label %18, !dbg !1191

; <label>:15                                      ; preds = %10
  %16 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1193
  %17 = call i32 @XAxiVdma_ChannelErrors(%struct.XAxiVdma_Channel* %16), !dbg !1193
  store i32 %17, i32* %1, !dbg !1193
  br label %19, !dbg !1193

; <label>:18                                      ; preds = %10
  store i32 2, i32* %1, !dbg !1195
  br label %19, !dbg !1195

; <label>:19                                      ; preds = %18, %15, %9
  %20 = load i32* %1, !dbg !1197
  ret i32 %20, !dbg !1197
}

declare i32 @XAxiVdma_ChannelErrors(%struct.XAxiVdma_Channel*) #2

; Function Attrs: nounwind
define i32 @XAxiVdma_ClearDmaChannelErrors(%struct.XAxiVdma* %InstancePtr, i16 zeroext %Direction, i32 %ErrorMask) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma*, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %Channel = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma* %InstancePtr, %struct.XAxiVdma** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma** %2}, metadata !1198), !dbg !1199
  store i16 %Direction, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !1200), !dbg !1201
  store i32 %ErrorMask, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1202), !dbg !1203
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %Channel}, metadata !1204), !dbg !1205
  %5 = load %struct.XAxiVdma** %2, align 4, !dbg !1206
  %6 = load i16* %3, align 2, !dbg !1206
  %7 = call %struct.XAxiVdma_Channel* @XAxiVdma_GetChannel(%struct.XAxiVdma* %5, i16 zeroext %6), !dbg !1206
  store %struct.XAxiVdma_Channel* %7, %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1206
  %8 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1207
  %9 = icmp ne %struct.XAxiVdma_Channel* %8, null, !dbg !1207
  br i1 %9, label %11, label %10, !dbg !1207

; <label>:10                                      ; preds = %0
  store i32 15, i32* %1, !dbg !1209
  br label %20, !dbg !1209

; <label>:11                                      ; preds = %0
  %12 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1211
  %13 = getelementptr inbounds %struct.XAxiVdma_Channel* %12, i32 0, i32 3, !dbg !1211
  %14 = load i32* %13, align 4, !dbg !1211
  %15 = icmp ne i32 %14, 0, !dbg !1211
  br i1 %15, label %16, label %19, !dbg !1211

; <label>:16                                      ; preds = %11
  %17 = load %struct.XAxiVdma_Channel** %Channel, align 4, !dbg !1213
  %18 = load i32* %4, align 4, !dbg !1213
  call void @XAxiVdma_ClearChannelErrors(%struct.XAxiVdma_Channel* %17, i32 %18), !dbg !1213
  store i32 0, i32* %1, !dbg !1215
  br label %20, !dbg !1215

; <label>:19                                      ; preds = %11
  store i32 2, i32* %1, !dbg !1216
  br label %20, !dbg !1216

; <label>:20                                      ; preds = %19, %16, %10
  %21 = load i32* %1, !dbg !1218
  ret i32 %21, !dbg !1218
}

declare void @XAxiVdma_ClearChannelErrors(%struct.XAxiVdma_Channel*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !229, !231, !232, !233, !234, !235, !236, !237, !238, !239, !238, !240, !232, !241, !242, !243, !244, !245, !242, !246, !247, !248, !249, !250, !251, !252, !251, !253, !247, !254, !232, !255, !236, !256, !229, !257, !236, !258, !229, !259, !260, !261, !262, !263, !264, !265, !266, !267, !264, !268, !269, !270, !266, !271, !272, !273, !274, !275, !238, !276, !232, !277, !236, !278, !229, !279, !236, !280, !229, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !232, !292, !293, !294, !238, !295, !234, !296, !297, !298, !299}
!xidane.function_declaration_filename = !{!216, !300, !218, !301, !220, !300, !222, !302, !224, !303, !226, !304, !228, !305, !230, !305, !231, !305, !233, !305, !235, !300, !237, !300, !239, !300, !240, !305, !241, !300, !243, !300, !245, !300, !246, !300, !248, !304, !250, !300, !252, !300, !253, !300, !254, !305, !255, !300, !256, !305, !257, !300, !258, !305, !259, !300, !261, !305, !263, !300, !265, !305, !267, !300, !268, !300, !270, !305, !271, !300, !273, !305, !275, !300, !276, !305, !277, !300, !278, !305, !279, !300, !280, !305, !281, !300, !283, !305, !285, !300, !287, !305, !289, !300, !291, !305, !292, !300, !294, !300, !295, !305, !296, !300, !298, !305}
!xidane.ExternC = !{!216, !218, !220, !222, !226, !228, !230, !231, !233, !235, !237, !239, !240, !241, !243, !245, !246, !248, !250, !252, !253, !254, !255, !256, !257, !258, !259, !261, !263, !265, !267, !268, !270, !271, !273, !275, !276, !277, !278, !279, !280, !281, !283, !285, !287, !289, !291, !292, !294, !295, !296, !298}
!llvm.module.flags = !{!306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !90, metadata !128, metadata !131, metadata !134, metadata !135, metadata !138, metadata !141, metadata !142, metadata !145, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !155, metadata !174, metadata !175, metadata !178, metadata !182, metadata !183, metadata !184, metadata !185, metadata !199, metadata !202, metadata !205, metadata !209, metadata !210, metadata !213}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_GetChannel", metadata !"XAxiVdma_GetChannel", metadata !"", i32 101, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.XAxiVdma_Channel* (%struct.XAxiVdma*, i16)* @XAxiVdma_GetChannel, null, null, metadata !2, i32 103} ; [ DW_TAG_subprogram ] [line 101] [def] [scope 103] [XAxiVdma_GetChannel]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !53, metadata !87}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma_Channel]
!9 = metadata !{i32 786454, metadata !10, null, metadata !"XAxiVdma_Channel", i32 120, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [XAxiVdma_Channel] [line 120, size 0, align 0, offset 0] [from ]
!10 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_i.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!11 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 86, i64 9216, i64 256, i32 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 86, size 9216, align 256, offset 0] [def] [from ]
!12 = metadata !{metadata !13, metadata !19, metadata !20, metadata !21, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !50, metadata !51, metadata !52}
!13 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"ChanBase", i32 87, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [ChanBase] [line 87, size 32, align 32, offset 0] [from u32]
!14 = metadata !{i32 786454, metadata !15, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!15 = metadata !{metadata !"../src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786454, metadata !17, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!17 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!18 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!19 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"InstanceBase", i32 88, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [InstanceBase] [line 88, size 32, align 32, offset 32] [from u32]
!20 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"StartAddrBase", i32 89, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [StartAddrBase] [line 89, size 32, align 32, offset 64] [from u32]
!21 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"IsValid", i32 91, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [IsValid] [line 91, size 32, align 32, offset 96] [from int]
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"FlushonFsync", i32 92, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [FlushonFsync] [line 92, size 32, align 32, offset 128] [from int]
!24 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HasSG", i32 94, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [HasSG] [line 94, size 32, align 32, offset 160] [from int]
!25 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"IsRead", i32 95, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [IsRead] [line 95, size 32, align 32, offset 192] [from int]
!26 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HasDRE", i32 96, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [HasDRE] [line 96, size 32, align 32, offset 224] [from int]
!27 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"LineBufDepth", i32 97, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [LineBufDepth] [line 97, size 32, align 32, offset 256] [from int]
!28 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"LineBufThreshold", i32 98, i64 32, i64 32, i64 288, i32 0, metadata !22} ; [ DW_TAG_member ] [LineBufThreshold] [line 98, size 32, align 32, offset 288] [from int]
!29 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"WordLength", i32 100, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [WordLength] [line 100, size 32, align 32, offset 320] [from int]
!30 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"NumFrames", i32 101, i64 32, i64 32, i64 352, i32 0, metadata !22} ; [ DW_TAG_member ] [NumFrames] [line 101, size 32, align 32, offset 352] [from int]
!31 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HeadBdPhysAddr", i32 103, i64 32, i64 32, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [HeadBdPhysAddr] [line 103, size 32, align 32, offset 384] [from UINTPTR]
!32 = metadata !{i32 786454, metadata !15, null, metadata !"UINTPTR", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [UINTPTR] [line 143, size 0, align 0, offset 0] [from u_int32_t]
!33 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HeadBdAddr", i32 104, i64 32, i64 32, i64 416, i32 0, metadata !32} ; [ DW_TAG_member ] [HeadBdAddr] [line 104, size 32, align 32, offset 416] [from UINTPTR]
!34 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"TailBdPhysAddr", i32 105, i64 32, i64 32, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [TailBdPhysAddr] [line 105, size 32, align 32, offset 448] [from UINTPTR]
!35 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"TailBdAddr", i32 106, i64 32, i64 32, i64 480, i32 0, metadata !32} ; [ DW_TAG_member ] [TailBdAddr] [line 106, size 32, align 32, offset 480] [from UINTPTR]
!36 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Hsize", i32 107, i64 32, i64 32, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ] [Hsize] [line 107, size 32, align 32, offset 512] [from int]
!37 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Vsize", i32 108, i64 32, i64 32, i64 544, i32 0, metadata !22} ; [ DW_TAG_member ] [Vsize] [line 108, size 32, align 32, offset 544] [from int]
!38 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"AllCnt", i32 110, i64 32, i64 32, i64 576, i32 0, metadata !22} ; [ DW_TAG_member ] [AllCnt] [line 110, size 32, align 32, offset 576] [from int]
!39 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"GenLock", i32 112, i64 32, i64 32, i64 608, i32 0, metadata !22} ; [ DW_TAG_member ] [GenLock] [line 112, size 32, align 32, offset 608] [from int]
!40 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmSOF", i32 113, i64 32, i64 32, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmSOF] [line 113, size 32, align 32, offset 640] [from int]
!41 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"StreamWidth", i32 114, i64 32, i64 32, i64 672, i32 0, metadata !22} ; [ DW_TAG_member ] [StreamWidth] [line 114, size 32, align 32, offset 672] [from int]
!42 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"BDs", i32 115, i64 8192, i64 32, i64 768, i32 0, metadata !43} ; [ DW_TAG_member ] [BDs] [line 115, size 8192, align 32, offset 768] [from ]
!43 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !44, metadata !48, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from XAxiVdma_Bd]
!44 = metadata !{i32 786454, metadata !10, null, metadata !"XAxiVdma_Bd", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [XAxiVdma_Bd] [line 82, size 0, align 0, offset 0] [from ]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !14, metadata !46, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from u32]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!50 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"DbgFeatureFlags", i32 117, i64 32, i64 32, i64 8960, i32 0, metadata !14} ; [ DW_TAG_member ] [DbgFeatureFlags] [line 117, size 32, align 32, offset 8960] [from u32]
!51 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"AddrWidth", i32 118, i64 32, i64 32, i64 8992, i32 0, metadata !22} ; [ DW_TAG_member ] [AddrWidth] [line 118, size 32, align 32, offset 8992] [from int]
!52 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"direction", i32 119, i64 32, i64 32, i64 9024, i32 0, metadata !22} ; [ DW_TAG_member ] [direction] [line 119, size 32, align 32, offset 9024] [from int]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma]
!54 = metadata !{i32 786454, metadata !55, null, metadata !"XAxiVdma", i32 525, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [XAxiVdma] [line 525, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!56 = metadata !{i32 786451, metadata !55, null, metadata !"", i32 504, i64 19456, i64 256, i32 0, i32 0, null, metadata !57, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 504, size 19456, align 256, offset 0] [def] [from ]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !83, metadata !84, metadata !85, metadata !86}
!58 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"BaseAddr", i32 505, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [BaseAddr] [line 505, size 32, align 32, offset 0] [from UINTPTR]
!59 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"HasSG", i32 506, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [HasSG] [line 506, size 32, align 32, offset 32] [from int]
!60 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"IsReady", i32 507, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [IsReady] [line 507, size 32, align 32, offset 64] [from int]
!61 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"MaxNumFrames", i32 509, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [MaxNumFrames] [line 509, size 32, align 32, offset 96] [from int]
!62 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"HasMm2S", i32 510, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [HasMm2S] [line 510, size 32, align 32, offset 128] [from int]
!63 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"HasMm2SDRE", i32 511, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [HasMm2SDRE] [line 511, size 32, align 32, offset 160] [from int]
!64 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"HasS2Mm", i32 512, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [HasS2Mm] [line 512, size 32, align 32, offset 192] [from int]
!65 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"HasS2MmDRE", i32 513, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [HasS2MmDRE] [line 513, size 32, align 32, offset 224] [from int]
!66 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"EnableVIDParamRead", i32 514, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableVIDParamRead] [line 514, size 32, align 32, offset 256] [from int]
!67 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"UseFsync", i32 516, i64 32, i64 32, i64 288, i32 0, metadata !22} ; [ DW_TAG_member ] [UseFsync] [line 516, size 32, align 32, offset 288] [from int]
!68 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"InternalGenLock", i32 518, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [InternalGenLock] [line 518, size 32, align 32, offset 320] [from int]
!69 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"ReadCallBack", i32 519, i64 128, i64 32, i64 352, i32 0, metadata !70} ; [ DW_TAG_member ] [ReadCallBack] [line 519, size 128, align 32, offset 352] [from XAxiVdma_ChannelCallBack]
!70 = metadata !{i32 786454, metadata !55, null, metadata !"XAxiVdma_ChannelCallBack", i32 499, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [XAxiVdma_ChannelCallBack] [line 499, size 0, align 0, offset 0] [from ]
!71 = metadata !{i32 786451, metadata !55, null, metadata !"", i32 493, i64 128, i64 32, i32 0, i32 0, null, metadata !72, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 493, size 128, align 32, offset 0] [def] [from ]
!72 = metadata !{metadata !73, metadata !79, metadata !80, metadata !82}
!73 = metadata !{i32 786445, metadata !55, metadata !71, metadata !"CompletionCallBack", i32 494, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [CompletionCallBack] [line 494, size 32, align 32, offset 0] [from XAxiVdma_CallBack]
!74 = metadata !{i32 786454, metadata !55, null, metadata !"XAxiVdma_CallBack", i32 381, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [XAxiVdma_CallBack] [line 381, size 0, align 0, offset 0] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!76 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{null, metadata !78, metadata !14}
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!79 = metadata !{i32 786445, metadata !55, metadata !71, metadata !"CompletionRef", i32 495, i64 32, i64 32, i64 32, i32 0, metadata !78} ; [ DW_TAG_member ] [CompletionRef] [line 495, size 32, align 32, offset 32] [from ]
!80 = metadata !{i32 786445, metadata !55, metadata !71, metadata !"ErrCallBack", i32 497, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [ErrCallBack] [line 497, size 32, align 32, offset 64] [from XAxiVdma_ErrorCallBack]
!81 = metadata !{i32 786454, metadata !55, null, metadata !"XAxiVdma_ErrorCallBack", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [XAxiVdma_ErrorCallBack] [line 394, size 0, align 0, offset 0] [from ]
!82 = metadata !{i32 786445, metadata !55, metadata !71, metadata !"ErrRef", i32 498, i64 32, i64 32, i64 96, i32 0, metadata !78} ; [ DW_TAG_member ] [ErrRef] [line 498, size 32, align 32, offset 96] [from ]
!83 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"WriteCallBack", i32 520, i64 128, i64 32, i64 480, i32 0, metadata !70} ; [ DW_TAG_member ] [WriteCallBack] [line 520, size 128, align 32, offset 480] [from XAxiVdma_ChannelCallBack]
!84 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"ReadChannel", i32 522, i64 9216, i64 256, i64 768, i32 0, metadata !9} ; [ DW_TAG_member ] [ReadChannel] [line 522, size 9216, align 256, offset 768] [from XAxiVdma_Channel]
!85 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"WriteChannel", i32 523, i64 9216, i64 256, i64 9984, i32 0, metadata !9} ; [ DW_TAG_member ] [WriteChannel] [line 523, size 9216, align 256, offset 9984] [from XAxiVdma_Channel]
!86 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"AddrWidth", i32 524, i64 32, i64 32, i64 19200, i32 0, metadata !22} ; [ DW_TAG_member ] [AddrWidth] [line 524, size 32, align 32, offset 19200] [from int]
!87 = metadata !{i32 786454, metadata !15, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!88 = metadata !{i32 786454, metadata !17, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!89 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!90 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_CfgInitialize", metadata !"XAxiVdma_CfgInitialize", metadata !"", i32 143, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, %struct.XAxiVdma_Config*, i32)* @XAxiVdma_CfgInitialize, null, null, metadata !2, i32 145} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 145] [XAxiVdma_CfgInitialize]
!91 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !22, metadata !53, metadata !93, metadata !14}
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma_Config]
!94 = metadata !{i32 786454, metadata !55, null, metadata !"XAxiVdma_Config", i32 455, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [XAxiVdma_Config] [line 455, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786451, metadata !55, null, metadata !"", i32 401, i64 992, i64 32, i32 0, i32 0, null, metadata !96, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 401, size 992, align 32, offset 0] [def] [from ]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127}
!97 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"DeviceId", i32 402, i64 16, i64 16, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [DeviceId] [line 402, size 16, align 16, offset 0] [from u16]
!98 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"BaseAddress", i32 403, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [BaseAddress] [line 403, size 32, align 32, offset 32] [from UINTPTR]
!99 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"MaxFrameStoreNum", i32 405, i64 16, i64 16, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [MaxFrameStoreNum] [line 405, size 16, align 16, offset 64] [from u16]
!100 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"HasMm2S", i32 406, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [HasMm2S] [line 406, size 32, align 32, offset 96] [from int]
!101 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"HasMm2SDRE", i32 407, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [HasMm2SDRE] [line 407, size 32, align 32, offset 128] [from int]
!102 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"Mm2SWordLen", i32 408, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [Mm2SWordLen] [line 408, size 32, align 32, offset 160] [from int]
!103 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"HasS2Mm", i32 409, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [HasS2Mm] [line 409, size 32, align 32, offset 192] [from int]
!104 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"HasS2MmDRE", i32 410, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [HasS2MmDRE] [line 410, size 32, align 32, offset 224] [from int]
!105 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmWordLen", i32 411, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmWordLen] [line 411, size 32, align 32, offset 256] [from int]
!106 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"HasSG", i32 412, i64 32, i64 32, i64 288, i32 0, metadata !22} ; [ DW_TAG_member ] [HasSG] [line 412, size 32, align 32, offset 288] [from int]
!107 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"EnableVIDParamRead", i32 413, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableVIDParamRead] [line 413, size 32, align 32, offset 320] [from int]
!108 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"UseFsync", i32 416, i64 32, i64 32, i64 352, i32 0, metadata !22} ; [ DW_TAG_member ] [UseFsync] [line 416, size 32, align 32, offset 352] [from int]
!109 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"FlushonFsync", i32 417, i64 32, i64 32, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [FlushonFsync] [line 417, size 32, align 32, offset 384] [from int]
!110 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"Mm2SBufDepth", i32 419, i64 32, i64 32, i64 416, i32 0, metadata !22} ; [ DW_TAG_member ] [Mm2SBufDepth] [line 419, size 32, align 32, offset 416] [from int]
!111 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmBufDepth", i32 420, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmBufDepth] [line 420, size 32, align 32, offset 448] [from int]
!112 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"Mm2SGenLock", i32 421, i64 32, i64 32, i64 480, i32 0, metadata !22} ; [ DW_TAG_member ] [Mm2SGenLock] [line 421, size 32, align 32, offset 480] [from int]
!113 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmGenLock", i32 422, i64 32, i64 32, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmGenLock] [line 422, size 32, align 32, offset 512] [from int]
!114 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"InternalGenLock", i32 423, i64 32, i64 32, i64 544, i32 0, metadata !22} ; [ DW_TAG_member ] [InternalGenLock] [line 423, size 32, align 32, offset 544] [from int]
!115 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmSOF", i32 424, i64 32, i64 32, i64 576, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmSOF] [line 424, size 32, align 32, offset 576] [from int]
!116 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"Mm2SStreamWidth", i32 425, i64 32, i64 32, i64 608, i32 0, metadata !22} ; [ DW_TAG_member ] [Mm2SStreamWidth] [line 425, size 32, align 32, offset 608] [from int]
!117 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmStreamWidth", i32 426, i64 32, i64 32, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmStreamWidth] [line 426, size 32, align 32, offset 640] [from int]
!118 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"Mm2SThresRegEn", i32 427, i64 32, i64 32, i64 672, i32 0, metadata !22} ; [ DW_TAG_member ] [Mm2SThresRegEn] [line 427, size 32, align 32, offset 672] [from int]
!119 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"Mm2SFrmStoreRegEn", i32 430, i64 32, i64 32, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [Mm2SFrmStoreRegEn] [line 430, size 32, align 32, offset 704] [from int]
!120 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"Mm2SDlyCntrEn", i32 433, i64 32, i64 32, i64 736, i32 0, metadata !22} ; [ DW_TAG_member ] [Mm2SDlyCntrEn] [line 433, size 32, align 32, offset 736] [from int]
!121 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"Mm2SFrmCntrEn", i32 436, i64 32, i64 32, i64 768, i32 0, metadata !22} ; [ DW_TAG_member ] [Mm2SFrmCntrEn] [line 436, size 32, align 32, offset 768] [from int]
!122 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmThresRegEn", i32 439, i64 32, i64 32, i64 800, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmThresRegEn] [line 439, size 32, align 32, offset 800] [from int]
!123 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmFrmStoreRegEn", i32 442, i64 32, i64 32, i64 832, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmFrmStoreRegEn] [line 442, size 32, align 32, offset 832] [from int]
!124 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmDlyCntrEn", i32 445, i64 32, i64 32, i64 864, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmDlyCntrEn] [line 445, size 32, align 32, offset 864] [from int]
!125 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"S2MmFrmCntrEn", i32 448, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [S2MmFrmCntrEn] [line 448, size 32, align 32, offset 896] [from int]
!126 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"EnableAllDbgFeatures", i32 451, i64 32, i64 32, i64 928, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableAllDbgFeatures] [line 451, size 32, align 32, offset 928] [from int]
!127 = metadata !{i32 786445, metadata !55, metadata !95, metadata !"AddrWidth", i32 454, i64 32, i64 32, i64 960, i32 0, metadata !22} ; [ DW_TAG_member ] [AddrWidth] [line 454, size 32, align 32, offset 960] [from int]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_Reset", metadata !"XAxiVdma_Reset", metadata !"", i32 368, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma*, i16)* @XAxiVdma_Reset, null, null, metadata !2, i32 369} ; [ DW_TAG_subprogram ] [line 368] [def] [scope 369] [XAxiVdma_Reset]
!129 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{null, metadata !53, metadata !87}
!131 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ResetNotDone", metadata !"XAxiVdma_ResetNotDone", metadata !"", i32 400, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_ResetNotDone, null, null, metadata !2, i32 401} ; [ DW_TAG_subprogram ] [line 400] [def] [scope 401] [XAxiVdma_ResetNotDone]
!132 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{metadata !22, metadata !53, metadata !87}
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_IsBusy", metadata !"XAxiVdma_IsBusy", metadata !"", i32 427, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_IsBusy, null, null, metadata !2, i32 428} ; [ DW_TAG_subprogram ] [line 427] [def] [scope 428] [XAxiVdma_IsBusy]
!135 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_CurrFrameStore", metadata !"XAxiVdma_CurrFrameStore", metadata !"", i32 460, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_CurrFrameStore, null, null, metadata !2, i32 461} ; [ DW_TAG_subprogram ] [line 460] [def] [scope 461] [XAxiVdma_CurrFrameStore]
!136 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{metadata !14, metadata !53, metadata !87}
!138 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_GetVersion", metadata !"XAxiVdma_GetVersion", metadata !"", i32 489, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*)* @XAxiVdma_GetVersion, null, null, metadata !2, i32 490} ; [ DW_TAG_subprogram ] [line 489] [def] [scope 490] [XAxiVdma_GetVersion]
!139 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !14, metadata !53}
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_GetStatus", metadata !"XAxiVdma_GetStatus", metadata !"", i32 507, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_GetStatus, null, null, metadata !2, i32 508} ; [ DW_TAG_subprogram ] [line 507] [def] [scope 508] [XAxiVdma_GetStatus]
!142 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_SetLineBufThreshold", metadata !"XAxiVdma_SetLineBufThreshold", metadata !"", i32 538, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_SetLineBufThreshold, null, null, metadata !2, i32 540} ; [ DW_TAG_subprogram ] [line 538] [def] [scope 540] [XAxiVdma_SetLineBufThreshold]
!143 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!144 = metadata !{metadata !22, metadata !53, metadata !22, metadata !87}
!145 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_FsyncSrcSelect", metadata !"XAxiVdma_FsyncSrcSelect", metadata !"", i32 590, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_FsyncSrcSelect, null, null, metadata !2, i32 592} ; [ DW_TAG_subprogram ] [line 590] [def] [scope 592] [XAxiVdma_FsyncSrcSelect]
!146 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{metadata !22, metadata !53, metadata !14, metadata !87}
!148 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_GenLockSourceSelect", metadata !"XAxiVdma_GenLockSourceSelect", metadata !"", i32 658, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_GenLockSourceSelect, null, null, metadata !2, i32 660} ; [ DW_TAG_subprogram ] [line 658] [def] [scope 660] [XAxiVdma_GenLockSourceSelect]
!149 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_StartParking", metadata !"XAxiVdma_StartParking", metadata !"", i32 723, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_StartParking, null, null, metadata !2, i32 725} ; [ DW_TAG_subprogram ] [line 723] [def] [scope 725] [XAxiVdma_StartParking]
!150 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_StopParking", metadata !"XAxiVdma_StopParking", metadata !"", i32 802, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma*, i16)* @XAxiVdma_StopParking, null, null, metadata !2, i32 803} ; [ DW_TAG_subprogram ] [line 802] [def] [scope 803] [XAxiVdma_StopParking]
!151 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_StartFrmCntEnable", metadata !"XAxiVdma_StartFrmCntEnable", metadata !"", i32 833, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma*, i16)* @XAxiVdma_StartFrmCntEnable, null, null, metadata !2, i32 834} ; [ DW_TAG_subprogram ] [line 833] [def] [scope 834] [XAxiVdma_StartFrmCntEnable]
!152 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_SetBdAddrs", metadata !"XAxiVdma_SetBdAddrs", metadata !"", i32 869, metadata !153, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i32, i32, i32, i16)* @XAxiVdma_SetBdAddrs, null, null, metadata !2, i32 871} ; [ DW_TAG_subprogram ] [line 869] [def] [scope 871] [XAxiVdma_SetBdAddrs]
!153 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{metadata !22, metadata !53, metadata !14, metadata !14, metadata !22, metadata !87}
!155 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_StartWriteFrame", metadata !"XAxiVdma_StartWriteFrame", metadata !"", i32 912, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, %struct.XAxiVdma_DmaSetup*)* @XAxiVdma_StartWriteFrame, null, null, metadata !2, i32 914} ; [ DW_TAG_subprogram ] [line 912] [def] [scope 914] [XAxiVdma_StartWriteFrame]
!156 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !22, metadata !53, metadata !158}
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma_DmaSetup]
!159 = metadata !{i32 786454, metadata !55, null, metadata !"XAxiVdma_DmaSetup", i32 476, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [XAxiVdma_DmaSetup] [line 476, size 0, align 0, offset 0] [from ]
!160 = metadata !{i32 786451, metadata !55, null, metadata !"", i32 462, i64 1344, i64 32, i32 0, i32 0, null, metadata !161, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 462, size 1344, align 32, offset 0] [def] [from ]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !172, metadata !173}
!162 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"VertSizeInput", i32 463, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [VertSizeInput] [line 463, size 32, align 32, offset 0] [from int]
!163 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"HoriSizeInput", i32 464, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [HoriSizeInput] [line 464, size 32, align 32, offset 32] [from int]
!164 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"Stride", i32 465, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [Stride] [line 465, size 32, align 32, offset 64] [from int]
!165 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"FrameDelay", i32 466, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [FrameDelay] [line 466, size 32, align 32, offset 96] [from int]
!166 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"EnableCircularBuf", i32 468, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableCircularBuf] [line 468, size 32, align 32, offset 128] [from int]
!167 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"EnableSync", i32 469, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableSync] [line 469, size 32, align 32, offset 160] [from int]
!168 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"PointNum", i32 470, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [PointNum] [line 470, size 32, align 32, offset 192] [from int]
!169 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"EnableFrameCounter", i32 471, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableFrameCounter] [line 471, size 32, align 32, offset 224] [from int]
!170 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"FrameStoreStartAddr", i32 472, i64 1024, i64 32, i64 256, i32 0, metadata !171} ; [ DW_TAG_member ] [FrameStoreStartAddr] [line 472, size 1024, align 32, offset 256] [from ]
!171 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !32, metadata !48, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from UINTPTR]
!172 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"FixedFrameStoreAddr", i32 474, i64 32, i64 32, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [FixedFrameStoreAddr] [line 474, size 32, align 32, offset 1280] [from int]
!173 = metadata !{i32 786445, metadata !55, metadata !160, metadata !"GenLockRepeat", i32 475, i64 32, i64 32, i64 1312, i32 0, metadata !22} ; [ DW_TAG_member ] [GenLockRepeat] [line 475, size 32, align 32, offset 1312] [from int]
!174 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_StartReadFrame", metadata !"XAxiVdma_StartReadFrame", metadata !"", i32 944, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, %struct.XAxiVdma_DmaSetup*)* @XAxiVdma_StartReadFrame, null, null, metadata !2, i32 946} ; [ DW_TAG_subprogram ] [line 944] [def] [scope 946] [XAxiVdma_StartReadFrame]
!175 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_DmaConfig", metadata !"XAxiVdma_DmaConfig", metadata !"", i32 976, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16, %struct.XAxiVdma_DmaSetup*)* @XAxiVdma_DmaConfig, null, null, metadata !2, i32 978} ; [ DW_TAG_subprogram ] [line 976] [def] [scope 978] [XAxiVdma_DmaConfig]
!176 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{metadata !22, metadata !53, metadata !87, metadata !158}
!178 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_DmaSetBufferAddr", metadata !"XAxiVdma_DmaSetBufferAddr", metadata !"", i32 1014, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16, i32*)* @XAxiVdma_DmaSetBufferAddr, null, null, metadata !2, i32 1016} ; [ DW_TAG_subprogram ] [line 1014] [def] [scope 1016] [XAxiVdma_DmaSetBufferAddr]
!179 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{metadata !22, metadata !53, metadata !87, metadata !181}
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UINTPTR]
!182 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_DmaStart", metadata !"XAxiVdma_DmaStart", metadata !"", i32 1048, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaStart, null, null, metadata !2, i32 1049} ; [ DW_TAG_subprogram ] [line 1048] [def] [scope 1049] [XAxiVdma_DmaStart]
!183 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_DmaStop", metadata !"XAxiVdma_DmaStop", metadata !"", i32 1079, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaStop, null, null, metadata !2, i32 1080} ; [ DW_TAG_subprogram ] [line 1079] [def] [scope 1080] [XAxiVdma_DmaStop]
!184 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_DmaRegisterDump", metadata !"XAxiVdma_DmaRegisterDump", metadata !"", i32 1109, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaRegisterDump, null, null, metadata !2, i32 1110} ; [ DW_TAG_subprogram ] [line 1109] [def] [scope 1110] [XAxiVdma_DmaRegisterDump]
!185 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_SetFrameCounter", metadata !"XAxiVdma_SetFrameCounter", metadata !"", i32 1141, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, %struct.XAxiVdma_FrameCounter*)* @XAxiVdma_SetFrameCounter, null, null, metadata !2, i32 1143} ; [ DW_TAG_subprogram ] [line 1141] [def] [scope 1143] [XAxiVdma_SetFrameCounter]
!186 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!187 = metadata !{metadata !22, metadata !53, metadata !188}
!188 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma_FrameCounter]
!189 = metadata !{i32 786454, metadata !55, null, metadata !"XAxiVdma_FrameCounter", i32 488, i64 0, i64 0, i64 0, i32 0, metadata !190} ; [ DW_TAG_typedef ] [XAxiVdma_FrameCounter] [line 488, size 0, align 0, offset 0] [from ]
!190 = metadata !{i32 786451, metadata !55, null, metadata !"", i32 483, i64 32, i64 8, i32 0, i32 0, null, metadata !191, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 483, size 32, align 8, offset 0] [def] [from ]
!191 = metadata !{metadata !192, metadata !196, metadata !197, metadata !198}
!192 = metadata !{i32 786445, metadata !55, metadata !190, metadata !"ReadFrameCount", i32 484, i64 8, i64 8, i64 0, i32 0, metadata !193} ; [ DW_TAG_member ] [ReadFrameCount] [line 484, size 8, align 8, offset 0] [from u8]
!193 = metadata !{i32 786454, metadata !15, null, metadata !"u8", i32 90, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [u8] [line 90, size 0, align 0, offset 0] [from u_int8_t]
!194 = metadata !{i32 786454, metadata !17, null, metadata !"u_int8_t", i32 200, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_typedef ] [u_int8_t] [line 200, size 0, align 0, offset 0] [from unsigned char]
!195 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!196 = metadata !{i32 786445, metadata !55, metadata !190, metadata !"ReadDelayTimerCount", i32 485, i64 8, i64 8, i64 8, i32 0, metadata !193} ; [ DW_TAG_member ] [ReadDelayTimerCount] [line 485, size 8, align 8, offset 8] [from u8]
!197 = metadata !{i32 786445, metadata !55, metadata !190, metadata !"WriteFrameCount", i32 486, i64 8, i64 8, i64 16, i32 0, metadata !193} ; [ DW_TAG_member ] [WriteFrameCount] [line 486, size 8, align 8, offset 16] [from u8]
!198 = metadata !{i32 786445, metadata !55, metadata !190, metadata !"WriteDelayTimerCount", i32 487, i64 8, i64 8, i64 24, i32 0, metadata !193} ; [ DW_TAG_member ] [WriteDelayTimerCount] [line 487, size 8, align 8, offset 24] [from u8]
!199 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_GetFrameCounter", metadata !"XAxiVdma_GetFrameCounter", metadata !"", i32 1205, metadata !200, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma*, %struct.XAxiVdma_FrameCounter*)* @XAxiVdma_GetFrameCounter, null, null, metadata !2, i32 1207} ; [ DW_TAG_subprogram ] [line 1205] [def] [scope 1207] [XAxiVdma_GetFrameCounter]
!200 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{null, metadata !53, metadata !188}
!202 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_SetFrmStore", metadata !"XAxiVdma_SetFrmStore", metadata !"", i32 1260, metadata !203, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i8, i16)* @XAxiVdma_SetFrmStore, null, null, metadata !2, i32 1261} ; [ DW_TAG_subprogram ] [line 1260] [def] [scope 1261] [XAxiVdma_SetFrmStore]
!203 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!204 = metadata !{metadata !22, metadata !53, metadata !193, metadata !87}
!205 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_GetFrmStore", metadata !"XAxiVdma_GetFrmStore", metadata !"", i32 1310, metadata !206, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma*, i8*, i16)* @XAxiVdma_GetFrmStore, null, null, metadata !2, i32 1312} ; [ DW_TAG_subprogram ] [line 1310] [def] [scope 1312] [XAxiVdma_GetFrmStore]
!206 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!207 = metadata !{null, metadata !53, metadata !208, metadata !87}
!208 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u8]
!209 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_GetDmaChannelErrors", metadata !"XAxiVdma_GetDmaChannelErrors", metadata !"", i32 1344, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_GetDmaChannelErrors, null, null, metadata !2, i32 1345} ; [ DW_TAG_subprogram ] [line 1344] [def] [scope 1345] [XAxiVdma_GetDmaChannelErrors]
!210 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ClearDmaChannelErrors", metadata !"XAxiVdma_ClearDmaChannelErrors", metadata !"", i32 1377, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*, i16, i32)* @XAxiVdma_ClearDmaChannelErrors, null, null, metadata !2, i32 1379} ; [ DW_TAG_subprogram ] [line 1377] [def] [scope 1379] [XAxiVdma_ClearDmaChannelErrors]
!211 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!212 = metadata !{metadata !22, metadata !53, metadata !87, metadata !14}
!213 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_Major", metadata !"XAxiVdma_Major", metadata !"", i32 119, metadata !214, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma*)* @XAxiVdma_Major, null, null, metadata !2, i32 119} ; [ DW_TAG_subprogram ] [line 119] [local] [def] [XAxiVdma_Major]
!214 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{metadata !22, metadata !53}
!216 = metadata !{%struct.XAxiVdma_Channel* (%struct.XAxiVdma*, i16)* @XAxiVdma_GetChannel}
!217 = metadata !{metadata !"XAxiVdma_Channel .XAxiVdma *.1.u16.0"}
!218 = metadata !{i32 (i8*, ...)* @printf}
!219 = metadata !{metadata !"int.const char *restrict.1"}
!220 = metadata !{i32 (%struct.XAxiVdma*, %struct.XAxiVdma_Config*, i32)* @XAxiVdma_CfgInitialize}
!221 = metadata !{metadata !"int.XAxiVdma *.1.XAxiVdma_Config *.1.u32.0"}
!222 = metadata !{void (i8*, i32)* @Xil_Assert}
!223 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!224 = metadata !{i32 (%struct.XAxiVdma*)* @XAxiVdma_Major}
!225 = metadata !{metadata !"int.XAxiVdma *.1"}
!226 = metadata !{i32 (i32)* @Xil_In32}
!227 = metadata !{metadata !"u32.INTPTR.0"}
!228 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelInit}
!229 = metadata !{metadata !"void.XAxiVdma_Channel *.1"}
!230 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelReset}
!231 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelResetNotDone}
!232 = metadata !{metadata !"int.XAxiVdma_Channel *.1"}
!233 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelGetStatus}
!234 = metadata !{metadata !"u32.XAxiVdma_Channel *.1"}
!235 = metadata !{void (%struct.XAxiVdma*, i16)* @XAxiVdma_Reset}
!236 = metadata !{metadata !"void.XAxiVdma *.1.u16.0"}
!237 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_ResetNotDone}
!238 = metadata !{metadata !"int.XAxiVdma *.1.u16.0"}
!239 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_IsBusy}
!240 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelIsBusy}
!241 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_CurrFrameStore}
!242 = metadata !{metadata !"u32.XAxiVdma *.1.u16.0"}
!243 = metadata !{i32 (%struct.XAxiVdma*)* @XAxiVdma_GetVersion}
!244 = metadata !{metadata !"u32.XAxiVdma *.1"}
!245 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_GetStatus}
!246 = metadata !{i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_SetLineBufThreshold}
!247 = metadata !{metadata !"int.XAxiVdma *.1.int.0.u16.0"}
!248 = metadata !{void (i32, i32)* @Xil_Out32}
!249 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!250 = metadata !{i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_FsyncSrcSelect}
!251 = metadata !{metadata !"int.XAxiVdma *.1.u32.0.u16.0"}
!252 = metadata !{i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_GenLockSourceSelect}
!253 = metadata !{i32 (%struct.XAxiVdma*, i32, i16)* @XAxiVdma_StartParking}
!254 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStartParking}
!255 = metadata !{void (%struct.XAxiVdma*, i16)* @XAxiVdma_StopParking}
!256 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStopParking}
!257 = metadata !{void (%struct.XAxiVdma*, i16)* @XAxiVdma_StartFrmCntEnable}
!258 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStartFrmCntEnable}
!259 = metadata !{i32 (%struct.XAxiVdma*, i32, i32, i32, i16)* @XAxiVdma_SetBdAddrs}
!260 = metadata !{metadata !"int.XAxiVdma *.1.u32.0.u32.0.int.0.u16.0"}
!261 = metadata !{i32 (%struct.XAxiVdma_Channel*, i32, i32)* @XAxiVdma_ChannelSetBdAddrs}
!262 = metadata !{metadata !"int.XAxiVdma_Channel *.1.UINTPTR.0.UINTPTR.0"}
!263 = metadata !{i32 (%struct.XAxiVdma*, %struct.XAxiVdma_DmaSetup*)* @XAxiVdma_StartWriteFrame}
!264 = metadata !{metadata !"int.XAxiVdma *.1.XAxiVdma_DmaSetup *.1"}
!265 = metadata !{i32 (%struct.XAxiVdma_Channel*, %struct.XAxiVdma_ChannelSetup*)* @XAxiVdma_ChannelStartTransfer}
!266 = metadata !{metadata !"int.XAxiVdma_Channel *.1.XAxiVdma_ChannelSetup *.1"}
!267 = metadata !{i32 (%struct.XAxiVdma*, %struct.XAxiVdma_DmaSetup*)* @XAxiVdma_StartReadFrame}
!268 = metadata !{i32 (%struct.XAxiVdma*, i16, %struct.XAxiVdma_DmaSetup*)* @XAxiVdma_DmaConfig}
!269 = metadata !{metadata !"int.XAxiVdma *.1.u16.0.XAxiVdma_DmaSetup *.1"}
!270 = metadata !{i32 (%struct.XAxiVdma_Channel*, %struct.XAxiVdma_ChannelSetup*)* @XAxiVdma_ChannelConfig}
!271 = metadata !{i32 (%struct.XAxiVdma*, i16, i32*)* @XAxiVdma_DmaSetBufferAddr}
!272 = metadata !{metadata !"int.XAxiVdma *.1.u16.0.UINTPTR *.1"}
!273 = metadata !{i32 (%struct.XAxiVdma_Channel*, i32*, i32)* @XAxiVdma_ChannelSetBufferAddr}
!274 = metadata !{metadata !"int.XAxiVdma_Channel *.1.UINTPTR *.1.int.0"}
!275 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaStart}
!276 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStart}
!277 = metadata !{void (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaStop}
!278 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStop}
!279 = metadata !{void (%struct.XAxiVdma*, i16)* @XAxiVdma_DmaRegisterDump}
!280 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelRegisterDump}
!281 = metadata !{i32 (%struct.XAxiVdma*, %struct.XAxiVdma_FrameCounter*)* @XAxiVdma_SetFrameCounter}
!282 = metadata !{metadata !"int.XAxiVdma *.1.XAxiVdma_FrameCounter *.1"}
!283 = metadata !{i32 (%struct.XAxiVdma_Channel*, i8, i8)* @XAxiVdma_ChannelSetFrmCnt}
!284 = metadata !{metadata !"int.XAxiVdma_Channel *.1.u8.0.u8.0"}
!285 = metadata !{void (%struct.XAxiVdma*, %struct.XAxiVdma_FrameCounter*)* @XAxiVdma_GetFrameCounter}
!286 = metadata !{metadata !"void.XAxiVdma *.1.XAxiVdma_FrameCounter *.1"}
!287 = metadata !{void (%struct.XAxiVdma_Channel*, i8*, i8*)* @XAxiVdma_ChannelGetFrmCnt}
!288 = metadata !{metadata !"void.XAxiVdma_Channel *.1.u8 *.1.u8 *.1"}
!289 = metadata !{i32 (%struct.XAxiVdma*, i8, i16)* @XAxiVdma_SetFrmStore}
!290 = metadata !{metadata !"int.XAxiVdma *.1.u8.0.u16.0"}
!291 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelIsRunning}
!292 = metadata !{void (%struct.XAxiVdma*, i8*, i16)* @XAxiVdma_GetFrmStore}
!293 = metadata !{metadata !"void.XAxiVdma *.1.u8 *.1.u16.0"}
!294 = metadata !{i32 (%struct.XAxiVdma*, i16)* @XAxiVdma_GetDmaChannelErrors}
!295 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelErrors}
!296 = metadata !{i32 (%struct.XAxiVdma*, i16, i32)* @XAxiVdma_ClearDmaChannelErrors}
!297 = metadata !{metadata !"int.XAxiVdma *.1.u16.0.u32.0"}
!298 = metadata !{void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ClearChannelErrors}
!299 = metadata !{metadata !"void.XAxiVdma_Channel *.1.u32.0"}
!300 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.h"}
!301 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!302 = metadata !{metadata !"../src/xil/xil_assert.h"}
!303 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c"}
!304 = metadata !{metadata !"../src/xil/xil_io.h"}
!305 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_i.h"}
!306 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!307 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!308 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!309 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!310 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!311 = metadata !{i32 786689, metadata !4, metadata !"InstancePtr", metadata !5, i32 16777317, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 101]
!312 = metadata !{i32 101, i32 49, metadata !4, null}
!313 = metadata !{i32 786689, metadata !4, metadata !"Direction", metadata !5, i32 33554534, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 102]
!314 = metadata !{i32 102, i32 13, metadata !4, null}
!315 = metadata !{i32 105, i32 6, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !4, i32 105, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!317 = metadata !{i32 106, i32 3, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !316, i32 105, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!319 = metadata !{i32 108, i32 11, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !316, i32 108, i32 11, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!321 = metadata !{i32 109, i32 3, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !320, i32 108, i32 40, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!323 = metadata !{i32 113, i32 7, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !320, i32 111, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!325 = metadata !{i32 115, i32 3, metadata !324, null}
!326 = metadata !{i32 117, i32 1, metadata !4, null}
!327 = metadata !{i32 786689, metadata !90, metadata !"InstancePtr", metadata !5, i32 16777359, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 143]
!328 = metadata !{i32 143, i32 38, metadata !90, null}
!329 = metadata !{i32 786689, metadata !90, metadata !"CfgPtr", metadata !5, i32 33554575, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CfgPtr] [line 143]
!330 = metadata !{i32 143, i32 68, metadata !90, null}
!331 = metadata !{i32 786689, metadata !90, metadata !"EffectiveAddr", metadata !5, i32 50331792, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [EffectiveAddr] [line 144]
!332 = metadata !{i32 144, i32 9, metadata !90, null}
!333 = metadata !{i32 786688, metadata !90, metadata !"RdChannel", metadata !5, i32 146, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RdChannel] [line 146]
!334 = metadata !{i32 146, i32 20, metadata !90, null}
!335 = metadata !{i32 786688, metadata !90, metadata !"WrChannel", metadata !5, i32 147, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [WrChannel] [line 147]
!336 = metadata !{i32 147, i32 20, metadata !90, null}
!337 = metadata !{i32 786688, metadata !90, metadata !"Polls", metadata !5, i32 148, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Polls] [line 148]
!338 = metadata !{i32 148, i32 6, metadata !90, null}
!339 = metadata !{i32 151, i32 2, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !341, i32 151, i32 2, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!341 = metadata !{i32 786443, metadata !1, metadata !90, i32 151, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!342 = metadata !{i32 151, i32 2, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !344, i32 151, i32 2, i32 1, i32 215} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!344 = metadata !{i32 786443, metadata !1, metadata !340, i32 151, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!345 = metadata !{i32 151, i32 2, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !347, i32 151, i32 2, i32 2, i32 216} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!347 = metadata !{i32 786443, metadata !1, metadata !340, i32 151, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!348 = metadata !{i32 152, i32 2, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !350, i32 152, i32 2, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!350 = metadata !{i32 786443, metadata !1, metadata !90, i32 152, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!351 = metadata !{i32 152, i32 2, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !353, i32 152, i32 2, i32 1, i32 217} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!353 = metadata !{i32 786443, metadata !1, metadata !349, i32 152, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!354 = metadata !{i32 152, i32 2, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !356, i32 152, i32 2, i32 2, i32 218} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!356 = metadata !{i32 786443, metadata !1, metadata !349, i32 152, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!357 = metadata !{i32 156, i32 2, metadata !90, null}
!358 = metadata !{i32 157, i32 2, metadata !90, null}
!359 = metadata !{i32 158, i32 2, metadata !90, null}
!360 = metadata !{i32 159, i32 2, metadata !90, null}
!361 = metadata !{i32 161, i32 2, metadata !90, null}
!362 = metadata !{i32 162, i32 2, metadata !90, null}
!363 = metadata !{i32 163, i32 2, metadata !90, null}
!364 = metadata !{i32 164, i32 2, metadata !90, null}
!365 = metadata !{i32 165, i32 2, metadata !90, null}
!366 = metadata !{i32 166, i32 2, metadata !90, null}
!367 = metadata !{i32 167, i32 2, metadata !90, null}
!368 = metadata !{i32 169, i32 6, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !90, i32 169, i32 6, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!370 = metadata !{i32 170, i32 3, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !369, i32 169, i32 39, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!372 = metadata !{i32 171, i32 2, metadata !371, null}
!373 = metadata !{i32 173, i32 3, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !369, i32 172, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!375 = metadata !{i32 178, i32 14, metadata !90, null}
!376 = metadata !{i32 179, i32 2, metadata !90, null}
!377 = metadata !{i32 181, i32 14, metadata !90, null}
!378 = metadata !{i32 182, i32 2, metadata !90, null}
!379 = metadata !{i32 184, i32 6, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !90, i32 184, i32 6, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!381 = metadata !{i32 185, i32 3, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !380, i32 184, i32 28, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!383 = metadata !{i32 186, i32 3, metadata !382, null}
!384 = metadata !{i32 187, i32 3, metadata !382, null}
!385 = metadata !{i32 188, i32 3, metadata !382, null}
!386 = metadata !{i32 189, i32 3, metadata !382, null}
!387 = metadata !{i32 190, i32 3, metadata !382, null}
!388 = metadata !{i32 193, i32 3, metadata !382, null}
!389 = metadata !{i32 196, i32 3, metadata !382, null}
!390 = metadata !{i32 199, i32 3, metadata !382, null}
!391 = metadata !{i32 200, i32 6, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !382, i32 200, i32 6, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!393 = metadata !{i32 202, i32 5, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !392, i32 200, i32 35, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!395 = metadata !{i32 205, i32 5, metadata !394, null}
!396 = metadata !{i32 207, i32 3, metadata !394, null}
!397 = metadata !{i32 208, i32 3, metadata !382, null}
!398 = metadata !{i32 209, i32 3, metadata !382, null}
!399 = metadata !{i32 210, i32 3, metadata !382, null}
!400 = metadata !{i32 211, i32 3, metadata !382, null}
!401 = metadata !{i32 214, i32 3, metadata !382, null}
!402 = metadata !{i32 217, i32 7, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !382, i32 217, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!404 = metadata !{i32 218, i32 8, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !406, i32 218, i32 8, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!406 = metadata !{i32 786443, metadata !1, metadata !403, i32 217, i32 38, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!407 = metadata !{i32 219, i32 5, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !405, i32 218, i32 32, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!409 = metadata !{i32 221, i32 4, metadata !408, null}
!410 = metadata !{i32 223, i32 8, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !406, i32 223, i32 8, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!412 = metadata !{i32 224, i32 5, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !411, i32 223, i32 35, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!414 = metadata !{i32 226, i32 4, metadata !413, null}
!415 = metadata !{i32 228, i32 8, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !406, i32 228, i32 8, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!417 = metadata !{i32 229, i32 5, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !416, i32 228, i32 31, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!419 = metadata !{i32 231, i32 4, metadata !418, null}
!420 = metadata !{i32 233, i32 8, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !406, i32 233, i32 8, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!422 = metadata !{i32 234, i32 5, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !421, i32 233, i32 31, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!424 = metadata !{i32 236, i32 4, metadata !423, null}
!425 = metadata !{i32 238, i32 3, metadata !406, null}
!426 = metadata !{i32 239, i32 4, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !403, i32 238, i32 10, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!428 = metadata !{i32 243, i32 3, metadata !382, null}
!429 = metadata !{i32 245, i32 3, metadata !382, null}
!430 = metadata !{i32 250, i32 3, metadata !382, null}
!431 = metadata !{i32 252, i32 3, metadata !382, null}
!432 = metadata !{i32 252, i32 3, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !382, i32 252, i32 3, i32 1, i32 219} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!434 = metadata !{i32 252, i32 19, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !382, i32 252, i32 19, i32 2, i32 220} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!436 = metadata !{i32 252, i32 19, metadata !437, null}
!437 = metadata !{i32 786443, metadata !1, metadata !382, i32 252, i32 19, i32 3, i32 221} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!438 = metadata !{i32 253, i32 4, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !382, i32 252, i32 60, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!440 = metadata !{i32 254, i32 3, metadata !439, null}
!441 = metadata !{i32 256, i32 7, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !382, i32 256, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!443 = metadata !{i32 258, i32 61, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !442, i32 256, i32 15, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!445 = metadata !{i32 258, i32 4, metadata !444, null}
!446 = metadata !{i32 260, i32 4, metadata !444, null}
!447 = metadata !{i32 262, i32 2, metadata !382, null}
!448 = metadata !{i32 264, i32 6, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !90, i32 264, i32 6, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!450 = metadata !{i32 265, i32 3, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !449, i32 264, i32 28, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!452 = metadata !{i32 266, i32 3, metadata !451, null}
!453 = metadata !{i32 267, i32 3, metadata !451, null}
!454 = metadata !{i32 268, i32 3, metadata !451, null}
!455 = metadata !{i32 269, i32 3, metadata !451, null}
!456 = metadata !{i32 270, i32 3, metadata !451, null}
!457 = metadata !{i32 272, i32 3, metadata !451, null}
!458 = metadata !{i32 273, i32 3, metadata !451, null}
!459 = metadata !{i32 276, i32 3, metadata !451, null}
!460 = metadata !{i32 279, i32 3, metadata !451, null}
!461 = metadata !{i32 280, i32 6, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !451, i32 280, i32 6, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!463 = metadata !{i32 282, i32 5, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !462, i32 280, i32 35, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!465 = metadata !{i32 285, i32 4, metadata !464, null}
!466 = metadata !{i32 287, i32 3, metadata !464, null}
!467 = metadata !{i32 288, i32 3, metadata !451, null}
!468 = metadata !{i32 289, i32 3, metadata !451, null}
!469 = metadata !{i32 290, i32 3, metadata !451, null}
!470 = metadata !{i32 293, i32 3, metadata !451, null}
!471 = metadata !{i32 296, i32 3, metadata !451, null}
!472 = metadata !{i32 299, i32 7, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !451, i32 299, i32 7, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!474 = metadata !{i32 300, i32 8, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !476, i32 300, i32 8, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!476 = metadata !{i32 786443, metadata !1, metadata !473, i32 299, i32 38, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!477 = metadata !{i32 301, i32 5, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !475, i32 300, i32 32, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!479 = metadata !{i32 303, i32 4, metadata !478, null}
!480 = metadata !{i32 305, i32 8, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !476, i32 305, i32 8, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!482 = metadata !{i32 306, i32 5, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !481, i32 305, i32 35, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!484 = metadata !{i32 308, i32 4, metadata !483, null}
!485 = metadata !{i32 310, i32 8, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !476, i32 310, i32 8, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!487 = metadata !{i32 311, i32 5, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !486, i32 310, i32 31, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!489 = metadata !{i32 313, i32 4, metadata !488, null}
!490 = metadata !{i32 315, i32 8, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !476, i32 315, i32 8, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!492 = metadata !{i32 316, i32 5, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !491, i32 315, i32 31, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!494 = metadata !{i32 318, i32 4, metadata !493, null}
!495 = metadata !{i32 320, i32 3, metadata !476, null}
!496 = metadata !{i32 321, i32 4, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !473, i32 320, i32 10, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!498 = metadata !{i32 325, i32 3, metadata !451, null}
!499 = metadata !{i32 327, i32 3, metadata !451, null}
!500 = metadata !{i32 332, i32 3, metadata !451, null}
!501 = metadata !{i32 334, i32 3, metadata !451, null}
!502 = metadata !{i32 334, i32 3, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !451, i32 334, i32 3, i32 1, i32 222} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!504 = metadata !{i32 334, i32 19, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !451, i32 334, i32 19, i32 2, i32 223} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!506 = metadata !{i32 334, i32 19, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !451, i32 334, i32 19, i32 3, i32 224} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!508 = metadata !{i32 335, i32 4, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !451, i32 334, i32 60, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!510 = metadata !{i32 336, i32 3, metadata !509, null}
!511 = metadata !{i32 338, i32 7, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !451, i32 338, i32 7, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!513 = metadata !{i32 341, i32 22, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !512, i32 338, i32 15, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!515 = metadata !{i32 340, i32 4, metadata !514, null}
!516 = metadata !{i32 343, i32 4, metadata !514, null}
!517 = metadata !{i32 345, i32 2, metadata !451, null}
!518 = metadata !{i32 347, i32 2, metadata !90, null}
!519 = metadata !{i32 349, i32 2, metadata !90, null}
!520 = metadata !{i32 350, i32 1, metadata !90, null}
!521 = metadata !{i32 786689, metadata !213, metadata !"InstancePtr", metadata !5, i32 16777335, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 119]
!522 = metadata !{i32 119, i32 37, metadata !213, null}
!523 = metadata !{i32 786688, metadata !213, metadata !"Reg", metadata !5, i32 120, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Reg] [line 120]
!524 = metadata !{i32 120, i32 6, metadata !213, null}
!525 = metadata !{i32 122, i32 8, metadata !213, null}
!526 = metadata !{i32 124, i32 2, metadata !213, null}
!527 = metadata !{i32 786689, metadata !128, metadata !"InstancePtr", metadata !5, i32 16777584, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 368]
!528 = metadata !{i32 368, i32 31, metadata !128, null}
!529 = metadata !{i32 786689, metadata !128, metadata !"Direction", metadata !5, i32 33554800, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 368]
!530 = metadata !{i32 368, i32 48, metadata !128, null}
!531 = metadata !{i32 786688, metadata !128, metadata !"Channel", metadata !5, i32 370, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 370]
!532 = metadata !{i32 370, i32 20, metadata !128, null}
!533 = metadata !{i32 372, i32 12, metadata !128, null}
!534 = metadata !{i32 374, i32 6, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !128, i32 374, i32 6, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!536 = metadata !{i32 375, i32 3, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !535, i32 374, i32 16, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!538 = metadata !{i32 378, i32 6, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !128, i32 378, i32 6, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!540 = metadata !{i32 379, i32 3, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !539, i32 378, i32 24, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!542 = metadata !{i32 381, i32 3, metadata !541, null}
!543 = metadata !{i32 383, i32 1, metadata !128, null}
!544 = metadata !{i32 786689, metadata !131, metadata !"InstancePtr", metadata !5, i32 16777616, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 400]
!545 = metadata !{i32 400, i32 37, metadata !131, null}
!546 = metadata !{i32 786689, metadata !131, metadata !"Direction", metadata !5, i32 33554832, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 400]
!547 = metadata !{i32 400, i32 54, metadata !131, null}
!548 = metadata !{i32 786688, metadata !131, metadata !"Channel", metadata !5, i32 402, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 402]
!549 = metadata !{i32 402, i32 20, metadata !131, null}
!550 = metadata !{i32 404, i32 12, metadata !131, null}
!551 = metadata !{i32 408, i32 6, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !131, i32 408, i32 6, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!553 = metadata !{i32 409, i32 3, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !552, i32 408, i32 16, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!555 = metadata !{i32 412, i32 9, metadata !131, null}
!556 = metadata !{i32 413, i32 1, metadata !131, null}
!557 = metadata !{i32 786689, metadata !134, metadata !"InstancePtr", metadata !5, i32 16777643, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 427]
!558 = metadata !{i32 427, i32 31, metadata !134, null}
!559 = metadata !{i32 786689, metadata !134, metadata !"Direction", metadata !5, i32 33554859, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 427]
!560 = metadata !{i32 427, i32 48, metadata !134, null}
!561 = metadata !{i32 786688, metadata !134, metadata !"Channel", metadata !5, i32 429, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 429]
!562 = metadata !{i32 429, i32 20, metadata !134, null}
!563 = metadata !{i32 431, i32 12, metadata !134, null}
!564 = metadata !{i32 433, i32 6, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !134, i32 433, i32 6, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!566 = metadata !{i32 434, i32 3, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !565, i32 433, i32 16, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!568 = metadata !{i32 437, i32 6, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !134, i32 437, i32 6, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!570 = metadata !{i32 438, i32 10, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !569, i32 437, i32 24, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!572 = metadata !{i32 443, i32 3, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !569, i32 440, i32 7, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!574 = metadata !{i32 445, i32 1, metadata !134, null}
!575 = metadata !{i32 786689, metadata !135, metadata !"InstancePtr", metadata !5, i32 16777676, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 460]
!576 = metadata !{i32 460, i32 39, metadata !135, null}
!577 = metadata !{i32 786689, metadata !135, metadata !"Direction", metadata !5, i32 33554892, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 460]
!578 = metadata !{i32 460, i32 56, metadata !135, null}
!579 = metadata !{i32 786688, metadata !135, metadata !"Rc", metadata !5, i32 462, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rc] [line 462]
!580 = metadata !{i32 462, i32 6, metadata !135, null}
!581 = metadata !{i32 464, i32 7, metadata !135, null}
!582 = metadata !{i32 466, i32 6, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !135, i32 466, i32 6, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!584 = metadata !{i32 467, i32 3, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !583, i32 466, i32 34, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!586 = metadata !{i32 468, i32 3, metadata !585, null}
!587 = metadata !{i32 470, i32 11, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !583, i32 470, i32 11, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!589 = metadata !{i32 471, i32 3, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !588, i32 470, i32 40, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!591 = metadata !{i32 472, i32 3, metadata !590, null}
!592 = metadata !{i32 475, i32 3, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !588, i32 474, i32 7, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!594 = metadata !{i32 477, i32 1, metadata !135, null}
!595 = metadata !{i32 786689, metadata !138, metadata !"InstancePtr", metadata !5, i32 16777705, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 489]
!596 = metadata !{i32 489, i32 35, metadata !138, null}
!597 = metadata !{i32 491, i32 9, metadata !138, null}
!598 = metadata !{i32 786689, metadata !141, metadata !"InstancePtr", metadata !5, i32 16777723, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 507]
!599 = metadata !{i32 507, i32 34, metadata !141, null}
!600 = metadata !{i32 786689, metadata !141, metadata !"Direction", metadata !5, i32 33554939, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 507]
!601 = metadata !{i32 507, i32 51, metadata !141, null}
!602 = metadata !{i32 786688, metadata !141, metadata !"Channel", metadata !5, i32 509, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 509]
!603 = metadata !{i32 509, i32 20, metadata !141, null}
!604 = metadata !{i32 511, i32 12, metadata !141, null}
!605 = metadata !{i32 513, i32 6, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !141, i32 513, i32 6, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!607 = metadata !{i32 514, i32 3, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !606, i32 513, i32 16, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!609 = metadata !{i32 517, i32 6, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !141, i32 517, i32 6, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!611 = metadata !{i32 518, i32 10, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !610, i32 517, i32 24, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!613 = metadata !{i32 521, i32 3, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !610, i32 520, i32 7, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!615 = metadata !{i32 523, i32 1, metadata !141, null}
!616 = metadata !{i32 786689, metadata !142, metadata !"InstancePtr", metadata !5, i32 16777754, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 538]
!617 = metadata !{i32 538, i32 44, metadata !142, null}
!618 = metadata !{i32 786689, metadata !142, metadata !"LineBufThreshold", metadata !5, i32 33554970, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [LineBufThreshold] [line 538]
!619 = metadata !{i32 538, i32 61, metadata !142, null}
!620 = metadata !{i32 786689, metadata !142, metadata !"Direction", metadata !5, i32 50332187, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 539]
!621 = metadata !{i32 539, i32 6, metadata !142, null}
!622 = metadata !{i32 786688, metadata !142, metadata !"Channel", metadata !5, i32 541, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 541]
!623 = metadata !{i32 541, i32 20, metadata !142, null}
!624 = metadata !{i32 543, i32 12, metadata !142, null}
!625 = metadata !{i32 545, i32 6, metadata !626, null}
!626 = metadata !{i32 786443, metadata !1, metadata !142, i32 545, i32 6, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!627 = metadata !{i32 547, i32 3, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !626, i32 545, i32 71, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!629 = metadata !{i32 548, i32 3, metadata !628, null}
!630 = metadata !{i32 551, i32 5, metadata !631, null}
!631 = metadata !{i32 786443, metadata !1, metadata !142, i32 551, i32 5, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!632 = metadata !{i32 552, i32 6, metadata !633, null}
!633 = metadata !{i32 786443, metadata !1, metadata !634, i32 552, i32 6, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!634 = metadata !{i32 786443, metadata !1, metadata !631, i32 551, i32 32, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!635 = metadata !{i32 552, i32 6, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !633, i32 552, i32 6, i32 1, i32 225} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!637 = metadata !{i32 554, i32 4, metadata !638, null}
!638 = metadata !{i32 786443, metadata !1, metadata !633, i32 553, i32 52, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!639 = metadata !{i32 559, i32 5, metadata !638, null}
!640 = metadata !{i32 558, i32 4, metadata !638, null}
!641 = metadata !{i32 561, i32 3, metadata !638, null}
!642 = metadata !{i32 564, i32 4, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !633, i32 562, i32 8, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!644 = metadata !{i32 565, i32 4, metadata !643, null}
!645 = metadata !{i32 567, i32 2, metadata !634, null}
!646 = metadata !{i32 570, i32 3, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !631, i32 568, i32 7, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!648 = metadata !{i32 571, i32 3, metadata !647, null}
!649 = metadata !{i32 573, i32 2, metadata !142, null}
!650 = metadata !{i32 574, i32 1, metadata !142, null}
!651 = metadata !{i32 786689, metadata !145, metadata !"InstancePtr", metadata !5, i32 16777806, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 590]
!652 = metadata !{i32 590, i32 39, metadata !145, null}
!653 = metadata !{i32 786689, metadata !145, metadata !"Source", metadata !5, i32 33555022, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Source] [line 590]
!654 = metadata !{i32 590, i32 56, metadata !145, null}
!655 = metadata !{i32 786689, metadata !145, metadata !"Direction", metadata !5, i32 50332239, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 591]
!656 = metadata !{i32 591, i32 9, metadata !145, null}
!657 = metadata !{i32 786688, metadata !145, metadata !"Channel", metadata !5, i32 593, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 593]
!658 = metadata !{i32 593, i32 20, metadata !145, null}
!659 = metadata !{i32 786688, metadata !145, metadata !"CrBits", metadata !5, i32 594, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 594]
!660 = metadata !{i32 594, i32 6, metadata !145, null}
!661 = metadata !{i32 786688, metadata !145, metadata !"UseFsync", metadata !5, i32 595, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [UseFsync] [line 595]
!662 = metadata !{i32 595, i32 6, metadata !145, null}
!663 = metadata !{i32 597, i32 12, metadata !145, null}
!664 = metadata !{i32 599, i32 6, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !145, i32 599, i32 6, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!666 = metadata !{i32 600, i32 3, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !665, i32 599, i32 35, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!668 = metadata !{i32 600, i32 3, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !667, i32 600, i32 3, i32 2, i32 227} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!670 = metadata !{i32 600, i32 3, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !672, i32 600, i32 3, i32 3, i32 228} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!672 = metadata !{i32 786443, metadata !1, metadata !667, i32 600, i32 3, i32 1, i32 226} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!673 = metadata !{i32 602, i32 2, metadata !667, null}
!674 = metadata !{i32 603, i32 3, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !665, i32 602, i32 9, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!676 = metadata !{i32 603, i32 3, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !675, i32 603, i32 3, i32 2, i32 230} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!678 = metadata !{i32 603, i32 3, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !680, i32 603, i32 3, i32 3, i32 231} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!680 = metadata !{i32 786443, metadata !1, metadata !675, i32 603, i32 3, i32 1, i32 229} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!681 = metadata !{i32 607, i32 6, metadata !682, null}
!682 = metadata !{i32 786443, metadata !1, metadata !145, i32 607, i32 6, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!683 = metadata !{i32 608, i32 12, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !682, i32 607, i32 16, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!685 = metadata !{i32 611, i32 3, metadata !684, null}
!686 = metadata !{i32 614, i32 4, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !684, i32 611, i32 19, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!688 = metadata !{i32 615, i32 4, metadata !687, null}
!689 = metadata !{i32 619, i32 4, metadata !687, null}
!690 = metadata !{i32 620, i32 4, metadata !687, null}
!691 = metadata !{i32 624, i32 8, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !687, i32 624, i32 8, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!693 = metadata !{i32 625, i32 5, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !692, i32 624, i32 26, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!695 = metadata !{i32 627, i32 4, metadata !694, null}
!696 = metadata !{i32 629, i32 5, metadata !692, null}
!697 = metadata !{i32 630, i32 4, metadata !687, null}
!698 = metadata !{i32 633, i32 3, metadata !684, null}
!699 = metadata !{i32 636, i32 3, metadata !684, null}
!700 = metadata !{i32 640, i32 2, metadata !145, null}
!701 = metadata !{i32 641, i32 2, metadata !145, null}
!702 = metadata !{i32 642, i32 1, metadata !145, null}
!703 = metadata !{i32 786689, metadata !148, metadata !"InstancePtr", metadata !5, i32 16777874, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 658]
!704 = metadata !{i32 658, i32 44, metadata !148, null}
!705 = metadata !{i32 786689, metadata !148, metadata !"Source", metadata !5, i32 33555090, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Source] [line 658]
!706 = metadata !{i32 658, i32 61, metadata !148, null}
!707 = metadata !{i32 786689, metadata !148, metadata !"Direction", metadata !5, i32 50332307, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 659]
!708 = metadata !{i32 659, i32 10, metadata !148, null}
!709 = metadata !{i32 786688, metadata !148, metadata !"Channel", metadata !5, i32 661, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 661]
!710 = metadata !{i32 661, i32 20, metadata !148, null}
!711 = metadata !{i32 786688, metadata !148, metadata !"XChannel", metadata !5, i32 661, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [XChannel] [line 661]
!712 = metadata !{i32 661, i32 30, metadata !148, null}
!713 = metadata !{i32 786688, metadata !148, metadata !"CrBits", metadata !5, i32 662, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 662]
!714 = metadata !{i32 662, i32 6, metadata !148, null}
!715 = metadata !{i32 664, i32 6, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !148, i32 664, i32 6, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!717 = metadata !{i32 664, i32 6, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !716, i32 664, i32 6, i32 1, i32 232} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!719 = metadata !{i32 664, i32 6, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !716, i32 664, i32 6, i32 2, i32 233} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!721 = metadata !{i32 666, i32 7, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !723, i32 666, i32 7, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!723 = metadata !{i32 786443, metadata !1, metadata !716, i32 665, i32 34, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!724 = metadata !{i32 667, i32 14, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !722, i32 666, i32 36, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!726 = metadata !{i32 668, i32 15, metadata !725, null}
!727 = metadata !{i32 669, i32 3, metadata !725, null}
!728 = metadata !{i32 670, i32 14, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !722, i32 669, i32 10, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!730 = metadata !{i32 671, i32 15, metadata !729, null}
!731 = metadata !{i32 674, i32 7, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !723, i32 674, i32 7, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!733 = metadata !{i32 674, i32 7, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !732, i32 674, i32 7, i32 1, i32 234} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!735 = metadata !{i32 674, i32 7, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !737, i32 674, i32 7, i32 3, i32 236} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!737 = metadata !{i32 786443, metadata !1, metadata !732, i32 674, i32 7, i32 2, i32 235} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!738 = metadata !{i32 674, i32 7, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !732, i32 674, i32 7, i32 4, i32 237} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!740 = metadata !{i32 674, i32 7, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !742, i32 674, i32 7, i32 6, i32 239} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!742 = metadata !{i32 786443, metadata !1, metadata !732, i32 674, i32 7, i32 5, i32 238} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!743 = metadata !{i32 674, i32 7, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !732, i32 674, i32 7, i32 7, i32 240} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!745 = metadata !{i32 674, i32 7, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !747, i32 674, i32 7, i32 9, i32 242} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!747 = metadata !{i32 786443, metadata !1, metadata !732, i32 674, i32 7, i32 8, i32 241} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!748 = metadata !{i32 674, i32 7, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !732, i32 674, i32 7, i32 10, i32 243} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!750 = metadata !{i32 683, i32 13, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !732, i32 681, i32 56, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!752 = metadata !{i32 686, i32 8, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !751, i32 686, i32 8, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!754 = metadata !{i32 687, i32 5, metadata !753, null}
!755 = metadata !{i32 688, i32 13, metadata !756, null}
!756 = metadata !{i32 786443, metadata !1, metadata !753, i32 688, i32 13, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!757 = metadata !{i32 689, i32 5, metadata !756, null}
!758 = metadata !{i32 692, i32 5, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !756, i32 690, i32 9, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!760 = metadata !{i32 693, i32 5, metadata !759, null}
!761 = metadata !{i32 696, i32 4, metadata !751, null}
!762 = metadata !{i32 699, i32 4, metadata !751, null}
!763 = metadata !{i32 701, i32 2, metadata !723, null}
!764 = metadata !{i32 704, i32 2, metadata !148, null}
!765 = metadata !{i32 705, i32 2, metadata !148, null}
!766 = metadata !{i32 706, i32 1, metadata !148, null}
!767 = metadata !{i32 786689, metadata !149, metadata !"InstancePtr", metadata !5, i32 16777939, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 723]
!768 = metadata !{i32 723, i32 37, metadata !149, null}
!769 = metadata !{i32 786689, metadata !149, metadata !"FrameIndex", metadata !5, i32 33555155, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrameIndex] [line 723]
!770 = metadata !{i32 723, i32 54, metadata !149, null}
!771 = metadata !{i32 786689, metadata !149, metadata !"Direction", metadata !5, i32 50332372, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 724]
!772 = metadata !{i32 724, i32 14, metadata !149, null}
!773 = metadata !{i32 786688, metadata !149, metadata !"Channel", metadata !5, i32 726, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 726]
!774 = metadata !{i32 726, i32 20, metadata !149, null}
!775 = metadata !{i32 786688, metadata !149, metadata !"FrmBits", metadata !5, i32 727, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrmBits] [line 727]
!776 = metadata !{i32 727, i32 6, metadata !149, null}
!777 = metadata !{i32 786688, metadata !149, metadata !"RegValue", metadata !5, i32 728, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 728]
!778 = metadata !{i32 728, i32 6, metadata !149, null}
!779 = metadata !{i32 786688, metadata !149, metadata !"Status", metadata !5, i32 729, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 729]
!780 = metadata !{i32 729, i32 6, metadata !149, null}
!781 = metadata !{i32 731, i32 6, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !149, i32 731, i32 6, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!783 = metadata !{i32 733, i32 3, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !782, i32 731, i32 37, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!785 = metadata !{i32 735, i32 3, metadata !784, null}
!786 = metadata !{i32 738, i32 6, metadata !787, null}
!787 = metadata !{i32 786443, metadata !1, metadata !149, i32 738, i32 6, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!788 = metadata !{i32 739, i32 3, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !787, i32 738, i32 34, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!790 = metadata !{i32 742, i32 14, metadata !789, null}
!791 = metadata !{i32 745, i32 3, metadata !789, null}
!792 = metadata !{i32 747, i32 3, metadata !789, null}
!793 = metadata !{i32 749, i32 3, metadata !789, null}
!794 = metadata !{i32 751, i32 3, metadata !789, null}
!795 = metadata !{i32 752, i32 11, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !787, i32 752, i32 11, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!797 = metadata !{i32 753, i32 3, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !796, i32 752, i32 40, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!799 = metadata !{i32 755, i32 3, metadata !798, null}
!800 = metadata !{i32 757, i32 14, metadata !798, null}
!801 = metadata !{i32 760, i32 3, metadata !798, null}
!802 = metadata !{i32 762, i32 3, metadata !798, null}
!803 = metadata !{i32 764, i32 3, metadata !798, null}
!804 = metadata !{i32 766, i32 2, metadata !798, null}
!805 = metadata !{i32 770, i32 3, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !796, i32 767, i32 7, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!807 = metadata !{i32 773, i32 12, metadata !149, null}
!808 = metadata !{i32 775, i32 6, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !149, i32 775, i32 6, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!810 = metadata !{i32 776, i32 12, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !809, i32 775, i32 24, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!812 = metadata !{i32 777, i32 7, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !811, i32 777, i32 7, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!814 = metadata !{i32 779, i32 4, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !813, i32 777, i32 30, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!816 = metadata !{i32 782, i32 4, metadata !815, null}
!817 = metadata !{i32 784, i32 2, metadata !811, null}
!818 = metadata !{i32 786, i32 2, metadata !149, null}
!819 = metadata !{i32 787, i32 1, metadata !149, null}
!820 = metadata !{i32 786689, metadata !150, metadata !"InstancePtr", metadata !5, i32 16778018, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 802]
!821 = metadata !{i32 802, i32 37, metadata !150, null}
!822 = metadata !{i32 786689, metadata !150, metadata !"Direction", metadata !5, i32 33555234, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 802]
!823 = metadata !{i32 802, i32 54, metadata !150, null}
!824 = metadata !{i32 786688, metadata !150, metadata !"Channel", metadata !5, i32 804, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 804]
!825 = metadata !{i32 804, i32 20, metadata !150, null}
!826 = metadata !{i32 806, i32 12, metadata !150, null}
!827 = metadata !{i32 808, i32 6, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !150, i32 808, i32 6, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!829 = metadata !{i32 809, i32 3, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !828, i32 808, i32 16, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!831 = metadata !{i32 812, i32 6, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !150, i32 812, i32 6, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!833 = metadata !{i32 813, i32 3, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !832, i32 812, i32 24, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!835 = metadata !{i32 814, i32 2, metadata !834, null}
!836 = metadata !{i32 816, i32 2, metadata !150, null}
!837 = metadata !{i32 817, i32 1, metadata !150, null}
!838 = metadata !{i32 786689, metadata !151, metadata !"InstancePtr", metadata !5, i32 16778049, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 833]
!839 = metadata !{i32 833, i32 43, metadata !151, null}
!840 = metadata !{i32 786689, metadata !151, metadata !"Direction", metadata !5, i32 33555265, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 833]
!841 = metadata !{i32 833, i32 60, metadata !151, null}
!842 = metadata !{i32 786688, metadata !151, metadata !"Channel", metadata !5, i32 835, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 835]
!843 = metadata !{i32 835, i32 20, metadata !151, null}
!844 = metadata !{i32 837, i32 12, metadata !151, null}
!845 = metadata !{i32 839, i32 6, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !151, i32 839, i32 6, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!847 = metadata !{i32 840, i32 3, metadata !848, null}
!848 = metadata !{i32 786443, metadata !1, metadata !846, i32 839, i32 24, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!849 = metadata !{i32 841, i32 2, metadata !848, null}
!850 = metadata !{i32 842, i32 1, metadata !151, null}
!851 = metadata !{i32 786689, metadata !152, metadata !"InstancePtr", metadata !5, i32 16778085, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 869]
!852 = metadata !{i32 869, i32 35, metadata !152, null}
!853 = metadata !{i32 786689, metadata !152, metadata !"BdAddrPhys", metadata !5, i32 33555301, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdAddrPhys] [line 869]
!854 = metadata !{i32 869, i32 52, metadata !152, null}
!855 = metadata !{i32 786689, metadata !152, metadata !"BdAddrVirt", metadata !5, i32 50332517, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdAddrVirt] [line 869]
!856 = metadata !{i32 869, i32 68, metadata !152, null}
!857 = metadata !{i32 786689, metadata !152, metadata !"NumBds", metadata !5, i32 67109734, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NumBds] [line 870]
!858 = metadata !{i32 870, i32 14, metadata !152, null}
!859 = metadata !{i32 786689, metadata !152, metadata !"Direction", metadata !5, i32 83886950, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 870]
!860 = metadata !{i32 870, i32 26, metadata !152, null}
!861 = metadata !{i32 786688, metadata !152, metadata !"Channel", metadata !5, i32 872, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 872]
!862 = metadata !{i32 872, i32 20, metadata !152, null}
!863 = metadata !{i32 874, i32 12, metadata !152, null}
!864 = metadata !{i32 876, i32 6, metadata !865, null}
!865 = metadata !{i32 786443, metadata !1, metadata !152, i32 876, i32 6, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!866 = metadata !{i32 877, i32 7, metadata !867, null}
!867 = metadata !{i32 786443, metadata !1, metadata !868, i32 877, i32 7, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!868 = metadata !{i32 786443, metadata !1, metadata !865, i32 876, i32 24, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!869 = metadata !{i32 878, i32 4, metadata !870, null}
!870 = metadata !{i32 786443, metadata !1, metadata !867, i32 877, i32 34, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!871 = metadata !{i32 881, i32 7, metadata !872, null}
!872 = metadata !{i32 786443, metadata !1, metadata !868, i32 881, i32 7, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!873 = metadata !{i32 882, i32 4, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !872, i32 881, i32 57, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!875 = metadata !{i32 885, i32 7, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !868, i32 885, i32 7, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!877 = metadata !{i32 886, i32 4, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !876, i32 885, i32 57, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!879 = metadata !{i32 889, i32 10, metadata !868, null}
!880 = metadata !{i32 892, i32 3, metadata !881, null}
!881 = metadata !{i32 786443, metadata !1, metadata !865, i32 891, i32 7, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!882 = metadata !{i32 894, i32 1, metadata !152, null}
!883 = metadata !{i32 786689, metadata !155, metadata !"InstancePtr", metadata !5, i32 16778128, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 912]
!884 = metadata !{i32 912, i32 40, metadata !155, null}
!885 = metadata !{i32 786689, metadata !155, metadata !"DmaConfigPtr", metadata !5, i32 33555345, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DmaConfigPtr] [line 913]
!886 = metadata !{i32 913, i32 24, metadata !155, null}
!887 = metadata !{i32 786688, metadata !155, metadata !"Channel", metadata !5, i32 915, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 915]
!888 = metadata !{i32 915, i32 20, metadata !155, null}
!889 = metadata !{i32 917, i32 12, metadata !155, null}
!890 = metadata !{i32 919, i32 6, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !155, i32 919, i32 6, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!892 = metadata !{i32 920, i32 10, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !891, i32 919, i32 24, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!894 = metadata !{i32 924, i32 3, metadata !895, null}
!895 = metadata !{i32 786443, metadata !1, metadata !891, i32 923, i32 7, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!896 = metadata !{i32 926, i32 1, metadata !155, null}
!897 = metadata !{i32 786689, metadata !174, metadata !"InstancePtr", metadata !5, i32 16778160, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 944]
!898 = metadata !{i32 944, i32 39, metadata !174, null}
!899 = metadata !{i32 786689, metadata !174, metadata !"DmaConfigPtr", metadata !5, i32 33555377, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DmaConfigPtr] [line 945]
!900 = metadata !{i32 945, i32 28, metadata !174, null}
!901 = metadata !{i32 786688, metadata !174, metadata !"Channel", metadata !5, i32 947, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 947]
!902 = metadata !{i32 947, i32 20, metadata !174, null}
!903 = metadata !{i32 949, i32 12, metadata !174, null}
!904 = metadata !{i32 951, i32 6, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !174, i32 951, i32 6, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!906 = metadata !{i32 952, i32 10, metadata !907, null}
!907 = metadata !{i32 786443, metadata !1, metadata !905, i32 951, i32 24, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!908 = metadata !{i32 956, i32 3, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !905, i32 955, i32 7, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!910 = metadata !{i32 958, i32 1, metadata !174, null}
!911 = metadata !{i32 786689, metadata !175, metadata !"InstancePtr", metadata !5, i32 16778192, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 976]
!912 = metadata !{i32 976, i32 34, metadata !175, null}
!913 = metadata !{i32 786689, metadata !175, metadata !"Direction", metadata !5, i32 33555408, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 976]
!914 = metadata !{i32 976, i32 51, metadata !175, null}
!915 = metadata !{i32 786689, metadata !175, metadata !"DmaConfigPtr", metadata !5, i32 50332625, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DmaConfigPtr] [line 977]
!916 = metadata !{i32 977, i32 28, metadata !175, null}
!917 = metadata !{i32 786688, metadata !175, metadata !"Channel", metadata !5, i32 979, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 979]
!918 = metadata !{i32 979, i32 20, metadata !175, null}
!919 = metadata !{i32 981, i32 12, metadata !175, null}
!920 = metadata !{i32 983, i32 6, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !175, i32 983, i32 6, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!922 = metadata !{i32 984, i32 3, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !921, i32 983, i32 16, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!924 = metadata !{i32 988, i32 6, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !175, i32 988, i32 6, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!926 = metadata !{i32 990, i32 10, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !925, i32 988, i32 24, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!928 = metadata !{i32 994, i32 3, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !925, i32 993, i32 7, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!930 = metadata !{i32 996, i32 1, metadata !175, null}
!931 = metadata !{i32 786689, metadata !178, metadata !"InstancePtr", metadata !5, i32 16778230, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1014]
!932 = metadata !{i32 1014, i32 41, metadata !178, null}
!933 = metadata !{i32 786689, metadata !178, metadata !"Direction", metadata !5, i32 33555446, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 1014]
!934 = metadata !{i32 1014, i32 58, metadata !178, null}
!935 = metadata !{i32 786689, metadata !178, metadata !"BufferAddrSet", metadata !5, i32 50332663, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BufferAddrSet] [line 1015]
!936 = metadata !{i32 1015, i32 18, metadata !178, null}
!937 = metadata !{i32 786688, metadata !178, metadata !"Channel", metadata !5, i32 1017, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1017]
!938 = metadata !{i32 1017, i32 20, metadata !178, null}
!939 = metadata !{i32 1019, i32 12, metadata !178, null}
!940 = metadata !{i32 1021, i32 6, metadata !941, null}
!941 = metadata !{i32 786443, metadata !1, metadata !178, i32 1021, i32 6, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!942 = metadata !{i32 1022, i32 3, metadata !943, null}
!943 = metadata !{i32 786443, metadata !1, metadata !941, i32 1021, i32 16, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!944 = metadata !{i32 1025, i32 6, metadata !945, null}
!945 = metadata !{i32 786443, metadata !1, metadata !178, i32 1025, i32 6, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!946 = metadata !{i32 1026, i32 10, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !945, i32 1025, i32 24, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!948 = metadata !{i32 1030, i32 3, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !945, i32 1029, i32 7, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!950 = metadata !{i32 1032, i32 1, metadata !178, null}
!951 = metadata !{i32 786689, metadata !182, metadata !"InstancePtr", metadata !5, i32 16778264, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1048]
!952 = metadata !{i32 1048, i32 33, metadata !182, null}
!953 = metadata !{i32 786689, metadata !182, metadata !"Direction", metadata !5, i32 33555480, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 1048]
!954 = metadata !{i32 1048, i32 50, metadata !182, null}
!955 = metadata !{i32 786688, metadata !182, metadata !"Channel", metadata !5, i32 1050, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1050]
!956 = metadata !{i32 1050, i32 20, metadata !182, null}
!957 = metadata !{i32 1052, i32 12, metadata !182, null}
!958 = metadata !{i32 1054, i32 6, metadata !959, null}
!959 = metadata !{i32 786443, metadata !1, metadata !182, i32 1054, i32 6, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!960 = metadata !{i32 1055, i32 3, metadata !961, null}
!961 = metadata !{i32 786443, metadata !1, metadata !959, i32 1054, i32 16, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!962 = metadata !{i32 1058, i32 6, metadata !963, null}
!963 = metadata !{i32 786443, metadata !1, metadata !182, i32 1058, i32 6, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!964 = metadata !{i32 1059, i32 10, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !963, i32 1058, i32 24, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!966 = metadata !{i32 1062, i32 3, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !963, i32 1061, i32 7, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!968 = metadata !{i32 1064, i32 1, metadata !182, null}
!969 = metadata !{i32 786689, metadata !183, metadata !"InstancePtr", metadata !5, i32 16778295, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1079]
!970 = metadata !{i32 1079, i32 33, metadata !183, null}
!971 = metadata !{i32 786689, metadata !183, metadata !"Direction", metadata !5, i32 33555511, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 1079]
!972 = metadata !{i32 1079, i32 50, metadata !183, null}
!973 = metadata !{i32 786688, metadata !183, metadata !"Channel", metadata !5, i32 1081, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1081]
!974 = metadata !{i32 1081, i32 20, metadata !183, null}
!975 = metadata !{i32 1083, i32 12, metadata !183, null}
!976 = metadata !{i32 1085, i32 6, metadata !977, null}
!977 = metadata !{i32 786443, metadata !1, metadata !183, i32 1085, i32 6, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!978 = metadata !{i32 1086, i32 3, metadata !979, null}
!979 = metadata !{i32 786443, metadata !1, metadata !977, i32 1085, i32 16, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!980 = metadata !{i32 1089, i32 6, metadata !981, null}
!981 = metadata !{i32 786443, metadata !1, metadata !183, i32 1089, i32 6, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!982 = metadata !{i32 1090, i32 3, metadata !983, null}
!983 = metadata !{i32 786443, metadata !1, metadata !981, i32 1089, i32 24, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!984 = metadata !{i32 1091, i32 2, metadata !983, null}
!985 = metadata !{i32 1093, i32 2, metadata !183, null}
!986 = metadata !{i32 1094, i32 1, metadata !183, null}
!987 = metadata !{i32 786689, metadata !184, metadata !"InstancePtr", metadata !5, i32 16778325, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1109]
!988 = metadata !{i32 1109, i32 41, metadata !184, null}
!989 = metadata !{i32 786689, metadata !184, metadata !"Direction", metadata !5, i32 33555541, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 1109]
!990 = metadata !{i32 1109, i32 58, metadata !184, null}
!991 = metadata !{i32 786688, metadata !184, metadata !"Channel", metadata !5, i32 1111, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1111]
!992 = metadata !{i32 1111, i32 20, metadata !184, null}
!993 = metadata !{i32 1113, i32 12, metadata !184, null}
!994 = metadata !{i32 1115, i32 6, metadata !995, null}
!995 = metadata !{i32 786443, metadata !1, metadata !184, i32 1115, i32 6, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!996 = metadata !{i32 1116, i32 3, metadata !997, null}
!997 = metadata !{i32 786443, metadata !1, metadata !995, i32 1115, i32 16, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!998 = metadata !{i32 1119, i32 6, metadata !999, null}
!999 = metadata !{i32 786443, metadata !1, metadata !184, i32 1119, i32 6, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1000 = metadata !{i32 1120, i32 3, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !1, metadata !999, i32 1119, i32 24, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1002 = metadata !{i32 1121, i32 2, metadata !1001, null}
!1003 = metadata !{i32 1123, i32 2, metadata !184, null}
!1004 = metadata !{i32 1124, i32 1, metadata !184, null}
!1005 = metadata !{i32 786689, metadata !185, metadata !"InstancePtr", metadata !5, i32 16778357, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1141]
!1006 = metadata !{i32 1141, i32 40, metadata !185, null}
!1007 = metadata !{i32 786689, metadata !185, metadata !"CfgPtr", metadata !5, i32 33555574, metadata !188, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CfgPtr] [line 1142]
!1008 = metadata !{i32 1142, i32 32, metadata !185, null}
!1009 = metadata !{i32 786688, metadata !185, metadata !"Status", metadata !5, i32 1144, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 1144]
!1010 = metadata !{i32 1144, i32 6, metadata !185, null}
!1011 = metadata !{i32 786688, metadata !185, metadata !"Channel", metadata !5, i32 1145, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1145]
!1012 = metadata !{i32 1145, i32 20, metadata !185, null}
!1013 = metadata !{i32 1148, i32 2, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !1, metadata !1015, i32 1148, i32 2, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1015 = metadata !{i32 786443, metadata !1, metadata !185, i32 1148, i32 2, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1016 = metadata !{i32 1148, i32 2, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1018, i32 1148, i32 2, i32 1, i32 244} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1018 = metadata !{i32 786443, metadata !1, metadata !1014, i32 1148, i32 2, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1019 = metadata !{i32 1148, i32 2, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !1, metadata !1021, i32 1148, i32 2, i32 2, i32 245} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1021 = metadata !{i32 786443, metadata !1, metadata !1014, i32 1148, i32 2, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1022 = metadata !{i32 1149, i32 2, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !1, metadata !1024, i32 1149, i32 2, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1024 = metadata !{i32 786443, metadata !1, metadata !185, i32 1149, i32 2, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1025 = metadata !{i32 1149, i32 2, metadata !1026, null}
!1026 = metadata !{i32 786443, metadata !1, metadata !1027, i32 1149, i32 2, i32 1, i32 246} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1027 = metadata !{i32 786443, metadata !1, metadata !1023, i32 1149, i32 2, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1028 = metadata !{i32 1149, i32 2, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1, metadata !1030, i32 1149, i32 2, i32 2, i32 247} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1030 = metadata !{i32 786443, metadata !1, metadata !1023, i32 1149, i32 2, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1031 = metadata !{i32 1150, i32 2, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !1033, i32 1150, i32 2, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1033 = metadata !{i32 786443, metadata !1, metadata !185, i32 1150, i32 2, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1034 = metadata !{i32 1150, i32 2, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1036, i32 1150, i32 2, i32 1, i32 248} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1036 = metadata !{i32 786443, metadata !1, metadata !1032, i32 1150, i32 2, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1037 = metadata !{i32 1150, i32 2, metadata !1038, null}
!1038 = metadata !{i32 786443, metadata !1, metadata !1039, i32 1150, i32 2, i32 2, i32 249} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1039 = metadata !{i32 786443, metadata !1, metadata !1032, i32 1150, i32 2, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1040 = metadata !{i32 1152, i32 6, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1, metadata !185, i32 1152, i32 6, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1042 = metadata !{i32 1152, i32 6, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !1041, i32 1152, i32 6, i32 1, i32 250} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1044 = metadata !{i32 1155, i32 3, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !1, metadata !1041, i32 1153, i32 38, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1046 = metadata !{i32 1158, i32 12, metadata !185, null}
!1047 = metadata !{i32 1160, i32 6, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !185, i32 1160, i32 6, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1049 = metadata !{i32 1162, i32 12, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1, metadata !1048, i32 1160, i32 24, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1051 = metadata !{i32 1164, i32 7, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !1, metadata !1050, i32 1164, i32 7, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1053 = metadata !{i32 1166, i32 4, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !1052, i32 1164, i32 30, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1055 = metadata !{i32 1169, i32 4, metadata !1054, null}
!1056 = metadata !{i32 1171, i32 2, metadata !1050, null}
!1057 = metadata !{i32 1173, i32 12, metadata !185, null}
!1058 = metadata !{i32 1175, i32 6, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !185, i32 1175, i32 6, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1060 = metadata !{i32 1177, i32 12, metadata !1061, null}
!1061 = metadata !{i32 786443, metadata !1, metadata !1059, i32 1175, i32 24, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1062 = metadata !{i32 1180, i32 7, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1061, i32 1180, i32 7, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1064 = metadata !{i32 1182, i32 4, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !1, metadata !1063, i32 1180, i32 30, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1066 = metadata !{i32 1185, i32 4, metadata !1065, null}
!1067 = metadata !{i32 1187, i32 2, metadata !1061, null}
!1068 = metadata !{i32 1189, i32 2, metadata !185, null}
!1069 = metadata !{i32 1190, i32 1, metadata !185, null}
!1070 = metadata !{i32 786689, metadata !199, metadata !"InstancePtr", metadata !5, i32 16778421, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1205]
!1071 = metadata !{i32 1205, i32 41, metadata !199, null}
!1072 = metadata !{i32 786689, metadata !199, metadata !"CfgPtr", metadata !5, i32 33555638, metadata !188, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CfgPtr] [line 1206]
!1073 = metadata !{i32 1206, i32 32, metadata !199, null}
!1074 = metadata !{i32 786688, metadata !199, metadata !"Channel", metadata !5, i32 1208, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1208]
!1075 = metadata !{i32 1208, i32 20, metadata !199, null}
!1076 = metadata !{i32 786688, metadata !199, metadata !"FrmCnt", metadata !5, i32 1209, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrmCnt] [line 1209]
!1077 = metadata !{i32 1209, i32 5, metadata !199, null}
!1078 = metadata !{i32 786688, metadata !199, metadata !"DlyCnt", metadata !5, i32 1210, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DlyCnt] [line 1210]
!1079 = metadata !{i32 1210, i32 5, metadata !199, null}
!1080 = metadata !{i32 1213, i32 2, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !1082, i32 1213, i32 2, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1082 = metadata !{i32 786443, metadata !1, metadata !199, i32 1213, i32 2, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1083 = metadata !{i32 1213, i32 2, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !1085, i32 1213, i32 2, i32 1, i32 251} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1085 = metadata !{i32 786443, metadata !1, metadata !1081, i32 1213, i32 2, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1086 = metadata !{i32 1213, i32 2, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !1088, i32 1213, i32 2, i32 2, i32 252} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1088 = metadata !{i32 786443, metadata !1, metadata !1081, i32 1213, i32 2, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1089 = metadata !{i32 1214, i32 2, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !1091, i32 1214, i32 2, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1091 = metadata !{i32 786443, metadata !1, metadata !199, i32 1214, i32 2, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1092 = metadata !{i32 1214, i32 2, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !1, metadata !1094, i32 1214, i32 2, i32 1, i32 253} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1094 = metadata !{i32 786443, metadata !1, metadata !1090, i32 1214, i32 2, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1095 = metadata !{i32 1214, i32 2, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1, metadata !1097, i32 1214, i32 2, i32 2, i32 254} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1097 = metadata !{i32 786443, metadata !1, metadata !1090, i32 1214, i32 2, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1098 = metadata !{i32 1215, i32 2, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !1100, i32 1215, i32 2, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1100 = metadata !{i32 786443, metadata !1, metadata !199, i32 1215, i32 2, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1101 = metadata !{i32 1215, i32 2, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !1, metadata !1103, i32 1215, i32 2, i32 1, i32 255} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1103 = metadata !{i32 786443, metadata !1, metadata !1099, i32 1215, i32 2, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1104 = metadata !{i32 1215, i32 2, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !1, metadata !1106, i32 1215, i32 2, i32 2, i32 256} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1106 = metadata !{i32 786443, metadata !1, metadata !1099, i32 1215, i32 2, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1107 = metadata !{i32 1219, i32 2, metadata !199, null}
!1108 = metadata !{i32 1221, i32 12, metadata !199, null}
!1109 = metadata !{i32 1223, i32 6, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !199, i32 1223, i32 6, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1111 = metadata !{i32 1224, i32 3, metadata !1112, null}
!1112 = metadata !{i32 786443, metadata !1, metadata !1110, i32 1223, i32 24, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1113 = metadata !{i32 1225, i32 2, metadata !1112, null}
!1114 = metadata !{i32 1227, i32 2, metadata !199, null}
!1115 = metadata !{i32 1228, i32 2, metadata !199, null}
!1116 = metadata !{i32 1232, i32 2, metadata !199, null}
!1117 = metadata !{i32 1234, i32 12, metadata !199, null}
!1118 = metadata !{i32 1236, i32 6, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !1, metadata !199, i32 1236, i32 6, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1120 = metadata !{i32 1237, i32 3, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !1, metadata !1119, i32 1236, i32 24, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1122 = metadata !{i32 1238, i32 2, metadata !1121, null}
!1123 = metadata !{i32 1240, i32 2, metadata !199, null}
!1124 = metadata !{i32 1241, i32 2, metadata !199, null}
!1125 = metadata !{i32 1243, i32 2, metadata !199, null}
!1126 = metadata !{i32 1244, i32 1, metadata !199, null}
!1127 = metadata !{i32 786689, metadata !202, metadata !"InstancePtr", metadata !5, i32 16778476, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1260]
!1128 = metadata !{i32 1260, i32 36, metadata !202, null}
!1129 = metadata !{i32 786689, metadata !202, metadata !"FrmStoreNum", metadata !5, i32 33555692, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrmStoreNum] [line 1260]
!1130 = metadata !{i32 1260, i32 52, metadata !202, null}
!1131 = metadata !{i32 786689, metadata !202, metadata !"Direction", metadata !5, i32 50332908, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 1260]
!1132 = metadata !{i32 1260, i32 69, metadata !202, null}
!1133 = metadata !{i32 786688, metadata !202, metadata !"Channel", metadata !5, i32 1262, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1262]
!1134 = metadata !{i32 1262, i32 20, metadata !202, null}
!1135 = metadata !{i32 1264, i32 5, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !1, metadata !202, i32 1264, i32 5, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1137 = metadata !{i32 1265, i32 3, metadata !1138, null}
!1138 = metadata !{i32 786443, metadata !1, metadata !1136, i32 1264, i32 46, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1139 = metadata !{i32 1268, i32 12, metadata !202, null}
!1140 = metadata !{i32 1270, i32 6, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1, metadata !202, i32 1270, i32 6, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1142 = metadata !{i32 1271, i32 3, metadata !1143, null}
!1143 = metadata !{i32 786443, metadata !1, metadata !1141, i32 1270, i32 16, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1144 = metadata !{i32 1274, i32 5, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !1, metadata !202, i32 1274, i32 5, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1146 = metadata !{i32 1276, i32 3, metadata !1147, null}
!1147 = metadata !{i32 786443, metadata !1, metadata !1145, i32 1274, i32 41, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1148 = metadata !{i32 1277, i32 3, metadata !1147, null}
!1149 = metadata !{i32 1280, i32 6, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !202, i32 1280, i32 6, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1151 = metadata !{i32 1282, i32 3, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1150, i32 1280, i32 70, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1153 = metadata !{i32 1283, i32 3, metadata !1152, null}
!1154 = metadata !{i32 1286, i32 2, metadata !202, null}
!1155 = metadata !{i32 1289, i32 2, metadata !202, null}
!1156 = metadata !{i32 1291, i32 2, metadata !202, null}
!1157 = metadata !{i32 1293, i32 2, metadata !202, null}
!1158 = metadata !{i32 1295, i32 1, metadata !202, null}
!1159 = metadata !{i32 786689, metadata !205, metadata !"InstancePtr", metadata !5, i32 16778526, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1310]
!1160 = metadata !{i32 1310, i32 37, metadata !205, null}
!1161 = metadata !{i32 786689, metadata !205, metadata !"FrmStoreNum", metadata !5, i32 33555742, metadata !208, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrmStoreNum] [line 1310]
!1162 = metadata !{i32 1310, i32 54, metadata !205, null}
!1163 = metadata !{i32 786689, metadata !205, metadata !"Direction", metadata !5, i32 50332959, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 1311]
!1164 = metadata !{i32 1311, i32 9, metadata !205, null}
!1165 = metadata !{i32 786688, metadata !205, metadata !"Channel", metadata !5, i32 1313, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1313]
!1166 = metadata !{i32 1313, i32 20, metadata !205, null}
!1167 = metadata !{i32 1315, i32 12, metadata !205, null}
!1168 = metadata !{i32 1317, i32 6, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !205, i32 1317, i32 6, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1170 = metadata !{i32 1318, i32 3, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1, metadata !1169, i32 1317, i32 16, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1172 = metadata !{i32 1321, i32 6, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !205, i32 1321, i32 6, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1174 = metadata !{i32 1322, i32 19, metadata !1175, null}
!1175 = metadata !{i32 786443, metadata !1, metadata !1173, i32 1321, i32 67, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1176 = metadata !{i32 1324, i32 2, metadata !1175, null}
!1177 = metadata !{i32 1326, i32 3, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1, metadata !1173, i32 1324, i32 9, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1179 = metadata !{i32 1328, i32 1, metadata !205, null}
!1180 = metadata !{i32 786689, metadata !209, metadata !"InstancePtr", metadata !5, i32 16778560, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1344]
!1181 = metadata !{i32 1344, i32 44, metadata !209, null}
!1182 = metadata !{i32 786689, metadata !209, metadata !"Direction", metadata !5, i32 33555776, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 1344]
!1183 = metadata !{i32 1344, i32 61, metadata !209, null}
!1184 = metadata !{i32 786688, metadata !209, metadata !"Channel", metadata !5, i32 1346, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1346]
!1185 = metadata !{i32 1346, i32 20, metadata !209, null}
!1186 = metadata !{i32 1348, i32 12, metadata !209, null}
!1187 = metadata !{i32 1350, i32 6, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1, metadata !209, i32 1350, i32 6, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1189 = metadata !{i32 1351, i32 3, metadata !1190, null}
!1190 = metadata !{i32 786443, metadata !1, metadata !1188, i32 1350, i32 16, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1191 = metadata !{i32 1354, i32 6, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !1, metadata !209, i32 1354, i32 6, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1193 = metadata !{i32 1355, i32 10, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !1, metadata !1192, i32 1354, i32 24, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1195 = metadata !{i32 1358, i32 3, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !1192, i32 1357, i32 7, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1197 = metadata !{i32 1360, i32 1, metadata !209, null}
!1198 = metadata !{i32 786689, metadata !210, metadata !"InstancePtr", metadata !5, i32 16778593, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 1377]
!1199 = metadata !{i32 1377, i32 46, metadata !210, null}
!1200 = metadata !{i32 786689, metadata !210, metadata !"Direction", metadata !5, i32 33555809, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Direction] [line 1377]
!1201 = metadata !{i32 1377, i32 63, metadata !210, null}
!1202 = metadata !{i32 786689, metadata !210, metadata !"ErrorMask", metadata !5, i32 50333026, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ErrorMask] [line 1378]
!1203 = metadata !{i32 1378, i32 10, metadata !210, null}
!1204 = metadata !{i32 786688, metadata !210, metadata !"Channel", metadata !5, i32 1380, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Channel] [line 1380]
!1205 = metadata !{i32 1380, i32 20, metadata !210, null}
!1206 = metadata !{i32 1382, i32 12, metadata !210, null}
!1207 = metadata !{i32 1384, i32 6, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !1, metadata !210, i32 1384, i32 6, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1209 = metadata !{i32 1385, i32 3, metadata !1210, null}
!1210 = metadata !{i32 786443, metadata !1, metadata !1208, i32 1384, i32 16, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1211 = metadata !{i32 1388, i32 6, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !1, metadata !210, i32 1388, i32 6, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1213 = metadata !{i32 1389, i32 3, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !1, metadata !1212, i32 1388, i32 24, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1215 = metadata !{i32 1390, i32 3, metadata !1214, null}
!1216 = metadata !{i32 1393, i32 3, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !1, metadata !1212, i32 1392, i32 7, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.c]
!1218 = metadata !{i32 1395, i32 1, metadata !210, null}
