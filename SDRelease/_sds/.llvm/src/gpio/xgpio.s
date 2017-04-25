; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XGpio = type { i32, i32, i32, i32 }
%struct.XGpio_Config = type { i16, i32, i32, i32 }

@Xil_AssertStatus = external global i32
@.str = private unnamed_addr constant [54 x i8] c"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c\00", align 1

; Function Attrs: nounwind
define i32 @XGpio_CfgInitialize(%struct.XGpio* %InstancePtr, %struct.XGpio_Config* %Config, i32 %EffectiveAddr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XGpio*, align 4
  %3 = alloca %struct.XGpio_Config*, align 4
  %4 = alloca i32, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %2}, metadata !64), !dbg !65
  store %struct.XGpio_Config* %Config, %struct.XGpio_Config** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio_Config** %3}, metadata !66), !dbg !67
  store i32 %EffectiveAddr, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !68), !dbg !69
  %5 = load %struct.XGpio** %2, align 4, !dbg !70
  %6 = icmp ne %struct.XGpio* %5, null, !dbg !70
  br i1 %6, label %7, label %8, !dbg !70

; <label>:7                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !73
  br label %9, !dbg !73

; <label>:8                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 122), !dbg !76
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !76
  store i32 0, i32* %1, !dbg !76
  br label %25, !dbg !76

; <label>:9                                       ; preds = %7
  %10 = load i32* %4, align 4, !dbg !79
  %11 = load %struct.XGpio** %2, align 4, !dbg !79
  %12 = getelementptr inbounds %struct.XGpio* %11, i32 0, i32 0, !dbg !79
  store i32 %10, i32* %12, align 4, !dbg !79
  %13 = load %struct.XGpio_Config** %3, align 4, !dbg !80
  %14 = getelementptr inbounds %struct.XGpio_Config* %13, i32 0, i32 2, !dbg !80
  %15 = load i32* %14, align 4, !dbg !80
  %16 = load %struct.XGpio** %2, align 4, !dbg !80
  %17 = getelementptr inbounds %struct.XGpio* %16, i32 0, i32 2, !dbg !80
  store i32 %15, i32* %17, align 4, !dbg !80
  %18 = load %struct.XGpio_Config** %3, align 4, !dbg !81
  %19 = getelementptr inbounds %struct.XGpio_Config* %18, i32 0, i32 3, !dbg !81
  %20 = load i32* %19, align 4, !dbg !81
  %21 = load %struct.XGpio** %2, align 4, !dbg !81
  %22 = getelementptr inbounds %struct.XGpio* %21, i32 0, i32 3, !dbg !81
  store i32 %20, i32* %22, align 4, !dbg !81
  %23 = load %struct.XGpio** %2, align 4, !dbg !82
  %24 = getelementptr inbounds %struct.XGpio* %23, i32 0, i32 1, !dbg !82
  store i32 286331153, i32* %24, align 4, !dbg !82
  store i32 0, i32* %1, !dbg !83
  br label %25, !dbg !83

; <label>:25                                      ; preds = %9, %8
  %26 = load i32* %1, !dbg !84
  ret i32 %26, !dbg !84
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @Xil_Assert(i8*, i32) #2

; Function Attrs: nounwind
define void @XGpio_SetDataDirection(%struct.XGpio* %InstancePtr, i32 %Channel, i32 %DirectionMask) #0 {
  %1 = alloca %struct.XGpio*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %1}, metadata !85), !dbg !86
  store i32 %Channel, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !87), !dbg !88
  store i32 %DirectionMask, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !89), !dbg !90
  %4 = load %struct.XGpio** %1, align 4, !dbg !91
  %5 = icmp ne %struct.XGpio* %4, null, !dbg !91
  br i1 %5, label %6, label %7, !dbg !91

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !94
  br label %8, !dbg !94

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 165), !dbg !97
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !97
  br label %38, !dbg !97

; <label>:8                                       ; preds = %6
  %9 = load %struct.XGpio** %1, align 4, !dbg !100
  %10 = getelementptr inbounds %struct.XGpio* %9, i32 0, i32 1, !dbg !100
  %11 = load i32* %10, align 4, !dbg !100
  %12 = icmp eq i32 %11, 286331153, !dbg !100
  br i1 %12, label %13, label %14, !dbg !100

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !103
  br label %15, !dbg !103

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 166), !dbg !106
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !106
  br label %38, !dbg !106

; <label>:15                                      ; preds = %13
  %16 = load i32* %2, align 4, !dbg !109
  %17 = icmp eq i32 %16, 1, !dbg !109
  br i1 %17, label %26, label %18, !dbg !109

; <label>:18                                      ; preds = %15
  %19 = load i32* %2, align 4, !dbg !112
  %20 = icmp eq i32 %19, 2, !dbg !112
  br i1 %20, label %21, label %27, !dbg !112

; <label>:21                                      ; preds = %18
  %22 = load %struct.XGpio** %1, align 4, !dbg !114
  %23 = getelementptr inbounds %struct.XGpio* %22, i32 0, i32 3, !dbg !114
  %24 = load i32* %23, align 4, !dbg !114
  %25 = icmp eq i32 %24, 1, !dbg !114
  br i1 %25, label %26, label %27, !dbg !114

; <label>:26                                      ; preds = %21, %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !116
  br label %28, !dbg !116

; <label>:27                                      ; preds = %21, %18
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 168), !dbg !120
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !120
  br label %38, !dbg !120

; <label>:28                                      ; preds = %26
  %29 = load %struct.XGpio** %1, align 4, !dbg !124
  %30 = getelementptr inbounds %struct.XGpio* %29, i32 0, i32 0, !dbg !124
  %31 = load i32* %30, align 4, !dbg !124
  %32 = load i32* %2, align 4, !dbg !124
  %33 = sub i32 %32, 1, !dbg !124
  %34 = mul i32 %33, 8, !dbg !124
  %35 = add i32 %34, 4, !dbg !124
  %36 = add i32 %31, %35, !dbg !124
  %37 = load i32* %3, align 4, !dbg !124
  call void @Xil_Out32(i32 %36, i32 %37), !dbg !124
  br label %38, !dbg !125

; <label>:38                                      ; preds = %28, %27, %14, %7
  ret void, !dbg !126
}

declare void @Xil_Out32(i32, i32) #2

; Function Attrs: nounwind
define i32 @XGpio_GetDataDirection(%struct.XGpio* %InstancePtr, i32 %Channel) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XGpio*, align 4
  %3 = alloca i32, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %2}, metadata !128), !dbg !129
  store i32 %Channel, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !130), !dbg !131
  %4 = load %struct.XGpio** %2, align 4, !dbg !132
  %5 = icmp ne %struct.XGpio* %4, null, !dbg !132
  br i1 %5, label %6, label %7, !dbg !132

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !135
  br label %8, !dbg !135

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 195), !dbg !138
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !138
  store i32 0, i32* %1, !dbg !138
  br label %38, !dbg !138

; <label>:8                                       ; preds = %6
  %9 = load %struct.XGpio** %2, align 4, !dbg !141
  %10 = getelementptr inbounds %struct.XGpio* %9, i32 0, i32 1, !dbg !141
  %11 = load i32* %10, align 4, !dbg !141
  %12 = icmp eq i32 %11, 286331153, !dbg !141
  br i1 %12, label %13, label %14, !dbg !141

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !144
  br label %15, !dbg !144

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 196), !dbg !147
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !147
  store i32 0, i32* %1, !dbg !147
  br label %38, !dbg !147

; <label>:15                                      ; preds = %13
  %16 = load i32* %3, align 4, !dbg !150
  %17 = icmp eq i32 %16, 1, !dbg !150
  br i1 %17, label %26, label %18, !dbg !150

; <label>:18                                      ; preds = %15
  %19 = load i32* %3, align 4, !dbg !153
  %20 = icmp eq i32 %19, 2, !dbg !153
  br i1 %20, label %21, label %27, !dbg !153

; <label>:21                                      ; preds = %18
  %22 = load %struct.XGpio** %2, align 4, !dbg !155
  %23 = getelementptr inbounds %struct.XGpio* %22, i32 0, i32 3, !dbg !155
  %24 = load i32* %23, align 4, !dbg !155
  %25 = icmp eq i32 %24, 1, !dbg !155
  br i1 %25, label %26, label %27, !dbg !155

; <label>:26                                      ; preds = %21, %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !157
  br label %28, !dbg !157

; <label>:27                                      ; preds = %21, %18
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 199), !dbg !161
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !161
  store i32 0, i32* %1, !dbg !161
  br label %38, !dbg !161

; <label>:28                                      ; preds = %26
  %29 = load %struct.XGpio** %2, align 4, !dbg !165
  %30 = getelementptr inbounds %struct.XGpio* %29, i32 0, i32 0, !dbg !165
  %31 = load i32* %30, align 4, !dbg !165
  %32 = load i32* %3, align 4, !dbg !165
  %33 = sub i32 %32, 1, !dbg !165
  %34 = mul i32 %33, 8, !dbg !165
  %35 = add i32 %34, 4, !dbg !165
  %36 = add i32 %31, %35, !dbg !165
  %37 = call i32 @Xil_In32(i32 %36), !dbg !165
  store i32 %37, i32* %1, !dbg !165
  br label %38, !dbg !165

; <label>:38                                      ; preds = %28, %27, %14, %7
  %39 = load i32* %1, !dbg !166
  ret i32 %39, !dbg !166
}

declare i32 @Xil_In32(i32) #2

; Function Attrs: nounwind
define i32 @XGpio_DiscreteRead(%struct.XGpio* %InstancePtr, i32 %Channel) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XGpio*, align 4
  %3 = alloca i32, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %2}, metadata !167), !dbg !168
  store i32 %Channel, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !169), !dbg !170
  %4 = load %struct.XGpio** %2, align 4, !dbg !171
  %5 = icmp ne %struct.XGpio* %4, null, !dbg !171
  br i1 %5, label %6, label %7, !dbg !171

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !174
  br label %8, !dbg !174

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 221), !dbg !177
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !177
  store i32 0, i32* %1, !dbg !177
  br label %38, !dbg !177

; <label>:8                                       ; preds = %6
  %9 = load %struct.XGpio** %2, align 4, !dbg !180
  %10 = getelementptr inbounds %struct.XGpio* %9, i32 0, i32 1, !dbg !180
  %11 = load i32* %10, align 4, !dbg !180
  %12 = icmp eq i32 %11, 286331153, !dbg !180
  br i1 %12, label %13, label %14, !dbg !180

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !183
  br label %15, !dbg !183

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 222), !dbg !186
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !186
  store i32 0, i32* %1, !dbg !186
  br label %38, !dbg !186

; <label>:15                                      ; preds = %13
  %16 = load i32* %3, align 4, !dbg !189
  %17 = icmp eq i32 %16, 1, !dbg !189
  br i1 %17, label %26, label %18, !dbg !189

; <label>:18                                      ; preds = %15
  %19 = load i32* %3, align 4, !dbg !192
  %20 = icmp eq i32 %19, 2, !dbg !192
  br i1 %20, label %21, label %27, !dbg !192

; <label>:21                                      ; preds = %18
  %22 = load %struct.XGpio** %2, align 4, !dbg !194
  %23 = getelementptr inbounds %struct.XGpio* %22, i32 0, i32 3, !dbg !194
  %24 = load i32* %23, align 4, !dbg !194
  %25 = icmp eq i32 %24, 1, !dbg !194
  br i1 %25, label %26, label %27, !dbg !194

; <label>:26                                      ; preds = %21, %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !196
  br label %28, !dbg !196

; <label>:27                                      ; preds = %21, %18
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 224), !dbg !200
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !200
  store i32 0, i32* %1, !dbg !200
  br label %38, !dbg !200

; <label>:28                                      ; preds = %26
  %29 = load %struct.XGpio** %2, align 4, !dbg !204
  %30 = getelementptr inbounds %struct.XGpio* %29, i32 0, i32 0, !dbg !204
  %31 = load i32* %30, align 4, !dbg !204
  %32 = load i32* %3, align 4, !dbg !204
  %33 = sub i32 %32, 1, !dbg !204
  %34 = mul i32 %33, 8, !dbg !204
  %35 = add i32 %34, 0, !dbg !204
  %36 = add i32 %31, %35, !dbg !204
  %37 = call i32 @Xil_In32(i32 %36), !dbg !204
  store i32 %37, i32* %1, !dbg !204
  br label %38, !dbg !204

; <label>:38                                      ; preds = %28, %27, %14, %7
  %39 = load i32* %1, !dbg !205
  ret i32 %39, !dbg !205
}

; Function Attrs: nounwind
define void @XGpio_DiscreteWrite(%struct.XGpio* %InstancePtr, i32 %Channel, i32 %Data) #0 {
  %1 = alloca %struct.XGpio*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %1}, metadata !206), !dbg !207
  store i32 %Channel, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !208), !dbg !209
  store i32 %Data, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !210), !dbg !211
  %4 = load %struct.XGpio** %1, align 4, !dbg !212
  %5 = icmp ne %struct.XGpio* %4, null, !dbg !212
  br i1 %5, label %6, label %7, !dbg !212

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !215
  br label %8, !dbg !215

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 249), !dbg !218
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !218
  br label %38, !dbg !218

; <label>:8                                       ; preds = %6
  %9 = load %struct.XGpio** %1, align 4, !dbg !221
  %10 = getelementptr inbounds %struct.XGpio* %9, i32 0, i32 1, !dbg !221
  %11 = load i32* %10, align 4, !dbg !221
  %12 = icmp eq i32 %11, 286331153, !dbg !221
  br i1 %12, label %13, label %14, !dbg !221

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !224
  br label %15, !dbg !224

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 250), !dbg !227
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !227
  br label %38, !dbg !227

; <label>:15                                      ; preds = %13
  %16 = load i32* %2, align 4, !dbg !230
  %17 = icmp eq i32 %16, 1, !dbg !230
  br i1 %17, label %26, label %18, !dbg !230

; <label>:18                                      ; preds = %15
  %19 = load i32* %2, align 4, !dbg !233
  %20 = icmp eq i32 %19, 2, !dbg !233
  br i1 %20, label %21, label %27, !dbg !233

; <label>:21                                      ; preds = %18
  %22 = load %struct.XGpio** %1, align 4, !dbg !235
  %23 = getelementptr inbounds %struct.XGpio* %22, i32 0, i32 3, !dbg !235
  %24 = load i32* %23, align 4, !dbg !235
  %25 = icmp eq i32 %24, 1, !dbg !235
  br i1 %25, label %26, label %27, !dbg !235

; <label>:26                                      ; preds = %21, %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !237
  br label %28, !dbg !237

; <label>:27                                      ; preds = %21, %18
  call void @Xil_Assert(i8* getelementptr inbounds ([54 x i8]* @.str, i32 0, i32 0), i32 252), !dbg !241
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !241
  br label %38, !dbg !241

; <label>:28                                      ; preds = %26
  %29 = load %struct.XGpio** %1, align 4, !dbg !245
  %30 = getelementptr inbounds %struct.XGpio* %29, i32 0, i32 0, !dbg !245
  %31 = load i32* %30, align 4, !dbg !245
  %32 = load i32* %2, align 4, !dbg !245
  %33 = sub i32 %32, 1, !dbg !245
  %34 = mul i32 %33, 8, !dbg !245
  %35 = add i32 %34, 0, !dbg !245
  %36 = add i32 %31, %35, !dbg !245
  %37 = load i32* %3, align 4, !dbg !245
  call void @Xil_Out32(i32 %36, i32 %37), !dbg !245
  br label %38, !dbg !246

; <label>:38                                      ; preds = %28, %27, %14, %7
  ret void, !dbg !247
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !51, !55, !47}
!xidane.function_declaration_filename = !{!42, !56, !44, !57, !46, !56, !48, !58, !50, !56, !52, !58, !54, !56, !55, !56}
!xidane.ExternC = !{!42, !44, !46, !48, !50, !52, !54, !55}
!llvm.module.flags = !{!59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !34, metadata !37, metadata !40, metadata !41}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_CfgInitialize", metadata !"XGpio_CfgInitialize", metadata !"", i32 116, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XGpio*, %struct.XGpio_Config*, i32)* @XGpio_CfgInitialize, null, null, metadata !2, i32 118} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 118] [XGpio_CfgInitialize]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !23, metadata !15}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XGpio]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"XGpio", i32 147, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [XGpio] [line 147, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!12 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 142, i64 128, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 142, size 128, align 32, offset 0] [def] [from ]
!13 = metadata !{metadata !14, metadata !20, metadata !21, metadata !22}
!14 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"BaseAddress", i32 143, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [BaseAddress] [line 143, size 32, align 32, offset 0] [from u32]
!15 = metadata !{i32 786454, metadata !16, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!16 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!17 = metadata !{i32 786454, metadata !18, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!18 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!19 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!20 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"IsReady", i32 144, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [IsReady] [line 144, size 32, align 32, offset 32] [from u32]
!21 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"InterruptPresent", i32 145, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [InterruptPresent] [line 145, size 32, align 32, offset 64] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"IsDual", i32 146, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [IsDual] [line 146, size 32, align 32, offset 96] [from int]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XGpio_Config]
!24 = metadata !{i32 786454, metadata !11, null, metadata !"XGpio_Config", i32 135, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [XGpio_Config] [line 135, size 0, align 0, offset 0] [from ]
!25 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 130, i64 128, i64 32, i32 0, i32 0, null, metadata !26, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 130, size 128, align 32, offset 0] [def] [from ]
!26 = metadata !{metadata !27, metadata !31, metadata !32, metadata !33}
!27 = metadata !{i32 786445, metadata !11, metadata !25, metadata !"DeviceId", i32 131, i64 16, i64 16, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [DeviceId] [line 131, size 16, align 16, offset 0] [from u16]
!28 = metadata !{i32 786454, metadata !16, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!29 = metadata !{i32 786454, metadata !18, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!30 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!31 = metadata !{i32 786445, metadata !11, metadata !25, metadata !"BaseAddress", i32 132, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [BaseAddress] [line 132, size 32, align 32, offset 32] [from u32]
!32 = metadata !{i32 786445, metadata !11, metadata !25, metadata !"InterruptPresent", i32 133, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [InterruptPresent] [line 133, size 32, align 32, offset 64] [from int]
!33 = metadata !{i32 786445, metadata !11, metadata !25, metadata !"IsDual", i32 134, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [IsDual] [line 134, size 32, align 32, offset 96] [from int]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_SetDataDirection", metadata !"XGpio_SetDataDirection", metadata !"", i32 162, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XGpio*, i32, i32)* @XGpio_SetDataDirection, null, null, metadata !2, i32 164} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 164] [XGpio_SetDataDirection]
!35 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !9, metadata !19, metadata !15}
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_GetDataDirection", metadata !"XGpio_GetDataDirection", metadata !"", i32 193, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XGpio*, i32)* @XGpio_GetDataDirection, null, null, metadata !2, i32 194} ; [ DW_TAG_subprogram ] [line 193] [def] [scope 194] [XGpio_GetDataDirection]
!38 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !15, metadata !9, metadata !19}
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_DiscreteRead", metadata !"XGpio_DiscreteRead", metadata !"", i32 219, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XGpio*, i32)* @XGpio_DiscreteRead, null, null, metadata !2, i32 220} ; [ DW_TAG_subprogram ] [line 219] [def] [scope 220] [XGpio_DiscreteRead]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_DiscreteWrite", metadata !"XGpio_DiscreteWrite", metadata !"", i32 247, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XGpio*, i32, i32)* @XGpio_DiscreteWrite, null, null, metadata !2, i32 248} ; [ DW_TAG_subprogram ] [line 247] [def] [scope 248] [XGpio_DiscreteWrite]
!42 = metadata !{i32 (%struct.XGpio*, %struct.XGpio_Config*, i32)* @XGpio_CfgInitialize}
!43 = metadata !{metadata !"int.XGpio *.1.XGpio_Config *.1.u32.0"}
!44 = metadata !{void (i8*, i32)* @Xil_Assert}
!45 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!46 = metadata !{void (%struct.XGpio*, i32, i32)* @XGpio_SetDataDirection}
!47 = metadata !{metadata !"void.XGpio *.1.unsigned int.0.u32.0"}
!48 = metadata !{void (i32, i32)* @Xil_Out32}
!49 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!50 = metadata !{i32 (%struct.XGpio*, i32)* @XGpio_GetDataDirection}
!51 = metadata !{metadata !"u32.XGpio *.1.unsigned int.0"}
!52 = metadata !{i32 (i32)* @Xil_In32}
!53 = metadata !{metadata !"u32.INTPTR.0"}
!54 = metadata !{i32 (%struct.XGpio*, i32)* @XGpio_DiscreteRead}
!55 = metadata !{void (%struct.XGpio*, i32, i32)* @XGpio_DiscreteWrite}
!56 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.h"}
!57 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_assert.h"}
!58 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_io.h"}
!59 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!60 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!61 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!62 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!63 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!64 = metadata !{i32 786689, metadata !4, metadata !"InstancePtr", metadata !5, i32 16777332, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 116]
!65 = metadata !{i32 116, i32 33, metadata !4, null}
!66 = metadata !{i32 786689, metadata !4, metadata !"Config", metadata !5, i32 33554548, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Config] [line 116]
!67 = metadata !{i32 116, i32 61, metadata !4, null}
!68 = metadata !{i32 786689, metadata !4, metadata !"EffectiveAddr", metadata !5, i32 50331765, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [EffectiveAddr] [line 117]
!69 = metadata !{i32 117, i32 8, metadata !4, null}
!70 = metadata !{i32 122, i32 2, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !72, i32 122, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!72 = metadata !{i32 786443, metadata !1, metadata !4, i32 122, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!73 = metadata !{i32 122, i32 2, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 122, i32 2, i32 1, i32 52} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!75 = metadata !{i32 786443, metadata !1, metadata !71, i32 122, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!76 = metadata !{i32 122, i32 2, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 122, i32 2, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!78 = metadata !{i32 786443, metadata !1, metadata !71, i32 122, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!79 = metadata !{i32 130, i32 2, metadata !4, null}
!80 = metadata !{i32 133, i32 2, metadata !4, null}
!81 = metadata !{i32 134, i32 2, metadata !4, null}
!82 = metadata !{i32 139, i32 2, metadata !4, null}
!83 = metadata !{i32 140, i32 2, metadata !4, null}
!84 = metadata !{i32 141, i32 1, metadata !4, null}
!85 = metadata !{i32 786689, metadata !34, metadata !"InstancePtr", metadata !5, i32 16777378, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 162]
!86 = metadata !{i32 162, i32 37, metadata !34, null}
!87 = metadata !{i32 786689, metadata !34, metadata !"Channel", metadata !5, i32 33554594, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 162]
!88 = metadata !{i32 162, i32 59, metadata !34, null}
!89 = metadata !{i32 786689, metadata !34, metadata !"DirectionMask", metadata !5, i32 50331811, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DirectionMask] [line 163]
!90 = metadata !{i32 163, i32 12, metadata !34, null}
!91 = metadata !{i32 165, i32 2, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !93, i32 165, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!93 = metadata !{i32 786443, metadata !1, metadata !34, i32 165, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!94 = metadata !{i32 165, i32 2, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !96, i32 165, i32 2, i32 1, i32 54} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!96 = metadata !{i32 786443, metadata !1, metadata !92, i32 165, i32 2, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!97 = metadata !{i32 165, i32 2, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !99, i32 165, i32 2, i32 2, i32 55} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!99 = metadata !{i32 786443, metadata !1, metadata !92, i32 165, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!100 = metadata !{i32 166, i32 2, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !102, i32 166, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!102 = metadata !{i32 786443, metadata !1, metadata !34, i32 166, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!103 = metadata !{i32 166, i32 2, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !105, i32 166, i32 2, i32 1, i32 56} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!105 = metadata !{i32 786443, metadata !1, metadata !101, i32 166, i32 2, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!106 = metadata !{i32 166, i32 2, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !108, i32 166, i32 2, i32 2, i32 57} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!108 = metadata !{i32 786443, metadata !1, metadata !101, i32 166, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!109 = metadata !{i32 167, i32 2, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !111, i32 167, i32 2, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!111 = metadata !{i32 786443, metadata !1, metadata !34, i32 167, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!112 = metadata !{i32 167, i32 2, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !110, i32 167, i32 2, i32 2, i32 59} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!114 = metadata !{i32 167, i32 2, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !110, i32 167, i32 2, i32 3, i32 60} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!116 = metadata !{i32 167, i32 2, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !118, i32 167, i32 2, i32 5, i32 62} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!118 = metadata !{i32 786443, metadata !1, metadata !119, i32 167, i32 2, i32 1, i32 58} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!119 = metadata !{i32 786443, metadata !1, metadata !110, i32 167, i32 2, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!120 = metadata !{i32 167, i32 2, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !122, i32 167, i32 2, i32 6, i32 63} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!122 = metadata !{i32 786443, metadata !1, metadata !123, i32 167, i32 2, i32 4, i32 61} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!123 = metadata !{i32 786443, metadata !1, metadata !110, i32 167, i32 2, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!124 = metadata !{i32 170, i32 2, metadata !34, null}
!125 = metadata !{i32 173, i32 1, metadata !34, null}
!126 = metadata !{i32 173, i32 1, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !34, i32 173, i32 1, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!128 = metadata !{i32 786689, metadata !37, metadata !"InstancePtr", metadata !5, i32 16777409, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 193]
!129 = metadata !{i32 193, i32 35, metadata !37, null}
!130 = metadata !{i32 786689, metadata !37, metadata !"Channel", metadata !5, i32 33554625, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 193]
!131 = metadata !{i32 193, i32 57, metadata !37, null}
!132 = metadata !{i32 195, i32 2, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !134, i32 195, i32 2, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!134 = metadata !{i32 786443, metadata !1, metadata !37, i32 195, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!135 = metadata !{i32 195, i32 2, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !137, i32 195, i32 2, i32 1, i32 65} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!137 = metadata !{i32 786443, metadata !1, metadata !133, i32 195, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!138 = metadata !{i32 195, i32 2, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !140, i32 195, i32 2, i32 2, i32 66} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!140 = metadata !{i32 786443, metadata !1, metadata !133, i32 195, i32 2, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!141 = metadata !{i32 196, i32 2, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !143, i32 196, i32 2, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!143 = metadata !{i32 786443, metadata !1, metadata !37, i32 196, i32 2, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!144 = metadata !{i32 196, i32 2, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !146, i32 196, i32 2, i32 1, i32 67} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!146 = metadata !{i32 786443, metadata !1, metadata !142, i32 196, i32 2, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!147 = metadata !{i32 196, i32 2, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !149, i32 196, i32 2, i32 2, i32 68} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!149 = metadata !{i32 786443, metadata !1, metadata !142, i32 196, i32 2, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!150 = metadata !{i32 197, i32 2, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !152, i32 197, i32 2, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!152 = metadata !{i32 786443, metadata !1, metadata !37, i32 197, i32 2, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!153 = metadata !{i32 197, i32 2, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !151, i32 197, i32 2, i32 2, i32 70} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!155 = metadata !{i32 197, i32 2, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !151, i32 197, i32 2, i32 3, i32 71} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!157 = metadata !{i32 197, i32 2, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !159, i32 197, i32 2, i32 5, i32 73} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!159 = metadata !{i32 786443, metadata !1, metadata !160, i32 197, i32 2, i32 1, i32 69} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!160 = metadata !{i32 786443, metadata !1, metadata !151, i32 197, i32 2, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!161 = metadata !{i32 197, i32 2, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !163, i32 197, i32 2, i32 6, i32 74} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!163 = metadata !{i32 786443, metadata !1, metadata !164, i32 197, i32 2, i32 4, i32 72} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!164 = metadata !{i32 786443, metadata !1, metadata !151, i32 197, i32 2, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!165 = metadata !{i32 201, i32 9, metadata !37, null}
!166 = metadata !{i32 203, i32 1, metadata !37, null}
!167 = metadata !{i32 786689, metadata !40, metadata !"InstancePtr", metadata !5, i32 16777435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 219]
!168 = metadata !{i32 219, i32 32, metadata !40, null}
!169 = metadata !{i32 786689, metadata !40, metadata !"Channel", metadata !5, i32 33554651, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 219]
!170 = metadata !{i32 219, i32 54, metadata !40, null}
!171 = metadata !{i32 221, i32 2, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !173, i32 221, i32 2, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!173 = metadata !{i32 786443, metadata !1, metadata !40, i32 221, i32 2, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!174 = metadata !{i32 221, i32 2, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !176, i32 221, i32 2, i32 1, i32 75} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!176 = metadata !{i32 786443, metadata !1, metadata !172, i32 221, i32 2, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!177 = metadata !{i32 221, i32 2, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !179, i32 221, i32 2, i32 2, i32 76} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!179 = metadata !{i32 786443, metadata !1, metadata !172, i32 221, i32 2, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!180 = metadata !{i32 222, i32 2, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !182, i32 222, i32 2, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!182 = metadata !{i32 786443, metadata !1, metadata !40, i32 222, i32 2, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!183 = metadata !{i32 222, i32 2, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !185, i32 222, i32 2, i32 1, i32 77} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!185 = metadata !{i32 786443, metadata !1, metadata !181, i32 222, i32 2, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!186 = metadata !{i32 222, i32 2, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !188, i32 222, i32 2, i32 2, i32 78} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!188 = metadata !{i32 786443, metadata !1, metadata !181, i32 222, i32 2, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!189 = metadata !{i32 223, i32 2, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !191, i32 223, i32 2, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!191 = metadata !{i32 786443, metadata !1, metadata !40, i32 223, i32 2, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!192 = metadata !{i32 223, i32 2, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !190, i32 223, i32 2, i32 2, i32 80} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!194 = metadata !{i32 223, i32 2, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !190, i32 223, i32 2, i32 3, i32 81} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!196 = metadata !{i32 223, i32 2, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !198, i32 223, i32 2, i32 5, i32 83} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!198 = metadata !{i32 786443, metadata !1, metadata !199, i32 223, i32 2, i32 1, i32 79} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!199 = metadata !{i32 786443, metadata !1, metadata !190, i32 223, i32 2, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!200 = metadata !{i32 223, i32 2, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !202, i32 223, i32 2, i32 6, i32 84} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!202 = metadata !{i32 786443, metadata !1, metadata !203, i32 223, i32 2, i32 4, i32 82} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!203 = metadata !{i32 786443, metadata !1, metadata !190, i32 223, i32 2, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!204 = metadata !{i32 226, i32 9, metadata !40, null}
!205 = metadata !{i32 229, i32 1, metadata !40, null}
!206 = metadata !{i32 786689, metadata !41, metadata !"InstancePtr", metadata !5, i32 16777463, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 247]
!207 = metadata !{i32 247, i32 34, metadata !41, null}
!208 = metadata !{i32 786689, metadata !41, metadata !"Channel", metadata !5, i32 33554679, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 247]
!209 = metadata !{i32 247, i32 56, metadata !41, null}
!210 = metadata !{i32 786689, metadata !41, metadata !"Data", metadata !5, i32 50331895, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Data] [line 247]
!211 = metadata !{i32 247, i32 69, metadata !41, null}
!212 = metadata !{i32 249, i32 2, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !214, i32 249, i32 2, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!214 = metadata !{i32 786443, metadata !1, metadata !41, i32 249, i32 2, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!215 = metadata !{i32 249, i32 2, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !217, i32 249, i32 2, i32 1, i32 85} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!217 = metadata !{i32 786443, metadata !1, metadata !213, i32 249, i32 2, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!218 = metadata !{i32 249, i32 2, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !220, i32 249, i32 2, i32 2, i32 86} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!220 = metadata !{i32 786443, metadata !1, metadata !213, i32 249, i32 2, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!221 = metadata !{i32 250, i32 2, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !223, i32 250, i32 2, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!223 = metadata !{i32 786443, metadata !1, metadata !41, i32 250, i32 2, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!224 = metadata !{i32 250, i32 2, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 250, i32 2, i32 1, i32 87} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!226 = metadata !{i32 786443, metadata !1, metadata !222, i32 250, i32 2, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!227 = metadata !{i32 250, i32 2, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !229, i32 250, i32 2, i32 2, i32 88} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!229 = metadata !{i32 786443, metadata !1, metadata !222, i32 250, i32 2, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!230 = metadata !{i32 251, i32 2, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !232, i32 251, i32 2, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!232 = metadata !{i32 786443, metadata !1, metadata !41, i32 251, i32 2, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!233 = metadata !{i32 251, i32 2, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !231, i32 251, i32 2, i32 2, i32 90} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!235 = metadata !{i32 251, i32 2, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !231, i32 251, i32 2, i32 3, i32 91} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!237 = metadata !{i32 251, i32 2, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !239, i32 251, i32 2, i32 5, i32 93} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!239 = metadata !{i32 786443, metadata !1, metadata !240, i32 251, i32 2, i32 1, i32 89} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!240 = metadata !{i32 786443, metadata !1, metadata !231, i32 251, i32 2, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!241 = metadata !{i32 251, i32 2, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !243, i32 251, i32 2, i32 6, i32 94} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!243 = metadata !{i32 786443, metadata !1, metadata !244, i32 251, i32 2, i32 4, i32 92} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!244 = metadata !{i32 786443, metadata !1, metadata !231, i32 251, i32 2, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
!245 = metadata !{i32 254, i32 2, metadata !41, null}
!246 = metadata !{i32 257, i32 1, metadata !41, null}
!247 = metadata !{i32 257, i32 1, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !41, i32 257, i32 1, i32 1, i32 95} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.c]
