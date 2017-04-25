; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.ClkConfig = type { i32, i32, i32, i32, i32, i32 }
%struct.ClkMode = type { double, i32, i32, i32 }

@lock_lookup = internal constant [64 x i64] [i64 213650482177, i64 213650482177, i64 284517442561, i64 390817883137, i64 497118323713, i64 603418764289, i64 674285724673, i64 780586165249, i64 886886605825, i64 993187046401, i64 1099382629377, i64 1099303986177, i64 1099225342977, i64 1099172914177, i64 1099120485377, i64 1099094270977, i64 1099041842177, i64 1099015627777, i64 1098989413377, i64 1098963198977, i64 1098936984577, i64 1098910770177, i64 1098884555777, i64 1098858341377, i64 1098858341377, i64 1098832126977, i64 1098805912577, i64 1098805912577, i64 1098779698177, i64 1098779698177, i64 1098753483777, i64 1098753483777, i64 1098753483777, i64 1098727269377, i64 1098727269377, i64 1098727269377, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977, i64 1098701054977], align 8
@filter_lookup_low = internal constant [64 x i32] [i32 95, i32 87, i32 123, i32 91, i32 107, i32 115, i32 115, i32 115, i32 115, i32 75, i32 75, i32 75, i32 179, i32 83, i32 83, i32 83, i32 83, i32 83, i32 83, i32 83, i32 83, i32 83, i32 83, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 147, i32 147, i32 147, i32 147, i32 147, i32 147, i32 147, i32 147, i32 147, i32 147, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163, i32 163], align 4

; Function Attrs: nounwind
define i32 @ClkCountCalc(i32 %divide) #0 {
  %1 = alloca i32, align 4
  %output = alloca i32, align 4
  %divCalc = alloca i32, align 4
  store i32 %divide, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !86), !dbg !87
  call void @llvm.dbg.declare(metadata !{i32* %output}, metadata !88), !dbg !89
  store i32 0, i32* %output, align 4, !dbg !90
  call void @llvm.dbg.declare(metadata !{i32* %divCalc}, metadata !91), !dbg !92
  store i32 0, i32* %divCalc, align 4, !dbg !93
  %2 = load i32* %1, align 4, !dbg !94
  %3 = call i32 @ClkDivider(i32 %2), !dbg !94
  store i32 %3, i32* %divCalc, align 4, !dbg !94
  %4 = load i32* %divCalc, align 4, !dbg !95
  %5 = icmp eq i32 %4, 12288, !dbg !95
  br i1 %5, label %6, label %7, !dbg !95

; <label>:6                                       ; preds = %0
  store i32 -1, i32* %output, align 4, !dbg !97
  br label %14, !dbg !97

; <label>:7                                       ; preds = %0
  %8 = load i32* %divCalc, align 4, !dbg !98
  %9 = and i32 4095, %8, !dbg !98
  %10 = load i32* %divCalc, align 4, !dbg !98
  %11 = shl i32 %10, 10, !dbg !98
  %12 = and i32 %11, 12582912, !dbg !98
  %13 = or i32 %9, %12, !dbg !98
  store i32 %13, i32* %output, align 4, !dbg !98
  br label %14

; <label>:14                                      ; preds = %7, %6
  %15 = load i32* %output, align 4, !dbg !99
  ret i32 %15, !dbg !99
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define i32 @ClkDivider(i32 %divide) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %output = alloca i32, align 4
  %highTime = alloca i32, align 4
  %lowTime = alloca i32, align 4
  store i32 %divide, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !100), !dbg !101
  call void @llvm.dbg.declare(metadata !{i32* %output}, metadata !102), !dbg !103
  store i32 0, i32* %output, align 4, !dbg !104
  call void @llvm.dbg.declare(metadata !{i32* %highTime}, metadata !105), !dbg !106
  store i32 0, i32* %highTime, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata !{i32* %lowTime}, metadata !108), !dbg !109
  store i32 0, i32* %lowTime, align 4, !dbg !110
  %3 = load i32* %2, align 4, !dbg !111
  %4 = icmp ult i32 %3, 1, !dbg !111
  br i1 %4, label %8, label %5, !dbg !111

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4, !dbg !113
  %7 = icmp ugt i32 %6, 128, !dbg !113
  br i1 %7, label %8, label %9, !dbg !113

; <label>:8                                       ; preds = %5, %0
  store i32 12288, i32* %1, !dbg !115
  br label %35, !dbg !115

; <label>:9                                       ; preds = %5
  %10 = load i32* %2, align 4, !dbg !116
  %11 = icmp eq i32 %10, 1, !dbg !116
  br i1 %11, label %12, label %13, !dbg !116

; <label>:12                                      ; preds = %9
  store i32 4161, i32* %1, !dbg !118
  br label %35, !dbg !118

; <label>:13                                      ; preds = %9
  %14 = load i32* %2, align 4, !dbg !119
  %15 = udiv i32 %14, 2, !dbg !119
  store i32 %15, i32* %highTime, align 4, !dbg !119
  %16 = load i32* %2, align 4, !dbg !120
  %17 = and i32 %16, 1, !dbg !120
  %18 = icmp ne i32 %17, 0, !dbg !120
  br i1 %18, label %19, label %22, !dbg !120

; <label>:19                                      ; preds = %13
  %20 = load i32* %highTime, align 4, !dbg !122
  %21 = add i32 %20, 1, !dbg !122
  store i32 %21, i32* %lowTime, align 4, !dbg !122
  store i32 8192, i32* %output, align 4, !dbg !124
  br label %24, !dbg !125

; <label>:22                                      ; preds = %13
  %23 = load i32* %highTime, align 4, !dbg !126
  store i32 %23, i32* %lowTime, align 4, !dbg !126
  br label %24

; <label>:24                                      ; preds = %22, %19
  %25 = load i32* %lowTime, align 4, !dbg !128
  %26 = and i32 63, %25, !dbg !128
  %27 = load i32* %output, align 4, !dbg !128
  %28 = or i32 %27, %26, !dbg !128
  store i32 %28, i32* %output, align 4, !dbg !128
  %29 = load i32* %highTime, align 4, !dbg !129
  %30 = shl i32 %29, 6, !dbg !129
  %31 = and i32 4032, %30, !dbg !129
  %32 = load i32* %output, align 4, !dbg !129
  %33 = or i32 %32, %31, !dbg !129
  store i32 %33, i32* %output, align 4, !dbg !129
  %34 = load i32* %output, align 4, !dbg !130
  store i32 %34, i32* %1, !dbg !130
  br label %35, !dbg !130

; <label>:35                                      ; preds = %24, %12, %8
  %36 = load i32* %1, !dbg !131
  ret i32 %36, !dbg !131
}

; Function Attrs: nounwind
define i32 @ClkFindReg(%struct.ClkConfig* %regValues, %struct.ClkMode* %clkParams) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ClkConfig*, align 4
  %3 = alloca %struct.ClkMode*, align 4
  store %struct.ClkConfig* %regValues, %struct.ClkConfig** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ClkConfig** %2}, metadata !132), !dbg !133
  store %struct.ClkMode* %clkParams, %struct.ClkMode** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ClkMode** %3}, metadata !134), !dbg !135
  %4 = load %struct.ClkMode** %3, align 4, !dbg !136
  %5 = getelementptr inbounds %struct.ClkMode* %4, i32 0, i32 1, !dbg !136
  %6 = load i32* %5, align 4, !dbg !136
  %7 = icmp ult i32 %6, 2, !dbg !136
  br i1 %7, label %13, label %8, !dbg !136

; <label>:8                                       ; preds = %0
  %9 = load %struct.ClkMode** %3, align 4, !dbg !138
  %10 = getelementptr inbounds %struct.ClkMode* %9, i32 0, i32 1, !dbg !138
  %11 = load i32* %10, align 4, !dbg !138
  %12 = icmp ugt i32 %11, 64, !dbg !138
  br i1 %12, label %13, label %14, !dbg !138

; <label>:13                                      ; preds = %8, %0
  store i32 0, i32* %1, !dbg !140
  br label %86, !dbg !140

; <label>:14                                      ; preds = %8
  %15 = load %struct.ClkMode** %3, align 4, !dbg !141
  %16 = getelementptr inbounds %struct.ClkMode* %15, i32 0, i32 2, !dbg !141
  %17 = load i32* %16, align 4, !dbg !141
  %18 = call i32 @ClkCountCalc(i32 %17), !dbg !141
  %19 = load %struct.ClkConfig** %2, align 4, !dbg !141
  %20 = getelementptr inbounds %struct.ClkConfig* %19, i32 0, i32 0, !dbg !141
  store i32 %18, i32* %20, align 4, !dbg !141
  %21 = load %struct.ClkConfig** %2, align 4, !dbg !142
  %22 = getelementptr inbounds %struct.ClkConfig* %21, i32 0, i32 0, !dbg !142
  %23 = load i32* %22, align 4, !dbg !142
  %24 = icmp eq i32 %23, -1, !dbg !142
  br i1 %24, label %25, label %26, !dbg !142

; <label>:25                                      ; preds = %14
  store i32 0, i32* %1, !dbg !144
  br label %86, !dbg !144

; <label>:26                                      ; preds = %14
  %27 = load %struct.ClkMode** %3, align 4, !dbg !145
  %28 = getelementptr inbounds %struct.ClkMode* %27, i32 0, i32 1, !dbg !145
  %29 = load i32* %28, align 4, !dbg !145
  %30 = call i32 @ClkCountCalc(i32 %29), !dbg !145
  %31 = load %struct.ClkConfig** %2, align 4, !dbg !145
  %32 = getelementptr inbounds %struct.ClkConfig* %31, i32 0, i32 1, !dbg !145
  store i32 %30, i32* %32, align 4, !dbg !145
  %33 = load %struct.ClkConfig** %2, align 4, !dbg !146
  %34 = getelementptr inbounds %struct.ClkConfig* %33, i32 0, i32 1, !dbg !146
  %35 = load i32* %34, align 4, !dbg !146
  %36 = icmp eq i32 %35, -1, !dbg !146
  br i1 %36, label %37, label %38, !dbg !146

; <label>:37                                      ; preds = %26
  store i32 0, i32* %1, !dbg !148
  br label %86, !dbg !148

; <label>:38                                      ; preds = %26
  %39 = load %struct.ClkConfig** %2, align 4, !dbg !149
  %40 = getelementptr inbounds %struct.ClkConfig* %39, i32 0, i32 2, !dbg !149
  store i32 0, i32* %40, align 4, !dbg !149
  %41 = load %struct.ClkMode** %3, align 4, !dbg !150
  %42 = getelementptr inbounds %struct.ClkMode* %41, i32 0, i32 3, !dbg !150
  %43 = load i32* %42, align 4, !dbg !150
  %44 = call i32 @ClkDivider(i32 %43), !dbg !150
  %45 = load %struct.ClkConfig** %2, align 4, !dbg !150
  %46 = getelementptr inbounds %struct.ClkConfig* %45, i32 0, i32 3, !dbg !150
  store i32 %44, i32* %46, align 4, !dbg !150
  %47 = load %struct.ClkConfig** %2, align 4, !dbg !151
  %48 = getelementptr inbounds %struct.ClkConfig* %47, i32 0, i32 3, !dbg !151
  %49 = load i32* %48, align 4, !dbg !151
  %50 = icmp eq i32 %49, 12288, !dbg !151
  br i1 %50, label %51, label %52, !dbg !151

; <label>:51                                      ; preds = %38
  store i32 0, i32* %1, !dbg !153
  br label %86, !dbg !153

; <label>:52                                      ; preds = %38
  %53 = load %struct.ClkMode** %3, align 4, !dbg !154
  %54 = getelementptr inbounds %struct.ClkMode* %53, i32 0, i32 1, !dbg !154
  %55 = load i32* %54, align 4, !dbg !154
  %56 = sub i32 %55, 1, !dbg !154
  %57 = getelementptr inbounds [64 x i64]* @lock_lookup, i32 0, i32 %56, !dbg !154
  %58 = load i64* %57, align 8, !dbg !154
  %59 = and i64 %58, 4294967295, !dbg !154
  %60 = trunc i64 %59 to i32, !dbg !154
  %61 = load %struct.ClkConfig** %2, align 4, !dbg !154
  %62 = getelementptr inbounds %struct.ClkConfig* %61, i32 0, i32 4, !dbg !154
  store i32 %60, i32* %62, align 4, !dbg !154
  %63 = load %struct.ClkMode** %3, align 4, !dbg !155
  %64 = getelementptr inbounds %struct.ClkMode* %63, i32 0, i32 1, !dbg !155
  %65 = load i32* %64, align 4, !dbg !155
  %66 = sub i32 %65, 1, !dbg !155
  %67 = getelementptr inbounds [64 x i64]* @lock_lookup, i32 0, i32 %66, !dbg !155
  %68 = load i64* %67, align 8, !dbg !155
  %69 = lshr i64 %68, 32, !dbg !155
  %70 = and i64 %69, 255, !dbg !155
  %71 = trunc i64 %70 to i32, !dbg !155
  %72 = load %struct.ClkConfig** %2, align 4, !dbg !155
  %73 = getelementptr inbounds %struct.ClkConfig* %72, i32 0, i32 5, !dbg !155
  store i32 %71, i32* %73, align 4, !dbg !155
  %74 = load %struct.ClkMode** %3, align 4, !dbg !156
  %75 = getelementptr inbounds %struct.ClkMode* %74, i32 0, i32 1, !dbg !156
  %76 = load i32* %75, align 4, !dbg !156
  %77 = sub i32 %76, 1, !dbg !156
  %78 = getelementptr inbounds [64 x i32]* @filter_lookup_low, i32 0, i32 %77, !dbg !156
  %79 = load i32* %78, align 4, !dbg !156
  %80 = shl i32 %79, 16, !dbg !156
  %81 = and i32 %80, 67043328, !dbg !156
  %82 = load %struct.ClkConfig** %2, align 4, !dbg !156
  %83 = getelementptr inbounds %struct.ClkConfig* %82, i32 0, i32 5, !dbg !156
  %84 = load i32* %83, align 4, !dbg !156
  %85 = or i32 %84, %81, !dbg !156
  store i32 %85, i32* %83, align 4, !dbg !156
  store i32 1, i32* %1, !dbg !157
  br label %86, !dbg !157

; <label>:86                                      ; preds = %52, %51, %37, %25, %13
  %87 = load i32* %1, !dbg !158
  ret i32 %87, !dbg !158
}

; Function Attrs: nounwind
define void @ClkWriteReg(%struct.ClkConfig* %regValues, i32 %dynClkAddr) #0 {
  %1 = alloca %struct.ClkConfig*, align 4
  %2 = alloca i32, align 4
  store %struct.ClkConfig* %regValues, %struct.ClkConfig** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ClkConfig** %1}, metadata !159), !dbg !160
  store i32 %dynClkAddr, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !161), !dbg !162
  %3 = load i32* %2, align 4, !dbg !163
  %4 = add i32 %3, 8, !dbg !163
  %5 = load %struct.ClkConfig** %1, align 4, !dbg !163
  %6 = getelementptr inbounds %struct.ClkConfig* %5, i32 0, i32 0, !dbg !163
  %7 = load i32* %6, align 4, !dbg !163
  call void @Xil_Out32(i32 %4, i32 %7), !dbg !163
  %8 = load i32* %2, align 4, !dbg !164
  %9 = add i32 %8, 12, !dbg !164
  %10 = load %struct.ClkConfig** %1, align 4, !dbg !164
  %11 = getelementptr inbounds %struct.ClkConfig* %10, i32 0, i32 1, !dbg !164
  %12 = load i32* %11, align 4, !dbg !164
  call void @Xil_Out32(i32 %9, i32 %12), !dbg !164
  %13 = load i32* %2, align 4, !dbg !165
  %14 = add i32 %13, 16, !dbg !165
  %15 = load %struct.ClkConfig** %1, align 4, !dbg !165
  %16 = getelementptr inbounds %struct.ClkConfig* %15, i32 0, i32 2, !dbg !165
  %17 = load i32* %16, align 4, !dbg !165
  call void @Xil_Out32(i32 %14, i32 %17), !dbg !165
  %18 = load i32* %2, align 4, !dbg !166
  %19 = add i32 %18, 20, !dbg !166
  %20 = load %struct.ClkConfig** %1, align 4, !dbg !166
  %21 = getelementptr inbounds %struct.ClkConfig* %20, i32 0, i32 3, !dbg !166
  %22 = load i32* %21, align 4, !dbg !166
  call void @Xil_Out32(i32 %19, i32 %22), !dbg !166
  %23 = load i32* %2, align 4, !dbg !167
  %24 = add i32 %23, 24, !dbg !167
  %25 = load %struct.ClkConfig** %1, align 4, !dbg !167
  %26 = getelementptr inbounds %struct.ClkConfig* %25, i32 0, i32 4, !dbg !167
  %27 = load i32* %26, align 4, !dbg !167
  call void @Xil_Out32(i32 %24, i32 %27), !dbg !167
  %28 = load i32* %2, align 4, !dbg !168
  %29 = add i32 %28, 28, !dbg !168
  %30 = load %struct.ClkConfig** %1, align 4, !dbg !168
  %31 = getelementptr inbounds %struct.ClkConfig* %30, i32 0, i32 5, !dbg !168
  %32 = load i32* %31, align 4, !dbg !168
  call void @Xil_Out32(i32 %29, i32 %32), !dbg !168
  ret void, !dbg !169
}

declare void @Xil_Out32(i32, i32) #2

; Function Attrs: nounwind
define double @ClkFindParams(double %freq, %struct.ClkMode* %bestPick) #0 {
  %1 = alloca double, align 8
  %2 = alloca %struct.ClkMode*, align 4
  %bestError = alloca double, align 8
  %curError = alloca double, align 8
  %curClkMult = alloca double, align 8
  %curFreq = alloca double, align 8
  %curDiv = alloca i32, align 4
  %curFb = alloca i32, align 4
  %curClkDiv = alloca i32, align 4
  %minFb = alloca i32, align 4
  %maxFb = alloca i32, align 4
  store double %freq, double* %1, align 8
  call void @llvm.dbg.declare(metadata !{double* %1}, metadata !170), !dbg !171
  store %struct.ClkMode* %bestPick, %struct.ClkMode** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ClkMode** %2}, metadata !172), !dbg !173
  call void @llvm.dbg.declare(metadata !{double* %bestError}, metadata !174), !dbg !175
  store double 2.000000e+03, double* %bestError, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata !{double* %curError}, metadata !177), !dbg !178
  call void @llvm.dbg.declare(metadata !{double* %curClkMult}, metadata !179), !dbg !180
  call void @llvm.dbg.declare(metadata !{double* %curFreq}, metadata !181), !dbg !182
  call void @llvm.dbg.declare(metadata !{i32* %curDiv}, metadata !183), !dbg !184
  call void @llvm.dbg.declare(metadata !{i32* %curFb}, metadata !185), !dbg !186
  call void @llvm.dbg.declare(metadata !{i32* %curClkDiv}, metadata !187), !dbg !188
  call void @llvm.dbg.declare(metadata !{i32* %minFb}, metadata !189), !dbg !190
  store i32 0, i32* %minFb, align 4, !dbg !191
  call void @llvm.dbg.declare(metadata !{i32* %maxFb}, metadata !192), !dbg !193
  store i32 0, i32* %maxFb, align 4, !dbg !194
  %3 = load double* %1, align 8, !dbg !195
  %4 = fmul double %3, 5.000000e+00, !dbg !195
  store double %4, double* %1, align 8, !dbg !195
  %5 = load %struct.ClkMode** %2, align 4, !dbg !196
  %6 = getelementptr inbounds %struct.ClkMode* %5, i32 0, i32 0, !dbg !196
  store double 0.000000e+00, double* %6, align 8, !dbg !196
  store i32 1, i32* %curDiv, align 4, !dbg !197
  br label %7, !dbg !197

; <label>:7                                       ; preds = %70, %0
  %8 = load i32* %curDiv, align 4, !dbg !199
  %9 = icmp ule i32 %8, 10, !dbg !199
  br i1 %9, label %10, label %73, !dbg !199

; <label>:10                                      ; preds = %7
  %11 = load i32* %curDiv, align 4, !dbg !202
  %12 = mul i32 %11, 6, !dbg !202
  store i32 %12, i32* %minFb, align 4, !dbg !202
  %13 = load i32* %curDiv, align 4, !dbg !204
  %14 = mul i32 %13, 12, !dbg !204
  store i32 %14, i32* %maxFb, align 4, !dbg !204
  %15 = load i32* %maxFb, align 4, !dbg !205
  %16 = icmp ugt i32 %15, 64, !dbg !205
  br i1 %16, label %17, label %18, !dbg !205

; <label>:17                                      ; preds = %10
  store i32 64, i32* %maxFb, align 4, !dbg !207
  br label %18, !dbg !207

; <label>:18                                      ; preds = %17, %10
  %19 = load i32* %curDiv, align 4, !dbg !208
  %20 = uitofp i32 %19 to double, !dbg !208
  %21 = fdiv double 1.000000e+02, %20, !dbg !208
  %22 = load double* %1, align 8, !dbg !208
  %23 = fdiv double %21, %22, !dbg !208
  store double %23, double* %curClkMult, align 8, !dbg !208
  %24 = load i32* %minFb, align 4, !dbg !209
  store i32 %24, i32* %curFb, align 4, !dbg !209
  br label %25, !dbg !210

; <label>:25                                      ; preds = %66, %18
  %26 = load i32* %curFb, align 4, !dbg !211
  %27 = load i32* %maxFb, align 4, !dbg !211
  %28 = icmp ule i32 %26, %27, !dbg !211
  br i1 %28, label %29, label %69, !dbg !211

; <label>:29                                      ; preds = %25
  %30 = load double* %curClkMult, align 8, !dbg !213
  %31 = load i32* %curFb, align 4, !dbg !213
  %32 = uitofp i32 %31 to double, !dbg !213
  %33 = fmul double %30, %32, !dbg !213
  %34 = fadd double %33, 5.000000e-01, !dbg !213
  %35 = fptoui double %34 to i32, !dbg !213
  store i32 %35, i32* %curClkDiv, align 4, !dbg !213
  %36 = load i32* %curDiv, align 4, !dbg !215
  %37 = uitofp i32 %36 to double, !dbg !215
  %38 = fdiv double 1.000000e+02, %37, !dbg !215
  %39 = load i32* %curClkDiv, align 4, !dbg !215
  %40 = uitofp i32 %39 to double, !dbg !215
  %41 = fdiv double %38, %40, !dbg !215
  %42 = load i32* %curFb, align 4, !dbg !215
  %43 = uitofp i32 %42 to double, !dbg !215
  %44 = fmul double %41, %43, !dbg !215
  store double %44, double* %curFreq, align 8, !dbg !215
  %45 = load double* %curFreq, align 8, !dbg !216
  %46 = load double* %1, align 8, !dbg !216
  %47 = fsub double %45, %46, !dbg !216
  %48 = call double @fabs(double %47) #1, !dbg !216
  store double %48, double* %curError, align 8, !dbg !216
  %49 = load double* %curError, align 8, !dbg !217
  %50 = load double* %bestError, align 8, !dbg !217
  %51 = fcmp olt double %49, %50, !dbg !217
  br i1 %51, label %52, label %66, !dbg !217

; <label>:52                                      ; preds = %29
  %53 = load double* %curError, align 8, !dbg !219
  store double %53, double* %bestError, align 8, !dbg !219
  %54 = load i32* %curClkDiv, align 4, !dbg !221
  %55 = load %struct.ClkMode** %2, align 4, !dbg !221
  %56 = getelementptr inbounds %struct.ClkMode* %55, i32 0, i32 2, !dbg !221
  store i32 %54, i32* %56, align 4, !dbg !221
  %57 = load i32* %curFb, align 4, !dbg !222
  %58 = load %struct.ClkMode** %2, align 4, !dbg !222
  %59 = getelementptr inbounds %struct.ClkMode* %58, i32 0, i32 1, !dbg !222
  store i32 %57, i32* %59, align 4, !dbg !222
  %60 = load i32* %curDiv, align 4, !dbg !223
  %61 = load %struct.ClkMode** %2, align 4, !dbg !223
  %62 = getelementptr inbounds %struct.ClkMode* %61, i32 0, i32 3, !dbg !223
  store i32 %60, i32* %62, align 4, !dbg !223
  %63 = load double* %curFreq, align 8, !dbg !224
  %64 = load %struct.ClkMode** %2, align 4, !dbg !224
  %65 = getelementptr inbounds %struct.ClkMode* %64, i32 0, i32 0, !dbg !224
  store double %63, double* %65, align 8, !dbg !224
  br label %66, !dbg !225

; <label>:66                                      ; preds = %52, %29
  %67 = load i32* %curFb, align 4, !dbg !226
  %68 = add i32 %67, 1, !dbg !226
  store i32 %68, i32* %curFb, align 4, !dbg !226
  br label %25, !dbg !227

; <label>:69                                      ; preds = %25
  br label %70, !dbg !228

; <label>:70                                      ; preds = %69
  %71 = load i32* %curDiv, align 4, !dbg !229
  %72 = add i32 %71, 1, !dbg !229
  store i32 %72, i32* %curDiv, align 4, !dbg !229
  br label %7, !dbg !229

; <label>:73                                      ; preds = %7
  %74 = load %struct.ClkMode** %2, align 4, !dbg !230
  %75 = getelementptr inbounds %struct.ClkMode* %74, i32 0, i32 0, !dbg !230
  %76 = load double* %75, align 8, !dbg !230
  %77 = fdiv double %76, 5.000000e+00, !dbg !230
  %78 = load %struct.ClkMode** %2, align 4, !dbg !230
  %79 = getelementptr inbounds %struct.ClkMode* %78, i32 0, i32 0, !dbg !230
  store double %77, double* %79, align 8, !dbg !230
  %80 = load double* %bestError, align 8, !dbg !231
  %81 = fdiv double %80, 5.000000e+00, !dbg !231
  store double %81, double* %bestError, align 8, !dbg !231
  %82 = load double* %bestError, align 8, !dbg !232
  ret double %82, !dbg !232
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
define void @ClkStart(i32 %dynClkAddr) #0 {
  %1 = alloca i32, align 4
  store i32 %dynClkAddr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !233), !dbg !234
  %2 = load i32* %1, align 4, !dbg !235
  %3 = add i32 %2, 0, !dbg !235
  call void @Xil_Out32(i32 %3, i32 1), !dbg !235
  br label %4, !dbg !236

; <label>:4                                       ; preds = %11, %0
  %5 = load i32* %1, align 4, !dbg !237
  %6 = add i32 %5, 4, !dbg !237
  %7 = call i32 @Xil_In32(i32 %6), !dbg !237
  %8 = and i32 %7, 1, !dbg !237
  %9 = icmp ne i32 %8, 0, !dbg !237
  %10 = xor i1 %9, true, !dbg !237
  br i1 %10, label %11, label %12, !dbg !237

; <label>:11                                      ; preds = %4
  br label %4, !dbg !240

; <label>:12                                      ; preds = %4
  ret void, !dbg !242
}

declare i32 @Xil_In32(i32) #2

; Function Attrs: nounwind
define void @ClkStop(i32 %dynClkAddr) #0 {
  %1 = alloca i32, align 4
  store i32 %dynClkAddr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !243), !dbg !244
  %2 = load i32* %1, align 4, !dbg !245
  %3 = add i32 %2, 0, !dbg !245
  call void @Xil_Out32(i32 %3, i32 0), !dbg !245
  br label %4, !dbg !246

; <label>:4                                       ; preds = %10, %0
  %5 = load i32* %1, align 4, !dbg !247
  %6 = add i32 %5, 4, !dbg !247
  %7 = call i32 @Xil_In32(i32 %6), !dbg !247
  %8 = and i32 %7, 1, !dbg !247
  %9 = icmp ne i32 %8, 0, !dbg !247
  br i1 %9, label %10, label %11, !dbg !247

; <label>:10                                      ; preds = %4
  br label %4, !dbg !250

; <label>:11                                      ; preds = %4
  ret void, !dbg !252
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!60, !61, !62, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !74}
!xidane.function_declaration_filename = !{!60, !78, !62, !78, !63, !78, !65, !78, !67, !79, !69, !78, !71, !80, !73, !78, !75, !79, !77, !78}
!xidane.ExternC = !{!60, !62, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.module.flags = !{!81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !47, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !13, metadata !14, metadata !37, metadata !40, metadata !43, metadata !46}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ClkCountCalc", metadata !"ClkCountCalc", metadata !"", i32 77, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @ClkCountCalc, null, null, metadata !2, i32 78} ; [ DW_TAG_subprogram ] [line 77] [def] [scope 78] [ClkCountCalc]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786454, metadata !9, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!9 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/dynclk/../xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!10 = metadata !{i32 786454, metadata !11, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!11 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!12 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ClkDivider", metadata !"ClkDivider", metadata !"", i32 90, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @ClkDivider, null, null, metadata !2, i32 91} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 91] [ClkDivider]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ClkFindReg", metadata !"ClkFindReg", metadata !"", i32 118, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.ClkConfig*, %struct.ClkMode*)* @ClkFindReg, null, null, metadata !2, i32 119} ; [ DW_TAG_subprogram ] [line 118] [def] [scope 119] [ClkFindReg]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8, metadata !17, metadata !28}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ClkConfig]
!18 = metadata !{i32 786454, metadata !19, null, metadata !"ClkConfig", i32 113, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [ClkConfig] [line 113, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!20 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 106, i64 192, i64 32, i32 0, i32 0, null, metadata !21, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 106, size 192, align 32, offset 0] [def] [from ]
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27}
!22 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"clk0L", i32 107, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [clk0L] [line 107, size 32, align 32, offset 0] [from u32]
!23 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"clkFBL", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [clkFBL] [line 108, size 32, align 32, offset 32] [from u32]
!24 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"clkFBH_clk0H", i32 109, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [clkFBH_clk0H] [line 109, size 32, align 32, offset 64] [from u32]
!25 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"divclk", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [divclk] [line 110, size 32, align 32, offset 96] [from u32]
!26 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"lockL", i32 111, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [lockL] [line 111, size 32, align 32, offset 128] [from u32]
!27 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"fltr_lockH", i32 112, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [fltr_lockH] [line 112, size 32, align 32, offset 160] [from u32]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ClkMode]
!29 = metadata !{i32 786454, metadata !19, null, metadata !"ClkMode", i32 120, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [ClkMode] [line 120, size 0, align 0, offset 0] [from ]
!30 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 115, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 115, size 192, align 64, offset 0] [def] [from ]
!31 = metadata !{metadata !32, metadata !34, metadata !35, metadata !36}
!32 = metadata !{i32 786445, metadata !19, metadata !30, metadata !"freq", i32 116, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [freq] [line 116, size 64, align 64, offset 0] [from double]
!33 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!34 = metadata !{i32 786445, metadata !19, metadata !30, metadata !"fbmult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [fbmult] [line 117, size 32, align 32, offset 64] [from u32]
!35 = metadata !{i32 786445, metadata !19, metadata !30, metadata !"clkdiv", i32 118, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [clkdiv] [line 118, size 32, align 32, offset 96] [from u32]
!36 = metadata !{i32 786445, metadata !19, metadata !30, metadata !"maindiv", i32 119, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [maindiv] [line 119, size 32, align 32, offset 128] [from u32]
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ClkWriteReg", metadata !"ClkWriteReg", metadata !"", i32 145, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.ClkConfig*, i32)* @ClkWriteReg, null, null, metadata !2, i32 146} ; [ DW_TAG_subprogram ] [line 145] [def] [scope 146] [ClkWriteReg]
!38 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{null, metadata !17, metadata !8}
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ClkFindParams", metadata !"ClkFindParams", metadata !"", i32 161, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double, %struct.ClkMode*)* @ClkFindParams, null, null, metadata !2, i32 162} ; [ DW_TAG_subprogram ] [line 161] [def] [scope 162] [ClkFindParams]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !33, metadata !33, metadata !28}
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ClkStart", metadata !"ClkStart", metadata !"", i32 222, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @ClkStart, null, null, metadata !2, i32 223} ; [ DW_TAG_subprogram ] [line 222] [def] [scope 223] [ClkStart]
!44 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{null, metadata !8}
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ClkStop", metadata !"ClkStop", metadata !"", i32 230, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @ClkStop, null, null, metadata !2, i32 231} ; [ DW_TAG_subprogram ] [line 230] [def] [scope 231] [ClkStop]
!47 = metadata !{metadata !48, metadata !54}
!48 = metadata !{i32 786484, i32 0, null, metadata !"filter_lookup_low", metadata !"filter_lookup_low", metadata !"", metadata !49, i32 193, metadata !50, i32 1, i32 1, [64 x i32]* @filter_lookup_low, null} ; [ DW_TAG_variable ] [filter_lookup_low] [line 193] [local] [def]
!49 = metadata !{i32 786473, metadata !19}        ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.h]
!50 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !51, metadata !52, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from ]
!51 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from u32]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 64}       ; [ DW_TAG_subrange_type ] [0, 63]
!54 = metadata !{i32 786484, i32 0, null, metadata !"lock_lookup", metadata !"lock_lookup", metadata !"", metadata !49, i32 126, metadata !55, i32 1, i32 1, [64 x i64]* @lock_lookup, null} ; [ DW_TAG_variable ] [lock_lookup] [line 126] [local] [def]
!55 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 64, i32 0, i32 0, metadata !56, metadata !52, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 4096, align 64, offset 0] [from ]
!56 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from u64]
!57 = metadata !{i32 786454, metadata !9, null, metadata !"u64", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ] [u64] [line 139, size 0, align 0, offset 0] [from u_int64_t]
!58 = metadata !{i32 786454, metadata !11, null, metadata !"u_int64_t", i32 203, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [u_int64_t] [line 203, size 0, align 0, offset 0] [from long long unsigned int]
!59 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 (i32)* @ClkCountCalc}
!61 = metadata !{metadata !"u32.u32.0"}
!62 = metadata !{i32 (i32)* @ClkDivider}
!63 = metadata !{i32 (%struct.ClkConfig*, %struct.ClkMode*)* @ClkFindReg}
!64 = metadata !{metadata !"u32.ClkConfig *.1.ClkMode *.1"}
!65 = metadata !{void (%struct.ClkConfig*, i32)* @ClkWriteReg}
!66 = metadata !{metadata !"void.ClkConfig *.1.u32.0"}
!67 = metadata !{void (i32, i32)* @Xil_Out32}
!68 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!69 = metadata !{double (double, %struct.ClkMode*)* @ClkFindParams}
!70 = metadata !{metadata !"double.double.0.ClkMode *.1"}
!71 = metadata !{double (double)* @fabs}
!72 = metadata !{metadata !"double.double.0"}
!73 = metadata !{void (i32)* @ClkStart}
!74 = metadata !{metadata !"void.u32.0"}
!75 = metadata !{i32 (i32)* @Xil_In32}
!76 = metadata !{metadata !"u32.INTPTR.0"}
!77 = metadata !{void (i32)* @ClkStop}
!78 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.h"}
!79 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/dynclk/../xil/xil_io.h"}
!80 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/mathcalls.h"}
!81 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!82 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!83 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!84 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!85 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!86 = metadata !{i32 786689, metadata !4, metadata !"divide", metadata !5, i32 16777293, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [divide] [line 77]
!87 = metadata !{i32 77, i32 22, metadata !4, null}
!88 = metadata !{i32 786688, metadata !4, metadata !"output", metadata !5, i32 79, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 79]
!89 = metadata !{i32 79, i32 6, metadata !4, null}
!90 = metadata !{i32 79, i32 2, metadata !4, null}
!91 = metadata !{i32 786688, metadata !4, metadata !"divCalc", metadata !5, i32 80, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [divCalc] [line 80]
!92 = metadata !{i32 80, i32 6, metadata !4, null}
!93 = metadata !{i32 80, i32 2, metadata !4, null}
!94 = metadata !{i32 82, i32 12, metadata !4, null}
!95 = metadata !{i32 83, i32 6, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !4, i32 83, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!97 = metadata !{i32 84, i32 3, metadata !96, null}
!98 = metadata !{i32 86, i32 3, metadata !96, null}
!99 = metadata !{i32 87, i32 2, metadata !4, null}
!100 = metadata !{i32 786689, metadata !13, metadata !"divide", metadata !5, i32 16777306, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [divide] [line 90]
!101 = metadata !{i32 90, i32 20, metadata !13, null}
!102 = metadata !{i32 786688, metadata !13, metadata !"output", metadata !5, i32 92, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [output] [line 92]
!103 = metadata !{i32 92, i32 6, metadata !13, null}
!104 = metadata !{i32 92, i32 2, metadata !13, null}
!105 = metadata !{i32 786688, metadata !13, metadata !"highTime", metadata !5, i32 93, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [highTime] [line 93]
!106 = metadata !{i32 93, i32 6, metadata !13, null}
!107 = metadata !{i32 93, i32 2, metadata !13, null}
!108 = metadata !{i32 786688, metadata !13, metadata !"lowTime", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowTime] [line 94]
!109 = metadata !{i32 94, i32 6, metadata !13, null}
!110 = metadata !{i32 94, i32 2, metadata !13, null}
!111 = metadata !{i32 96, i32 6, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !13, i32 96, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!113 = metadata !{i32 96, i32 6, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !112, i32 96, i32 6, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!115 = metadata !{i32 97, i32 3, metadata !112, null}
!116 = metadata !{i32 99, i32 6, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !13, i32 99, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!118 = metadata !{i32 100, i32 3, metadata !117, null}
!119 = metadata !{i32 102, i32 2, metadata !13, null}
!120 = metadata !{i32 103, i32 6, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !13, i32 103, i32 6, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!122 = metadata !{i32 105, i32 3, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !121, i32 104, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!124 = metadata !{i32 106, i32 3, metadata !123, null}
!125 = metadata !{i32 107, i32 2, metadata !123, null}
!126 = metadata !{i32 110, i32 3, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !121, i32 109, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!128 = metadata !{i32 113, i32 2, metadata !13, null}
!129 = metadata !{i32 114, i32 2, metadata !13, null}
!130 = metadata !{i32 115, i32 2, metadata !13, null}
!131 = metadata !{i32 116, i32 1, metadata !13, null}
!132 = metadata !{i32 786689, metadata !14, metadata !"regValues", metadata !5, i32 16777334, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regValues] [line 118]
!133 = metadata !{i32 118, i32 28, metadata !14, null}
!134 = metadata !{i32 786689, metadata !14, metadata !"clkParams", metadata !5, i32 33554550, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [clkParams] [line 118]
!135 = metadata !{i32 118, i32 48, metadata !14, null}
!136 = metadata !{i32 120, i32 6, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !14, i32 120, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!138 = metadata !{i32 120, i32 6, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !137, i32 120, i32 6, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!140 = metadata !{i32 121, i32 3, metadata !137, null}
!141 = metadata !{i32 123, i32 21, metadata !14, null}
!142 = metadata !{i32 124, i32 6, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !14, i32 124, i32 6, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!144 = metadata !{i32 125, i32 3, metadata !143, null}
!145 = metadata !{i32 127, i32 22, metadata !14, null}
!146 = metadata !{i32 128, i32 6, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !14, i32 128, i32 6, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!148 = metadata !{i32 129, i32 3, metadata !147, null}
!149 = metadata !{i32 131, i32 2, metadata !14, null}
!150 = metadata !{i32 133, i32 22, metadata !14, null}
!151 = metadata !{i32 134, i32 6, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !14, i32 134, i32 6, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!153 = metadata !{i32 135, i32 3, metadata !152, null}
!154 = metadata !{i32 137, i32 2, metadata !14, null}
!155 = metadata !{i32 139, i32 2, metadata !14, null}
!156 = metadata !{i32 140, i32 2, metadata !14, null}
!157 = metadata !{i32 142, i32 2, metadata !14, null}
!158 = metadata !{i32 143, i32 1, metadata !14, null}
!159 = metadata !{i32 786689, metadata !37, metadata !"regValues", metadata !5, i32 16777361, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regValues] [line 145]
!160 = metadata !{i32 145, i32 30, metadata !37, null}
!161 = metadata !{i32 786689, metadata !37, metadata !"dynClkAddr", metadata !5, i32 33554577, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dynClkAddr] [line 145]
!162 = metadata !{i32 145, i32 45, metadata !37, null}
!163 = metadata !{i32 147, i32 2, metadata !37, null}
!164 = metadata !{i32 148, i32 2, metadata !37, null}
!165 = metadata !{i32 149, i32 2, metadata !37, null}
!166 = metadata !{i32 150, i32 2, metadata !37, null}
!167 = metadata !{i32 151, i32 2, metadata !37, null}
!168 = metadata !{i32 152, i32 2, metadata !37, null}
!169 = metadata !{i32 153, i32 1, metadata !37, null}
!170 = metadata !{i32 786689, metadata !40, metadata !"freq", metadata !5, i32 16777377, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [freq] [line 161]
!171 = metadata !{i32 161, i32 29, metadata !40, null}
!172 = metadata !{i32 786689, metadata !40, metadata !"bestPick", metadata !5, i32 33554593, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bestPick] [line 161]
!173 = metadata !{i32 161, i32 44, metadata !40, null}
!174 = metadata !{i32 786688, metadata !40, metadata !"bestError", metadata !5, i32 163, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bestError] [line 163]
!175 = metadata !{i32 163, i32 9, metadata !40, null}
!176 = metadata !{i32 163, i32 2, metadata !40, null}
!177 = metadata !{i32 786688, metadata !40, metadata !"curError", metadata !5, i32 164, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curError] [line 164]
!178 = metadata !{i32 164, i32 9, metadata !40, null}
!179 = metadata !{i32 786688, metadata !40, metadata !"curClkMult", metadata !5, i32 165, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curClkMult] [line 165]
!180 = metadata !{i32 165, i32 9, metadata !40, null}
!181 = metadata !{i32 786688, metadata !40, metadata !"curFreq", metadata !5, i32 166, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curFreq] [line 166]
!182 = metadata !{i32 166, i32 9, metadata !40, null}
!183 = metadata !{i32 786688, metadata !40, metadata !"curDiv", metadata !5, i32 167, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curDiv] [line 167]
!184 = metadata !{i32 167, i32 6, metadata !40, null}
!185 = metadata !{i32 786688, metadata !40, metadata !"curFb", metadata !5, i32 167, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curFb] [line 167]
!186 = metadata !{i32 167, i32 14, metadata !40, null}
!187 = metadata !{i32 786688, metadata !40, metadata !"curClkDiv", metadata !5, i32 167, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curClkDiv] [line 167]
!188 = metadata !{i32 167, i32 21, metadata !40, null}
!189 = metadata !{i32 786688, metadata !40, metadata !"minFb", metadata !5, i32 168, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minFb] [line 168]
!190 = metadata !{i32 168, i32 6, metadata !40, null}
!191 = metadata !{i32 168, i32 2, metadata !40, null}
!192 = metadata !{i32 786688, metadata !40, metadata !"maxFb", metadata !5, i32 169, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxFb] [line 169]
!193 = metadata !{i32 169, i32 6, metadata !40, null}
!194 = metadata !{i32 169, i32 2, metadata !40, null}
!195 = metadata !{i32 178, i32 2, metadata !40, null}
!196 = metadata !{i32 180, i32 2, metadata !40, null}
!197 = metadata !{i32 184, i32 7, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !40, i32 184, i32 2, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!199 = metadata !{i32 184, i32 7, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !201, i32 184, i32 7, i32 2, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!201 = metadata !{i32 786443, metadata !1, metadata !198, i32 184, i32 7, i32 1, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!202 = metadata !{i32 186, i32 3, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !198, i32 185, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!204 = metadata !{i32 187, i32 3, metadata !203, null}
!205 = metadata !{i32 188, i32 7, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !203, i32 188, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!207 = metadata !{i32 189, i32 4, metadata !206, null}
!208 = metadata !{i32 191, i32 3, metadata !203, null}
!209 = metadata !{i32 193, i32 3, metadata !203, null}
!210 = metadata !{i32 194, i32 3, metadata !203, null}
!211 = metadata !{i32 194, i32 3, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !203, i32 194, i32 3, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!213 = metadata !{i32 196, i32 4, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !203, i32 195, i32 3, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!215 = metadata !{i32 197, i32 4, metadata !214, null}
!216 = metadata !{i32 198, i32 15, metadata !214, null}
!217 = metadata !{i32 199, i32 8, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !214, i32 199, i32 8, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!219 = metadata !{i32 201, i32 5, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !218, i32 200, i32 4, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!221 = metadata !{i32 202, i32 5, metadata !220, null}
!222 = metadata !{i32 203, i32 5, metadata !220, null}
!223 = metadata !{i32 204, i32 5, metadata !220, null}
!224 = metadata !{i32 205, i32 5, metadata !220, null}
!225 = metadata !{i32 206, i32 4, metadata !220, null}
!226 = metadata !{i32 208, i32 4, metadata !214, null}
!227 = metadata !{i32 209, i32 3, metadata !214, null}
!228 = metadata !{i32 210, i32 2, metadata !203, null}
!229 = metadata !{i32 184, i32 33, metadata !198, null}
!230 = metadata !{i32 216, i32 2, metadata !40, null}
!231 = metadata !{i32 217, i32 2, metadata !40, null}
!232 = metadata !{i32 218, i32 2, metadata !40, null}
!233 = metadata !{i32 786689, metadata !43, metadata !"dynClkAddr", metadata !5, i32 16777438, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dynClkAddr] [line 222]
!234 = metadata !{i32 222, i32 19, metadata !43, null}
!235 = metadata !{i32 224, i32 2, metadata !43, null}
!236 = metadata !{i32 225, i32 2, metadata !43, null}
!237 = metadata !{i32 225, i32 10, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !239, i32 225, i32 10, i32 3, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!239 = metadata !{i32 786443, metadata !1, metadata !43, i32 225, i32 10, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!240 = metadata !{i32 225, i32 10, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !43, i32 225, i32 10, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!242 = metadata !{i32 227, i32 2, metadata !43, null}
!243 = metadata !{i32 786689, metadata !46, metadata !"dynClkAddr", metadata !5, i32 16777446, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dynClkAddr] [line 230]
!244 = metadata !{i32 230, i32 18, metadata !46, null}
!245 = metadata !{i32 232, i32 2, metadata !46, null}
!246 = metadata !{i32 233, i32 2, metadata !46, null}
!247 = metadata !{i32 233, i32 9, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !249, i32 233, i32 9, i32 3, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!249 = metadata !{i32 786443, metadata !1, metadata !46, i32 233, i32 9, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!250 = metadata !{i32 233, i32 9, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !46, i32 233, i32 9, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/dynclk/dynclk.c]
!252 = metadata !{i32 235, i32 2, metadata !46, null}
