; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XVtc = type { %struct.XVtc_Config, i32, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8* }
%struct.XVtc_Config = type { i16, i32 }

@Xil_AssertStatus = external global i32
@.str = private unnamed_addr constant [57 x i8] c"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c\00", align 1

; Function Attrs: nounwind
define void @XVtc_IntrHandler(i8* %InstancePtr) #0 {
  %1 = alloca i8*, align 4
  %PendingIntr = alloca i32, align 4
  %ErrorStatus = alloca i32, align 4
  %XVtcPtr = alloca %struct.XVtc*, align 4
  store i8* %InstancePtr, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !66), !dbg !67
  call void @llvm.dbg.declare(metadata !{i32* %PendingIntr}, metadata !68), !dbg !69
  call void @llvm.dbg.declare(metadata !{i32* %ErrorStatus}, metadata !70), !dbg !71
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %XVtcPtr}, metadata !72), !dbg !73
  %2 = load i8** %1, align 4, !dbg !74
  %3 = bitcast i8* %2 to %struct.XVtc*, !dbg !74
  store %struct.XVtc* %3, %struct.XVtc** %XVtcPtr, align 4, !dbg !74
  %4 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !75
  %5 = icmp ne %struct.XVtc* %4, null, !dbg !75
  br i1 %5, label %6, label %7, !dbg !75

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !78
  br label %8, !dbg !78

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str, i32 0, i32 0), i32 176), !dbg !81
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !81
  br label %96, !dbg !81

; <label>:8                                       ; preds = %6
  %9 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !84
  %10 = getelementptr inbounds %struct.XVtc* %9, i32 0, i32 1, !dbg !84
  %11 = load i32* %10, align 4, !dbg !84
  %12 = icmp eq i32 %11, 286331153, !dbg !84
  br i1 %12, label %13, label %14, !dbg !84

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !87
  br label %15, !dbg !87

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str, i32 0, i32 0), i32 177), !dbg !90
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !90
  br label %96, !dbg !90

; <label>:15                                      ; preds = %13
  %16 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !93
  %17 = getelementptr inbounds %struct.XVtc* %16, i32 0, i32 0, !dbg !93
  %18 = getelementptr inbounds %struct.XVtc_Config* %17, i32 0, i32 1, !dbg !93
  %19 = load i32* %18, align 4, !dbg !93
  %20 = add i32 %19, 12, !dbg !93
  %21 = call i32 @Xil_In32(i32 %20), !dbg !93
  %22 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !93
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 0, !dbg !93
  %24 = getelementptr inbounds %struct.XVtc_Config* %23, i32 0, i32 1, !dbg !93
  %25 = load i32* %24, align 4, !dbg !93
  %26 = add i32 %25, 4, !dbg !93
  %27 = call i32 @Xil_In32(i32 %26), !dbg !93
  %28 = and i32 %21, %27, !dbg !93
  %29 = and i32 %28, -49408, !dbg !93
  store i32 %29, i32* %PendingIntr, align 4, !dbg !93
  %30 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !94
  %31 = getelementptr inbounds %struct.XVtc* %30, i32 0, i32 0, !dbg !94
  %32 = getelementptr inbounds %struct.XVtc_Config* %31, i32 0, i32 1, !dbg !94
  %33 = load i32* %32, align 4, !dbg !94
  %34 = add i32 %33, 4, !dbg !94
  %35 = load i32* %PendingIntr, align 4, !dbg !94
  %36 = and i32 %35, -49408, !dbg !94
  call void @Xil_Out32(i32 %34, i32 %36), !dbg !94
  %37 = load i32* %PendingIntr, align 4, !dbg !95
  %38 = or i32 %37, -49408, !dbg !95
  %39 = icmp eq i32 0, %38, !dbg !95
  br i1 %39, label %40, label %48, !dbg !95

; <label>:40                                      ; preds = %15
  store i32 0, i32* %ErrorStatus, align 4, !dbg !97
  %41 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !99
  %42 = getelementptr inbounds %struct.XVtc* %41, i32 0, i32 10, !dbg !99
  %43 = load void (i8*, i32)** %42, align 4, !dbg !99
  %44 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !99
  %45 = getelementptr inbounds %struct.XVtc* %44, i32 0, i32 11, !dbg !99
  %46 = load i8** %45, align 4, !dbg !99
  %47 = load i32* %ErrorStatus, align 4, !dbg !99
  call void %43(i8* %46, i32 %47), !dbg !99
  br label %96, !dbg !100

; <label>:48                                      ; preds = %15
  %49 = load i32* %PendingIntr, align 4, !dbg !101
  %50 = and i32 %49, 12288, !dbg !101
  %51 = icmp ne i32 %50, 0, !dbg !101
  br i1 %51, label %52, label %60, !dbg !101

; <label>:52                                      ; preds = %48
  %53 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !103
  %54 = getelementptr inbounds %struct.XVtc* %53, i32 0, i32 8, !dbg !103
  %55 = load void (i8*, i32)** %54, align 4, !dbg !103
  %56 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !103
  %57 = getelementptr inbounds %struct.XVtc* %56, i32 0, i32 9, !dbg !103
  %58 = load i8** %57, align 4, !dbg !103
  %59 = load i32* %PendingIntr, align 4, !dbg !103
  call void %55(i8* %58, i32 %59), !dbg !103
  br label %60, !dbg !103

; <label>:60                                      ; preds = %52, %48
  %61 = load i32* %PendingIntr, align 4, !dbg !104
  %62 = and i32 %61, 3072, !dbg !104
  %63 = icmp ne i32 %62, 0, !dbg !104
  br i1 %63, label %64, label %72, !dbg !104

; <label>:64                                      ; preds = %60
  %65 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !106
  %66 = getelementptr inbounds %struct.XVtc* %65, i32 0, i32 6, !dbg !106
  %67 = load void (i8*, i32)** %66, align 4, !dbg !106
  %68 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !106
  %69 = getelementptr inbounds %struct.XVtc* %68, i32 0, i32 7, !dbg !106
  %70 = load i8** %69, align 4, !dbg !106
  %71 = load i32* %PendingIntr, align 4, !dbg !106
  call void %67(i8* %70, i32 %71), !dbg !106
  br label %72, !dbg !106

; <label>:72                                      ; preds = %64, %60
  %73 = load i32* %PendingIntr, align 4, !dbg !107
  %74 = and i32 %73, -65536, !dbg !107
  %75 = icmp ne i32 %74, 0, !dbg !107
  br i1 %75, label %76, label %84, !dbg !107

; <label>:76                                      ; preds = %72
  %77 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !109
  %78 = getelementptr inbounds %struct.XVtc* %77, i32 0, i32 2, !dbg !109
  %79 = load void (i8*, i32)** %78, align 4, !dbg !109
  %80 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !109
  %81 = getelementptr inbounds %struct.XVtc* %80, i32 0, i32 3, !dbg !109
  %82 = load i8** %81, align 4, !dbg !109
  %83 = load i32* %PendingIntr, align 4, !dbg !109
  call void %79(i8* %82, i32 %83), !dbg !109
  br label %84, !dbg !109

; <label>:84                                      ; preds = %76, %72
  %85 = load i32* %PendingIntr, align 4, !dbg !110
  %86 = and i32 %85, 768, !dbg !110
  %87 = icmp ne i32 %86, 0, !dbg !110
  br i1 %87, label %88, label %96, !dbg !110

; <label>:88                                      ; preds = %84
  %89 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !112
  %90 = getelementptr inbounds %struct.XVtc* %89, i32 0, i32 4, !dbg !112
  %91 = load void (i8*, i32)** %90, align 4, !dbg !112
  %92 = load %struct.XVtc** %XVtcPtr, align 4, !dbg !112
  %93 = getelementptr inbounds %struct.XVtc* %92, i32 0, i32 5, !dbg !112
  %94 = load i8** %93, align 4, !dbg !112
  %95 = load i32* %PendingIntr, align 4, !dbg !112
  call void %91(i8* %94, i32 %95), !dbg !112
  br label %96, !dbg !112

; <label>:96                                      ; preds = %7, %14, %40, %88, %84
  ret void, !dbg !113
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @Xil_Assert(i8*, i32) #2

declare i32 @Xil_In32(i32) #2

declare void @Xil_Out32(i32, i32) #2

; Function Attrs: nounwind
define i32 @XVtc_SetCallBack(%struct.XVtc* %InstancePtr, i32 %HandlerType, i8* %CallBackFunc, i8* %CallBackRef) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XVtc*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %2}, metadata !114), !dbg !115
  store i32 %HandlerType, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !116), !dbg !117
  store i8* %CallBackFunc, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !118), !dbg !119
  store i8* %CallBackRef, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !120), !dbg !121
  %6 = load %struct.XVtc** %2, align 4, !dbg !122
  %7 = icmp ne %struct.XVtc* %6, null, !dbg !122
  br i1 %7, label %8, label %9, !dbg !122

; <label>:8                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !125
  br label %10, !dbg !125

; <label>:9                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str, i32 0, i32 0), i32 258), !dbg !128
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !128
  store i32 0, i32* %1, !dbg !128
  br label %61, !dbg !128

; <label>:10                                      ; preds = %8
  %11 = load %struct.XVtc** %2, align 4, !dbg !131
  %12 = getelementptr inbounds %struct.XVtc* %11, i32 0, i32 1, !dbg !131
  %13 = load i32* %12, align 4, !dbg !131
  %14 = icmp eq i32 %13, 286331153, !dbg !131
  br i1 %14, label %15, label %16, !dbg !131

; <label>:15                                      ; preds = %10
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !134
  br label %17, !dbg !134

; <label>:16                                      ; preds = %10
  call void @Xil_Assert(i8* getelementptr inbounds ([57 x i8]* @.str, i32 0, i32 0), i32 259), !dbg !137
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !137
  store i32 0, i32* %1, !dbg !137
  br label %61, !dbg !137

; <label>:17                                      ; preds = %15
  %18 = load i32* %3, align 4, !dbg !140
  switch i32 %18, label %59 [
    i32 1, label %19
    i32 2, label %27
    i32 3, label %35
    i32 4, label %43
    i32 5, label %51
  ], !dbg !140

; <label>:19                                      ; preds = %17
  %20 = load i8** %4, align 4, !dbg !141
  %21 = bitcast i8* %20 to void (i8*, i32)*, !dbg !141
  %22 = load %struct.XVtc** %2, align 4, !dbg !141
  %23 = getelementptr inbounds %struct.XVtc* %22, i32 0, i32 2, !dbg !141
  store void (i8*, i32)* %21, void (i8*, i32)** %23, align 4, !dbg !141
  %24 = load i8** %5, align 4, !dbg !143
  %25 = load %struct.XVtc** %2, align 4, !dbg !143
  %26 = getelementptr inbounds %struct.XVtc* %25, i32 0, i32 3, !dbg !143
  store i8* %24, i8** %26, align 4, !dbg !143
  br label %60, !dbg !144

; <label>:27                                      ; preds = %17
  %28 = load i8** %4, align 4, !dbg !145
  %29 = bitcast i8* %28 to void (i8*, i32)*, !dbg !145
  %30 = load %struct.XVtc** %2, align 4, !dbg !145
  %31 = getelementptr inbounds %struct.XVtc* %30, i32 0, i32 4, !dbg !145
  store void (i8*, i32)* %29, void (i8*, i32)** %31, align 4, !dbg !145
  %32 = load i8** %5, align 4, !dbg !146
  %33 = load %struct.XVtc** %2, align 4, !dbg !146
  %34 = getelementptr inbounds %struct.XVtc* %33, i32 0, i32 5, !dbg !146
  store i8* %32, i8** %34, align 4, !dbg !146
  br label %60, !dbg !147

; <label>:35                                      ; preds = %17
  %36 = load i8** %4, align 4, !dbg !148
  %37 = bitcast i8* %36 to void (i8*, i32)*, !dbg !148
  %38 = load %struct.XVtc** %2, align 4, !dbg !148
  %39 = getelementptr inbounds %struct.XVtc* %38, i32 0, i32 6, !dbg !148
  store void (i8*, i32)* %37, void (i8*, i32)** %39, align 4, !dbg !148
  %40 = load i8** %5, align 4, !dbg !149
  %41 = load %struct.XVtc** %2, align 4, !dbg !149
  %42 = getelementptr inbounds %struct.XVtc* %41, i32 0, i32 7, !dbg !149
  store i8* %40, i8** %42, align 4, !dbg !149
  br label %60, !dbg !150

; <label>:43                                      ; preds = %17
  %44 = load i8** %4, align 4, !dbg !151
  %45 = bitcast i8* %44 to void (i8*, i32)*, !dbg !151
  %46 = load %struct.XVtc** %2, align 4, !dbg !151
  %47 = getelementptr inbounds %struct.XVtc* %46, i32 0, i32 8, !dbg !151
  store void (i8*, i32)* %45, void (i8*, i32)** %47, align 4, !dbg !151
  %48 = load i8** %5, align 4, !dbg !152
  %49 = load %struct.XVtc** %2, align 4, !dbg !152
  %50 = getelementptr inbounds %struct.XVtc* %49, i32 0, i32 9, !dbg !152
  store i8* %48, i8** %50, align 4, !dbg !152
  br label %60, !dbg !153

; <label>:51                                      ; preds = %17
  %52 = load i8** %4, align 4, !dbg !154
  %53 = bitcast i8* %52 to void (i8*, i32)*, !dbg !154
  %54 = load %struct.XVtc** %2, align 4, !dbg !154
  %55 = getelementptr inbounds %struct.XVtc* %54, i32 0, i32 10, !dbg !154
  store void (i8*, i32)* %53, void (i8*, i32)** %55, align 4, !dbg !154
  %56 = load i8** %5, align 4, !dbg !155
  %57 = load %struct.XVtc** %2, align 4, !dbg !155
  %58 = getelementptr inbounds %struct.XVtc* %57, i32 0, i32 11, !dbg !155
  store i8* %56, i8** %58, align 4, !dbg !155
  br label %60, !dbg !156

; <label>:59                                      ; preds = %17
  store i32 15, i32* %1, !dbg !157
  br label %61, !dbg !157

; <label>:60                                      ; preds = %51, %43, %35, %27, %19
  store i32 0, i32* %1, !dbg !158
  br label %61, !dbg !158

; <label>:61                                      ; preds = %60, %59, %16, %9
  %62 = load i32* %1, !dbg !159
  ret i32 %62, !dbg !159
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!xidane.function_declaration_filename = !{!48, !58, !50, !59, !52, !60, !54, !60, !56, !58}
!xidane.ExternC = !{!48, !50, !52, !54, !56}
!llvm.module.flags = !{!61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_IntrHandler", metadata !"XVtc_IntrHandler", metadata !"", i32 169, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @XVtc_IntrHandler, null, null, metadata !2, i32 170} ; [ DW_TAG_subprogram ] [line 169] [def] [scope 170] [XVtc_IntrHandler]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SetCallBack", metadata !"XVtc_SetCallBack", metadata !"", i32 253, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XVtc*, i32, i8*, i8*)* @XVtc_SetCallBack, null, null, metadata !2, i32 255} ; [ DW_TAG_subprogram ] [line 253] [def] [scope 255] [XVtc_SetCallBack]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !13, metadata !29, metadata !8, metadata !8}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc]
!14 = metadata !{i32 786454, metadata !15, null, metadata !"XVtc", i32 583, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [XVtc] [line 583, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786451, metadata !15, null, metadata !"", i32 555, i64 416, i64 32, i32 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 555, size 416, align 32, offset 0] [def] [from ]
!17 = metadata !{metadata !18, metadata !32, metadata !33, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !47}
!18 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"Config", i32 556, i64 64, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [Config] [line 556, size 64, align 32, offset 0] [from XVtc_Config]
!19 = metadata !{i32 786454, metadata !15, null, metadata !"XVtc_Config", i32 372, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [XVtc_Config] [line 372, size 0, align 0, offset 0] [from ]
!20 = metadata !{i32 786451, metadata !15, null, metadata !"", i32 367, i64 64, i64 32, i32 0, i32 0, null, metadata !21, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 367, size 64, align 32, offset 0] [def] [from ]
!21 = metadata !{metadata !22, metadata !28}
!22 = metadata !{i32 786445, metadata !15, metadata !20, metadata !"DeviceId", i32 368, i64 16, i64 16, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [DeviceId] [line 368, size 16, align 16, offset 0] [from u16]
!23 = metadata !{i32 786454, metadata !24, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!24 = metadata !{metadata !"../src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!25 = metadata !{i32 786454, metadata !26, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!26 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!27 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!28 = metadata !{i32 786445, metadata !15, metadata !20, metadata !"BaseAddress", i32 370, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [BaseAddress] [line 370, size 32, align 32, offset 32] [from u32]
!29 = metadata !{i32 786454, metadata !24, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!30 = metadata !{i32 786454, metadata !26, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!31 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"IsReady", i32 557, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [IsReady] [line 557, size 32, align 32, offset 64] [from u32]
!33 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"FrameSyncCallBack", i32 561, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [FrameSyncCallBack] [line 561, size 32, align 32, offset 96] [from XVtc_CallBack]
!34 = metadata !{i32 786454, metadata !15, null, metadata !"XVtc_CallBack", i32 531, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [XVtc_CallBack] [line 531, size 0, align 0, offset 0] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !8, metadata !29}
!38 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"FrameSyncRef", i32 563, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [FrameSyncRef] [line 563, size 32, align 32, offset 128] [from ]
!39 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"LockCallBack", i32 566, i64 32, i64 32, i64 160, i32 0, metadata !34} ; [ DW_TAG_member ] [LockCallBack] [line 566, size 32, align 32, offset 160] [from XVtc_CallBack]
!40 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"LockRef", i32 568, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [LockRef] [line 568, size 32, align 32, offset 192] [from ]
!41 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"DetectorCallBack", i32 571, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [DetectorCallBack] [line 571, size 32, align 32, offset 224] [from XVtc_CallBack]
!42 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"DetectorRef", i32 572, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [DetectorRef] [line 572, size 32, align 32, offset 256] [from ]
!43 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"GeneratorCallBack", i32 575, i64 32, i64 32, i64 288, i32 0, metadata !34} ; [ DW_TAG_member ] [GeneratorCallBack] [line 575, size 32, align 32, offset 288] [from XVtc_CallBack]
!44 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"GeneratorRef", i32 577, i64 32, i64 32, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [GeneratorRef] [line 577, size 32, align 32, offset 320] [from ]
!45 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"ErrCallBack", i32 580, i64 32, i64 32, i64 352, i32 0, metadata !46} ; [ DW_TAG_member ] [ErrCallBack] [line 580, size 32, align 32, offset 352] [from XVtc_ErrorCallBack]
!46 = metadata !{i32 786454, metadata !15, null, metadata !"XVtc_ErrorCallBack", i32 549, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [XVtc_ErrorCallBack] [line 549, size 0, align 0, offset 0] [from ]
!47 = metadata !{i32 786445, metadata !15, metadata !16, metadata !"ErrRef", i32 581, i64 32, i64 32, i64 384, i32 0, metadata !8} ; [ DW_TAG_member ] [ErrRef] [line 581, size 32, align 32, offset 384] [from ]
!48 = metadata !{void (i8*)* @XVtc_IntrHandler}
!49 = metadata !{metadata !"void.void *.1"}
!50 = metadata !{void (i8*, i32)* @Xil_Assert}
!51 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!52 = metadata !{i32 (i32)* @Xil_In32}
!53 = metadata !{metadata !"u32.INTPTR.0"}
!54 = metadata !{void (i32, i32)* @Xil_Out32}
!55 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!56 = metadata !{i32 (%struct.XVtc*, i32, i8*, i8*)* @XVtc_SetCallBack}
!57 = metadata !{metadata !"int.XVtc *.1.u32.0.void *.1.void *.1"}
!58 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h"}
!59 = metadata !{metadata !"../src/xil/xil_assert.h"}
!60 = metadata !{metadata !"../src/xil/xil_io.h"}
!61 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!62 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!63 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!64 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!65 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!66 = metadata !{i32 786689, metadata !4, metadata !"InstancePtr", metadata !5, i32 16777385, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 169]
!67 = metadata !{i32 169, i32 29, metadata !4, null}
!68 = metadata !{i32 786688, metadata !4, metadata !"PendingIntr", metadata !5, i32 171, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PendingIntr] [line 171]
!69 = metadata !{i32 171, i32 6, metadata !4, null}
!70 = metadata !{i32 786688, metadata !4, metadata !"ErrorStatus", metadata !5, i32 172, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ErrorStatus] [line 172]
!71 = metadata !{i32 172, i32 6, metadata !4, null}
!72 = metadata !{i32 786688, metadata !4, metadata !"XVtcPtr", metadata !5, i32 173, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [XVtcPtr] [line 173]
!73 = metadata !{i32 173, i32 8, metadata !4, null}
!74 = metadata !{i32 173, i32 2, metadata !4, null}
!75 = metadata !{i32 176, i32 2, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !77, i32 176, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!77 = metadata !{i32 786443, metadata !1, metadata !4, i32 176, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!78 = metadata !{i32 176, i32 2, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !80, i32 176, i32 2, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!80 = metadata !{i32 786443, metadata !1, metadata !76, i32 176, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!81 = metadata !{i32 176, i32 2, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !83, i32 176, i32 2, i32 2, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!83 = metadata !{i32 786443, metadata !1, metadata !76, i32 176, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!84 = metadata !{i32 177, i32 2, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !86, i32 177, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!86 = metadata !{i32 786443, metadata !1, metadata !4, i32 177, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!87 = metadata !{i32 177, i32 2, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !89, i32 177, i32 2, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!89 = metadata !{i32 786443, metadata !1, metadata !85, i32 177, i32 2, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!90 = metadata !{i32 177, i32 2, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !92, i32 177, i32 2, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!92 = metadata !{i32 786443, metadata !1, metadata !85, i32 177, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!93 = metadata !{i32 180, i32 16, metadata !4, null}
!94 = metadata !{i32 183, i32 2, metadata !4, null}
!95 = metadata !{i32 186, i32 6, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !4, i32 186, i32 6, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!97 = metadata !{i32 187, i32 3, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !96, i32 186, i32 50, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!99 = metadata !{i32 188, i32 3, metadata !98, null}
!100 = metadata !{i32 189, i32 3, metadata !98, null}
!101 = metadata !{i32 193, i32 6, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !4, i32 193, i32 6, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!103 = metadata !{i32 194, i32 3, metadata !102, null}
!104 = metadata !{i32 198, i32 6, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !4, i32 198, i32 6, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!106 = metadata !{i32 199, i32 3, metadata !105, null}
!107 = metadata !{i32 203, i32 6, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !4, i32 203, i32 6, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!109 = metadata !{i32 204, i32 3, metadata !108, null}
!110 = metadata !{i32 208, i32 6, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !4, i32 208, i32 6, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!112 = metadata !{i32 209, i32 3, metadata !111, null}
!113 = metadata !{i32 211, i32 1, metadata !4, null}
!114 = metadata !{i32 786689, metadata !9, metadata !"InstancePtr", metadata !5, i32 16777469, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 253]
!115 = metadata !{i32 253, i32 28, metadata !9, null}
!116 = metadata !{i32 786689, metadata !9, metadata !"HandlerType", metadata !5, i32 33554685, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HandlerType] [line 253]
!117 = metadata !{i32 253, i32 45, metadata !9, null}
!118 = metadata !{i32 786689, metadata !9, metadata !"CallBackFunc", metadata !5, i32 50331902, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CallBackFunc] [line 254]
!119 = metadata !{i32 254, i32 11, metadata !9, null}
!120 = metadata !{i32 786689, metadata !9, metadata !"CallBackRef", metadata !5, i32 67109118, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CallBackRef] [line 254]
!121 = metadata !{i32 254, i32 31, metadata !9, null}
!122 = metadata !{i32 258, i32 2, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !124, i32 258, i32 2, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!124 = metadata !{i32 786443, metadata !1, metadata !9, i32 258, i32 2, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!125 = metadata !{i32 258, i32 2, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !127, i32 258, i32 2, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!127 = metadata !{i32 786443, metadata !1, metadata !123, i32 258, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!128 = metadata !{i32 258, i32 2, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !130, i32 258, i32 2, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!130 = metadata !{i32 786443, metadata !1, metadata !123, i32 258, i32 2, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!131 = metadata !{i32 259, i32 2, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !133, i32 259, i32 2, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!133 = metadata !{i32 786443, metadata !1, metadata !9, i32 259, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!134 = metadata !{i32 259, i32 2, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !136, i32 259, i32 2, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!136 = metadata !{i32 786443, metadata !1, metadata !132, i32 259, i32 2, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!137 = metadata !{i32 259, i32 2, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !139, i32 259, i32 2, i32 2, i32 30} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!139 = metadata !{i32 786443, metadata !1, metadata !132, i32 259, i32 2, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!140 = metadata !{i32 262, i32 2, metadata !9, null}
!141 = metadata !{i32 264, i32 3, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !9, i32 262, i32 23, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_intr.c]
!143 = metadata !{i32 266, i32 3, metadata !142, null}
!144 = metadata !{i32 267, i32 3, metadata !142, null}
!145 = metadata !{i32 270, i32 3, metadata !142, null}
!146 = metadata !{i32 271, i32 3, metadata !142, null}
!147 = metadata !{i32 272, i32 3, metadata !142, null}
!148 = metadata !{i32 275, i32 3, metadata !142, null}
!149 = metadata !{i32 277, i32 3, metadata !142, null}
!150 = metadata !{i32 278, i32 3, metadata !142, null}
!151 = metadata !{i32 281, i32 3, metadata !142, null}
!152 = metadata !{i32 283, i32 3, metadata !142, null}
!153 = metadata !{i32 284, i32 3, metadata !142, null}
!154 = metadata !{i32 287, i32 3, metadata !142, null}
!155 = metadata !{i32 289, i32 3, metadata !142, null}
!156 = metadata !{i32 290, i32 3, metadata !142, null}
!157 = metadata !{i32 293, i32 3, metadata !142, null}
!158 = metadata !{i32 296, i32 2, metadata !9, null}
!159 = metadata !{i32 297, i32 1, metadata !9, null}
