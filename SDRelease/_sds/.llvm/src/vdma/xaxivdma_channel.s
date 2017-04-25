; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XAxiVdma_Channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], [32 x [8 x i32]], i32, i32, i32, [20 x i8] }
%struct.XAxiVdma_ChannelSetup = type { i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Channel is not running, cannot start park mode\0D\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"Channel is busy, cannot setup engine for transfer\0D\0A\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"Channel not initialized\0D\0A\00", align 1
@.str3 = private unnamed_addr constant [27 x i8] c"Channel config failed %d\0D\0A\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"Channel setup buffer addr failed %d\0D\0A\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"Channel start failed %d\0D\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"Channel is busy, cannot config!\0D\0A\00", align 1
@.str7 = private unnamed_addr constant [47 x i8] c"Channel is not running, cannot set park mode\0D\0A\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"Invalid frame to park on %d\0D\0A\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"Set vertical size failed %d\0D\0A\00", align 1
@.str10 = private unnamed_addr constant [32 x i8] c"Set horizontal size failed %d\0D\0A\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"Set stride size failed %d\0D\0A\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"Set frame delay failed %d\0D\0A\00", align 1
@.str13 = private unnamed_addr constant [39 x i8] c"Unaligned address %d: %x without DRE\0D\0A\00", align 1
@.str14 = private unnamed_addr constant [42 x i8] c"Start DMA channel while channel is busy\0D\0A\00", align 1
@.str15 = private unnamed_addr constant [29 x i8] c"Failed to start channel %x\0D\0A\00", align 1
@.str16 = private unnamed_addr constant [32 x i8] c"Dump register for channel %x:\0D\0A\00", align 1
@.str17 = private unnamed_addr constant [19 x i8] c"\09Control Reg: %x\0D\0A\00", align 1
@.str18 = private unnamed_addr constant [18 x i8] c"\09Status Reg: %x\0D\0A\00", align 1
@.str19 = private unnamed_addr constant [17 x i8] c"\09CDESC Reg: %x\0D\0A\00", align 1
@.str20 = private unnamed_addr constant [17 x i8] c"\09TDESC Reg: %x\0D\0A\00", align 1
@.str21 = private unnamed_addr constant [39 x i8] c"Frame counter value must be non-zero\0D\0A\00", align 1
@.str22 = private unnamed_addr constant [36 x i8] c"Channel Frame counter is disabled\0D\0A\00", align 1
@.str23 = private unnamed_addr constant [36 x i8] c"Channel Delay counter is disabled\0D\0A\00", align 1
@.str24 = private unnamed_addr constant [43 x i8] c"Enable intr with null intr mask value %x\0D\0A\00", align 1
@.str25 = private unnamed_addr constant [44 x i8] c"Disable intr with null intr mask value %x\0D\0A\00", align 1
@.str26 = private unnamed_addr constant [42 x i8] c"Clear intr with null intr mask value %x\0D\0A\00", align 1
@.str27 = private unnamed_addr constant [30 x i8] c"FrmDly size %d is not valid\0D\0A\00", align 1
@.str28 = private unnamed_addr constant [30 x i8] c"Stride size %d is not valid\0D\0A\00", align 1
@.str29 = private unnamed_addr constant [34 x i8] c"Horizontal size %d is not valid\0D\0A\00", align 1
@.str30 = private unnamed_addr constant [32 x i8] c"Veritcal size %d is not valid\0D\0A\00", align 1

; Function Attrs: nounwind
define void @XAxiVdma_ChannelInit(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %i = alloca i32, align 4
  %NumFrames = alloca i32, align 4
  %FirstBdPtr = alloca [8 x i32]*, align 4
  %LastBdPtr = alloca [8 x i32]*, align 4
  %BdPtr = alloca [8 x i32]*, align 4
  %NextBdPtr = alloca [8 x i32]*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !192), !dbg !193
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !194), !dbg !195
  call void @llvm.dbg.declare(metadata !{i32* %NumFrames}, metadata !196), !dbg !197
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %FirstBdPtr}, metadata !198), !dbg !199
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !200
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 23, !dbg !200
  %4 = getelementptr inbounds [32 x [8 x i32]]* %3, i32 0, i32 0, !dbg !200
  store [8 x i32]* %4, [8 x i32]** %FirstBdPtr, align 4, !dbg !200
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %LastBdPtr}, metadata !201), !dbg !202
  %5 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !203
  %6 = getelementptr inbounds %struct.XAxiVdma_Channel* %5, i32 0, i32 11, !dbg !203
  %7 = load i32* %6, align 4, !dbg !203
  store i32 %7, i32* %NumFrames, align 4, !dbg !203
  %8 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !204
  %9 = getelementptr inbounds %struct.XAxiVdma_Channel* %8, i32 0, i32 3, !dbg !204
  store i32 0, i32* %9, align 4, !dbg !204
  %10 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !205
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 12, !dbg !205
  store i32 0, i32* %11, align 4, !dbg !205
  %12 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !206
  %13 = getelementptr inbounds %struct.XAxiVdma_Channel* %12, i32 0, i32 13, !dbg !206
  store i32 0, i32* %13, align 4, !dbg !206
  %14 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !207
  %15 = getelementptr inbounds %struct.XAxiVdma_Channel* %14, i32 0, i32 14, !dbg !207
  store i32 0, i32* %15, align 4, !dbg !207
  %16 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !208
  %17 = getelementptr inbounds %struct.XAxiVdma_Channel* %16, i32 0, i32 15, !dbg !208
  store i32 0, i32* %17, align 4, !dbg !208
  %18 = load i32* %NumFrames, align 4, !dbg !209
  %19 = sub nsw i32 %18, 1, !dbg !209
  %20 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !209
  %21 = getelementptr inbounds %struct.XAxiVdma_Channel* %20, i32 0, i32 23, !dbg !209
  %22 = getelementptr inbounds [32 x [8 x i32]]* %21, i32 0, i32 %19, !dbg !209
  store [8 x i32]* %22, [8 x i32]** %LastBdPtr, align 4, !dbg !209
  %23 = load [8 x i32]** %FirstBdPtr, align 4, !dbg !210
  %24 = bitcast [8 x i32]* %23 to i8*, !dbg !210
  %25 = load i32* %NumFrames, align 4, !dbg !210
  %26 = mul i32 %25, 32, !dbg !210
  call void @llvm.memset.p0i8.i32(i8* %24, i8 0, i32 %26, i32 1, i1 false), !dbg !210
  store i32 0, i32* %i, align 4, !dbg !211
  br label %27, !dbg !211

; <label>:27                                      ; preds = %52, %0
  %28 = load i32* %i, align 4, !dbg !213
  %29 = load i32* %NumFrames, align 4, !dbg !213
  %30 = icmp slt i32 %28, %29, !dbg !213
  br i1 %30, label %31, label %55, !dbg !213

; <label>:31                                      ; preds = %27
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %BdPtr}, metadata !216), !dbg !218
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %NextBdPtr}, metadata !219), !dbg !220
  %32 = load i32* %i, align 4, !dbg !221
  %33 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !221
  %34 = getelementptr inbounds %struct.XAxiVdma_Channel* %33, i32 0, i32 23, !dbg !221
  %35 = getelementptr inbounds [32 x [8 x i32]]* %34, i32 0, i32 %32, !dbg !221
  store [8 x i32]* %35, [8 x i32]** %BdPtr, align 4, !dbg !221
  %36 = load i32* %i, align 4, !dbg !222
  %37 = load i32* %NumFrames, align 4, !dbg !222
  %38 = sub nsw i32 %37, 1, !dbg !222
  %39 = icmp eq i32 %36, %38, !dbg !222
  br i1 %39, label %40, label %42, !dbg !222

; <label>:40                                      ; preds = %31
  %41 = load [8 x i32]** %FirstBdPtr, align 4, !dbg !224
  store [8 x i32]* %41, [8 x i32]** %NextBdPtr, align 4, !dbg !224
  br label %48, !dbg !226

; <label>:42                                      ; preds = %31
  %43 = load i32* %i, align 4, !dbg !227
  %44 = add nsw i32 %43, 1, !dbg !227
  %45 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !227
  %46 = getelementptr inbounds %struct.XAxiVdma_Channel* %45, i32 0, i32 23, !dbg !227
  %47 = getelementptr inbounds [32 x [8 x i32]]* %46, i32 0, i32 %44, !dbg !227
  store [8 x i32]* %47, [8 x i32]** %NextBdPtr, align 4, !dbg !227
  br label %48

; <label>:48                                      ; preds = %42, %40
  %49 = load [8 x i32]** %BdPtr, align 4, !dbg !229
  %50 = load [8 x i32]** %NextBdPtr, align 4, !dbg !229
  %51 = ptrtoint [8 x i32]* %50 to i32, !dbg !229
  call void @XAxiVdma_BdSetNextPtr([8 x i32]* %49, i32 %51), !dbg !229
  br label %52, !dbg !230

; <label>:52                                      ; preds = %48
  %53 = load i32* %i, align 4, !dbg !231
  %54 = add nsw i32 %53, 1, !dbg !231
  store i32 %54, i32* %i, align 4, !dbg !231
  br label %27, !dbg !231

; <label>:55                                      ; preds = %27
  %56 = load i32* %NumFrames, align 4, !dbg !232
  %57 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !232
  %58 = getelementptr inbounds %struct.XAxiVdma_Channel* %57, i32 0, i32 18, !dbg !232
  store i32 %56, i32* %58, align 4, !dbg !232
  %59 = load [8 x i32]** %FirstBdPtr, align 4, !dbg !233
  %60 = ptrtoint [8 x i32]* %59 to i32, !dbg !233
  %61 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !233
  %62 = getelementptr inbounds %struct.XAxiVdma_Channel* %61, i32 0, i32 13, !dbg !233
  store i32 %60, i32* %62, align 4, !dbg !233
  %63 = load [8 x i32]** %FirstBdPtr, align 4, !dbg !234
  %64 = ptrtoint [8 x i32]* %63 to i32, !dbg !234
  %65 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !234
  %66 = getelementptr inbounds %struct.XAxiVdma_Channel* %65, i32 0, i32 12, !dbg !234
  store i32 %64, i32* %66, align 4, !dbg !234
  %67 = load [8 x i32]** %LastBdPtr, align 4, !dbg !235
  %68 = ptrtoint [8 x i32]* %67 to i32, !dbg !235
  %69 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !235
  %70 = getelementptr inbounds %struct.XAxiVdma_Channel* %69, i32 0, i32 15, !dbg !235
  store i32 %68, i32* %70, align 4, !dbg !235
  %71 = load [8 x i32]** %LastBdPtr, align 4, !dbg !236
  %72 = ptrtoint [8 x i32]* %71 to i32, !dbg !236
  %73 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !236
  %74 = getelementptr inbounds %struct.XAxiVdma_Channel* %73, i32 0, i32 14, !dbg !236
  store i32 %72, i32* %74, align 4, !dbg !236
  %75 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !237
  %76 = getelementptr inbounds %struct.XAxiVdma_Channel* %75, i32 0, i32 3, !dbg !237
  store i32 1, i32* %76, align 4, !dbg !237
  ret void, !dbg !238
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #2

; Function Attrs: nounwind
define internal void @XAxiVdma_BdSetNextPtr([8 x i32]* %BdPtr, i32 %NextPtr) #0 {
  %1 = alloca [8 x i32]*, align 4
  %2 = alloca i32, align 4
  store [8 x i32]* %BdPtr, [8 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %1}, metadata !239), !dbg !240
  store i32 %NextPtr, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !241), !dbg !242
  %3 = load [8 x i32]** %1, align 4, !dbg !243
  %4 = load i32* %2, align 4, !dbg !243
  call void @XAxiVdma_BdWrite([8 x i32]* %3, i32 0, i32 %4), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelResetNotDone(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !245), !dbg !246
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !247
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !247
  %4 = load i32* %3, align 4, !dbg !247
  %5 = add i32 %4, 0, !dbg !247
  %6 = call i32 @Xil_In32(i32 %5), !dbg !247
  %7 = and i32 %6, 4, !dbg !247
  ret i32 %7, !dbg !247
}

declare i32 @Xil_In32(i32) #3

; Function Attrs: nounwind
define void @XAxiVdma_ChannelReset(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !248), !dbg !249
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !250
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !250
  %4 = load i32* %3, align 4, !dbg !250
  %5 = add i32 %4, 0, !dbg !250
  call void @Xil_Out32(i32 %5, i32 4), !dbg !250
  ret void, !dbg !251
}

declare void @Xil_Out32(i32, i32) #3

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelIsRunning(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %Bits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !252), !dbg !253
  call void @llvm.dbg.declare(metadata !{i32* %Bits}, metadata !254), !dbg !255
  %3 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !256
  %4 = getelementptr inbounds %struct.XAxiVdma_Channel* %3, i32 0, i32 0, !dbg !256
  %5 = load i32* %4, align 4, !dbg !256
  %6 = add i32 %5, 4, !dbg !256
  %7 = call i32 @Xil_In32(i32 %6), !dbg !256
  %8 = and i32 %7, 1, !dbg !256
  store i32 %8, i32* %Bits, align 4, !dbg !256
  %9 = load i32* %Bits, align 4, !dbg !257
  %10 = icmp ne i32 %9, 0, !dbg !257
  br i1 %10, label %11, label %12, !dbg !257

; <label>:11                                      ; preds = %0
  store i32 0, i32* %1, !dbg !259
  br label %23, !dbg !259

; <label>:12                                      ; preds = %0
  %13 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !261
  %14 = getelementptr inbounds %struct.XAxiVdma_Channel* %13, i32 0, i32 0, !dbg !261
  %15 = load i32* %14, align 4, !dbg !261
  %16 = add i32 %15, 0, !dbg !261
  %17 = call i32 @Xil_In32(i32 %16), !dbg !261
  %18 = and i32 %17, 1, !dbg !261
  store i32 %18, i32* %Bits, align 4, !dbg !261
  %19 = load i32* %Bits, align 4, !dbg !262
  %20 = icmp ne i32 %19, 0, !dbg !262
  br i1 %20, label %22, label %21, !dbg !262

; <label>:21                                      ; preds = %12
  store i32 0, i32* %1, !dbg !264
  br label %23, !dbg !264

; <label>:22                                      ; preds = %12
  store i32 1, i32* %1, !dbg !266
  br label %23, !dbg !266

; <label>:23                                      ; preds = %22, %21, %11
  %24 = load i32* %1, !dbg !267
  ret i32 %24, !dbg !267
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelIsBusy(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %Bits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !268), !dbg !269
  call void @llvm.dbg.declare(metadata !{i32* %Bits}, metadata !270), !dbg !271
  %3 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !272
  %4 = getelementptr inbounds %struct.XAxiVdma_Channel* %3, i32 0, i32 0, !dbg !272
  %5 = load i32* %4, align 4, !dbg !272
  %6 = add i32 %5, 4, !dbg !272
  %7 = call i32 @Xil_In32(i32 %6), !dbg !272
  %8 = and i32 %7, 2, !dbg !272
  store i32 %8, i32* %Bits, align 4, !dbg !272
  %9 = load i32* %Bits, align 4, !dbg !273
  %10 = icmp ne i32 %9, 0, !dbg !273
  br i1 %10, label %11, label %12, !dbg !273

; <label>:11                                      ; preds = %0
  store i32 0, i32* %1, !dbg !275
  br label %23, !dbg !275

; <label>:12                                      ; preds = %0
  %13 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !277
  %14 = getelementptr inbounds %struct.XAxiVdma_Channel* %13, i32 0, i32 0, !dbg !277
  %15 = load i32* %14, align 4, !dbg !277
  %16 = add i32 %15, 4, !dbg !277
  %17 = call i32 @Xil_In32(i32 %16), !dbg !277
  %18 = and i32 %17, 1, !dbg !277
  store i32 %18, i32* %Bits, align 4, !dbg !277
  %19 = load i32* %Bits, align 4, !dbg !278
  %20 = icmp ne i32 %19, 0, !dbg !278
  br i1 %20, label %21, label %22, !dbg !278

; <label>:21                                      ; preds = %12
  store i32 0, i32* %1, !dbg !280
  br label %23, !dbg !280

; <label>:22                                      ; preds = %12
  store i32 1, i32* %1, !dbg !282
  br label %23, !dbg !282

; <label>:23                                      ; preds = %22, %21, %11
  %24 = load i32* %1, !dbg !283
  ret i32 %24, !dbg !283
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelErrors(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !284), !dbg !285
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !286
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !286
  %4 = load i32* %3, align 4, !dbg !286
  %5 = add i32 %4, 4, !dbg !286
  %6 = call i32 @Xil_In32(i32 %5), !dbg !286
  %7 = and i32 %6, 4080, !dbg !286
  ret i32 %7, !dbg !286
}

; Function Attrs: nounwind
define void @XAxiVdma_ClearChannelErrors(%struct.XAxiVdma_Channel* %Channel, i32 %ErrorMask) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %2 = alloca i32, align 4
  %SrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !287), !dbg !288
  store i32 %ErrorMask, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !289), !dbg !290
  call void @llvm.dbg.declare(metadata !{i32* %SrBits}, metadata !291), !dbg !292
  %3 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !293
  %4 = getelementptr inbounds %struct.XAxiVdma_Channel* %3, i32 0, i32 0, !dbg !293
  %5 = load i32* %4, align 4, !dbg !293
  %6 = add i32 %5, 4, !dbg !293
  %7 = call i32 @Xil_In32(i32 %6), !dbg !293
  %8 = load i32* %2, align 4, !dbg !293
  %9 = or i32 %7, %8, !dbg !293
  store i32 %9, i32* %SrBits, align 4, !dbg !293
  %10 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !294
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 0, !dbg !294
  %12 = load i32* %11, align 4, !dbg !294
  %13 = add i32 %12, 4, !dbg !294
  %14 = load i32* %SrBits, align 4, !dbg !294
  call void @Xil_Out32(i32 %13, i32 %14), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelGetStatus(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !296), !dbg !297
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !298
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !298
  %4 = load i32* %3, align 4, !dbg !298
  %5 = add i32 %4, 4, !dbg !298
  %6 = call i32 @Xil_In32(i32 %5), !dbg !298
  ret i32 %6, !dbg !298
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelStartParking(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !299), !dbg !300
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !301), !dbg !302
  %3 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !303
  %4 = call i32 @XAxiVdma_ChannelIsRunning(%struct.XAxiVdma_Channel* %3), !dbg !303
  %5 = icmp ne i32 %4, 0, !dbg !303
  br i1 %5, label %8, label %6, !dbg !303

; <label>:6                                       ; preds = %0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str, i32 0, i32 0)), !dbg !305
  store i32 1, i32* %1, !dbg !307
  br label %20, !dbg !307

; <label>:8                                       ; preds = %0
  %9 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !308
  %10 = getelementptr inbounds %struct.XAxiVdma_Channel* %9, i32 0, i32 0, !dbg !308
  %11 = load i32* %10, align 4, !dbg !308
  %12 = add i32 %11, 0, !dbg !308
  %13 = call i32 @Xil_In32(i32 %12), !dbg !308
  %14 = and i32 %13, -3, !dbg !308
  store i32 %14, i32* %CrBits, align 4, !dbg !308
  %15 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !309
  %16 = getelementptr inbounds %struct.XAxiVdma_Channel* %15, i32 0, i32 0, !dbg !309
  %17 = load i32* %16, align 4, !dbg !309
  %18 = add i32 %17, 0, !dbg !309
  %19 = load i32* %CrBits, align 4, !dbg !309
  call void @Xil_Out32(i32 %18, i32 %19), !dbg !309
  store i32 0, i32* %1, !dbg !310
  br label %20, !dbg !310

; <label>:20                                      ; preds = %8, %6
  %21 = load i32* %1, !dbg !311
  ret i32 %21, !dbg !311
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
define void @XAxiVdma_ChannelStopParking(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !312), !dbg !313
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !314), !dbg !315
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !316
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !316
  %4 = load i32* %3, align 4, !dbg !316
  %5 = add i32 %4, 0, !dbg !316
  %6 = call i32 @Xil_In32(i32 %5), !dbg !316
  %7 = or i32 %6, 2, !dbg !316
  store i32 %7, i32* %CrBits, align 4, !dbg !316
  %8 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !317
  %9 = getelementptr inbounds %struct.XAxiVdma_Channel* %8, i32 0, i32 0, !dbg !317
  %10 = load i32* %9, align 4, !dbg !317
  %11 = add i32 %10, 0, !dbg !317
  %12 = load i32* %CrBits, align 4, !dbg !317
  call void @Xil_Out32(i32 %11, i32 %12), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: nounwind
define void @XAxiVdma_ChannelStartFrmCntEnable(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !319), !dbg !320
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !321), !dbg !322
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !323
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !323
  %4 = load i32* %3, align 4, !dbg !323
  %5 = add i32 %4, 0, !dbg !323
  %6 = call i32 @Xil_In32(i32 %5), !dbg !323
  %7 = or i32 %6, 16, !dbg !323
  store i32 %7, i32* %CrBits, align 4, !dbg !323
  %8 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !324
  %9 = getelementptr inbounds %struct.XAxiVdma_Channel* %8, i32 0, i32 0, !dbg !324
  %10 = load i32* %9, align 4, !dbg !324
  %11 = add i32 %10, 0, !dbg !324
  %12 = load i32* %CrBits, align 4, !dbg !324
  call void @Xil_Out32(i32 %11, i32 %12), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelSetBdAddrs(%struct.XAxiVdma_Channel* %Channel, i32 %BdAddrPhys, i32 %BdAddrVirt) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %NumFrames = alloca i32, align 4
  %i = alloca i32, align 4
  %NextPhys = alloca i32, align 4
  %CurrVirt = alloca i32, align 4
  %BdPtr = alloca [8 x i32]*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !326), !dbg !327
  store i32 %BdAddrPhys, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !328), !dbg !329
  store i32 %BdAddrVirt, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !330), !dbg !331
  call void @llvm.dbg.declare(metadata !{i32* %NumFrames}, metadata !332), !dbg !333
  %5 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !334
  %6 = getelementptr inbounds %struct.XAxiVdma_Channel* %5, i32 0, i32 18, !dbg !334
  %7 = load i32* %6, align 4, !dbg !334
  store i32 %7, i32* %NumFrames, align 4, !dbg !334
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !335), !dbg !336
  call void @llvm.dbg.declare(metadata !{i32* %NextPhys}, metadata !337), !dbg !338
  %8 = load i32* %3, align 4, !dbg !339
  store i32 %8, i32* %NextPhys, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata !{i32* %CurrVirt}, metadata !340), !dbg !341
  %9 = load i32* %4, align 4, !dbg !342
  store i32 %9, i32* %CurrVirt, align 4, !dbg !342
  %10 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !343
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 5, !dbg !343
  %12 = load i32* %11, align 4, !dbg !343
  %13 = icmp ne i32 %12, 0, !dbg !343
  br i1 %13, label %14, label %20, !dbg !343

; <label>:14                                      ; preds = %0
  %15 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !345
  %16 = call i32 @XAxiVdma_ChannelIsBusy(%struct.XAxiVdma_Channel* %15), !dbg !345
  %17 = icmp ne i32 %16, 0, !dbg !345
  br i1 %17, label %18, label %20, !dbg !345

; <label>:18                                      ; preds = %14
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str1, i32 0, i32 0)), !dbg !347
  store i32 21, i32* %1, !dbg !349
  br label %74, !dbg !349

; <label>:20                                      ; preds = %14, %0
  %21 = load i32* %3, align 4, !dbg !350
  %22 = inttoptr i32 %21 to i8*, !dbg !350
  %23 = load i32* %NumFrames, align 4, !dbg !350
  %24 = mul i32 %23, 32, !dbg !350
  call void @llvm.memset.p0i8.i32(i8* %22, i8 0, i32 %24, i32 1, i1 false), !dbg !350
  %25 = load i32* %4, align 4, !dbg !351
  %26 = inttoptr i32 %25 to i8*, !dbg !351
  %27 = load i32* %NumFrames, align 4, !dbg !351
  %28 = mul i32 %27, 32, !dbg !351
  call void @llvm.memset.p0i8.i32(i8* %26, i8 0, i32 %28, i32 1, i1 false), !dbg !351
  store i32 0, i32* %i, align 4, !dbg !352
  br label %29, !dbg !352

; <label>:29                                      ; preds = %50, %20
  %30 = load i32* %i, align 4, !dbg !354
  %31 = load i32* %NumFrames, align 4, !dbg !354
  %32 = icmp slt i32 %30, %31, !dbg !354
  br i1 %32, label %33, label %53, !dbg !354

; <label>:33                                      ; preds = %29
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %BdPtr}, metadata !357), !dbg !359
  %34 = load i32* %CurrVirt, align 4, !dbg !360
  %35 = inttoptr i32 %34 to [8 x i32]*, !dbg !360
  store [8 x i32]* %35, [8 x i32]** %BdPtr, align 4, !dbg !360
  %36 = load i32* %i, align 4, !dbg !361
  %37 = load i32* %NumFrames, align 4, !dbg !361
  %38 = sub nsw i32 %37, 1, !dbg !361
  %39 = icmp eq i32 %36, %38, !dbg !361
  br i1 %39, label %40, label %42, !dbg !361

; <label>:40                                      ; preds = %33
  %41 = load i32* %3, align 4, !dbg !363
  store i32 %41, i32* %NextPhys, align 4, !dbg !363
  br label %45, !dbg !365

; <label>:42                                      ; preds = %33
  %43 = load i32* %NextPhys, align 4, !dbg !366
  %44 = add i32 %43, 32, !dbg !366
  store i32 %44, i32* %NextPhys, align 4, !dbg !366
  br label %45

; <label>:45                                      ; preds = %42, %40
  %46 = load [8 x i32]** %BdPtr, align 4, !dbg !368
  %47 = load i32* %NextPhys, align 4, !dbg !368
  call void @XAxiVdma_BdSetNextPtr([8 x i32]* %46, i32 %47), !dbg !368
  %48 = load i32* %CurrVirt, align 4, !dbg !369
  %49 = add i32 %48, 32, !dbg !369
  store i32 %49, i32* %CurrVirt, align 4, !dbg !369
  br label %50, !dbg !370

; <label>:50                                      ; preds = %45
  %51 = load i32* %i, align 4, !dbg !371
  %52 = add nsw i32 %51, 1, !dbg !371
  store i32 %52, i32* %i, align 4, !dbg !371
  br label %29, !dbg !371

; <label>:53                                      ; preds = %29
  %54 = load i32* %3, align 4, !dbg !372
  %55 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !372
  %56 = getelementptr inbounds %struct.XAxiVdma_Channel* %55, i32 0, i32 12, !dbg !372
  store i32 %54, i32* %56, align 4, !dbg !372
  %57 = load i32* %4, align 4, !dbg !373
  %58 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !373
  %59 = getelementptr inbounds %struct.XAxiVdma_Channel* %58, i32 0, i32 13, !dbg !373
  store i32 %57, i32* %59, align 4, !dbg !373
  %60 = load i32* %3, align 4, !dbg !374
  %61 = load i32* %NumFrames, align 4, !dbg !374
  %62 = sub nsw i32 %61, 1, !dbg !374
  %63 = mul i32 %62, 32, !dbg !374
  %64 = add i32 %60, %63, !dbg !374
  %65 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !374
  %66 = getelementptr inbounds %struct.XAxiVdma_Channel* %65, i32 0, i32 14, !dbg !374
  store i32 %64, i32* %66, align 4, !dbg !374
  %67 = load i32* %4, align 4, !dbg !375
  %68 = load i32* %NumFrames, align 4, !dbg !375
  %69 = sub nsw i32 %68, 1, !dbg !375
  %70 = mul i32 %69, 32, !dbg !375
  %71 = add i32 %67, %70, !dbg !375
  %72 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !375
  %73 = getelementptr inbounds %struct.XAxiVdma_Channel* %72, i32 0, i32 15, !dbg !375
  store i32 %71, i32* %73, align 4, !dbg !375
  store i32 0, i32* %1, !dbg !376
  br label %74, !dbg !376

; <label>:74                                      ; preds = %53, %18
  %75 = load i32* %1, !dbg !377
  ret i32 %75, !dbg !377
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelStartTransfer(%struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_ChannelSetup* %ChannelCfgPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %3 = alloca %struct.XAxiVdma_ChannelSetup*, align 4
  %Status = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !378), !dbg !379
  store %struct.XAxiVdma_ChannelSetup* %ChannelCfgPtr, %struct.XAxiVdma_ChannelSetup** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_ChannelSetup** %3}, metadata !380), !dbg !381
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !382), !dbg !383
  %4 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !384
  %5 = getelementptr inbounds %struct.XAxiVdma_Channel* %4, i32 0, i32 3, !dbg !384
  %6 = load i32* %5, align 4, !dbg !384
  %7 = icmp ne i32 %6, 0, !dbg !384
  br i1 %7, label %10, label %8, !dbg !384

; <label>:8                                       ; preds = %0
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)), !dbg !386
  store i32 1, i32* %1, !dbg !388
  br label %56, !dbg !388

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !389
  %12 = getelementptr inbounds %struct.XAxiVdma_Channel* %11, i32 0, i32 5, !dbg !389
  %13 = load i32* %12, align 4, !dbg !389
  %14 = icmp ne i32 %13, 0, !dbg !389
  br i1 %14, label %15, label %21, !dbg !389

; <label>:15                                      ; preds = %10
  %16 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !391
  %17 = call i32 @XAxiVdma_ChannelIsBusy(%struct.XAxiVdma_Channel* %16), !dbg !391
  %18 = icmp ne i32 %17, 0, !dbg !391
  br i1 %18, label %19, label %21, !dbg !391

; <label>:19                                      ; preds = %15
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str1, i32 0, i32 0)), !dbg !393
  store i32 21, i32* %1, !dbg !395
  br label %56, !dbg !395

; <label>:21                                      ; preds = %15, %10
  %22 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !396
  %23 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !396
  %24 = call i32 @XAxiVdma_ChannelConfig(%struct.XAxiVdma_Channel* %22, %struct.XAxiVdma_ChannelSetup* %23), !dbg !396
  store i32 %24, i32* %Status, align 4, !dbg !396
  %25 = load i32* %Status, align 4, !dbg !397
  %26 = icmp ne i32 %25, 0, !dbg !397
  br i1 %26, label %27, label %31, !dbg !397

; <label>:27                                      ; preds = %21
  %28 = load i32* %Status, align 4, !dbg !399
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str3, i32 0, i32 0), i32 %28), !dbg !399
  %30 = load i32* %Status, align 4, !dbg !401
  store i32 %30, i32* %1, !dbg !401
  br label %56, !dbg !401

; <label>:31                                      ; preds = %21
  %32 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !402
  %33 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !402
  %34 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %33, i32 0, i32 8, !dbg !402
  %35 = getelementptr inbounds [32 x i32]* %34, i32 0, i32 0, !dbg !402
  %36 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !402
  %37 = getelementptr inbounds %struct.XAxiVdma_Channel* %36, i32 0, i32 18, !dbg !402
  %38 = load i32* %37, align 4, !dbg !402
  %39 = call i32 @XAxiVdma_ChannelSetBufferAddr(%struct.XAxiVdma_Channel* %32, i32* %35, i32 %38), !dbg !402
  store i32 %39, i32* %Status, align 4, !dbg !402
  %40 = load i32* %Status, align 4, !dbg !403
  %41 = icmp ne i32 %40, 0, !dbg !403
  br i1 %41, label %42, label %46, !dbg !403

; <label>:42                                      ; preds = %31
  %43 = load i32* %Status, align 4, !dbg !405
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str4, i32 0, i32 0), i32 %43), !dbg !405
  %45 = load i32* %Status, align 4, !dbg !407
  store i32 %45, i32* %1, !dbg !407
  br label %56, !dbg !407

; <label>:46                                      ; preds = %31
  %47 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !408
  %48 = call i32 @XAxiVdma_ChannelStart(%struct.XAxiVdma_Channel* %47), !dbg !408
  store i32 %48, i32* %Status, align 4, !dbg !408
  %49 = load i32* %Status, align 4, !dbg !409
  %50 = icmp ne i32 %49, 0, !dbg !409
  br i1 %50, label %51, label %55, !dbg !409

; <label>:51                                      ; preds = %46
  %52 = load i32* %Status, align 4, !dbg !411
  %53 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0), i32 %52), !dbg !411
  %54 = load i32* %Status, align 4, !dbg !413
  store i32 %54, i32* %1, !dbg !413
  br label %56, !dbg !413

; <label>:55                                      ; preds = %46
  store i32 0, i32* %1, !dbg !414
  br label %56, !dbg !414

; <label>:56                                      ; preds = %55, %51, %42, %27, %19, %8
  %57 = load i32* %1, !dbg !415
  ret i32 %57, !dbg !415
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelConfig(%struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_ChannelSetup* %ChannelCfgPtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %3 = alloca %struct.XAxiVdma_ChannelSetup*, align 4
  %CrBits = alloca i32, align 4
  %i = alloca i32, align 4
  %NumBds = alloca i32, align 4
  %Status = alloca i32, align 4
  %hsize_align = alloca i32, align 4
  %stride_align = alloca i32, align 4
  %FrmBits = alloca i32, align 4
  %RegValue = alloca i32, align 4
  %BdPtr = alloca [8 x i32]*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !416), !dbg !417
  store %struct.XAxiVdma_ChannelSetup* %ChannelCfgPtr, %struct.XAxiVdma_ChannelSetup** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_ChannelSetup** %3}, metadata !418), !dbg !419
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !420), !dbg !421
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !422), !dbg !423
  call void @llvm.dbg.declare(metadata !{i32* %NumBds}, metadata !424), !dbg !425
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !426), !dbg !427
  call void @llvm.dbg.declare(metadata !{i32* %hsize_align}, metadata !428), !dbg !429
  call void @llvm.dbg.declare(metadata !{i32* %stride_align}, metadata !430), !dbg !431
  %4 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !432
  %5 = getelementptr inbounds %struct.XAxiVdma_Channel* %4, i32 0, i32 3, !dbg !432
  %6 = load i32* %5, align 4, !dbg !432
  %7 = icmp ne i32 %6, 0, !dbg !432
  br i1 %7, label %10, label %8, !dbg !432

; <label>:8                                       ; preds = %0
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)), !dbg !434
  store i32 1, i32* %1, !dbg !436
  br label %425, !dbg !436

; <label>:10                                      ; preds = %0
  %11 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !437
  %12 = getelementptr inbounds %struct.XAxiVdma_Channel* %11, i32 0, i32 5, !dbg !437
  %13 = load i32* %12, align 4, !dbg !437
  %14 = icmp ne i32 %13, 0, !dbg !437
  br i1 %14, label %15, label %21, !dbg !437

; <label>:15                                      ; preds = %10
  %16 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !439
  %17 = call i32 @XAxiVdma_ChannelIsBusy(%struct.XAxiVdma_Channel* %16), !dbg !439
  %18 = icmp ne i32 %17, 0, !dbg !439
  br i1 %18, label %19, label %21, !dbg !439

; <label>:19                                      ; preds = %15
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str6, i32 0, i32 0)), !dbg !441
  store i32 21, i32* %1, !dbg !443
  br label %425, !dbg !443

; <label>:21                                      ; preds = %15, %10
  %22 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !444
  %23 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %22, i32 0, i32 0, !dbg !444
  %24 = load i32* %23, align 4, !dbg !444
  %25 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !444
  %26 = getelementptr inbounds %struct.XAxiVdma_Channel* %25, i32 0, i32 17, !dbg !444
  store i32 %24, i32* %26, align 4, !dbg !444
  %27 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !445
  %28 = getelementptr inbounds %struct.XAxiVdma_Channel* %27, i32 0, i32 26, !dbg !445
  %29 = load i32* %28, align 4, !dbg !445
  %30 = icmp eq i32 %29, 1, !dbg !445
  br i1 %30, label %31, label %61, !dbg !445

; <label>:31                                      ; preds = %21
  %32 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !447
  %33 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %32, i32 0, i32 1, !dbg !447
  %34 = load i32* %33, align 4, !dbg !447
  %35 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !447
  %36 = getelementptr inbounds %struct.XAxiVdma_Channel* %35, i32 0, i32 10, !dbg !447
  %37 = load i32* %36, align 4, !dbg !447
  %38 = icmp slt i32 %34, %37, !dbg !447
  br i1 %38, label %39, label %43, !dbg !447

; <label>:39                                      ; preds = %31
  %40 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !450
  %41 = getelementptr inbounds %struct.XAxiVdma_Channel* %40, i32 0, i32 10, !dbg !450
  %42 = load i32* %41, align 4, !dbg !450
  store i32 %42, i32* %hsize_align, align 4, !dbg !450
  br label %60, !dbg !452

; <label>:43                                      ; preds = %31
  %44 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !453
  %45 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %44, i32 0, i32 1, !dbg !453
  %46 = load i32* %45, align 4, !dbg !453
  %47 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !453
  %48 = getelementptr inbounds %struct.XAxiVdma_Channel* %47, i32 0, i32 10, !dbg !453
  %49 = load i32* %48, align 4, !dbg !453
  %50 = srem i32 %46, %49, !dbg !453
  store i32 %50, i32* %hsize_align, align 4, !dbg !453
  %51 = load i32* %hsize_align, align 4, !dbg !455
  %52 = icmp ugt i32 %51, 0, !dbg !455
  br i1 %52, label %53, label %59, !dbg !455

; <label>:53                                      ; preds = %43
  %54 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !457
  %55 = getelementptr inbounds %struct.XAxiVdma_Channel* %54, i32 0, i32 10, !dbg !457
  %56 = load i32* %55, align 4, !dbg !457
  %57 = load i32* %hsize_align, align 4, !dbg !457
  %58 = sub i32 %56, %57, !dbg !457
  store i32 %58, i32* %hsize_align, align 4, !dbg !457
  br label %59, !dbg !457

; <label>:59                                      ; preds = %53, %43
  br label %60

; <label>:60                                      ; preds = %59, %39
  br label %91, !dbg !458

; <label>:61                                      ; preds = %21
  %62 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !459
  %63 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %62, i32 0, i32 1, !dbg !459
  %64 = load i32* %63, align 4, !dbg !459
  %65 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !459
  %66 = getelementptr inbounds %struct.XAxiVdma_Channel* %65, i32 0, i32 10, !dbg !459
  %67 = load i32* %66, align 4, !dbg !459
  %68 = icmp slt i32 %64, %67, !dbg !459
  br i1 %68, label %69, label %73, !dbg !459

; <label>:69                                      ; preds = %61
  %70 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !462
  %71 = getelementptr inbounds %struct.XAxiVdma_Channel* %70, i32 0, i32 10, !dbg !462
  %72 = load i32* %71, align 4, !dbg !462
  store i32 %72, i32* %hsize_align, align 4, !dbg !462
  br label %90, !dbg !464

; <label>:73                                      ; preds = %61
  %74 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !465
  %75 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %74, i32 0, i32 1, !dbg !465
  %76 = load i32* %75, align 4, !dbg !465
  %77 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !465
  %78 = getelementptr inbounds %struct.XAxiVdma_Channel* %77, i32 0, i32 21, !dbg !465
  %79 = load i32* %78, align 4, !dbg !465
  %80 = srem i32 %76, %79, !dbg !465
  store i32 %80, i32* %hsize_align, align 4, !dbg !465
  %81 = load i32* %hsize_align, align 4, !dbg !467
  %82 = icmp ugt i32 %81, 0, !dbg !467
  br i1 %82, label %83, label %89, !dbg !467

; <label>:83                                      ; preds = %73
  %84 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !469
  %85 = getelementptr inbounds %struct.XAxiVdma_Channel* %84, i32 0, i32 21, !dbg !469
  %86 = load i32* %85, align 4, !dbg !469
  %87 = load i32* %hsize_align, align 4, !dbg !469
  %88 = sub i32 %86, %87, !dbg !469
  store i32 %88, i32* %hsize_align, align 4, !dbg !469
  br label %89, !dbg !469

; <label>:89                                      ; preds = %83, %73
  br label %90

; <label>:90                                      ; preds = %89, %69
  br label %91

; <label>:91                                      ; preds = %90, %60
  %92 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !470
  %93 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %92, i32 0, i32 2, !dbg !470
  %94 = load i32* %93, align 4, !dbg !470
  %95 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !470
  %96 = getelementptr inbounds %struct.XAxiVdma_Channel* %95, i32 0, i32 10, !dbg !470
  %97 = load i32* %96, align 4, !dbg !470
  %98 = icmp slt i32 %94, %97, !dbg !470
  br i1 %98, label %99, label %103, !dbg !470

; <label>:99                                      ; preds = %91
  %100 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !472
  %101 = getelementptr inbounds %struct.XAxiVdma_Channel* %100, i32 0, i32 10, !dbg !472
  %102 = load i32* %101, align 4, !dbg !472
  store i32 %102, i32* %stride_align, align 4, !dbg !472
  br label %120, !dbg !474

; <label>:103                                     ; preds = %91
  %104 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !475
  %105 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %104, i32 0, i32 2, !dbg !475
  %106 = load i32* %105, align 4, !dbg !475
  %107 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !475
  %108 = getelementptr inbounds %struct.XAxiVdma_Channel* %107, i32 0, i32 10, !dbg !475
  %109 = load i32* %108, align 4, !dbg !475
  %110 = srem i32 %106, %109, !dbg !475
  store i32 %110, i32* %stride_align, align 4, !dbg !475
  %111 = load i32* %stride_align, align 4, !dbg !477
  %112 = icmp ugt i32 %111, 0, !dbg !477
  br i1 %112, label %113, label %119, !dbg !477

; <label>:113                                     ; preds = %103
  %114 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !479
  %115 = getelementptr inbounds %struct.XAxiVdma_Channel* %114, i32 0, i32 10, !dbg !479
  %116 = load i32* %115, align 4, !dbg !479
  %117 = load i32* %stride_align, align 4, !dbg !479
  %118 = sub i32 %116, %117, !dbg !479
  store i32 %118, i32* %stride_align, align 4, !dbg !479
  br label %119, !dbg !479

; <label>:119                                     ; preds = %113, %103
  br label %120

; <label>:120                                     ; preds = %119, %99
  %121 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !480
  %122 = getelementptr inbounds %struct.XAxiVdma_Channel* %121, i32 0, i32 7, !dbg !480
  %123 = load i32* %122, align 4, !dbg !480
  %124 = icmp ne i32 %123, 0, !dbg !480
  br i1 %124, label %144, label %125, !dbg !480

; <label>:125                                     ; preds = %120
  %126 = load i32* %hsize_align, align 4, !dbg !482
  %127 = icmp ne i32 %126, 0, !dbg !482
  br i1 %127, label %128, label %134, !dbg !482

; <label>:128                                     ; preds = %125
  %129 = load i32* %hsize_align, align 4, !dbg !485
  %130 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !485
  %131 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %130, i32 0, i32 1, !dbg !485
  %132 = load i32* %131, align 4, !dbg !485
  %133 = add i32 %132, %129, !dbg !485
  store i32 %133, i32* %131, align 4, !dbg !485
  br label %134, !dbg !487

; <label>:134                                     ; preds = %128, %125
  %135 = load i32* %stride_align, align 4, !dbg !488
  %136 = icmp ne i32 %135, 0, !dbg !488
  br i1 %136, label %137, label %143, !dbg !488

; <label>:137                                     ; preds = %134
  %138 = load i32* %stride_align, align 4, !dbg !490
  %139 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !490
  %140 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %139, i32 0, i32 2, !dbg !490
  %141 = load i32* %140, align 4, !dbg !490
  %142 = add i32 %141, %138, !dbg !490
  store i32 %142, i32* %140, align 4, !dbg !490
  br label %143, !dbg !492

; <label>:143                                     ; preds = %137, %134
  br label %144, !dbg !493

; <label>:144                                     ; preds = %143, %120
  %145 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !494
  %146 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %145, i32 0, i32 1, !dbg !494
  %147 = load i32* %146, align 4, !dbg !494
  %148 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !494
  %149 = getelementptr inbounds %struct.XAxiVdma_Channel* %148, i32 0, i32 16, !dbg !494
  store i32 %147, i32* %149, align 4, !dbg !494
  %150 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !495
  %151 = getelementptr inbounds %struct.XAxiVdma_Channel* %150, i32 0, i32 0, !dbg !495
  %152 = load i32* %151, align 4, !dbg !495
  %153 = add i32 %152, 0, !dbg !495
  %154 = call i32 @Xil_In32(i32 %153), !dbg !495
  store i32 %154, i32* %CrBits, align 4, !dbg !495
  %155 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !496
  %156 = getelementptr inbounds %struct.XAxiVdma_Channel* %155, i32 0, i32 0, !dbg !496
  %157 = load i32* %156, align 4, !dbg !496
  %158 = add i32 %157, 0, !dbg !496
  %159 = call i32 @Xil_In32(i32 %158), !dbg !496
  %160 = and i32 %159, -3867, !dbg !496
  store i32 %160, i32* %CrBits, align 4, !dbg !496
  %161 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !497
  %162 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %161, i32 0, i32 4, !dbg !497
  %163 = load i32* %162, align 4, !dbg !497
  %164 = icmp ne i32 %163, 0, !dbg !497
  br i1 %164, label %165, label %168, !dbg !497

; <label>:165                                     ; preds = %144
  %166 = load i32* %CrBits, align 4, !dbg !499
  %167 = or i32 %166, 2, !dbg !499
  store i32 %167, i32* %CrBits, align 4, !dbg !499
  br label %237, !dbg !501

; <label>:168                                     ; preds = %144
  call void @llvm.dbg.declare(metadata !{i32* %FrmBits}, metadata !502), !dbg !504
  call void @llvm.dbg.declare(metadata !{i32* %RegValue}, metadata !505), !dbg !506
  %169 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !507
  %170 = call i32 @XAxiVdma_ChannelIsRunning(%struct.XAxiVdma_Channel* %169), !dbg !507
  %171 = icmp ne i32 %170, 0, !dbg !507
  br i1 %171, label %179, label %172, !dbg !507

; <label>:172                                     ; preds = %168
  %173 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !509
  %174 = getelementptr inbounds %struct.XAxiVdma_Channel* %173, i32 0, i32 5, !dbg !509
  %175 = load i32* %174, align 4, !dbg !509
  %176 = icmp ne i32 %175, 0, !dbg !509
  br i1 %176, label %177, label %179, !dbg !509

; <label>:177                                     ; preds = %172
  %178 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str7, i32 0, i32 0)), !dbg !511
  store i32 15, i32* %1, !dbg !513
  br label %425, !dbg !513

; <label>:179                                     ; preds = %172, %168
  %180 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !514
  %181 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %180, i32 0, i32 9, !dbg !514
  %182 = load i32* %181, align 4, !dbg !514
  %183 = icmp sgt i32 %182, 15, !dbg !514
  br i1 %183, label %184, label %189, !dbg !514

; <label>:184                                     ; preds = %179
  %185 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !516
  %186 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %185, i32 0, i32 9, !dbg !516
  %187 = load i32* %186, align 4, !dbg !516
  %188 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str8, i32 0, i32 0), i32 %187), !dbg !516
  store i32 15, i32* %1, !dbg !518
  br label %425, !dbg !518

; <label>:189                                     ; preds = %179
  %190 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !519
  %191 = getelementptr inbounds %struct.XAxiVdma_Channel* %190, i32 0, i32 6, !dbg !519
  %192 = load i32* %191, align 4, !dbg !519
  %193 = icmp ne i32 %192, 0, !dbg !519
  br i1 %193, label %194, label %214, !dbg !519

; <label>:194                                     ; preds = %189
  %195 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !521
  %196 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %195, i32 0, i32 9, !dbg !521
  %197 = load i32* %196, align 4, !dbg !521
  %198 = and i32 %197, 31, !dbg !521
  store i32 %198, i32* %FrmBits, align 4, !dbg !521
  %199 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !523
  %200 = getelementptr inbounds %struct.XAxiVdma_Channel* %199, i32 0, i32 1, !dbg !523
  %201 = load i32* %200, align 4, !dbg !523
  %202 = add i32 %201, 40, !dbg !523
  %203 = call i32 @Xil_In32(i32 %202), !dbg !523
  store i32 %203, i32* %RegValue, align 4, !dbg !523
  %204 = load i32* %RegValue, align 4, !dbg !524
  %205 = and i32 %204, -32, !dbg !524
  store i32 %205, i32* %RegValue, align 4, !dbg !524
  %206 = load i32* %FrmBits, align 4, !dbg !525
  %207 = load i32* %RegValue, align 4, !dbg !525
  %208 = or i32 %207, %206, !dbg !525
  store i32 %208, i32* %RegValue, align 4, !dbg !525
  %209 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !526
  %210 = getelementptr inbounds %struct.XAxiVdma_Channel* %209, i32 0, i32 1, !dbg !526
  %211 = load i32* %210, align 4, !dbg !526
  %212 = add i32 %211, 40, !dbg !526
  %213 = load i32* %RegValue, align 4, !dbg !526
  call void @Xil_Out32(i32 %212, i32 %213), !dbg !526
  br label %236, !dbg !527

; <label>:214                                     ; preds = %189
  %215 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !528
  %216 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %215, i32 0, i32 9, !dbg !528
  %217 = load i32* %216, align 4, !dbg !528
  %218 = shl i32 %217, 8, !dbg !528
  store i32 %218, i32* %FrmBits, align 4, !dbg !528
  %219 = load i32* %FrmBits, align 4, !dbg !530
  %220 = and i32 %219, 7936, !dbg !530
  store i32 %220, i32* %FrmBits, align 4, !dbg !530
  %221 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !531
  %222 = getelementptr inbounds %struct.XAxiVdma_Channel* %221, i32 0, i32 1, !dbg !531
  %223 = load i32* %222, align 4, !dbg !531
  %224 = add i32 %223, 40, !dbg !531
  %225 = call i32 @Xil_In32(i32 %224), !dbg !531
  store i32 %225, i32* %RegValue, align 4, !dbg !531
  %226 = load i32* %RegValue, align 4, !dbg !532
  %227 = and i32 %226, -7937, !dbg !532
  store i32 %227, i32* %RegValue, align 4, !dbg !532
  %228 = load i32* %FrmBits, align 4, !dbg !533
  %229 = load i32* %RegValue, align 4, !dbg !533
  %230 = or i32 %229, %228, !dbg !533
  store i32 %230, i32* %RegValue, align 4, !dbg !533
  %231 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !534
  %232 = getelementptr inbounds %struct.XAxiVdma_Channel* %231, i32 0, i32 1, !dbg !534
  %233 = load i32* %232, align 4, !dbg !534
  %234 = add i32 %233, 40, !dbg !534
  %235 = load i32* %RegValue, align 4, !dbg !534
  call void @Xil_Out32(i32 %234, i32 %235), !dbg !534
  br label %236

; <label>:236                                     ; preds = %214, %194
  br label %237

; <label>:237                                     ; preds = %236, %165
  %238 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !535
  %239 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %238, i32 0, i32 5, !dbg !535
  %240 = load i32* %239, align 4, !dbg !535
  %241 = icmp ne i32 %240, 0, !dbg !535
  br i1 %241, label %242, label %251, !dbg !535

; <label>:242                                     ; preds = %237
  %243 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !537
  %244 = getelementptr inbounds %struct.XAxiVdma_Channel* %243, i32 0, i32 19, !dbg !537
  %245 = load i32* %244, align 4, !dbg !537
  %246 = icmp ne i32 %245, 0, !dbg !537
  br i1 %246, label %247, label %250, !dbg !537

; <label>:247                                     ; preds = %242
  %248 = load i32* %CrBits, align 4, !dbg !540
  %249 = or i32 %248, 8, !dbg !540
  store i32 %249, i32* %CrBits, align 4, !dbg !540
  br label %250, !dbg !540

; <label>:250                                     ; preds = %247, %242
  br label %251, !dbg !541

; <label>:251                                     ; preds = %250, %237
  %252 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !542
  %253 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %252, i32 0, i32 10, !dbg !542
  %254 = load i32* %253, align 4, !dbg !542
  %255 = icmp ne i32 %254, 0, !dbg !542
  br i1 %255, label %256, label %270, !dbg !542

; <label>:256                                     ; preds = %251
  %257 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !544
  %258 = getelementptr inbounds %struct.XAxiVdma_Channel* %257, i32 0, i32 19, !dbg !544
  %259 = load i32* %258, align 4, !dbg !544
  %260 = icmp eq i32 %259, 0, !dbg !544
  br i1 %260, label %266, label %261, !dbg !544

; <label>:261                                     ; preds = %256
  %262 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !547
  %263 = getelementptr inbounds %struct.XAxiVdma_Channel* %262, i32 0, i32 19, !dbg !547
  %264 = load i32* %263, align 4, !dbg !547
  %265 = icmp eq i32 %264, 2, !dbg !547
  br i1 %265, label %266, label %269, !dbg !547

; <label>:266                                     ; preds = %261, %256
  %267 = load i32* %CrBits, align 4, !dbg !549
  %268 = or i32 %267, 32768, !dbg !549
  store i32 %268, i32* %CrBits, align 4, !dbg !549
  br label %269, !dbg !549

; <label>:269                                     ; preds = %266, %261
  br label %270, !dbg !550

; <label>:270                                     ; preds = %269, %251
  %271 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !551
  %272 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %271, i32 0, i32 7, !dbg !551
  %273 = load i32* %272, align 4, !dbg !551
  %274 = icmp ne i32 %273, 0, !dbg !551
  br i1 %274, label %275, label %278, !dbg !551

; <label>:275                                     ; preds = %270
  %276 = load i32* %CrBits, align 4, !dbg !553
  %277 = or i32 %276, 16, !dbg !553
  store i32 %277, i32* %CrBits, align 4, !dbg !553
  br label %278, !dbg !555

; <label>:278                                     ; preds = %275, %270
  %279 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !556
  %280 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %279, i32 0, i32 6, !dbg !556
  %281 = load i32* %280, align 4, !dbg !556
  %282 = shl i32 %281, 8, !dbg !556
  %283 = and i32 %282, 3840, !dbg !556
  %284 = load i32* %CrBits, align 4, !dbg !556
  %285 = or i32 %284, %283, !dbg !556
  store i32 %285, i32* %CrBits, align 4, !dbg !556
  %286 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !557
  %287 = getelementptr inbounds %struct.XAxiVdma_Channel* %286, i32 0, i32 0, !dbg !557
  %288 = load i32* %287, align 4, !dbg !557
  %289 = add i32 %288, 0, !dbg !557
  %290 = load i32* %CrBits, align 4, !dbg !557
  call void @Xil_Out32(i32 %289, i32 %290), !dbg !557
  %291 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !558
  %292 = getelementptr inbounds %struct.XAxiVdma_Channel* %291, i32 0, i32 5, !dbg !558
  %293 = load i32* %292, align 4, !dbg !558
  %294 = icmp ne i32 %293, 0, !dbg !558
  br i1 %294, label %295, label %363, !dbg !558

; <label>:295                                     ; preds = %278
  %296 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !560
  %297 = getelementptr inbounds %struct.XAxiVdma_Channel* %296, i32 0, i32 18, !dbg !560
  %298 = load i32* %297, align 4, !dbg !560
  store i32 %298, i32* %NumBds, align 4, !dbg !560
  store i32 0, i32* %i, align 4, !dbg !562
  br label %299, !dbg !562

; <label>:299                                     ; preds = %359, %295
  %300 = load i32* %i, align 4, !dbg !564
  %301 = load i32* %NumBds, align 4, !dbg !564
  %302 = icmp slt i32 %300, %301, !dbg !564
  br i1 %302, label %303, label %362, !dbg !564

; <label>:303                                     ; preds = %299
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %BdPtr}, metadata !567), !dbg !569
  %304 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !570
  %305 = getelementptr inbounds %struct.XAxiVdma_Channel* %304, i32 0, i32 13, !dbg !570
  %306 = load i32* %305, align 4, !dbg !570
  %307 = load i32* %i, align 4, !dbg !570
  %308 = mul i32 %307, 32, !dbg !570
  %309 = add i32 %306, %308, !dbg !570
  %310 = inttoptr i32 %309 to [8 x i32]*, !dbg !570
  store [8 x i32]* %310, [8 x i32]** %BdPtr, align 4, !dbg !570
  %311 = load [8 x i32]** %BdPtr, align 4, !dbg !571
  %312 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !571
  %313 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %312, i32 0, i32 0, !dbg !571
  %314 = load i32* %313, align 4, !dbg !571
  %315 = call i32 @XAxiVdma_BdSetVsize([8 x i32]* %311, i32 %314), !dbg !571
  store i32 %315, i32* %Status, align 4, !dbg !571
  %316 = load i32* %Status, align 4, !dbg !572
  %317 = icmp ne i32 %316, 0, !dbg !572
  br i1 %317, label %318, label %322, !dbg !572

; <label>:318                                     ; preds = %303
  %319 = load i32* %Status, align 4, !dbg !574
  %320 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i32 0, i32 0), i32 %319), !dbg !574
  %321 = load i32* %Status, align 4, !dbg !576
  store i32 %321, i32* %1, !dbg !576
  br label %425, !dbg !576

; <label>:322                                     ; preds = %303
  %323 = load [8 x i32]** %BdPtr, align 4, !dbg !577
  %324 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !577
  %325 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %324, i32 0, i32 1, !dbg !577
  %326 = load i32* %325, align 4, !dbg !577
  %327 = call i32 @XAxiVdma_BdSetHsize([8 x i32]* %323, i32 %326), !dbg !577
  store i32 %327, i32* %Status, align 4, !dbg !577
  %328 = load i32* %Status, align 4, !dbg !578
  %329 = icmp ne i32 %328, 0, !dbg !578
  br i1 %329, label %330, label %334, !dbg !578

; <label>:330                                     ; preds = %322
  %331 = load i32* %Status, align 4, !dbg !580
  %332 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str10, i32 0, i32 0), i32 %331), !dbg !580
  %333 = load i32* %Status, align 4, !dbg !582
  store i32 %333, i32* %1, !dbg !582
  br label %425, !dbg !582

; <label>:334                                     ; preds = %322
  %335 = load [8 x i32]** %BdPtr, align 4, !dbg !583
  %336 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !583
  %337 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %336, i32 0, i32 2, !dbg !583
  %338 = load i32* %337, align 4, !dbg !583
  %339 = call i32 @XAxiVdma_BdSetStride([8 x i32]* %335, i32 %338), !dbg !583
  store i32 %339, i32* %Status, align 4, !dbg !583
  %340 = load i32* %Status, align 4, !dbg !584
  %341 = icmp ne i32 %340, 0, !dbg !584
  br i1 %341, label %342, label %346, !dbg !584

; <label>:342                                     ; preds = %334
  %343 = load i32* %Status, align 4, !dbg !586
  %344 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str11, i32 0, i32 0), i32 %343), !dbg !586
  %345 = load i32* %Status, align 4, !dbg !588
  store i32 %345, i32* %1, !dbg !588
  br label %425, !dbg !588

; <label>:346                                     ; preds = %334
  %347 = load [8 x i32]** %BdPtr, align 4, !dbg !589
  %348 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !589
  %349 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %348, i32 0, i32 3, !dbg !589
  %350 = load i32* %349, align 4, !dbg !589
  %351 = call i32 @XAxiVdma_BdSetFrmDly([8 x i32]* %347, i32 %350), !dbg !589
  store i32 %351, i32* %Status, align 4, !dbg !589
  %352 = load i32* %Status, align 4, !dbg !590
  %353 = icmp ne i32 %352, 0, !dbg !590
  br i1 %353, label %354, label %358, !dbg !590

; <label>:354                                     ; preds = %346
  %355 = load i32* %Status, align 4, !dbg !592
  %356 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str12, i32 0, i32 0), i32 %355), !dbg !592
  %357 = load i32* %Status, align 4, !dbg !594
  store i32 %357, i32* %1, !dbg !594
  br label %425, !dbg !594

; <label>:358                                     ; preds = %346
  br label %359, !dbg !595

; <label>:359                                     ; preds = %358
  %360 = load i32* %i, align 4, !dbg !596
  %361 = add nsw i32 %360, 1, !dbg !596
  store i32 %361, i32* %i, align 4, !dbg !596
  br label %299, !dbg !596

; <label>:362                                     ; preds = %299
  br label %424, !dbg !597

; <label>:363                                     ; preds = %278
  %364 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !598
  %365 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %364, i32 0, i32 0, !dbg !598
  %366 = load i32* %365, align 4, !dbg !598
  %367 = icmp sgt i32 %366, 8191, !dbg !598
  br i1 %367, label %403, label %368, !dbg !598

; <label>:368                                     ; preds = %363
  %369 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !601
  %370 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %369, i32 0, i32 0, !dbg !601
  %371 = load i32* %370, align 4, !dbg !601
  %372 = icmp sle i32 %371, 0, !dbg !601
  br i1 %372, label %403, label %373, !dbg !601

; <label>:373                                     ; preds = %368
  %374 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !603
  %375 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %374, i32 0, i32 1, !dbg !603
  %376 = load i32* %375, align 4, !dbg !603
  %377 = icmp sgt i32 %376, 65535, !dbg !603
  br i1 %377, label %403, label %378, !dbg !603

; <label>:378                                     ; preds = %373
  %379 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !605
  %380 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %379, i32 0, i32 1, !dbg !605
  %381 = load i32* %380, align 4, !dbg !605
  %382 = icmp sle i32 %381, 0, !dbg !605
  br i1 %382, label %403, label %383, !dbg !605

; <label>:383                                     ; preds = %378
  %384 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !607
  %385 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %384, i32 0, i32 2, !dbg !607
  %386 = load i32* %385, align 4, !dbg !607
  %387 = icmp sgt i32 %386, 65535, !dbg !607
  br i1 %387, label %403, label %388, !dbg !607

; <label>:388                                     ; preds = %383
  %389 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !609
  %390 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %389, i32 0, i32 2, !dbg !609
  %391 = load i32* %390, align 4, !dbg !609
  %392 = icmp sle i32 %391, 0, !dbg !609
  br i1 %392, label %403, label %393, !dbg !609

; <label>:393                                     ; preds = %388
  %394 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !611
  %395 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %394, i32 0, i32 3, !dbg !611
  %396 = load i32* %395, align 4, !dbg !611
  %397 = icmp slt i32 %396, 0, !dbg !611
  br i1 %397, label %403, label %398, !dbg !611

; <label>:398                                     ; preds = %393
  %399 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !613
  %400 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %399, i32 0, i32 3, !dbg !613
  %401 = load i32* %400, align 4, !dbg !613
  %402 = icmp sgt i32 %401, 15, !dbg !613
  br i1 %402, label %403, label %404, !dbg !613

; <label>:403                                     ; preds = %398, %393, %388, %383, %378, %373, %368, %363
  store i32 15, i32* %1, !dbg !615
  br label %425, !dbg !615

; <label>:404                                     ; preds = %398
  %405 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !617
  %406 = getelementptr inbounds %struct.XAxiVdma_Channel* %405, i32 0, i32 2, !dbg !617
  %407 = load i32* %406, align 4, !dbg !617
  %408 = add i32 %407, 4, !dbg !617
  %409 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !617
  %410 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %409, i32 0, i32 1, !dbg !617
  %411 = load i32* %410, align 4, !dbg !617
  call void @Xil_Out32(i32 %408, i32 %411), !dbg !617
  %412 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !618
  %413 = getelementptr inbounds %struct.XAxiVdma_Channel* %412, i32 0, i32 2, !dbg !618
  %414 = load i32* %413, align 4, !dbg !618
  %415 = add i32 %414, 8, !dbg !618
  %416 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !618
  %417 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %416, i32 0, i32 3, !dbg !618
  %418 = load i32* %417, align 4, !dbg !618
  %419 = shl i32 %418, 24, !dbg !618
  %420 = load %struct.XAxiVdma_ChannelSetup** %3, align 4, !dbg !618
  %421 = getelementptr inbounds %struct.XAxiVdma_ChannelSetup* %420, i32 0, i32 2, !dbg !618
  %422 = load i32* %421, align 4, !dbg !618
  %423 = or i32 %419, %422, !dbg !618
  call void @Xil_Out32(i32 %415, i32 %423), !dbg !618
  br label %424

; <label>:424                                     ; preds = %404, %362
  store i32 0, i32* %1, !dbg !619
  br label %425, !dbg !619

; <label>:425                                     ; preds = %424, %403, %354, %342, %330, %318, %184, %177, %19, %8
  %426 = load i32* %1, !dbg !620
  ret i32 %426, !dbg !620
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelSetBufferAddr(%struct.XAxiVdma_Channel* %Channel, i32* %BufferAddrSet, i32 %NumFrames) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %3 = alloca i32*, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %WordLenBits = alloca i32, align 4
  %HiFrmAddr = alloca i32, align 4
  %FrmBound = alloca i32, align 4
  %Loop16 = alloca i32, align 4
  %BdPtr = alloca [8 x i32]*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !621), !dbg !622
  store i32* %BufferAddrSet, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !623), !dbg !624
  store i32 %NumFrames, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !625), !dbg !626
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !627), !dbg !628
  call void @llvm.dbg.declare(metadata !{i32* %WordLenBits}, metadata !629), !dbg !630
  call void @llvm.dbg.declare(metadata !{i32* %HiFrmAddr}, metadata !631), !dbg !632
  store i32 0, i32* %HiFrmAddr, align 4, !dbg !633
  call void @llvm.dbg.declare(metadata !{i32* %FrmBound}, metadata !634), !dbg !635
  %5 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !636
  %6 = getelementptr inbounds %struct.XAxiVdma_Channel* %5, i32 0, i32 25, !dbg !636
  %7 = load i32* %6, align 4, !dbg !636
  %8 = icmp sgt i32 %7, 32, !dbg !636
  br i1 %8, label %9, label %10, !dbg !636

; <label>:9                                       ; preds = %0
  store i32 7, i32* %FrmBound, align 4, !dbg !638
  br label %11, !dbg !640

; <label>:10                                      ; preds = %0
  store i32 15, i32* %FrmBound, align 4, !dbg !641
  br label %11

; <label>:11                                      ; preds = %10, %9
  call void @llvm.dbg.declare(metadata !{i32* %Loop16}, metadata !643), !dbg !644
  store i32 0, i32* %Loop16, align 4, !dbg !645
  %12 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !646
  %13 = getelementptr inbounds %struct.XAxiVdma_Channel* %12, i32 0, i32 3, !dbg !646
  %14 = load i32* %13, align 4, !dbg !646
  %15 = icmp ne i32 %14, 0, !dbg !646
  br i1 %15, label %18, label %16, !dbg !646

; <label>:16                                      ; preds = %11
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)), !dbg !648
  store i32 1, i32* %1, !dbg !650
  br label %159, !dbg !650

; <label>:18                                      ; preds = %11
  %19 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !651
  %20 = getelementptr inbounds %struct.XAxiVdma_Channel* %19, i32 0, i32 10, !dbg !651
  %21 = load i32* %20, align 4, !dbg !651
  %22 = sub nsw i32 %21, 1, !dbg !651
  store i32 %22, i32* %WordLenBits, align 4, !dbg !651
  store i32 0, i32* %i, align 4, !dbg !652
  br label %23, !dbg !652

; <label>:23                                      ; preds = %49, %18
  %24 = load i32* %i, align 4, !dbg !654
  %25 = load i32* %4, align 4, !dbg !654
  %26 = icmp slt i32 %24, %25, !dbg !654
  br i1 %26, label %27, label %52, !dbg !654

; <label>:27                                      ; preds = %23
  %28 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !657
  %29 = getelementptr inbounds %struct.XAxiVdma_Channel* %28, i32 0, i32 7, !dbg !657
  %30 = load i32* %29, align 4, !dbg !657
  %31 = icmp ne i32 %30, 0, !dbg !657
  br i1 %31, label %48, label %32, !dbg !657

; <label>:32                                      ; preds = %27
  %33 = load i32* %i, align 4, !dbg !660
  %34 = load i32** %3, align 4, !dbg !660
  %35 = getelementptr inbounds i32* %34, i32 %33, !dbg !660
  %36 = load i32* %35, align 4, !dbg !660
  %37 = load i32* %WordLenBits, align 4, !dbg !660
  %38 = and i32 %36, %37, !dbg !660
  %39 = icmp ne i32 %38, 0, !dbg !660
  br i1 %39, label %40, label %47, !dbg !660

; <label>:40                                      ; preds = %32
  %41 = load i32* %i, align 4, !dbg !663
  %42 = load i32* %i, align 4, !dbg !663
  %43 = load i32** %3, align 4, !dbg !663
  %44 = getelementptr inbounds i32* %43, i32 %42, !dbg !663
  %45 = load i32* %44, align 4, !dbg !663
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str13, i32 0, i32 0), i32 %41, i32 %45), !dbg !663
  store i32 15, i32* %1, !dbg !665
  br label %159, !dbg !665

; <label>:47                                      ; preds = %32
  br label %48, !dbg !666

; <label>:48                                      ; preds = %47, %27
  br label %49, !dbg !667

; <label>:49                                      ; preds = %48
  %50 = load i32* %i, align 4, !dbg !668
  %51 = add nsw i32 %50, 1, !dbg !668
  store i32 %51, i32* %i, align 4, !dbg !668
  br label %23, !dbg !668

; <label>:52                                      ; preds = %23
  store i32 0, i32* %i, align 4, !dbg !669
  br label %53, !dbg !669

; <label>:53                                      ; preds = %153, %52
  %54 = load i32* %i, align 4, !dbg !671
  %55 = load i32* %4, align 4, !dbg !671
  %56 = icmp slt i32 %54, %55, !dbg !671
  br i1 %56, label %57, label %158, !dbg !671

; <label>:57                                      ; preds = %53
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %BdPtr}, metadata !674), !dbg !676
  %58 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !677
  %59 = getelementptr inbounds %struct.XAxiVdma_Channel* %58, i32 0, i32 13, !dbg !677
  %60 = load i32* %59, align 4, !dbg !677
  %61 = load i32* %i, align 4, !dbg !677
  %62 = mul i32 %61, 32, !dbg !677
  %63 = add i32 %60, %62, !dbg !677
  %64 = inttoptr i32 %63 to [8 x i32]*, !dbg !677
  store [8 x i32]* %64, [8 x i32]** %BdPtr, align 4, !dbg !677
  %65 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !678
  %66 = getelementptr inbounds %struct.XAxiVdma_Channel* %65, i32 0, i32 5, !dbg !678
  %67 = load i32* %66, align 4, !dbg !678
  %68 = icmp ne i32 %67, 0, !dbg !678
  br i1 %68, label %69, label %75, !dbg !678

; <label>:69                                      ; preds = %57
  %70 = load [8 x i32]** %BdPtr, align 4, !dbg !680
  %71 = load i32* %i, align 4, !dbg !680
  %72 = load i32** %3, align 4, !dbg !680
  %73 = getelementptr inbounds i32* %72, i32 %71, !dbg !680
  %74 = load i32* %73, align 4, !dbg !680
  call void @XAxiVdma_BdSetAddr([8 x i32]* %70, i32 %74), !dbg !680
  br label %152, !dbg !682

; <label>:75                                      ; preds = %57
  %76 = load i32* %i, align 4, !dbg !683
  %77 = load i32* %FrmBound, align 4, !dbg !683
  %78 = icmp sgt i32 %76, %77, !dbg !683
  br i1 %78, label %79, label %87, !dbg !683

; <label>:79                                      ; preds = %75
  %80 = load i32* %HiFrmAddr, align 4, !dbg !686
  %81 = icmp ne i32 %80, 0, !dbg !686
  br i1 %81, label %87, label %82, !dbg !686

; <label>:82                                      ; preds = %79
  %83 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !688
  %84 = getelementptr inbounds %struct.XAxiVdma_Channel* %83, i32 0, i32 0, !dbg !688
  %85 = load i32* %84, align 4, !dbg !688
  %86 = add i32 %85, 20, !dbg !688
  call void @Xil_Out32(i32 %86, i32 1), !dbg !688
  store i32 1, i32* %HiFrmAddr, align 4, !dbg !691
  store i32 0, i32* %Loop16, align 4, !dbg !692
  br label %87, !dbg !693

; <label>:87                                      ; preds = %82, %79, %75
  %88 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !694
  %89 = getelementptr inbounds %struct.XAxiVdma_Channel* %88, i32 0, i32 25, !dbg !694
  %90 = load i32* %89, align 4, !dbg !694
  %91 = icmp sgt i32 %90, 32, !dbg !694
  br i1 %91, label %92, label %125, !dbg !694

; <label>:92                                      ; preds = %87
  %93 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !696
  %94 = getelementptr inbounds %struct.XAxiVdma_Channel* %93, i32 0, i32 2, !dbg !696
  %95 = load i32* %94, align 4, !dbg !696
  %96 = load i32* %Loop16, align 4, !dbg !696
  %97 = mul nsw i32 %96, 4, !dbg !696
  %98 = add nsw i32 12, %97, !dbg !696
  %99 = load i32* %i, align 4, !dbg !696
  %100 = mul nsw i32 %99, 4, !dbg !696
  %101 = add nsw i32 %98, %100, !dbg !696
  %102 = add i32 %95, %101, !dbg !696
  %103 = load i32* %i, align 4, !dbg !696
  %104 = load i32** %3, align 4, !dbg !696
  %105 = getelementptr inbounds i32* %104, i32 %103, !dbg !696
  %106 = load i32* %105, align 4, !dbg !696
  call void @Xil_Out32(i32 %102, i32 %106), !dbg !696
  %107 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !698
  %108 = getelementptr inbounds %struct.XAxiVdma_Channel* %107, i32 0, i32 2, !dbg !698
  %109 = load i32* %108, align 4, !dbg !698
  %110 = load i32* %Loop16, align 4, !dbg !698
  %111 = mul nsw i32 %110, 4, !dbg !698
  %112 = add nsw i32 16, %111, !dbg !698
  %113 = load i32* %i, align 4, !dbg !698
  %114 = mul nsw i32 %113, 4, !dbg !698
  %115 = add nsw i32 %112, %114, !dbg !698
  %116 = add i32 %109, %115, !dbg !698
  %117 = load i32* %i, align 4, !dbg !698
  %118 = load i32** %3, align 4, !dbg !698
  %119 = getelementptr inbounds i32* %118, i32 %117, !dbg !698
  %120 = load i32* %119, align 4, !dbg !698
  %121 = zext i32 %120 to i64, !dbg !698
  %122 = lshr i64 %121, 16, !dbg !698
  %123 = lshr i64 %122, 16, !dbg !698
  %124 = trunc i64 %123 to i32, !dbg !698
  call void @Xil_Out32(i32 %116, i32 %124), !dbg !698
  br label %137, !dbg !699

; <label>:125                                     ; preds = %87
  %126 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !700
  %127 = getelementptr inbounds %struct.XAxiVdma_Channel* %126, i32 0, i32 2, !dbg !700
  %128 = load i32* %127, align 4, !dbg !700
  %129 = load i32* %Loop16, align 4, !dbg !700
  %130 = mul nsw i32 %129, 4, !dbg !700
  %131 = add nsw i32 12, %130, !dbg !700
  %132 = add i32 %128, %131, !dbg !700
  %133 = load i32* %i, align 4, !dbg !700
  %134 = load i32** %3, align 4, !dbg !700
  %135 = getelementptr inbounds i32* %134, i32 %133, !dbg !700
  %136 = load i32* %135, align 4, !dbg !700
  call void @Xil_Out32(i32 %132, i32 %136), !dbg !700
  br label %137

; <label>:137                                     ; preds = %125, %92
  %138 = load i32* %4, align 4, !dbg !702
  %139 = load i32* %FrmBound, align 4, !dbg !702
  %140 = icmp sgt i32 %138, %139, !dbg !702
  br i1 %140, label %141, label %151, !dbg !702

; <label>:141                                     ; preds = %137
  %142 = load i32* %i, align 4, !dbg !704
  %143 = load i32* %4, align 4, !dbg !704
  %144 = sub nsw i32 %143, 1, !dbg !704
  %145 = icmp eq i32 %142, %144, !dbg !704
  br i1 %145, label %146, label %151, !dbg !704

; <label>:146                                     ; preds = %141
  %147 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !706
  %148 = getelementptr inbounds %struct.XAxiVdma_Channel* %147, i32 0, i32 0, !dbg !706
  %149 = load i32* %148, align 4, !dbg !706
  %150 = add i32 %149, 20, !dbg !706
  call void @Xil_Out32(i32 %150, i32 0), !dbg !706
  br label %151, !dbg !706

; <label>:151                                     ; preds = %146, %141, %137
  br label %152

; <label>:152                                     ; preds = %151, %69
  br label %153, !dbg !708

; <label>:153                                     ; preds = %152
  %154 = load i32* %i, align 4, !dbg !709
  %155 = add nsw i32 %154, 1, !dbg !709
  store i32 %155, i32* %i, align 4, !dbg !709
  %156 = load i32* %Loop16, align 4, !dbg !709
  %157 = add nsw i32 %156, 1, !dbg !709
  store i32 %157, i32* %Loop16, align 4, !dbg !709
  br label %53, !dbg !709

; <label>:158                                     ; preds = %53
  store i32 0, i32* %1, !dbg !710
  br label %159, !dbg !710

; <label>:159                                     ; preds = %158, %40, %16
  %160 = load i32* %1, !dbg !711
  ret i32 %160, !dbg !711
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelStart(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !712), !dbg !713
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !714), !dbg !715
  %3 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !716
  %4 = getelementptr inbounds %struct.XAxiVdma_Channel* %3, i32 0, i32 3, !dbg !716
  %5 = load i32* %4, align 4, !dbg !716
  %6 = icmp ne i32 %5, 0, !dbg !716
  br i1 %6, label %9, label %7, !dbg !716

; <label>:7                                       ; preds = %0
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)), !dbg !718
  store i32 1, i32* %1, !dbg !720
  br label %85, !dbg !720

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !721
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 5, !dbg !721
  %12 = load i32* %11, align 4, !dbg !721
  %13 = icmp ne i32 %12, 0, !dbg !721
  br i1 %13, label %14, label %20, !dbg !721

; <label>:14                                      ; preds = %9
  %15 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !723
  %16 = call i32 @XAxiVdma_ChannelIsBusy(%struct.XAxiVdma_Channel* %15), !dbg !723
  %17 = icmp ne i32 %16, 0, !dbg !723
  br i1 %17, label %18, label %20, !dbg !723

; <label>:18                                      ; preds = %14
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str14, i32 0, i32 0)), !dbg !725
  store i32 21, i32* %1, !dbg !727
  br label %85, !dbg !727

; <label>:20                                      ; preds = %14, %9
  %21 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !728
  %22 = call i32 @XAxiVdma_ChannelIsRunning(%struct.XAxiVdma_Channel* %21), !dbg !728
  %23 = icmp ne i32 %22, 0, !dbg !728
  br i1 %23, label %54, label %24, !dbg !728

; <label>:24                                      ; preds = %20
  %25 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !730
  %26 = getelementptr inbounds %struct.XAxiVdma_Channel* %25, i32 0, i32 5, !dbg !730
  %27 = load i32* %26, align 4, !dbg !730
  %28 = icmp ne i32 %27, 0, !dbg !730
  br i1 %28, label %29, label %37, !dbg !730

; <label>:29                                      ; preds = %24
  %30 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !733
  %31 = getelementptr inbounds %struct.XAxiVdma_Channel* %30, i32 0, i32 0, !dbg !733
  %32 = load i32* %31, align 4, !dbg !733
  %33 = add i32 %32, 8, !dbg !733
  %34 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !733
  %35 = getelementptr inbounds %struct.XAxiVdma_Channel* %34, i32 0, i32 12, !dbg !733
  %36 = load i32* %35, align 4, !dbg !733
  call void @Xil_Out32(i32 %33, i32 %36), !dbg !733
  br label %37, !dbg !735

; <label>:37                                      ; preds = %29, %24
  %38 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !736
  %39 = getelementptr inbounds %struct.XAxiVdma_Channel* %38, i32 0, i32 0, !dbg !736
  %40 = load i32* %39, align 4, !dbg !736
  %41 = add i32 %40, 0, !dbg !736
  %42 = call i32 @Xil_In32(i32 %41), !dbg !736
  store i32 %42, i32* %CrBits, align 4, !dbg !736
  %43 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !737
  %44 = getelementptr inbounds %struct.XAxiVdma_Channel* %43, i32 0, i32 0, !dbg !737
  %45 = load i32* %44, align 4, !dbg !737
  %46 = add i32 %45, 0, !dbg !737
  %47 = call i32 @Xil_In32(i32 %46), !dbg !737
  %48 = or i32 %47, 1, !dbg !737
  store i32 %48, i32* %CrBits, align 4, !dbg !737
  %49 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !738
  %50 = getelementptr inbounds %struct.XAxiVdma_Channel* %49, i32 0, i32 0, !dbg !738
  %51 = load i32* %50, align 4, !dbg !738
  %52 = add i32 %51, 0, !dbg !738
  %53 = load i32* %CrBits, align 4, !dbg !738
  call void @Xil_Out32(i32 %52, i32 %53), !dbg !738
  br label %54, !dbg !739

; <label>:54                                      ; preds = %37, %20
  %55 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !740
  %56 = call i32 @XAxiVdma_ChannelIsRunning(%struct.XAxiVdma_Channel* %55), !dbg !740
  %57 = icmp ne i32 %56, 0, !dbg !740
  br i1 %57, label %58, label %80, !dbg !740

; <label>:58                                      ; preds = %54
  %59 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !742
  %60 = getelementptr inbounds %struct.XAxiVdma_Channel* %59, i32 0, i32 5, !dbg !742
  %61 = load i32* %60, align 4, !dbg !742
  %62 = icmp ne i32 %61, 0, !dbg !742
  br i1 %62, label %63, label %71, !dbg !742

; <label>:63                                      ; preds = %58
  %64 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !745
  %65 = getelementptr inbounds %struct.XAxiVdma_Channel* %64, i32 0, i32 0, !dbg !745
  %66 = load i32* %65, align 4, !dbg !745
  %67 = add i32 %66, 16, !dbg !745
  %68 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !745
  %69 = getelementptr inbounds %struct.XAxiVdma_Channel* %68, i32 0, i32 14, !dbg !745
  %70 = load i32* %69, align 4, !dbg !745
  call void @Xil_Out32(i32 %67, i32 %70), !dbg !745
  br label %79, !dbg !747

; <label>:71                                      ; preds = %58
  %72 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !748
  %73 = getelementptr inbounds %struct.XAxiVdma_Channel* %72, i32 0, i32 2, !dbg !748
  %74 = load i32* %73, align 4, !dbg !748
  %75 = add i32 %74, 0, !dbg !748
  %76 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !748
  %77 = getelementptr inbounds %struct.XAxiVdma_Channel* %76, i32 0, i32 17, !dbg !748
  %78 = load i32* %77, align 4, !dbg !748
  call void @Xil_Out32(i32 %75, i32 %78), !dbg !748
  br label %79

; <label>:79                                      ; preds = %71, %63
  store i32 0, i32* %1, !dbg !750
  br label %85, !dbg !750

; <label>:80                                      ; preds = %54
  %81 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !751
  %82 = getelementptr inbounds %struct.XAxiVdma_Channel* %81, i32 0, i32 0, !dbg !751
  %83 = load i32* %82, align 4, !dbg !751
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str15, i32 0, i32 0), i32 %83), !dbg !751
  store i32 9, i32* %1, !dbg !753
  br label %85, !dbg !753

; <label>:85                                      ; preds = %80, %79, %18, %7
  %86 = load i32* %1, !dbg !754
  ret i32 %86, !dbg !754
}

; Function Attrs: nounwind
define internal i32 @XAxiVdma_BdSetVsize([8 x i32]* %BdPtr, i32 %Vsize) #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32]*, align 4
  %3 = alloca i32, align 4
  store [8 x i32]* %BdPtr, [8 x i32]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %2}, metadata !755), !dbg !756
  store i32 %Vsize, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !757), !dbg !758
  %4 = load i32* %3, align 4, !dbg !759
  %5 = icmp sle i32 %4, 0, !dbg !759
  br i1 %5, label %9, label %6, !dbg !759

; <label>:6                                       ; preds = %0
  %7 = load i32* %3, align 4, !dbg !761
  %8 = icmp sgt i32 %7, 8191, !dbg !761
  br i1 %8, label %9, label %12, !dbg !761

; <label>:9                                       ; preds = %6, %0
  %10 = load i32* %3, align 4, !dbg !763
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str30, i32 0, i32 0), i32 %10), !dbg !763
  store i32 15, i32* %1, !dbg !765
  br label %15, !dbg !765

; <label>:12                                      ; preds = %6
  %13 = load [8 x i32]** %2, align 4, !dbg !766
  %14 = load i32* %3, align 4, !dbg !766
  call void @XAxiVdma_BdWrite([8 x i32]* %13, i32 16, i32 %14), !dbg !766
  store i32 0, i32* %1, !dbg !767
  br label %15, !dbg !767

; <label>:15                                      ; preds = %12, %9
  %16 = load i32* %1, !dbg !768
  ret i32 %16, !dbg !768
}

; Function Attrs: nounwind
define internal i32 @XAxiVdma_BdSetHsize([8 x i32]* %BdPtr, i32 %Hsize) #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32]*, align 4
  %3 = alloca i32, align 4
  store [8 x i32]* %BdPtr, [8 x i32]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %2}, metadata !769), !dbg !770
  store i32 %Hsize, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !771), !dbg !772
  %4 = load i32* %3, align 4, !dbg !773
  %5 = icmp sle i32 %4, 0, !dbg !773
  br i1 %5, label %9, label %6, !dbg !773

; <label>:6                                       ; preds = %0
  %7 = load i32* %3, align 4, !dbg !775
  %8 = icmp sgt i32 %7, 65535, !dbg !775
  br i1 %8, label %9, label %12, !dbg !775

; <label>:9                                       ; preds = %6, %0
  %10 = load i32* %3, align 4, !dbg !777
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str29, i32 0, i32 0), i32 %10), !dbg !777
  store i32 15, i32* %1, !dbg !779
  br label %15, !dbg !779

; <label>:12                                      ; preds = %6
  %13 = load [8 x i32]** %2, align 4, !dbg !780
  %14 = load i32* %3, align 4, !dbg !780
  call void @XAxiVdma_BdWrite([8 x i32]* %13, i32 20, i32 %14), !dbg !780
  store i32 0, i32* %1, !dbg !781
  br label %15, !dbg !781

; <label>:15                                      ; preds = %12, %9
  %16 = load i32* %1, !dbg !782
  ret i32 %16, !dbg !782
}

; Function Attrs: nounwind
define internal i32 @XAxiVdma_BdSetStride([8 x i32]* %BdPtr, i32 %Stride) #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32]*, align 4
  %3 = alloca i32, align 4
  %Bits = alloca i32, align 4
  store [8 x i32]* %BdPtr, [8 x i32]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %2}, metadata !783), !dbg !784
  store i32 %Stride, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !785), !dbg !786
  call void @llvm.dbg.declare(metadata !{i32* %Bits}, metadata !787), !dbg !788
  %4 = load i32* %3, align 4, !dbg !789
  %5 = icmp sle i32 %4, 0, !dbg !789
  br i1 %5, label %9, label %6, !dbg !789

; <label>:6                                       ; preds = %0
  %7 = load i32* %3, align 4, !dbg !791
  %8 = icmp sgt i32 %7, 65535, !dbg !791
  br i1 %8, label %9, label %12, !dbg !791

; <label>:9                                       ; preds = %6, %0
  %10 = load i32* %3, align 4, !dbg !793
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str28, i32 0, i32 0), i32 %10), !dbg !793
  store i32 15, i32* %1, !dbg !795
  br label %20, !dbg !795

; <label>:12                                      ; preds = %6
  %13 = load [8 x i32]** %2, align 4, !dbg !796
  %14 = call i32 @XAxiVdma_BdRead([8 x i32]* %13, i32 24), !dbg !796
  %15 = and i32 %14, -65536, !dbg !796
  store i32 %15, i32* %Bits, align 4, !dbg !796
  %16 = load [8 x i32]** %2, align 4, !dbg !797
  %17 = load i32* %Bits, align 4, !dbg !797
  %18 = load i32* %3, align 4, !dbg !797
  %19 = or i32 %17, %18, !dbg !797
  call void @XAxiVdma_BdWrite([8 x i32]* %16, i32 24, i32 %19), !dbg !797
  store i32 0, i32* %1, !dbg !798
  br label %20, !dbg !798

; <label>:20                                      ; preds = %12, %9
  %21 = load i32* %1, !dbg !799
  ret i32 %21, !dbg !799
}

; Function Attrs: nounwind
define internal i32 @XAxiVdma_BdSetFrmDly([8 x i32]* %BdPtr, i32 %FrmDly) #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32]*, align 4
  %3 = alloca i32, align 4
  %Bits = alloca i32, align 4
  store [8 x i32]* %BdPtr, [8 x i32]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %2}, metadata !800), !dbg !801
  store i32 %FrmDly, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !802), !dbg !803
  call void @llvm.dbg.declare(metadata !{i32* %Bits}, metadata !804), !dbg !805
  %4 = load i32* %3, align 4, !dbg !806
  %5 = icmp slt i32 %4, 0, !dbg !806
  br i1 %5, label %9, label %6, !dbg !806

; <label>:6                                       ; preds = %0
  %7 = load i32* %3, align 4, !dbg !808
  %8 = icmp sgt i32 %7, 15, !dbg !808
  br i1 %8, label %9, label %12, !dbg !808

; <label>:9                                       ; preds = %6, %0
  %10 = load i32* %3, align 4, !dbg !810
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str27, i32 0, i32 0), i32 %10), !dbg !810
  store i32 15, i32* %1, !dbg !812
  br label %21, !dbg !812

; <label>:12                                      ; preds = %6
  %13 = load [8 x i32]** %2, align 4, !dbg !813
  %14 = call i32 @XAxiVdma_BdRead([8 x i32]* %13, i32 24), !dbg !813
  %15 = and i32 %14, -251658241, !dbg !813
  store i32 %15, i32* %Bits, align 4, !dbg !813
  %16 = load [8 x i32]** %2, align 4, !dbg !814
  %17 = load i32* %Bits, align 4, !dbg !814
  %18 = load i32* %3, align 4, !dbg !814
  %19 = shl i32 %18, 24, !dbg !814
  %20 = or i32 %17, %19, !dbg !814
  call void @XAxiVdma_BdWrite([8 x i32]* %16, i32 24, i32 %20), !dbg !814
  store i32 0, i32* %1, !dbg !815
  br label %21, !dbg !815

; <label>:21                                      ; preds = %12, %9
  %22 = load i32* %1, !dbg !816
  ret i32 %22, !dbg !816
}

; Function Attrs: nounwind
define internal void @XAxiVdma_BdSetAddr([8 x i32]* %BdPtr, i32 %Addr) #0 {
  %1 = alloca [8 x i32]*, align 4
  %2 = alloca i32, align 4
  store [8 x i32]* %BdPtr, [8 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %1}, metadata !817), !dbg !818
  store i32 %Addr, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !819), !dbg !820
  %3 = load [8 x i32]** %1, align 4, !dbg !821
  %4 = load i32* %2, align 4, !dbg !821
  call void @XAxiVdma_BdWrite([8 x i32]* %3, i32 8, i32 %4), !dbg !821
  ret void, !dbg !822
}

; Function Attrs: nounwind
define void @XAxiVdma_ChannelStop(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !823), !dbg !824
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !825), !dbg !826
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !827
  %3 = call i32 @XAxiVdma_ChannelIsRunning(%struct.XAxiVdma_Channel* %2), !dbg !827
  %4 = icmp ne i32 %3, 0, !dbg !827
  br i1 %4, label %6, label %5, !dbg !827

; <label>:5                                       ; preds = %0
  br label %18, !dbg !829

; <label>:6                                       ; preds = %0
  %7 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !831
  %8 = getelementptr inbounds %struct.XAxiVdma_Channel* %7, i32 0, i32 0, !dbg !831
  %9 = load i32* %8, align 4, !dbg !831
  %10 = add i32 %9, 0, !dbg !831
  %11 = call i32 @Xil_In32(i32 %10), !dbg !831
  %12 = and i32 %11, -2, !dbg !831
  store i32 %12, i32* %CrBits, align 4, !dbg !831
  %13 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !832
  %14 = getelementptr inbounds %struct.XAxiVdma_Channel* %13, i32 0, i32 0, !dbg !832
  %15 = load i32* %14, align 4, !dbg !832
  %16 = add i32 %15, 0, !dbg !832
  %17 = load i32* %CrBits, align 4, !dbg !832
  call void @Xil_Out32(i32 %16, i32 %17), !dbg !832
  br label %18, !dbg !833

; <label>:18                                      ; preds = %6, %5
  ret void, !dbg !834
}

; Function Attrs: nounwind
define void @XAxiVdma_ChannelRegisterDump(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !835), !dbg !836
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !837
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !837
  %4 = load i32* %3, align 4, !dbg !837
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str16, i32 0, i32 0), i32 %4), !dbg !837
  %6 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !838
  %7 = getelementptr inbounds %struct.XAxiVdma_Channel* %6, i32 0, i32 0, !dbg !838
  %8 = load i32* %7, align 4, !dbg !838
  %9 = add i32 %8, 0, !dbg !838
  %10 = call i32 @Xil_In32(i32 %9), !dbg !838
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str17, i32 0, i32 0), i32 %10), !dbg !839
  %12 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !840
  %13 = getelementptr inbounds %struct.XAxiVdma_Channel* %12, i32 0, i32 0, !dbg !840
  %14 = load i32* %13, align 4, !dbg !840
  %15 = add i32 %14, 4, !dbg !840
  %16 = call i32 @Xil_In32(i32 %15), !dbg !840
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str18, i32 0, i32 0), i32 %16), !dbg !841
  %18 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !842
  %19 = getelementptr inbounds %struct.XAxiVdma_Channel* %18, i32 0, i32 0, !dbg !842
  %20 = load i32* %19, align 4, !dbg !842
  %21 = add i32 %20, 8, !dbg !842
  %22 = call i32 @Xil_In32(i32 %21), !dbg !842
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str19, i32 0, i32 0), i32 %22), !dbg !843
  %24 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !844
  %25 = getelementptr inbounds %struct.XAxiVdma_Channel* %24, i32 0, i32 0, !dbg !844
  %26 = load i32* %25, align 4, !dbg !844
  %27 = add i32 %26, 16, !dbg !844
  %28 = call i32 @Xil_In32(i32 %27), !dbg !844
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str20, i32 0, i32 0), i32 %28), !dbg !845
  ret void, !dbg !846
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelSetFrmCnt(%struct.XAxiVdma_Channel* %Channel, i8 zeroext %FrmCnt, i8 zeroext %DlyCnt) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XAxiVdma_Channel*, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %2}, metadata !847), !dbg !848
  store i8 %FrmCnt, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !849), !dbg !850
  store i8 %DlyCnt, i8* %4, align 1
  call void @llvm.dbg.declare(metadata !{i8* %4}, metadata !851), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !853), !dbg !854
  %5 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !855
  %6 = getelementptr inbounds %struct.XAxiVdma_Channel* %5, i32 0, i32 3, !dbg !855
  %7 = load i32* %6, align 4, !dbg !855
  %8 = icmp ne i32 %7, 0, !dbg !855
  br i1 %8, label %11, label %9, !dbg !855

; <label>:9                                       ; preds = %0
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)), !dbg !857
  store i32 1, i32* %1, !dbg !859
  br label %56, !dbg !859

; <label>:11                                      ; preds = %0
  %12 = load i8* %3, align 1, !dbg !860
  %13 = icmp ne i8 %12, 0, !dbg !860
  br i1 %13, label %16, label %14, !dbg !860

; <label>:14                                      ; preds = %11
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0)), !dbg !862
  store i32 15, i32* %1, !dbg !864
  br label %56, !dbg !864

; <label>:16                                      ; preds = %11
  %17 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !865
  %18 = getelementptr inbounds %struct.XAxiVdma_Channel* %17, i32 0, i32 0, !dbg !865
  %19 = load i32* %18, align 4, !dbg !865
  %20 = add i32 %19, 0, !dbg !865
  %21 = call i32 @Xil_In32(i32 %20), !dbg !865
  %22 = and i32 %21, 65535, !dbg !865
  store i32 %22, i32* %CrBits, align 4, !dbg !865
  %23 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !866
  %24 = getelementptr inbounds %struct.XAxiVdma_Channel* %23, i32 0, i32 24, !dbg !866
  %25 = load i32* %24, align 4, !dbg !866
  %26 = and i32 %25, 4, !dbg !866
  %27 = icmp ne i32 %26, 0, !dbg !866
  br i1 %27, label %28, label %34, !dbg !866

; <label>:28                                      ; preds = %16
  %29 = load i8* %3, align 1, !dbg !868
  %30 = zext i8 %29 to i32, !dbg !868
  %31 = shl i32 %30, 16, !dbg !868
  %32 = load i32* %CrBits, align 4, !dbg !868
  %33 = or i32 %32, %31, !dbg !868
  store i32 %33, i32* %CrBits, align 4, !dbg !868
  br label %36, !dbg !870

; <label>:34                                      ; preds = %16
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str22, i32 0, i32 0)), !dbg !871
  store i32 19, i32* %1, !dbg !873
  br label %56, !dbg !873

; <label>:36                                      ; preds = %28
  %37 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !874
  %38 = getelementptr inbounds %struct.XAxiVdma_Channel* %37, i32 0, i32 24, !dbg !874
  %39 = load i32* %38, align 4, !dbg !874
  %40 = and i32 %39, 8, !dbg !874
  %41 = icmp ne i32 %40, 0, !dbg !874
  br i1 %41, label %42, label %48, !dbg !874

; <label>:42                                      ; preds = %36
  %43 = load i8* %4, align 1, !dbg !876
  %44 = zext i8 %43 to i32, !dbg !876
  %45 = shl i32 %44, 24, !dbg !876
  %46 = load i32* %CrBits, align 4, !dbg !876
  %47 = or i32 %46, %45, !dbg !876
  store i32 %47, i32* %CrBits, align 4, !dbg !876
  br label %50, !dbg !878

; <label>:48                                      ; preds = %36
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str23, i32 0, i32 0)), !dbg !879
  store i32 19, i32* %1, !dbg !881
  br label %56, !dbg !881

; <label>:50                                      ; preds = %42
  %51 = load %struct.XAxiVdma_Channel** %2, align 4, !dbg !882
  %52 = getelementptr inbounds %struct.XAxiVdma_Channel* %51, i32 0, i32 0, !dbg !882
  %53 = load i32* %52, align 4, !dbg !882
  %54 = add i32 %53, 0, !dbg !882
  %55 = load i32* %CrBits, align 4, !dbg !882
  call void @Xil_Out32(i32 %54, i32 %55), !dbg !882
  store i32 0, i32* %1, !dbg !883
  br label %56, !dbg !883

; <label>:56                                      ; preds = %50, %48, %34, %14, %9
  %57 = load i32* %1, !dbg !884
  ret i32 %57, !dbg !884
}

; Function Attrs: nounwind
define void @XAxiVdma_ChannelGetFrmCnt(%struct.XAxiVdma_Channel* %Channel, i8* %FrmCnt, i8* %DlyCnt) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !885), !dbg !886
  store i8* %FrmCnt, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !887), !dbg !888
  store i8* %DlyCnt, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !889), !dbg !890
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !891), !dbg !892
  %4 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !893
  %5 = getelementptr inbounds %struct.XAxiVdma_Channel* %4, i32 0, i32 3, !dbg !893
  %6 = load i32* %5, align 4, !dbg !893
  %7 = icmp ne i32 %6, 0, !dbg !893
  br i1 %7, label %11, label %8, !dbg !893

; <label>:8                                       ; preds = %0
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)), !dbg !895
  %10 = load i8** %2, align 4, !dbg !897
  store i8 0, i8* %10, align 1, !dbg !897
  br label %45, !dbg !898

; <label>:11                                      ; preds = %0
  %12 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !899
  %13 = getelementptr inbounds %struct.XAxiVdma_Channel* %12, i32 0, i32 0, !dbg !899
  %14 = load i32* %13, align 4, !dbg !899
  %15 = add i32 %14, 0, !dbg !899
  %16 = call i32 @Xil_In32(i32 %15), !dbg !899
  store i32 %16, i32* %CrBits, align 4, !dbg !899
  %17 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !900
  %18 = getelementptr inbounds %struct.XAxiVdma_Channel* %17, i32 0, i32 24, !dbg !900
  %19 = load i32* %18, align 4, !dbg !900
  %20 = and i32 %19, 4, !dbg !900
  %21 = icmp ne i32 %20, 0, !dbg !900
  br i1 %21, label %22, label %28, !dbg !900

; <label>:22                                      ; preds = %11
  %23 = load i32* %CrBits, align 4, !dbg !902
  %24 = and i32 %23, 16711680, !dbg !902
  %25 = lshr i32 %24, 16, !dbg !902
  %26 = trunc i32 %25 to i8, !dbg !902
  %27 = load i8** %2, align 4, !dbg !902
  store i8 %26, i8* %27, align 1, !dbg !902
  br label %30, !dbg !904

; <label>:28                                      ; preds = %11
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str22, i32 0, i32 0)), !dbg !905
  br label %30

; <label>:30                                      ; preds = %28, %22
  %31 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !907
  %32 = getelementptr inbounds %struct.XAxiVdma_Channel* %31, i32 0, i32 24, !dbg !907
  %33 = load i32* %32, align 4, !dbg !907
  %34 = and i32 %33, 8, !dbg !907
  %35 = icmp ne i32 %34, 0, !dbg !907
  br i1 %35, label %36, label %42, !dbg !907

; <label>:36                                      ; preds = %30
  %37 = load i32* %CrBits, align 4, !dbg !909
  %38 = and i32 %37, -16777216, !dbg !909
  %39 = lshr i32 %38, 24, !dbg !909
  %40 = trunc i32 %39 to i8, !dbg !909
  %41 = load i8** %3, align 4, !dbg !909
  store i8 %40, i8* %41, align 1, !dbg !909
  br label %44, !dbg !911

; <label>:42                                      ; preds = %30
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str23, i32 0, i32 0)), !dbg !912
  br label %44

; <label>:44                                      ; preds = %42, %36
  br label %45, !dbg !914

; <label>:45                                      ; preds = %44, %8
  ret void, !dbg !915
}

; Function Attrs: nounwind
define void @XAxiVdma_ChannelEnableIntr(%struct.XAxiVdma_Channel* %Channel, i32 %IntrType) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %2 = alloca i32, align 4
  %CrBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !916), !dbg !917
  store i32 %IntrType, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !918), !dbg !919
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !920), !dbg !921
  %3 = load i32* %2, align 4, !dbg !922
  %4 = and i32 %3, 28672, !dbg !922
  %5 = icmp eq i32 %4, 0, !dbg !922
  br i1 %5, label %6, label %9, !dbg !922

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !924
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str24, i32 0, i32 0), i32 %7), !dbg !924
  br label %25, !dbg !926

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !927
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 0, !dbg !927
  %12 = load i32* %11, align 4, !dbg !927
  %13 = add i32 %12, 0, !dbg !927
  %14 = call i32 @Xil_In32(i32 %13), !dbg !927
  %15 = and i32 %14, -28673, !dbg !927
  store i32 %15, i32* %CrBits, align 4, !dbg !927
  %16 = load i32* %2, align 4, !dbg !928
  %17 = and i32 %16, 28672, !dbg !928
  %18 = load i32* %CrBits, align 4, !dbg !928
  %19 = or i32 %18, %17, !dbg !928
  store i32 %19, i32* %CrBits, align 4, !dbg !928
  %20 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !929
  %21 = getelementptr inbounds %struct.XAxiVdma_Channel* %20, i32 0, i32 0, !dbg !929
  %22 = load i32* %21, align 4, !dbg !929
  %23 = add i32 %22, 0, !dbg !929
  %24 = load i32* %CrBits, align 4, !dbg !929
  call void @Xil_Out32(i32 %23, i32 %24), !dbg !929
  br label %25, !dbg !930

; <label>:25                                      ; preds = %9, %6
  ret void, !dbg !931
}

; Function Attrs: nounwind
define void @XAxiVdma_ChannelDisableIntr(%struct.XAxiVdma_Channel* %Channel, i32 %IntrType) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %2 = alloca i32, align 4
  %CrBits = alloca i32, align 4
  %IrqBits = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !932), !dbg !933
  store i32 %IntrType, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !934), !dbg !935
  call void @llvm.dbg.declare(metadata !{i32* %CrBits}, metadata !936), !dbg !937
  call void @llvm.dbg.declare(metadata !{i32* %IrqBits}, metadata !938), !dbg !939
  %3 = load i32* %2, align 4, !dbg !940
  %4 = and i32 %3, 28672, !dbg !940
  %5 = icmp eq i32 %4, 0, !dbg !940
  br i1 %5, label %6, label %9, !dbg !940

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !942
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str25, i32 0, i32 0), i32 %7), !dbg !942
  br label %30, !dbg !944

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !945
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 0, !dbg !945
  %12 = load i32* %11, align 4, !dbg !945
  %13 = add i32 %12, 0, !dbg !945
  %14 = call i32 @Xil_In32(i32 %13), !dbg !945
  store i32 %14, i32* %CrBits, align 4, !dbg !945
  %15 = load i32* %CrBits, align 4, !dbg !946
  %16 = and i32 %15, 28672, !dbg !946
  %17 = load i32* %2, align 4, !dbg !946
  %18 = and i32 %17, 28672, !dbg !946
  %19 = xor i32 %18, -1, !dbg !946
  %20 = and i32 %16, %19, !dbg !946
  store i32 %20, i32* %IrqBits, align 4, !dbg !946
  %21 = load i32* %CrBits, align 4, !dbg !947
  %22 = and i32 %21, -28673, !dbg !947
  store i32 %22, i32* %CrBits, align 4, !dbg !947
  %23 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !948
  %24 = getelementptr inbounds %struct.XAxiVdma_Channel* %23, i32 0, i32 0, !dbg !948
  %25 = load i32* %24, align 4, !dbg !948
  %26 = add i32 %25, 0, !dbg !948
  %27 = load i32* %CrBits, align 4, !dbg !948
  %28 = load i32* %IrqBits, align 4, !dbg !948
  %29 = or i32 %27, %28, !dbg !948
  call void @Xil_Out32(i32 %26, i32 %29), !dbg !948
  br label %30, !dbg !949

; <label>:30                                      ; preds = %9, %6
  ret void, !dbg !950
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelGetPendingIntr(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !951), !dbg !952
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !953
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !953
  %4 = load i32* %3, align 4, !dbg !953
  %5 = add i32 %4, 4, !dbg !953
  %6 = call i32 @Xil_In32(i32 %5), !dbg !953
  %7 = and i32 %6, 28672, !dbg !953
  ret i32 %7, !dbg !953
}

; Function Attrs: nounwind
define void @XAxiVdma_ChannelIntrClear(%struct.XAxiVdma_Channel* %Channel, i32 %IntrType) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  %2 = alloca i32, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !954), !dbg !955
  store i32 %IntrType, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !956), !dbg !957
  %3 = load i32* %2, align 4, !dbg !958
  %4 = and i32 %3, 28672, !dbg !958
  %5 = icmp eq i32 %4, 0, !dbg !958
  br i1 %5, label %6, label %9, !dbg !958

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !960
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str26, i32 0, i32 0), i32 %7), !dbg !960
  br label %16, !dbg !962

; <label>:9                                       ; preds = %0
  %10 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !963
  %11 = getelementptr inbounds %struct.XAxiVdma_Channel* %10, i32 0, i32 0, !dbg !963
  %12 = load i32* %11, align 4, !dbg !963
  %13 = add i32 %12, 4, !dbg !963
  %14 = load i32* %2, align 4, !dbg !963
  %15 = and i32 %14, 28672, !dbg !963
  call void @Xil_Out32(i32 %13, i32 %15), !dbg !963
  br label %16, !dbg !964

; <label>:16                                      ; preds = %9, %6
  ret void, !dbg !965
}

; Function Attrs: nounwind
define i32 @XAxiVdma_ChannelGetEnabledIntr(%struct.XAxiVdma_Channel* %Channel) #0 {
  %1 = alloca %struct.XAxiVdma_Channel*, align 4
  store %struct.XAxiVdma_Channel* %Channel, %struct.XAxiVdma_Channel** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Channel** %1}, metadata !966), !dbg !967
  %2 = load %struct.XAxiVdma_Channel** %1, align 4, !dbg !968
  %3 = getelementptr inbounds %struct.XAxiVdma_Channel* %2, i32 0, i32 0, !dbg !968
  %4 = load i32* %3, align 4, !dbg !968
  %5 = add i32 %4, 0, !dbg !968
  %6 = call i32 @Xil_In32(i32 %5), !dbg !968
  %7 = and i32 %6, 28672, !dbg !968
  ret i32 %7, !dbg !968
}

; Function Attrs: nounwind
define internal i32 @XAxiVdma_BdRead([8 x i32]* %BdPtr, i32 %Offset) #0 {
  %1 = alloca [8 x i32]*, align 4
  %2 = alloca i32, align 4
  store [8 x i32]* %BdPtr, [8 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %1}, metadata !969), !dbg !970
  store i32 %Offset, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !971), !dbg !972
  %3 = load [8 x i32]** %1, align 4, !dbg !973
  %4 = bitcast [8 x i32]* %3 to i8*, !dbg !973
  %5 = ptrtoint i8* %4 to i32, !dbg !973
  %6 = load i32* %2, align 4, !dbg !973
  %7 = add i32 %5, %6, !dbg !973
  %8 = inttoptr i32 %7 to i32*, !dbg !973
  %9 = load i32* %8, align 4, !dbg !973
  ret i32 %9, !dbg !973
}

; Function Attrs: nounwind
define internal void @XAxiVdma_BdWrite([8 x i32]* %BdPtr, i32 %Offset, i32 %Value) #0 {
  %1 = alloca [8 x i32]*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store [8 x i32]* %BdPtr, [8 x i32]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i32]** %1}, metadata !974), !dbg !975
  store i32 %Offset, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !976), !dbg !977
  store i32 %Value, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !978), !dbg !979
  %4 = load i32* %3, align 4, !dbg !980
  %5 = load [8 x i32]** %1, align 4, !dbg !980
  %6 = bitcast [8 x i32]* %5 to i8*, !dbg !980
  %7 = ptrtoint i8* %6 to i32, !dbg !980
  %8 = load i32* %2, align 4, !dbg !980
  %9 = add i32 %7, %8, !dbg !980
  %10 = inttoptr i32 %9 to i32*, !dbg !980
  store i32 %4, i32* %10, align 4, !dbg !980
  ret void, !dbg !981
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !132, !140, !141, !142, !136, !143, !136, !144, !145, !146, !147, !148, !145, !149, !136, !150, !151, !152, !132, !153, !132, !154, !155, !156, !157, !158, !157, !159, !160, !161, !136, !162, !163, !164, !163, !165, !163, !166, !163, !167, !134, !168, !132, !169, !132, !170, !171, !172, !173, !174, !147, !175, !147, !176, !145, !177, !147, !178, !145, !179, !180, !181, !182}
!xidane.function_declaration_filename = !{!131, !183, !133, !184, !135, !183, !137, !185, !139, !183, !140, !185, !142, !183, !143, !183, !144, !183, !146, !183, !148, !183, !149, !183, !150, !186, !152, !183, !153, !183, !154, !183, !156, !183, !158, !183, !159, !183, !161, !183, !162, !184, !164, !184, !165, !184, !166, !184, !167, !184, !168, !183, !169, !183, !170, !183, !172, !183, !174, !183, !175, !183, !176, !183, !177, !183, !178, !183, !179, !184, !181, !184}
!xidane.ExternC = !{!131, !135, !137, !139, !140, !142, !143, !144, !146, !148, !149, !150, !152, !153, !154, !156, !158, !159, !161, !168, !169, !170, !172, !174, !175, !176, !177, !178}
!llvm.module.flags = !{!187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !53, metadata !56, metadata !57, metadata !58, metadata !59, metadata !62, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !72, metadata !91, metadata !92, metadata !96, metadata !97, metadata !98, metadata !99, metadata !105, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !118, metadata !121, metadata !124, metadata !125, metadata !126, metadata !127, metadata !130}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelInit", metadata !"XAxiVdma_ChannelInit", metadata !"", i32 171, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelInit, null, null, metadata !2, i32 172} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 172] [XAxiVdma_ChannelInit]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
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
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelResetNotDone", metadata !"XAxiVdma_ChannelResetNotDone", metadata !"", i32 241, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelResetNotDone, null, null, metadata !2, i32 242} ; [ DW_TAG_subprogram ] [line 241] [def] [scope 242] [XAxiVdma_ChannelResetNotDone]
!54 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !22, metadata !8}
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelReset", metadata !"XAxiVdma_ChannelReset", metadata !"", i32 259, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelReset, null, null, metadata !2, i32 260} ; [ DW_TAG_subprogram ] [line 259] [def] [scope 260] [XAxiVdma_ChannelReset]
!57 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelIsRunning", metadata !"XAxiVdma_ChannelIsRunning", metadata !"", i32 278, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelIsRunning, null, null, metadata !2, i32 279} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 279] [XAxiVdma_ChannelIsRunning]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelIsBusy", metadata !"XAxiVdma_ChannelIsBusy", metadata !"", i32 314, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelIsBusy, null, null, metadata !2, i32 315} ; [ DW_TAG_subprogram ] [line 314] [def] [scope 315] [XAxiVdma_ChannelIsBusy]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelErrors", metadata !"XAxiVdma_ChannelErrors", metadata !"", i32 351, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelErrors, null, null, metadata !2, i32 352} ; [ DW_TAG_subprogram ] [line 351] [def] [scope 352] [XAxiVdma_ChannelErrors]
!60 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{metadata !14, metadata !8}
!62 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ClearChannelErrors", metadata !"XAxiVdma_ClearChannelErrors", metadata !"", i32 368, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ClearChannelErrors, null, null, metadata !2, i32 369} ; [ DW_TAG_subprogram ] [line 368] [def] [scope 369] [XAxiVdma_ClearChannelErrors]
!63 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{null, metadata !8, metadata !14}
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelGetStatus", metadata !"XAxiVdma_ChannelGetStatus", metadata !"", i32 392, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelGetStatus, null, null, metadata !2, i32 393} ; [ DW_TAG_subprogram ] [line 392] [def] [scope 393] [XAxiVdma_ChannelGetStatus]
!66 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelStartParking", metadata !"XAxiVdma_ChannelStartParking", metadata !"", i32 408, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStartParking, null, null, metadata !2, i32 409} ; [ DW_TAG_subprogram ] [line 408] [def] [scope 409] [XAxiVdma_ChannelStartParking]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelStopParking", metadata !"XAxiVdma_ChannelStopParking", metadata !"", i32 438, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStopParking, null, null, metadata !2, i32 439} ; [ DW_TAG_subprogram ] [line 438] [def] [scope 439] [XAxiVdma_ChannelStopParking]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelStartFrmCntEnable", metadata !"XAxiVdma_ChannelStartFrmCntEnable", metadata !"", i32 461, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStartFrmCntEnable, null, null, metadata !2, i32 462} ; [ DW_TAG_subprogram ] [line 461] [def] [scope 462] [XAxiVdma_ChannelStartFrmCntEnable]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelSetBdAddrs", metadata !"XAxiVdma_ChannelSetBdAddrs", metadata !"", i32 495, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*, i32, i32)* @XAxiVdma_ChannelSetBdAddrs, null, null, metadata !2, i32 497} ; [ DW_TAG_subprogram ] [line 495] [def] [scope 497] [XAxiVdma_ChannelSetBdAddrs]
!70 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!71 = metadata !{metadata !22, metadata !8, metadata !32, metadata !32}
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelStartTransfer", metadata !"XAxiVdma_ChannelStartTransfer", metadata !"", i32 561, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*, %struct.XAxiVdma_ChannelSetup*)* @XAxiVdma_ChannelStartTransfer, null, null, metadata !2, i32 563} ; [ DW_TAG_subprogram ] [line 561] [def] [scope 563] [XAxiVdma_ChannelStartTransfer]
!73 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !22, metadata !8, metadata !75}
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma_ChannelSetup]
!76 = metadata !{i32 786454, metadata !10, null, metadata !"XAxiVdma_ChannelSetup", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [XAxiVdma_ChannelSetup] [line 140, size 0, align 0, offset 0] [from ]
!77 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 126, i64 1344, i64 32, i32 0, i32 0, null, metadata !78, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 126, size 1344, align 32, offset 0] [def] [from ]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !89, metadata !90}
!79 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"VertSizeInput", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [VertSizeInput] [line 127, size 32, align 32, offset 0] [from int]
!80 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"HoriSizeInput", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [HoriSizeInput] [line 128, size 32, align 32, offset 32] [from int]
!81 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"Stride", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [Stride] [line 129, size 32, align 32, offset 64] [from int]
!82 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"FrameDelay", i32 130, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [FrameDelay] [line 130, size 32, align 32, offset 96] [from int]
!83 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"EnableCircularBuf", i32 132, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableCircularBuf] [line 132, size 32, align 32, offset 128] [from int]
!84 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"EnableSync", i32 133, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableSync] [line 133, size 32, align 32, offset 160] [from int]
!85 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"PointNum", i32 134, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [PointNum] [line 134, size 32, align 32, offset 192] [from int]
!86 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"EnableFrameCounter", i32 135, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [EnableFrameCounter] [line 135, size 32, align 32, offset 224] [from int]
!87 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"FrameStoreStartAddr", i32 136, i64 1024, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [FrameStoreStartAddr] [line 136, size 1024, align 32, offset 256] [from ]
!88 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !32, metadata !48, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from UINTPTR]
!89 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"FixedFrameStoreAddr", i32 138, i64 32, i64 32, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [FixedFrameStoreAddr] [line 138, size 32, align 32, offset 1280] [from int]
!90 = metadata !{i32 786445, metadata !10, metadata !77, metadata !"GenLockRepeat", i32 139, i64 32, i64 32, i64 1312, i32 0, metadata !22} ; [ DW_TAG_member ] [GenLockRepeat] [line 139, size 32, align 32, offset 1312] [from int]
!91 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelConfig", metadata !"XAxiVdma_ChannelConfig", metadata !"", i32 624, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*, %struct.XAxiVdma_ChannelSetup*)* @XAxiVdma_ChannelConfig, null, null, metadata !2, i32 626} ; [ DW_TAG_subprogram ] [line 624] [def] [scope 626] [XAxiVdma_ChannelConfig]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelSetBufferAddr", metadata !"XAxiVdma_ChannelSetBufferAddr", metadata !"", i32 878, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*, i32*, i32)* @XAxiVdma_ChannelSetBufferAddr, null, null, metadata !2, i32 880} ; [ DW_TAG_subprogram ] [line 878] [def] [scope 880] [XAxiVdma_ChannelSetBufferAddr]
!93 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{metadata !22, metadata !8, metadata !95, metadata !22}
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UINTPTR]
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelStart", metadata !"XAxiVdma_ChannelStart", metadata !"", i32 973, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStart, null, null, metadata !2, i32 974} ; [ DW_TAG_subprogram ] [line 973] [def] [scope 974] [XAxiVdma_ChannelStart]
!97 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelStop", metadata !"XAxiVdma_ChannelStop", metadata !"", i32 1063, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStop, null, null, metadata !2, i32 1064} ; [ DW_TAG_subprogram ] [line 1063] [def] [scope 1064] [XAxiVdma_ChannelStop]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelRegisterDump", metadata !"XAxiVdma_ChannelRegisterDump", metadata !"", i32 1091, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelRegisterDump, null, null, metadata !2, i32 1092} ; [ DW_TAG_subprogram ] [line 1091] [def] [scope 1092] [XAxiVdma_ChannelRegisterDump]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelSetFrmCnt", metadata !"XAxiVdma_ChannelSetFrmCnt", metadata !"", i32 1129, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*, i8, i8)* @XAxiVdma_ChannelSetFrmCnt, null, null, metadata !2, i32 1130} ; [ DW_TAG_subprogram ] [line 1129] [def] [scope 1130] [XAxiVdma_ChannelSetFrmCnt]
!100 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !22, metadata !8, metadata !102, metadata !102}
!102 = metadata !{i32 786454, metadata !15, null, metadata !"u8", i32 90, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [u8] [line 90, size 0, align 0, offset 0] [from u_int8_t]
!103 = metadata !{i32 786454, metadata !17, null, metadata !"u_int8_t", i32 200, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [u_int8_t] [line 200, size 0, align 0, offset 0] [from unsigned char]
!104 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelGetFrmCnt", metadata !"XAxiVdma_ChannelGetFrmCnt", metadata !"", i32 1185, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*, i8*, i8*)* @XAxiVdma_ChannelGetFrmCnt, null, null, metadata !2, i32 1187} ; [ DW_TAG_subprogram ] [line 1185] [def] [scope 1187] [XAxiVdma_ChannelGetFrmCnt]
!106 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{null, metadata !8, metadata !108, metadata !108}
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u8]
!109 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelEnableIntr", metadata !"XAxiVdma_ChannelEnableIntr", metadata !"", i32 1231, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ChannelEnableIntr, null, null, metadata !2, i32 1232} ; [ DW_TAG_subprogram ] [line 1231] [def] [scope 1232] [XAxiVdma_ChannelEnableIntr]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelDisableIntr", metadata !"XAxiVdma_ChannelDisableIntr", metadata !"", i32 1266, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ChannelDisableIntr, null, null, metadata !2, i32 1267} ; [ DW_TAG_subprogram ] [line 1266] [def] [scope 1267] [XAxiVdma_ChannelDisableIntr]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelGetPendingIntr", metadata !"XAxiVdma_ChannelGetPendingIntr", metadata !"", i32 1302, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelGetPendingIntr, null, null, metadata !2, i32 1303} ; [ DW_TAG_subprogram ] [line 1302] [def] [scope 1303] [XAxiVdma_ChannelGetPendingIntr]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelIntrClear", metadata !"XAxiVdma_ChannelIntrClear", metadata !"", i32 1320, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ChannelIntrClear, null, null, metadata !2, i32 1321} ; [ DW_TAG_subprogram ] [line 1320] [def] [scope 1321] [XAxiVdma_ChannelIntrClear]
!113 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_ChannelGetEnabledIntr", metadata !"XAxiVdma_ChannelGetEnabledIntr", metadata !"", i32 1349, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelGetEnabledIntr, null, null, metadata !2, i32 1350} ; [ DW_TAG_subprogram ] [line 1349] [def] [scope 1350] [XAxiVdma_ChannelGetEnabledIntr]
!114 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_BdSetFrmDly", metadata !"XAxiVdma_BdSetFrmDly", metadata !"", i32 1521, metadata !115, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([8 x i32]*, i32)* @XAxiVdma_BdSetFrmDly, null, null, metadata !2, i32 1522} ; [ DW_TAG_subprogram ] [line 1521] [local] [def] [scope 1522] [XAxiVdma_BdSetFrmDly]
!115 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !22, metadata !117, metadata !22}
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma_Bd]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_BdWrite", metadata !"XAxiVdma_BdWrite", metadata !"", i32 1384, metadata !119, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i32]*, i32, i32)* @XAxiVdma_BdWrite, null, null, metadata !2, i32 1385} ; [ DW_TAG_subprogram ] [line 1384] [local] [def] [scope 1385] [XAxiVdma_BdWrite]
!119 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{null, metadata !117, metadata !22, metadata !14}
!121 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_BdRead", metadata !"XAxiVdma_BdRead", metadata !"", i32 1367, metadata !122, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([8 x i32]*, i32)* @XAxiVdma_BdRead, null, null, metadata !2, i32 1368} ; [ DW_TAG_subprogram ] [line 1367] [local] [def] [scope 1368] [XAxiVdma_BdRead]
!122 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !14, metadata !117, metadata !22}
!124 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_BdSetStride", metadata !"XAxiVdma_BdSetStride", metadata !"", i32 1490, metadata !115, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([8 x i32]*, i32)* @XAxiVdma_BdSetStride, null, null, metadata !2, i32 1491} ; [ DW_TAG_subprogram ] [line 1490] [local] [def] [scope 1491] [XAxiVdma_BdSetStride]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_BdSetHsize", metadata !"XAxiVdma_BdSetHsize", metadata !"", i32 1465, metadata !115, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([8 x i32]*, i32)* @XAxiVdma_BdSetHsize, null, null, metadata !2, i32 1466} ; [ DW_TAG_subprogram ] [line 1465] [local] [def] [scope 1466] [XAxiVdma_BdSetHsize]
!126 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_BdSetVsize", metadata !"XAxiVdma_BdSetVsize", metadata !"", i32 1440, metadata !115, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([8 x i32]*, i32)* @XAxiVdma_BdSetVsize, null, null, metadata !2, i32 1441} ; [ DW_TAG_subprogram ] [line 1440] [local] [def] [scope 1441] [XAxiVdma_BdSetVsize]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_BdSetAddr", metadata !"XAxiVdma_BdSetAddr", metadata !"", i32 1421, metadata !128, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i32]*, i32)* @XAxiVdma_BdSetAddr, null, null, metadata !2, i32 1422} ; [ DW_TAG_subprogram ] [line 1421] [local] [def] [scope 1422] [XAxiVdma_BdSetAddr]
!128 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{null, metadata !117, metadata !14}
!130 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_BdSetNextPtr", metadata !"XAxiVdma_BdSetNextPtr", metadata !"", i32 1402, metadata !128, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i32]*, i32)* @XAxiVdma_BdSetNextPtr, null, null, metadata !2, i32 1403} ; [ DW_TAG_subprogram ] [line 1402] [local] [def] [scope 1403] [XAxiVdma_BdSetNextPtr]
!131 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelInit}
!132 = metadata !{metadata !"void.XAxiVdma_Channel *.1"}
!133 = metadata !{void ([8 x i32]*, i32)* @XAxiVdma_BdSetNextPtr}
!134 = metadata !{metadata !"void.XAxiVdma_Bd *.1.u32.0"}
!135 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelResetNotDone}
!136 = metadata !{metadata !"int.XAxiVdma_Channel *.1"}
!137 = metadata !{i32 (i32)* @Xil_In32}
!138 = metadata !{metadata !"u32.INTPTR.0"}
!139 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelReset}
!140 = metadata !{void (i32, i32)* @Xil_Out32}
!141 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!142 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelIsRunning}
!143 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelIsBusy}
!144 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelErrors}
!145 = metadata !{metadata !"u32.XAxiVdma_Channel *.1"}
!146 = metadata !{void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ClearChannelErrors}
!147 = metadata !{metadata !"void.XAxiVdma_Channel *.1.u32.0"}
!148 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelGetStatus}
!149 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStartParking}
!150 = metadata !{i32 (i8*, ...)* @printf}
!151 = metadata !{metadata !"int.const char *restrict.1"}
!152 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStopParking}
!153 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStartFrmCntEnable}
!154 = metadata !{i32 (%struct.XAxiVdma_Channel*, i32, i32)* @XAxiVdma_ChannelSetBdAddrs}
!155 = metadata !{metadata !"int.XAxiVdma_Channel *.1.UINTPTR.0.UINTPTR.0"}
!156 = metadata !{i32 (%struct.XAxiVdma_Channel*, %struct.XAxiVdma_ChannelSetup*)* @XAxiVdma_ChannelStartTransfer}
!157 = metadata !{metadata !"int.XAxiVdma_Channel *.1.XAxiVdma_ChannelSetup *.1"}
!158 = metadata !{i32 (%struct.XAxiVdma_Channel*, %struct.XAxiVdma_ChannelSetup*)* @XAxiVdma_ChannelConfig}
!159 = metadata !{i32 (%struct.XAxiVdma_Channel*, i32*, i32)* @XAxiVdma_ChannelSetBufferAddr}
!160 = metadata !{metadata !"int.XAxiVdma_Channel *.1.UINTPTR *.1.int.0"}
!161 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStart}
!162 = metadata !{i32 ([8 x i32]*, i32)* @XAxiVdma_BdSetVsize}
!163 = metadata !{metadata !"int.XAxiVdma_Bd *.1.int.0"}
!164 = metadata !{i32 ([8 x i32]*, i32)* @XAxiVdma_BdSetHsize}
!165 = metadata !{i32 ([8 x i32]*, i32)* @XAxiVdma_BdSetStride}
!166 = metadata !{i32 ([8 x i32]*, i32)* @XAxiVdma_BdSetFrmDly}
!167 = metadata !{void ([8 x i32]*, i32)* @XAxiVdma_BdSetAddr}
!168 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelStop}
!169 = metadata !{void (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelRegisterDump}
!170 = metadata !{i32 (%struct.XAxiVdma_Channel*, i8, i8)* @XAxiVdma_ChannelSetFrmCnt}
!171 = metadata !{metadata !"int.XAxiVdma_Channel *.1.u8.0.u8.0"}
!172 = metadata !{void (%struct.XAxiVdma_Channel*, i8*, i8*)* @XAxiVdma_ChannelGetFrmCnt}
!173 = metadata !{metadata !"void.XAxiVdma_Channel *.1.u8 *.1.u8 *.1"}
!174 = metadata !{void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ChannelEnableIntr}
!175 = metadata !{void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ChannelDisableIntr}
!176 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelGetPendingIntr}
!177 = metadata !{void (%struct.XAxiVdma_Channel*, i32)* @XAxiVdma_ChannelIntrClear}
!178 = metadata !{i32 (%struct.XAxiVdma_Channel*)* @XAxiVdma_ChannelGetEnabledIntr}
!179 = metadata !{i32 ([8 x i32]*, i32)* @XAxiVdma_BdRead}
!180 = metadata !{metadata !"u32.XAxiVdma_Bd *.1.int.0"}
!181 = metadata !{void ([8 x i32]*, i32, i32)* @XAxiVdma_BdWrite}
!182 = metadata !{metadata !"void.XAxiVdma_Bd *.1.int.0.u32.0"}
!183 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_i.h"}
!184 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c"}
!185 = metadata !{metadata !"../src/xil/xil_io.h"}
!186 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!187 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!188 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!189 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!190 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!191 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!192 = metadata !{i32 786689, metadata !4, metadata !"Channel", metadata !5, i32 16777387, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 171]
!193 = metadata !{i32 171, i32 45, metadata !4, null}
!194 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 173, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 173]
!195 = metadata !{i32 173, i32 6, metadata !4, null}
!196 = metadata !{i32 786688, metadata !4, metadata !"NumFrames", metadata !5, i32 174, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumFrames] [line 174]
!197 = metadata !{i32 174, i32 6, metadata !4, null}
!198 = metadata !{i32 786688, metadata !4, metadata !"FirstBdPtr", metadata !5, i32 175, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FirstBdPtr] [line 175]
!199 = metadata !{i32 175, i32 15, metadata !4, null}
!200 = metadata !{i32 175, i32 2, metadata !4, null}
!201 = metadata !{i32 786688, metadata !4, metadata !"LastBdPtr", metadata !5, i32 176, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LastBdPtr] [line 176]
!202 = metadata !{i32 176, i32 15, metadata !4, null}
!203 = metadata !{i32 181, i32 2, metadata !4, null}
!204 = metadata !{i32 182, i32 2, metadata !4, null}
!205 = metadata !{i32 183, i32 2, metadata !4, null}
!206 = metadata !{i32 184, i32 2, metadata !4, null}
!207 = metadata !{i32 185, i32 2, metadata !4, null}
!208 = metadata !{i32 186, i32 2, metadata !4, null}
!209 = metadata !{i32 188, i32 2, metadata !4, null}
!210 = metadata !{i32 192, i32 2, metadata !4, null}
!211 = metadata !{i32 194, i32 7, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !4, i32 194, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!213 = metadata !{i32 194, i32 7, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !215, i32 194, i32 7, i32 2, i32 163} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!215 = metadata !{i32 786443, metadata !1, metadata !212, i32 194, i32 7, i32 1, i32 162} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!216 = metadata !{i32 786688, metadata !217, metadata !"BdPtr", metadata !5, i32 195, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BdPtr] [line 195]
!217 = metadata !{i32 786443, metadata !1, metadata !212, i32 194, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!218 = metadata !{i32 195, i32 16, metadata !217, null}
!219 = metadata !{i32 786688, metadata !217, metadata !"NextBdPtr", metadata !5, i32 196, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NextBdPtr] [line 196]
!220 = metadata !{i32 196, i32 16, metadata !217, null}
!221 = metadata !{i32 198, i32 3, metadata !217, null}
!222 = metadata !{i32 202, i32 7, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !217, i32 202, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!224 = metadata !{i32 203, i32 4, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !223, i32 202, i32 29, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!226 = metadata !{i32 204, i32 3, metadata !225, null}
!227 = metadata !{i32 206, i32 4, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !223, i32 205, i32 8, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!229 = metadata !{i32 209, i32 3, metadata !217, null}
!230 = metadata !{i32 211, i32 2, metadata !217, null}
!231 = metadata !{i32 194, i32 29, metadata !212, null}
!232 = metadata !{i32 213, i32 2, metadata !4, null}
!233 = metadata !{i32 218, i32 2, metadata !4, null}
!234 = metadata !{i32 219, i32 2, metadata !4, null}
!235 = metadata !{i32 221, i32 2, metadata !4, null}
!236 = metadata !{i32 222, i32 2, metadata !4, null}
!237 = metadata !{i32 225, i32 2, metadata !4, null}
!238 = metadata !{i32 227, i32 2, metadata !4, null}
!239 = metadata !{i32 786689, metadata !130, metadata !"BdPtr", metadata !5, i32 16778618, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdPtr] [line 1402]
!240 = metadata !{i32 1402, i32 48, metadata !130, null}
!241 = metadata !{i32 786689, metadata !130, metadata !"NextPtr", metadata !5, i32 33555834, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NextPtr] [line 1402]
!242 = metadata !{i32 1402, i32 59, metadata !130, null}
!243 = metadata !{i32 1404, i32 2, metadata !130, null}
!244 = metadata !{i32 1405, i32 2, metadata !130, null}
!245 = metadata !{i32 786689, metadata !53, metadata !"Channel", metadata !5, i32 16777457, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 241]
!246 = metadata !{i32 241, i32 52, metadata !53, null}
!247 = metadata !{i32 243, i32 10, metadata !53, null}
!248 = metadata !{i32 786689, metadata !56, metadata !"Channel", metadata !5, i32 16777475, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 259]
!249 = metadata !{i32 259, i32 46, metadata !56, null}
!250 = metadata !{i32 261, i32 2, metadata !56, null}
!251 = metadata !{i32 264, i32 2, metadata !56, null}
!252 = metadata !{i32 786689, metadata !57, metadata !"Channel", metadata !5, i32 16777494, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 278]
!253 = metadata !{i32 278, i32 49, metadata !57, null}
!254 = metadata !{i32 786688, metadata !57, metadata !"Bits", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bits] [line 280]
!255 = metadata !{i32 280, i32 6, metadata !57, null}
!256 = metadata !{i32 284, i32 9, metadata !57, null}
!257 = metadata !{i32 287, i32 6, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !57, i32 287, i32 6, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!259 = metadata !{i32 288, i32 3, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !258, i32 287, i32 12, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!261 = metadata !{i32 293, i32 9, metadata !57, null}
!262 = metadata !{i32 296, i32 6, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !57, i32 296, i32 6, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!264 = metadata !{i32 297, i32 3, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !263, i32 296, i32 13, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!266 = metadata !{i32 300, i32 2, metadata !57, null}
!267 = metadata !{i32 301, i32 1, metadata !57, null}
!268 = metadata !{i32 786689, metadata !58, metadata !"Channel", metadata !5, i32 16777530, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 314]
!269 = metadata !{i32 314, i32 46, metadata !58, null}
!270 = metadata !{i32 786688, metadata !58, metadata !"Bits", metadata !5, i32 316, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bits] [line 316]
!271 = metadata !{i32 316, i32 6, metadata !58, null}
!272 = metadata !{i32 320, i32 9, metadata !58, null}
!273 = metadata !{i32 323, i32 6, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !58, i32 323, i32 6, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!275 = metadata !{i32 324, i32 3, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !274, i32 323, i32 12, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!277 = metadata !{i32 329, i32 9, metadata !58, null}
!278 = metadata !{i32 332, i32 6, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !58, i32 332, i32 6, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!280 = metadata !{i32 333, i32 3, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !279, i32 332, i32 12, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!282 = metadata !{i32 338, i32 2, metadata !58, null}
!283 = metadata !{i32 339, i32 1, metadata !58, null}
!284 = metadata !{i32 786689, metadata !59, metadata !"Channel", metadata !5, i32 16777567, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 351]
!285 = metadata !{i32 351, i32 46, metadata !59, null}
!286 = metadata !{i32 353, i32 10, metadata !59, null}
!287 = metadata !{i32 786689, metadata !62, metadata !"Channel", metadata !5, i32 16777584, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 368]
!288 = metadata !{i32 368, i32 52, metadata !62, null}
!289 = metadata !{i32 786689, metadata !62, metadata !"ErrorMask", metadata !5, i32 33554800, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ErrorMask] [line 368]
!290 = metadata !{i32 368, i32 65, metadata !62, null}
!291 = metadata !{i32 786688, metadata !62, metadata !"SrBits", metadata !5, i32 370, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SrBits] [line 370]
!292 = metadata !{i32 370, i32 6, metadata !62, null}
!293 = metadata !{i32 373, i32 18, metadata !62, null}
!294 = metadata !{i32 376, i32 2, metadata !62, null}
!295 = metadata !{i32 379, i32 2, metadata !62, null}
!296 = metadata !{i32 786689, metadata !65, metadata !"Channel", metadata !5, i32 16777608, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 392]
!297 = metadata !{i32 392, i32 49, metadata !65, null}
!298 = metadata !{i32 394, i32 9, metadata !65, null}
!299 = metadata !{i32 786689, metadata !66, metadata !"Channel", metadata !5, i32 16777624, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 408]
!300 = metadata !{i32 408, i32 52, metadata !66, null}
!301 = metadata !{i32 786688, metadata !66, metadata !"CrBits", metadata !5, i32 410, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 410]
!302 = metadata !{i32 410, i32 6, metadata !66, null}
!303 = metadata !{i32 412, i32 7, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !66, i32 412, i32 6, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!305 = metadata !{i32 414, i32 3, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !304, i32 412, i32 43, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!307 = metadata !{i32 416, i32 3, metadata !306, null}
!308 = metadata !{i32 419, i32 11, metadata !66, null}
!309 = metadata !{i32 422, i32 2, metadata !66, null}
!310 = metadata !{i32 425, i32 2, metadata !66, null}
!311 = metadata !{i32 426, i32 1, metadata !66, null}
!312 = metadata !{i32 786689, metadata !67, metadata !"Channel", metadata !5, i32 16777654, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 438]
!313 = metadata !{i32 438, i32 52, metadata !67, null}
!314 = metadata !{i32 786688, metadata !67, metadata !"CrBits", metadata !5, i32 440, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 440]
!315 = metadata !{i32 440, i32 6, metadata !67, null}
!316 = metadata !{i32 442, i32 11, metadata !67, null}
!317 = metadata !{i32 445, i32 2, metadata !67, null}
!318 = metadata !{i32 448, i32 2, metadata !67, null}
!319 = metadata !{i32 786689, metadata !68, metadata !"Channel", metadata !5, i32 16777677, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 461]
!320 = metadata !{i32 461, i32 58, metadata !68, null}
!321 = metadata !{i32 786688, metadata !68, metadata !"CrBits", metadata !5, i32 463, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 463]
!322 = metadata !{i32 463, i32 6, metadata !68, null}
!323 = metadata !{i32 465, i32 11, metadata !68, null}
!324 = metadata !{i32 468, i32 2, metadata !68, null}
!325 = metadata !{i32 471, i32 2, metadata !68, null}
!326 = metadata !{i32 786689, metadata !69, metadata !"Channel", metadata !5, i32 16777711, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 495]
!327 = metadata !{i32 495, i32 50, metadata !69, null}
!328 = metadata !{i32 786689, metadata !69, metadata !"BdAddrPhys", metadata !5, i32 33554927, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdAddrPhys] [line 495]
!329 = metadata !{i32 495, i32 67, metadata !69, null}
!330 = metadata !{i32 786689, metadata !69, metadata !"BdAddrVirt", metadata !5, i32 50332144, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdAddrVirt] [line 496]
!331 = metadata !{i32 496, i32 11, metadata !69, null}
!332 = metadata !{i32 786688, metadata !69, metadata !"NumFrames", metadata !5, i32 498, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumFrames] [line 498]
!333 = metadata !{i32 498, i32 6, metadata !69, null}
!334 = metadata !{i32 498, i32 2, metadata !69, null}
!335 = metadata !{i32 786688, metadata !69, metadata !"i", metadata !5, i32 499, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 499]
!336 = metadata !{i32 499, i32 6, metadata !69, null}
!337 = metadata !{i32 786688, metadata !69, metadata !"NextPhys", metadata !5, i32 500, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NextPhys] [line 500]
!338 = metadata !{i32 500, i32 10, metadata !69, null}
!339 = metadata !{i32 500, i32 2, metadata !69, null}
!340 = metadata !{i32 786688, metadata !69, metadata !"CurrVirt", metadata !5, i32 501, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CurrVirt] [line 501]
!341 = metadata !{i32 501, i32 10, metadata !69, null}
!342 = metadata !{i32 501, i32 2, metadata !69, null}
!343 = metadata !{i32 503, i32 6, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !69, i32 503, i32 6, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!345 = metadata !{i32 503, i32 24, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !344, i32 503, i32 24, i32 1, i32 164} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!347 = metadata !{i32 505, i32 3, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !344, i32 503, i32 57, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!349 = metadata !{i32 507, i32 3, metadata !348, null}
!350 = metadata !{i32 510, i32 2, metadata !69, null}
!351 = metadata !{i32 511, i32 2, metadata !69, null}
!352 = metadata !{i32 514, i32 7, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !69, i32 514, i32 2, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!354 = metadata !{i32 514, i32 7, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !356, i32 514, i32 7, i32 2, i32 166} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!356 = metadata !{i32 786443, metadata !1, metadata !353, i32 514, i32 7, i32 1, i32 165} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!357 = metadata !{i32 786688, metadata !358, metadata !"BdPtr", metadata !5, i32 515, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BdPtr] [line 515]
!358 = metadata !{i32 786443, metadata !1, metadata !353, i32 514, i32 34, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!359 = metadata !{i32 515, i32 16, metadata !358, null}
!360 = metadata !{i32 517, i32 3, metadata !358, null}
!361 = metadata !{i32 521, i32 7, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !358, i32 521, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!363 = metadata !{i32 522, i32 4, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !362, i32 521, i32 29, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!365 = metadata !{i32 523, i32 3, metadata !364, null}
!366 = metadata !{i32 525, i32 4, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !362, i32 524, i32 8, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!368 = metadata !{i32 528, i32 3, metadata !358, null}
!369 = metadata !{i32 529, i32 3, metadata !358, null}
!370 = metadata !{i32 530, i32 2, metadata !358, null}
!371 = metadata !{i32 514, i32 29, metadata !353, null}
!372 = metadata !{i32 535, i32 2, metadata !69, null}
!373 = metadata !{i32 536, i32 2, metadata !69, null}
!374 = metadata !{i32 537, i32 2, metadata !69, null}
!375 = metadata !{i32 539, i32 2, metadata !69, null}
!376 = metadata !{i32 542, i32 2, metadata !69, null}
!377 = metadata !{i32 543, i32 1, metadata !69, null}
!378 = metadata !{i32 786689, metadata !72, metadata !"Channel", metadata !5, i32 16777777, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 561]
!379 = metadata !{i32 561, i32 53, metadata !72, null}
!380 = metadata !{i32 786689, metadata !72, metadata !"ChannelCfgPtr", metadata !5, i32 33554994, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ChannelCfgPtr] [line 562]
!381 = metadata !{i32 562, i32 28, metadata !72, null}
!382 = metadata !{i32 786688, metadata !72, metadata !"Status", metadata !5, i32 564, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 564]
!383 = metadata !{i32 564, i32 6, metadata !72, null}
!384 = metadata !{i32 566, i32 6, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !72, i32 566, i32 6, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!386 = metadata !{i32 568, i32 3, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !385, i32 566, i32 25, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!388 = metadata !{i32 570, i32 3, metadata !387, null}
!389 = metadata !{i32 573, i32 6, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !72, i32 573, i32 6, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!391 = metadata !{i32 573, i32 24, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !390, i32 573, i32 24, i32 1, i32 167} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!393 = metadata !{i32 575, i32 5, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !390, i32 573, i32 57, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!395 = metadata !{i32 577, i32 3, metadata !394, null}
!396 = metadata !{i32 580, i32 11, metadata !72, null}
!397 = metadata !{i32 581, i32 6, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !72, i32 581, i32 6, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!399 = metadata !{i32 583, i32 3, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !398, i32 581, i32 29, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!401 = metadata !{i32 585, i32 3, metadata !400, null}
!402 = metadata !{i32 588, i32 11, metadata !72, null}
!403 = metadata !{i32 590, i32 6, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !72, i32 590, i32 6, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!405 = metadata !{i32 592, i32 3, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !404, i32 590, i32 29, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!407 = metadata !{i32 594, i32 3, metadata !406, null}
!408 = metadata !{i32 597, i32 11, metadata !72, null}
!409 = metadata !{i32 598, i32 6, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !72, i32 598, i32 6, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!411 = metadata !{i32 600, i32 3, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !410, i32 598, i32 29, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!413 = metadata !{i32 602, i32 3, metadata !412, null}
!414 = metadata !{i32 605, i32 2, metadata !72, null}
!415 = metadata !{i32 606, i32 1, metadata !72, null}
!416 = metadata !{i32 786689, metadata !91, metadata !"Channel", metadata !5, i32 16777840, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 624]
!417 = metadata !{i32 624, i32 46, metadata !91, null}
!418 = metadata !{i32 786689, metadata !91, metadata !"ChannelCfgPtr", metadata !5, i32 33555057, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ChannelCfgPtr] [line 625]
!419 = metadata !{i32 625, i32 32, metadata !91, null}
!420 = metadata !{i32 786688, metadata !91, metadata !"CrBits", metadata !5, i32 627, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 627]
!421 = metadata !{i32 627, i32 6, metadata !91, null}
!422 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !5, i32 628, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 628]
!423 = metadata !{i32 628, i32 6, metadata !91, null}
!424 = metadata !{i32 786688, metadata !91, metadata !"NumBds", metadata !5, i32 629, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumBds] [line 629]
!425 = metadata !{i32 629, i32 6, metadata !91, null}
!426 = metadata !{i32 786688, metadata !91, metadata !"Status", metadata !5, i32 630, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 630]
!427 = metadata !{i32 630, i32 6, metadata !91, null}
!428 = metadata !{i32 786688, metadata !91, metadata !"hsize_align", metadata !5, i32 631, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize_align] [line 631]
!429 = metadata !{i32 631, i32 6, metadata !91, null}
!430 = metadata !{i32 786688, metadata !91, metadata !"stride_align", metadata !5, i32 632, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride_align] [line 632]
!431 = metadata !{i32 632, i32 6, metadata !91, null}
!432 = metadata !{i32 634, i32 6, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !91, i32 634, i32 6, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!434 = metadata !{i32 636, i32 3, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !433, i32 634, i32 25, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!436 = metadata !{i32 638, i32 3, metadata !435, null}
!437 = metadata !{i32 641, i32 6, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !91, i32 641, i32 6, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!439 = metadata !{i32 641, i32 24, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !438, i32 641, i32 24, i32 1, i32 168} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!441 = metadata !{i32 643, i32 3, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !438, i32 641, i32 57, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!443 = metadata !{i32 645, i32 3, metadata !442, null}
!444 = metadata !{i32 648, i32 2, metadata !91, null}
!445 = metadata !{i32 651, i32 6, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !91, i32 651, i32 6, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!447 = metadata !{i32 652, i32 7, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !449, i32 652, i32 7, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!449 = metadata !{i32 786443, metadata !1, metadata !446, i32 651, i32 44, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!450 = metadata !{i32 653, i32 4, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !448, i32 652, i32 59, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!452 = metadata !{i32 654, i32 3, metadata !451, null}
!453 = metadata !{i32 655, i32 4, metadata !454, null}
!454 = metadata !{i32 786443, metadata !1, metadata !448, i32 654, i32 10, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!455 = metadata !{i32 657, i32 8, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !454, i32 657, i32 8, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!457 = metadata !{i32 658, i32 5, metadata !456, null}
!458 = metadata !{i32 660, i32 2, metadata !449, null}
!459 = metadata !{i32 661, i32 7, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !461, i32 661, i32 7, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!461 = metadata !{i32 786443, metadata !1, metadata !446, i32 660, i32 9, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!462 = metadata !{i32 662, i32 4, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !460, i32 661, i32 59, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!464 = metadata !{i32 663, i32 3, metadata !463, null}
!465 = metadata !{i32 664, i32 4, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !460, i32 663, i32 10, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!467 = metadata !{i32 666, i32 8, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !466, i32 666, i32 8, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!469 = metadata !{i32 667, i32 5, metadata !468, null}
!470 = metadata !{i32 672, i32 6, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !91, i32 672, i32 6, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!472 = metadata !{i32 673, i32 3, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !471, i32 672, i32 51, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!474 = metadata !{i32 674, i32 2, metadata !473, null}
!475 = metadata !{i32 675, i32 3, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !471, i32 674, i32 9, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!477 = metadata !{i32 676, i32 7, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !476, i32 676, i32 7, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!479 = metadata !{i32 677, i32 4, metadata !478, null}
!480 = metadata !{i32 683, i32 6, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !91, i32 683, i32 6, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!482 = metadata !{i32 684, i32 7, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !484, i32 684, i32 7, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!484 = metadata !{i32 786443, metadata !1, metadata !481, i32 683, i32 24, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!485 = metadata !{i32 686, i32 4, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !483, i32 684, i32 25, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!487 = metadata !{i32 687, i32 3, metadata !486, null}
!488 = metadata !{i32 688, i32 7, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !484, i32 688, i32 7, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!490 = metadata !{i32 690, i32 4, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !489, i32 688, i32 26, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!492 = metadata !{i32 691, i32 3, metadata !491, null}
!493 = metadata !{i32 692, i32 2, metadata !484, null}
!494 = metadata !{i32 694, i32 2, metadata !91, null}
!495 = metadata !{i32 696, i32 11, metadata !91, null}
!496 = metadata !{i32 699, i32 11, metadata !91, null}
!497 = metadata !{i32 703, i32 6, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !91, i32 703, i32 6, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!499 = metadata !{i32 704, i32 3, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !498, i32 703, i32 40, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!501 = metadata !{i32 705, i32 2, metadata !500, null}
!502 = metadata !{i32 786688, metadata !503, metadata !"FrmBits", metadata !5, i32 708, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrmBits] [line 708]
!503 = metadata !{i32 786443, metadata !1, metadata !498, i32 706, i32 7, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!504 = metadata !{i32 708, i32 7, metadata !503, null}
!505 = metadata !{i32 786688, metadata !503, metadata !"RegValue", metadata !5, i32 709, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RegValue] [line 709]
!506 = metadata !{i32 709, i32 7, metadata !503, null}
!507 = metadata !{i32 711, i32 9, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !503, i32 711, i32 7, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!509 = metadata !{i32 711, i32 9, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !508, i32 711, i32 9, i32 1, i32 169} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!511 = metadata !{i32 714, i32 4, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !508, i32 712, i32 23, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!513 = metadata !{i32 716, i32 4, metadata !512, null}
!514 = metadata !{i32 719, i32 7, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !503, i32 719, i32 7, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!516 = metadata !{i32 721, i32 4, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !515, i32 719, i32 62, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!518 = metadata !{i32 724, i32 4, metadata !517, null}
!519 = metadata !{i32 727, i32 7, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !503, i32 727, i32 7, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!521 = metadata !{i32 728, i32 4, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !520, i32 727, i32 24, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!523 = metadata !{i32 731, i32 15, metadata !522, null}
!524 = metadata !{i32 734, i32 4, metadata !522, null}
!525 = metadata !{i32 736, i32 4, metadata !522, null}
!526 = metadata !{i32 738, i32 4, metadata !522, null}
!527 = metadata !{i32 740, i32 3, metadata !522, null}
!528 = metadata !{i32 742, i32 4, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !520, i32 741, i32 8, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!530 = metadata !{i32 745, i32 4, metadata !529, null}
!531 = metadata !{i32 747, i32 15, metadata !529, null}
!532 = metadata !{i32 750, i32 4, metadata !529, null}
!533 = metadata !{i32 752, i32 4, metadata !529, null}
!534 = metadata !{i32 754, i32 4, metadata !529, null}
!535 = metadata !{i32 759, i32 6, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !91, i32 759, i32 6, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!537 = metadata !{i32 760, i32 7, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !539, i32 760, i32 7, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!539 = metadata !{i32 786443, metadata !1, metadata !536, i32 759, i32 33, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!540 = metadata !{i32 761, i32 4, metadata !538, null}
!541 = metadata !{i32 762, i32 2, metadata !539, null}
!542 = metadata !{i32 764, i32 6, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !91, i32 764, i32 6, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!544 = metadata !{i32 765, i32 7, metadata !545, null}
!545 = metadata !{i32 786443, metadata !1, metadata !546, i32 765, i32 7, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!546 = metadata !{i32 786443, metadata !1, metadata !543, i32 764, i32 36, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!547 = metadata !{i32 765, i32 7, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !545, i32 765, i32 7, i32 1, i32 170} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!549 = metadata !{i32 767, i32 4, metadata !545, null}
!550 = metadata !{i32 768, i32 2, metadata !546, null}
!551 = metadata !{i32 770, i32 6, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !91, i32 770, i32 6, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!553 = metadata !{i32 771, i32 3, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !552, i32 770, i32 41, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!555 = metadata !{i32 772, i32 2, metadata !554, null}
!556 = metadata !{i32 774, i32 2, metadata !91, null}
!557 = metadata !{i32 779, i32 2, metadata !91, null}
!558 = metadata !{i32 782, i32 6, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !91, i32 782, i32 6, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!560 = metadata !{i32 788, i32 3, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !559, i32 782, i32 22, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!562 = metadata !{i32 790, i32 8, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !561, i32 790, i32 3, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!564 = metadata !{i32 790, i32 8, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !566, i32 790, i32 8, i32 2, i32 172} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!566 = metadata !{i32 786443, metadata !1, metadata !563, i32 790, i32 8, i32 1, i32 171} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!567 = metadata !{i32 786688, metadata !568, metadata !"BdPtr", metadata !5, i32 791, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BdPtr] [line 791]
!568 = metadata !{i32 786443, metadata !1, metadata !563, i32 790, i32 32, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!569 = metadata !{i32 791, i32 17, metadata !568, null}
!570 = metadata !{i32 791, i32 4, metadata !568, null}
!571 = metadata !{i32 794, i32 13, metadata !568, null}
!572 = metadata !{i32 796, i32 8, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !568, i32 796, i32 8, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!574 = metadata !{i32 798, i32 5, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !573, i32 796, i32 31, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!576 = metadata !{i32 800, i32 5, metadata !575, null}
!577 = metadata !{i32 803, i32 13, metadata !568, null}
!578 = metadata !{i32 805, i32 8, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !568, i32 805, i32 8, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!580 = metadata !{i32 807, i32 5, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !579, i32 805, i32 31, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!582 = metadata !{i32 809, i32 5, metadata !581, null}
!583 = metadata !{i32 812, i32 13, metadata !568, null}
!584 = metadata !{i32 814, i32 8, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !568, i32 814, i32 8, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!586 = metadata !{i32 816, i32 5, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !585, i32 814, i32 31, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!588 = metadata !{i32 818, i32 5, metadata !587, null}
!589 = metadata !{i32 821, i32 13, metadata !568, null}
!590 = metadata !{i32 823, i32 8, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !568, i32 823, i32 8, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!592 = metadata !{i32 825, i32 5, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !591, i32 823, i32 31, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!594 = metadata !{i32 827, i32 5, metadata !593, null}
!595 = metadata !{i32 829, i32 3, metadata !568, null}
!596 = metadata !{i32 790, i32 27, metadata !563, null}
!597 = metadata !{i32 830, i32 2, metadata !561, null}
!598 = metadata !{i32 832, i32 7, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !600, i32 832, i32 7, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!600 = metadata !{i32 786443, metadata !1, metadata !559, i32 831, i32 7, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!601 = metadata !{i32 832, i32 7, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !599, i32 832, i32 7, i32 1, i32 173} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!603 = metadata !{i32 832, i32 7, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !599, i32 832, i32 7, i32 2, i32 174} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!605 = metadata !{i32 832, i32 7, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !599, i32 832, i32 7, i32 3, i32 175} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!607 = metadata !{i32 832, i32 7, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !599, i32 832, i32 7, i32 4, i32 176} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!609 = metadata !{i32 832, i32 7, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !599, i32 832, i32 7, i32 5, i32 177} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!611 = metadata !{i32 832, i32 7, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !599, i32 832, i32 7, i32 6, i32 178} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!613 = metadata !{i32 832, i32 7, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !599, i32 832, i32 7, i32 7, i32 179} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!615 = metadata !{i32 841, i32 4, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !599, i32 839, i32 58, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!617 = metadata !{i32 844, i32 3, metadata !600, null}
!618 = metadata !{i32 847, i32 3, metadata !600, null}
!619 = metadata !{i32 853, i32 2, metadata !91, null}
!620 = metadata !{i32 854, i32 1, metadata !91, null}
!621 = metadata !{i32 786689, metadata !92, metadata !"Channel", metadata !5, i32 16778094, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 878]
!622 = metadata !{i32 878, i32 53, metadata !92, null}
!623 = metadata !{i32 786689, metadata !92, metadata !"BufferAddrSet", metadata !5, i32 33555311, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BufferAddrSet] [line 879]
!624 = metadata !{i32 879, i32 18, metadata !92, null}
!625 = metadata !{i32 786689, metadata !92, metadata !"NumFrames", metadata !5, i32 50332527, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NumFrames] [line 879]
!626 = metadata !{i32 879, i32 37, metadata !92, null}
!627 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !5, i32 881, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 881]
!628 = metadata !{i32 881, i32 6, metadata !92, null}
!629 = metadata !{i32 786688, metadata !92, metadata !"WordLenBits", metadata !5, i32 882, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [WordLenBits] [line 882]
!630 = metadata !{i32 882, i32 6, metadata !92, null}
!631 = metadata !{i32 786688, metadata !92, metadata !"HiFrmAddr", metadata !5, i32 883, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [HiFrmAddr] [line 883]
!632 = metadata !{i32 883, i32 6, metadata !92, null}
!633 = metadata !{i32 883, i32 2, metadata !92, null}
!634 = metadata !{i32 786688, metadata !92, metadata !"FrmBound", metadata !5, i32 884, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrmBound] [line 884]
!635 = metadata !{i32 884, i32 6, metadata !92, null}
!636 = metadata !{i32 885, i32 6, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !92, i32 885, i32 6, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!638 = metadata !{i32 886, i32 3, metadata !639, null}
!639 = metadata !{i32 786443, metadata !1, metadata !637, i32 885, i32 31, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!640 = metadata !{i32 887, i32 2, metadata !639, null}
!641 = metadata !{i32 888, i32 3, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !637, i32 887, i32 9, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!643 = metadata !{i32 786688, metadata !92, metadata !"Loop16", metadata !5, i32 890, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Loop16] [line 890]
!644 = metadata !{i32 890, i32 6, metadata !92, null}
!645 = metadata !{i32 890, i32 2, metadata !92, null}
!646 = metadata !{i32 892, i32 6, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !92, i32 892, i32 6, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!648 = metadata !{i32 894, i32 3, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !647, i32 892, i32 25, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!650 = metadata !{i32 896, i32 3, metadata !649, null}
!651 = metadata !{i32 899, i32 2, metadata !92, null}
!652 = metadata !{i32 904, i32 7, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !92, i32 904, i32 2, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!654 = metadata !{i32 904, i32 7, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !656, i32 904, i32 7, i32 2, i32 181} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!656 = metadata !{i32 786443, metadata !1, metadata !653, i32 904, i32 7, i32 1, i32 180} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!657 = metadata !{i32 905, i32 7, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !659, i32 905, i32 7, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!659 = metadata !{i32 786443, metadata !1, metadata !653, i32 904, i32 34, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!660 = metadata !{i32 906, i32 8, metadata !661, null}
!661 = metadata !{i32 786443, metadata !1, metadata !662, i32 906, i32 8, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!662 = metadata !{i32 786443, metadata !1, metadata !658, i32 905, i32 25, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!663 = metadata !{i32 908, i32 5, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !661, i32 906, i32 40, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!665 = metadata !{i32 911, i32 5, metadata !664, null}
!666 = metadata !{i32 913, i32 3, metadata !662, null}
!667 = metadata !{i32 914, i32 2, metadata !659, null}
!668 = metadata !{i32 904, i32 29, metadata !653, null}
!669 = metadata !{i32 916, i32 7, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !92, i32 916, i32 2, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!671 = metadata !{i32 916, i32 7, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !673, i32 916, i32 7, i32 2, i32 185} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!673 = metadata !{i32 786443, metadata !1, metadata !670, i32 916, i32 7, i32 1, i32 182} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!674 = metadata !{i32 786688, metadata !675, metadata !"BdPtr", metadata !5, i32 917, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BdPtr] [line 917]
!675 = metadata !{i32 786443, metadata !1, metadata !670, i32 916, i32 44, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!676 = metadata !{i32 917, i32 16, metadata !675, null}
!677 = metadata !{i32 917, i32 3, metadata !675, null}
!678 = metadata !{i32 920, i32 7, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !675, i32 920, i32 7, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!680 = metadata !{i32 921, i32 4, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !679, i32 920, i32 23, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!682 = metadata !{i32 922, i32 3, metadata !681, null}
!683 = metadata !{i32 924, i32 8, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !685, i32 924, i32 8, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!685 = metadata !{i32 786443, metadata !1, metadata !679, i32 923, i32 8, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!686 = metadata !{i32 924, i32 8, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !684, i32 924, i32 8, i32 1, i32 183} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!688 = metadata !{i32 925, i32 5, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !690, i32 925, i32 5, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!690 = metadata !{i32 786443, metadata !1, metadata !684, i32 924, i32 38, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!691 = metadata !{i32 926, i32 5, metadata !690, null}
!692 = metadata !{i32 927, i32 5, metadata !690, null}
!693 = metadata !{i32 928, i32 4, metadata !690, null}
!694 = metadata !{i32 930, i32 8, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !685, i32 930, i32 8, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!696 = metadata !{i32 933, i32 5, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !695, i32 930, i32 33, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!698 = metadata !{i32 938, i32 5, metadata !697, null}
!699 = metadata !{i32 942, i32 4, metadata !697, null}
!700 = metadata !{i32 943, i32 5, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !695, i32 942, i32 11, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!702 = metadata !{i32 950, i32 8, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !685, i32 950, i32 8, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!704 = metadata !{i32 950, i32 8, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !703, i32 950, i32 8, i32 1, i32 184} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!706 = metadata !{i32 951, i32 5, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !703, i32 951, i32 5, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!708 = metadata !{i32 953, i32 2, metadata !675, null}
!709 = metadata !{i32 916, i32 29, metadata !670, null}
!710 = metadata !{i32 955, i32 2, metadata !92, null}
!711 = metadata !{i32 956, i32 1, metadata !92, null}
!712 = metadata !{i32 786689, metadata !96, metadata !"Channel", metadata !5, i32 16778189, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 973]
!713 = metadata !{i32 973, i32 45, metadata !96, null}
!714 = metadata !{i32 786688, metadata !96, metadata !"CrBits", metadata !5, i32 975, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 975]
!715 = metadata !{i32 975, i32 6, metadata !96, null}
!716 = metadata !{i32 977, i32 6, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !96, i32 977, i32 6, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!718 = metadata !{i32 979, i32 3, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !717, i32 977, i32 25, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!720 = metadata !{i32 981, i32 3, metadata !719, null}
!721 = metadata !{i32 984, i32 6, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !96, i32 984, i32 6, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!723 = metadata !{i32 984, i32 24, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !722, i32 984, i32 24, i32 1, i32 186} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!725 = metadata !{i32 987, i32 3, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !722, i32 984, i32 57, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!727 = metadata !{i32 989, i32 3, metadata !726, null}
!728 = metadata !{i32 995, i32 7, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !96, i32 995, i32 6, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!730 = metadata !{i32 997, i32 7, metadata !731, null}
!731 = metadata !{i32 786443, metadata !1, metadata !732, i32 997, i32 7, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!732 = metadata !{i32 786443, metadata !1, metadata !729, i32 995, i32 43, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!733 = metadata !{i32 1002, i32 4, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !731, i32 997, i32 23, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!735 = metadata !{i32 1004, i32 3, metadata !734, null}
!736 = metadata !{i32 1008, i32 12, metadata !732, null}
!737 = metadata !{i32 1011, i32 12, metadata !732, null}
!738 = metadata !{i32 1014, i32 3, metadata !732, null}
!739 = metadata !{i32 1017, i32 2, metadata !732, null}
!740 = metadata !{i32 1019, i32 6, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !96, i32 1019, i32 6, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!742 = metadata !{i32 1025, i32 7, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 1025, i32 7, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!744 = metadata !{i32 786443, metadata !1, metadata !741, i32 1019, i32 42, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!745 = metadata !{i32 1030, i32 4, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !743, i32 1025, i32 23, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!747 = metadata !{i32 1032, i32 3, metadata !746, null}
!748 = metadata !{i32 1037, i32 4, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !743, i32 1033, i32 8, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!750 = metadata !{i32 1042, i32 3, metadata !744, null}
!751 = metadata !{i32 1046, i32 7, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !741, i32 1044, i32 7, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!753 = metadata !{i32 1049, i32 3, metadata !752, null}
!754 = metadata !{i32 1051, i32 1, metadata !96, null}
!755 = metadata !{i32 786689, metadata !126, metadata !"BdPtr", metadata !5, i32 16778656, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdPtr] [line 1440]
!756 = metadata !{i32 1440, i32 45, metadata !126, null}
!757 = metadata !{i32 786689, metadata !126, metadata !"Vsize", metadata !5, i32 33555872, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Vsize] [line 1440]
!758 = metadata !{i32 1440, i32 56, metadata !126, null}
!759 = metadata !{i32 1442, i32 6, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !126, i32 1442, i32 6, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!761 = metadata !{i32 1442, i32 6, metadata !762, null}
!762 = metadata !{i32 786443, metadata !1, metadata !760, i32 1442, i32 6, i32 1, i32 187} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!763 = metadata !{i32 1444, i32 3, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !760, i32 1442, i32 53, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!765 = metadata !{i32 1446, i32 3, metadata !764, null}
!766 = metadata !{i32 1449, i32 2, metadata !126, null}
!767 = metadata !{i32 1450, i32 2, metadata !126, null}
!768 = metadata !{i32 1451, i32 1, metadata !126, null}
!769 = metadata !{i32 786689, metadata !125, metadata !"BdPtr", metadata !5, i32 16778681, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdPtr] [line 1465]
!770 = metadata !{i32 1465, i32 45, metadata !125, null}
!771 = metadata !{i32 786689, metadata !125, metadata !"Hsize", metadata !5, i32 33555897, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Hsize] [line 1465]
!772 = metadata !{i32 1465, i32 56, metadata !125, null}
!773 = metadata !{i32 1467, i32 6, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !125, i32 1467, i32 6, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!775 = metadata !{i32 1467, i32 6, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !774, i32 1467, i32 6, i32 1, i32 188} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!777 = metadata !{i32 1469, i32 3, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !774, i32 1467, i32 53, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!779 = metadata !{i32 1471, i32 3, metadata !778, null}
!780 = metadata !{i32 1474, i32 2, metadata !125, null}
!781 = metadata !{i32 1475, i32 2, metadata !125, null}
!782 = metadata !{i32 1476, i32 1, metadata !125, null}
!783 = metadata !{i32 786689, metadata !124, metadata !"BdPtr", metadata !5, i32 16778706, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdPtr] [line 1490]
!784 = metadata !{i32 1490, i32 46, metadata !124, null}
!785 = metadata !{i32 786689, metadata !124, metadata !"Stride", metadata !5, i32 33555922, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Stride] [line 1490]
!786 = metadata !{i32 1490, i32 57, metadata !124, null}
!787 = metadata !{i32 786688, metadata !124, metadata !"Bits", metadata !5, i32 1492, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bits] [line 1492]
!788 = metadata !{i32 1492, i32 6, metadata !124, null}
!789 = metadata !{i32 1494, i32 6, metadata !790, null}
!790 = metadata !{i32 786443, metadata !1, metadata !124, i32 1494, i32 6, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!791 = metadata !{i32 1494, i32 6, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !790, i32 1494, i32 6, i32 1, i32 189} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!793 = metadata !{i32 1496, i32 3, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !790, i32 1494, i32 56, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!795 = metadata !{i32 1498, i32 3, metadata !794, null}
!796 = metadata !{i32 1501, i32 9, metadata !124, null}
!797 = metadata !{i32 1504, i32 2, metadata !124, null}
!798 = metadata !{i32 1506, i32 2, metadata !124, null}
!799 = metadata !{i32 1507, i32 1, metadata !124, null}
!800 = metadata !{i32 786689, metadata !114, metadata !"BdPtr", metadata !5, i32 16778737, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdPtr] [line 1521]
!801 = metadata !{i32 1521, i32 46, metadata !114, null}
!802 = metadata !{i32 786689, metadata !114, metadata !"FrmDly", metadata !5, i32 33555953, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrmDly] [line 1521]
!803 = metadata !{i32 1521, i32 57, metadata !114, null}
!804 = metadata !{i32 786688, metadata !114, metadata !"Bits", metadata !5, i32 1523, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bits] [line 1523]
!805 = metadata !{i32 1523, i32 6, metadata !114, null}
!806 = metadata !{i32 1525, i32 6, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !114, i32 1525, i32 6, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!808 = metadata !{i32 1525, i32 6, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !807, i32 1525, i32 6, i32 1, i32 190} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!810 = metadata !{i32 1527, i32 3, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !807, i32 1525, i32 54, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!812 = metadata !{i32 1529, i32 3, metadata !811, null}
!813 = metadata !{i32 1532, i32 9, metadata !114, null}
!814 = metadata !{i32 1535, i32 2, metadata !114, null}
!815 = metadata !{i32 1538, i32 2, metadata !114, null}
!816 = metadata !{i32 1539, i32 1, metadata !114, null}
!817 = metadata !{i32 786689, metadata !127, metadata !"BdPtr", metadata !5, i32 16778637, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdPtr] [line 1421]
!818 = metadata !{i32 1421, i32 45, metadata !127, null}
!819 = metadata !{i32 786689, metadata !127, metadata !"Addr", metadata !5, i32 33555853, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 1421]
!820 = metadata !{i32 1421, i32 56, metadata !127, null}
!821 = metadata !{i32 1423, i32 2, metadata !127, null}
!822 = metadata !{i32 1425, i32 2, metadata !127, null}
!823 = metadata !{i32 786689, metadata !97, metadata !"Channel", metadata !5, i32 16778279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1063]
!824 = metadata !{i32 1063, i32 45, metadata !97, null}
!825 = metadata !{i32 786688, metadata !97, metadata !"CrBits", metadata !5, i32 1065, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 1065]
!826 = metadata !{i32 1065, i32 6, metadata !97, null}
!827 = metadata !{i32 1067, i32 7, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !97, i32 1067, i32 6, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!829 = metadata !{i32 1068, i32 3, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !828, i32 1067, i32 43, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!831 = metadata !{i32 1073, i32 11, metadata !97, null}
!832 = metadata !{i32 1076, i32 2, metadata !97, null}
!833 = metadata !{i32 1078, i32 2, metadata !97, null}
!834 = metadata !{i32 1079, i32 1, metadata !97, null}
!835 = metadata !{i32 786689, metadata !98, metadata !"Channel", metadata !5, i32 16778307, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1091]
!836 = metadata !{i32 1091, i32 53, metadata !98, null}
!837 = metadata !{i32 1102, i32 2, metadata !98, null}
!838 = metadata !{i32 1104, i32 6, metadata !98, null}
!839 = metadata !{i32 1103, i32 2, metadata !98, null}
!840 = metadata !{i32 1106, i32 6, metadata !98, null}
!841 = metadata !{i32 1105, i32 2, metadata !98, null}
!842 = metadata !{i32 1108, i32 6, metadata !98, null}
!843 = metadata !{i32 1107, i32 2, metadata !98, null}
!844 = metadata !{i32 1110, i32 6, metadata !98, null}
!845 = metadata !{i32 1109, i32 2, metadata !98, null}
!846 = metadata !{i32 1111, i32 2, metadata !98, null}
!847 = metadata !{i32 786689, metadata !99, metadata !"Channel", metadata !5, i32 16778345, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1129]
!848 = metadata !{i32 1129, i32 49, metadata !99, null}
!849 = metadata !{i32 786689, metadata !99, metadata !"FrmCnt", metadata !5, i32 33555561, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrmCnt] [line 1129]
!850 = metadata !{i32 1129, i32 61, metadata !99, null}
!851 = metadata !{i32 786689, metadata !99, metadata !"DlyCnt", metadata !5, i32 50332777, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DlyCnt] [line 1129]
!852 = metadata !{i32 1129, i32 72, metadata !99, null}
!853 = metadata !{i32 786688, metadata !99, metadata !"CrBits", metadata !5, i32 1131, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 1131]
!854 = metadata !{i32 1131, i32 6, metadata !99, null}
!855 = metadata !{i32 1133, i32 6, metadata !856, null}
!856 = metadata !{i32 786443, metadata !1, metadata !99, i32 1133, i32 6, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!857 = metadata !{i32 1135, i32 5, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !856, i32 1133, i32 25, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!859 = metadata !{i32 1137, i32 3, metadata !858, null}
!860 = metadata !{i32 1140, i32 6, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !99, i32 1140, i32 6, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!862 = metadata !{i32 1142, i32 3, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !861, i32 1140, i32 15, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!864 = metadata !{i32 1144, i32 3, metadata !863, null}
!865 = metadata !{i32 1147, i32 11, metadata !99, null}
!866 = metadata !{i32 1150, i32 6, metadata !867, null}
!867 = metadata !{i32 786443, metadata !1, metadata !99, i32 1150, i32 6, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!868 = metadata !{i32 1151, i32 3, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !867, i32 1150, i32 63, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!870 = metadata !{i32 1152, i32 2, metadata !869, null}
!871 = metadata !{i32 1154, i32 3, metadata !872, null}
!872 = metadata !{i32 786443, metadata !1, metadata !867, i32 1152, i32 9, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!873 = metadata !{i32 1155, i32 3, metadata !872, null}
!874 = metadata !{i32 1157, i32 6, metadata !875, null}
!875 = metadata !{i32 786443, metadata !1, metadata !99, i32 1157, i32 6, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!876 = metadata !{i32 1158, i32 3, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !875, i32 1157, i32 63, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!878 = metadata !{i32 1159, i32 2, metadata !877, null}
!879 = metadata !{i32 1161, i32 3, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !875, i32 1159, i32 9, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!881 = metadata !{i32 1162, i32 3, metadata !880, null}
!882 = metadata !{i32 1165, i32 2, metadata !99, null}
!883 = metadata !{i32 1168, i32 2, metadata !99, null}
!884 = metadata !{i32 1169, i32 1, metadata !99, null}
!885 = metadata !{i32 786689, metadata !105, metadata !"Channel", metadata !5, i32 16778401, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1185]
!886 = metadata !{i32 1185, i32 50, metadata !105, null}
!887 = metadata !{i32 786689, metadata !105, metadata !"FrmCnt", metadata !5, i32 33555617, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrmCnt] [line 1185]
!888 = metadata !{i32 1185, i32 63, metadata !105, null}
!889 = metadata !{i32 786689, metadata !105, metadata !"DlyCnt", metadata !5, i32 50332834, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DlyCnt] [line 1186]
!890 = metadata !{i32 1186, i32 13, metadata !105, null}
!891 = metadata !{i32 786688, metadata !105, metadata !"CrBits", metadata !5, i32 1188, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 1188]
!892 = metadata !{i32 1188, i32 6, metadata !105, null}
!893 = metadata !{i32 1190, i32 6, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !105, i32 1190, i32 6, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!895 = metadata !{i32 1192, i32 3, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !894, i32 1190, i32 25, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!897 = metadata !{i32 1194, i32 3, metadata !896, null}
!898 = metadata !{i32 1195, i32 3, metadata !896, null}
!899 = metadata !{i32 1198, i32 11, metadata !105, null}
!900 = metadata !{i32 1200, i32 6, metadata !901, null}
!901 = metadata !{i32 786443, metadata !1, metadata !105, i32 1200, i32 6, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!902 = metadata !{i32 1201, i32 3, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !901, i32 1200, i32 63, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!904 = metadata !{i32 1203, i32 2, metadata !903, null}
!905 = metadata !{i32 1205, i32 3, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !901, i32 1203, i32 9, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!907 = metadata !{i32 1207, i32 6, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !105, i32 1207, i32 6, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!909 = metadata !{i32 1208, i32 3, metadata !910, null}
!910 = metadata !{i32 786443, metadata !1, metadata !908, i32 1207, i32 63, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!911 = metadata !{i32 1210, i32 2, metadata !910, null}
!912 = metadata !{i32 1212, i32 3, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !908, i32 1210, i32 9, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!914 = metadata !{i32 1216, i32 2, metadata !105, null}
!915 = metadata !{i32 1217, i32 1, metadata !105, null}
!916 = metadata !{i32 786689, metadata !109, metadata !"Channel", metadata !5, i32 16778447, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1231]
!917 = metadata !{i32 1231, i32 51, metadata !109, null}
!918 = metadata !{i32 786689, metadata !109, metadata !"IntrType", metadata !5, i32 33555663, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [IntrType] [line 1231]
!919 = metadata !{i32 1231, i32 64, metadata !109, null}
!920 = metadata !{i32 786688, metadata !109, metadata !"CrBits", metadata !5, i32 1233, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 1233]
!921 = metadata !{i32 1233, i32 6, metadata !109, null}
!922 = metadata !{i32 1235, i32 6, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !109, i32 1235, i32 6, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!924 = metadata !{i32 1237, i32 3, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !923, i32 1235, i32 47, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!926 = metadata !{i32 1240, i32 3, metadata !925, null}
!927 = metadata !{i32 1243, i32 11, metadata !109, null}
!928 = metadata !{i32 1246, i32 2, metadata !109, null}
!929 = metadata !{i32 1248, i32 2, metadata !109, null}
!930 = metadata !{i32 1251, i32 2, metadata !109, null}
!931 = metadata !{i32 1252, i32 1, metadata !109, null}
!932 = metadata !{i32 786689, metadata !110, metadata !"Channel", metadata !5, i32 16778482, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1266]
!933 = metadata !{i32 1266, i32 52, metadata !110, null}
!934 = metadata !{i32 786689, metadata !110, metadata !"IntrType", metadata !5, i32 33555698, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [IntrType] [line 1266]
!935 = metadata !{i32 1266, i32 65, metadata !110, null}
!936 = metadata !{i32 786688, metadata !110, metadata !"CrBits", metadata !5, i32 1268, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CrBits] [line 1268]
!937 = metadata !{i32 1268, i32 6, metadata !110, null}
!938 = metadata !{i32 786688, metadata !110, metadata !"IrqBits", metadata !5, i32 1269, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [IrqBits] [line 1269]
!939 = metadata !{i32 1269, i32 6, metadata !110, null}
!940 = metadata !{i32 1271, i32 6, metadata !941, null}
!941 = metadata !{i32 786443, metadata !1, metadata !110, i32 1271, i32 6, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!942 = metadata !{i32 1273, i32 3, metadata !943, null}
!943 = metadata !{i32 786443, metadata !1, metadata !941, i32 1271, i32 47, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!944 = metadata !{i32 1276, i32 3, metadata !943, null}
!945 = metadata !{i32 1279, i32 11, metadata !110, null}
!946 = metadata !{i32 1281, i32 2, metadata !110, null}
!947 = metadata !{i32 1284, i32 2, metadata !110, null}
!948 = metadata !{i32 1286, i32 2, metadata !110, null}
!949 = metadata !{i32 1289, i32 2, metadata !110, null}
!950 = metadata !{i32 1290, i32 1, metadata !110, null}
!951 = metadata !{i32 786689, metadata !111, metadata !"Channel", metadata !5, i32 16778518, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1302]
!952 = metadata !{i32 1302, i32 54, metadata !111, null}
!953 = metadata !{i32 1304, i32 10, metadata !111, null}
!954 = metadata !{i32 786689, metadata !112, metadata !"Channel", metadata !5, i32 16778536, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1320]
!955 = metadata !{i32 1320, i32 50, metadata !112, null}
!956 = metadata !{i32 786689, metadata !112, metadata !"IntrType", metadata !5, i32 33555752, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [IntrType] [line 1320]
!957 = metadata !{i32 1320, i32 63, metadata !112, null}
!958 = metadata !{i32 1323, i32 6, metadata !959, null}
!959 = metadata !{i32 786443, metadata !1, metadata !112, i32 1323, i32 6, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!960 = metadata !{i32 1325, i32 3, metadata !961, null}
!961 = metadata !{i32 786443, metadata !1, metadata !959, i32 1323, i32 47, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_channel.c]
!962 = metadata !{i32 1328, i32 3, metadata !961, null}
!963 = metadata !{i32 1333, i32 2, metadata !112, null}
!964 = metadata !{i32 1336, i32 2, metadata !112, null}
!965 = metadata !{i32 1337, i32 1, metadata !112, null}
!966 = metadata !{i32 786689, metadata !113, metadata !"Channel", metadata !5, i32 16778565, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 1349]
!967 = metadata !{i32 1349, i32 54, metadata !113, null}
!968 = metadata !{i32 1351, i32 10, metadata !113, null}
!969 = metadata !{i32 786689, metadata !121, metadata !"BdPtr", metadata !5, i32 16778583, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdPtr] [line 1367]
!970 = metadata !{i32 1367, i32 41, metadata !121, null}
!971 = metadata !{i32 786689, metadata !121, metadata !"Offset", metadata !5, i32 33555799, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Offset] [line 1367]
!972 = metadata !{i32 1367, i32 52, metadata !121, null}
!973 = metadata !{i32 1369, i32 2, metadata !121, null}
!974 = metadata !{i32 786689, metadata !118, metadata !"BdPtr", metadata !5, i32 16778600, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BdPtr] [line 1384]
!975 = metadata !{i32 1384, i32 43, metadata !118, null}
!976 = metadata !{i32 786689, metadata !118, metadata !"Offset", metadata !5, i32 33555816, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Offset] [line 1384]
!977 = metadata !{i32 1384, i32 54, metadata !118, null}
!978 = metadata !{i32 786689, metadata !118, metadata !"Value", metadata !5, i32 50333032, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Value] [line 1384]
!979 = metadata !{i32 1384, i32 66, metadata !118, null}
!980 = metadata !{i32 1386, i32 2, metadata !118, null}
!981 = metadata !{i32 1388, i32 2, metadata !118, null}
