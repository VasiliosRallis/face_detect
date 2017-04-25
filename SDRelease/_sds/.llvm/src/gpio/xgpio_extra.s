; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XGpio = type { i32, i32, i32, i32 }

@Xil_AssertStatus = external global i32
@.str = private unnamed_addr constant [60 x i8] c"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c\00", align 1

; Function Attrs: nounwind
define void @XGpio_DiscreteSet(%struct.XGpio* %InstancePtr, i32 %Channel, i32 %Mask) #0 {
  %1 = alloca %struct.XGpio*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %Current = alloca i32, align 4
  %DataOffset = alloca i32, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %1}, metadata !41), !dbg !42
  store i32 %Channel, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !43), !dbg !44
  store i32 %Mask, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !45), !dbg !46
  call void @llvm.dbg.declare(metadata !{i32* %Current}, metadata !47), !dbg !48
  call void @llvm.dbg.declare(metadata !{i32* %DataOffset}, metadata !49), !dbg !50
  %4 = load %struct.XGpio** %1, align 4, !dbg !51
  %5 = icmp ne %struct.XGpio* %4, null, !dbg !51
  br i1 %5, label %6, label %7, !dbg !51

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !54
  br label %8, !dbg !54

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([60 x i8]* @.str, i32 0, i32 0), i32 104), !dbg !57
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !57
  br label %48, !dbg !57

; <label>:8                                       ; preds = %6
  %9 = load %struct.XGpio** %1, align 4, !dbg !60
  %10 = getelementptr inbounds %struct.XGpio* %9, i32 0, i32 1, !dbg !60
  %11 = load i32* %10, align 4, !dbg !60
  %12 = icmp eq i32 %11, 286331153, !dbg !60
  br i1 %12, label %13, label %14, !dbg !60

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !63
  br label %15, !dbg !63

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([60 x i8]* @.str, i32 0, i32 0), i32 105), !dbg !66
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !66
  br label %48, !dbg !66

; <label>:15                                      ; preds = %13
  %16 = load i32* %2, align 4, !dbg !69
  %17 = icmp eq i32 %16, 1, !dbg !69
  br i1 %17, label %26, label %18, !dbg !69

; <label>:18                                      ; preds = %15
  %19 = load i32* %2, align 4, !dbg !72
  %20 = icmp eq i32 %19, 2, !dbg !72
  br i1 %20, label %21, label %27, !dbg !72

; <label>:21                                      ; preds = %18
  %22 = load %struct.XGpio** %1, align 4, !dbg !74
  %23 = getelementptr inbounds %struct.XGpio* %22, i32 0, i32 3, !dbg !74
  %24 = load i32* %23, align 4, !dbg !74
  %25 = icmp eq i32 %24, 1, !dbg !74
  br i1 %25, label %26, label %27, !dbg !74

; <label>:26                                      ; preds = %21, %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !76
  br label %28, !dbg !76

; <label>:27                                      ; preds = %21, %18
  call void @Xil_Assert(i8* getelementptr inbounds ([60 x i8]* @.str, i32 0, i32 0), i32 107), !dbg !80
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !80
  br label %48, !dbg !80

; <label>:28                                      ; preds = %26
  %29 = load i32* %2, align 4, !dbg !84
  %30 = sub i32 %29, 1, !dbg !84
  %31 = mul i32 %30, 8, !dbg !84
  %32 = add i32 %31, 0, !dbg !84
  store i32 %32, i32* %DataOffset, align 4, !dbg !84
  %33 = load %struct.XGpio** %1, align 4, !dbg !85
  %34 = getelementptr inbounds %struct.XGpio* %33, i32 0, i32 0, !dbg !85
  %35 = load i32* %34, align 4, !dbg !85
  %36 = load i32* %DataOffset, align 4, !dbg !85
  %37 = add i32 %35, %36, !dbg !85
  %38 = call i32 @Xil_In32(i32 %37), !dbg !85
  store i32 %38, i32* %Current, align 4, !dbg !85
  %39 = load i32* %3, align 4, !dbg !86
  %40 = load i32* %Current, align 4, !dbg !86
  %41 = or i32 %40, %39, !dbg !86
  store i32 %41, i32* %Current, align 4, !dbg !86
  %42 = load %struct.XGpio** %1, align 4, !dbg !87
  %43 = getelementptr inbounds %struct.XGpio* %42, i32 0, i32 0, !dbg !87
  %44 = load i32* %43, align 4, !dbg !87
  %45 = load i32* %DataOffset, align 4, !dbg !87
  %46 = add i32 %44, %45, !dbg !87
  %47 = load i32* %Current, align 4, !dbg !87
  call void @Xil_Out32(i32 %46, i32 %47), !dbg !87
  br label %48, !dbg !88

; <label>:48                                      ; preds = %28, %27, %14, %7
  ret void, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @Xil_Assert(i8*, i32) #2

declare i32 @Xil_In32(i32) #2

declare void @Xil_Out32(i32, i32) #2

; Function Attrs: nounwind
define void @XGpio_DiscreteClear(%struct.XGpio* %InstancePtr, i32 %Channel, i32 %Mask) #0 {
  %1 = alloca %struct.XGpio*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %Current = alloca i32, align 4
  %DataOffset = alloca i32, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %1}, metadata !91), !dbg !92
  store i32 %Channel, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !93), !dbg !94
  store i32 %Mask, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !95), !dbg !96
  call void @llvm.dbg.declare(metadata !{i32* %Current}, metadata !97), !dbg !98
  call void @llvm.dbg.declare(metadata !{i32* %DataOffset}, metadata !99), !dbg !100
  %4 = load %struct.XGpio** %1, align 4, !dbg !101
  %5 = icmp ne %struct.XGpio* %4, null, !dbg !101
  br i1 %5, label %6, label %7, !dbg !101

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !104
  br label %8, !dbg !104

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([60 x i8]* @.str, i32 0, i32 0), i32 150), !dbg !107
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !107
  br label %49, !dbg !107

; <label>:8                                       ; preds = %6
  %9 = load %struct.XGpio** %1, align 4, !dbg !110
  %10 = getelementptr inbounds %struct.XGpio* %9, i32 0, i32 1, !dbg !110
  %11 = load i32* %10, align 4, !dbg !110
  %12 = icmp eq i32 %11, 286331153, !dbg !110
  br i1 %12, label %13, label %14, !dbg !110

; <label>:13                                      ; preds = %8
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !113
  br label %15, !dbg !113

; <label>:14                                      ; preds = %8
  call void @Xil_Assert(i8* getelementptr inbounds ([60 x i8]* @.str, i32 0, i32 0), i32 151), !dbg !116
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !116
  br label %49, !dbg !116

; <label>:15                                      ; preds = %13
  %16 = load i32* %2, align 4, !dbg !119
  %17 = icmp eq i32 %16, 1, !dbg !119
  br i1 %17, label %26, label %18, !dbg !119

; <label>:18                                      ; preds = %15
  %19 = load i32* %2, align 4, !dbg !122
  %20 = icmp eq i32 %19, 2, !dbg !122
  br i1 %20, label %21, label %27, !dbg !122

; <label>:21                                      ; preds = %18
  %22 = load %struct.XGpio** %1, align 4, !dbg !124
  %23 = getelementptr inbounds %struct.XGpio* %22, i32 0, i32 3, !dbg !124
  %24 = load i32* %23, align 4, !dbg !124
  %25 = icmp eq i32 %24, 1, !dbg !124
  br i1 %25, label %26, label %27, !dbg !124

; <label>:26                                      ; preds = %21, %15
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !126
  br label %28, !dbg !126

; <label>:27                                      ; preds = %21, %18
  call void @Xil_Assert(i8* getelementptr inbounds ([60 x i8]* @.str, i32 0, i32 0), i32 153), !dbg !130
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !130
  br label %49, !dbg !130

; <label>:28                                      ; preds = %26
  %29 = load i32* %2, align 4, !dbg !134
  %30 = sub i32 %29, 1, !dbg !134
  %31 = mul i32 %30, 8, !dbg !134
  %32 = add i32 %31, 0, !dbg !134
  store i32 %32, i32* %DataOffset, align 4, !dbg !134
  %33 = load %struct.XGpio** %1, align 4, !dbg !135
  %34 = getelementptr inbounds %struct.XGpio* %33, i32 0, i32 0, !dbg !135
  %35 = load i32* %34, align 4, !dbg !135
  %36 = load i32* %DataOffset, align 4, !dbg !135
  %37 = add i32 %35, %36, !dbg !135
  %38 = call i32 @Xil_In32(i32 %37), !dbg !135
  store i32 %38, i32* %Current, align 4, !dbg !135
  %39 = load i32* %3, align 4, !dbg !136
  %40 = xor i32 %39, -1, !dbg !136
  %41 = load i32* %Current, align 4, !dbg !136
  %42 = and i32 %41, %40, !dbg !136
  store i32 %42, i32* %Current, align 4, !dbg !136
  %43 = load %struct.XGpio** %1, align 4, !dbg !137
  %44 = getelementptr inbounds %struct.XGpio* %43, i32 0, i32 0, !dbg !137
  %45 = load i32* %44, align 4, !dbg !137
  %46 = load i32* %DataOffset, align 4, !dbg !137
  %47 = add i32 %45, %46, !dbg !137
  %48 = load i32* %Current, align 4, !dbg !137
  call void @Xil_Out32(i32 %47, i32 %48), !dbg !137
  br label %49, !dbg !138

; <label>:49                                      ; preds = %28, %27, %14, %7
  ret void, !dbg !139
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !25}
!xidane.function_declaration_filename = !{!24, !33, !26, !34, !28, !35, !30, !35, !32, !33}
!xidane.ExternC = !{!24, !26, !28, !30, !32}
!llvm.module.flags = !{!36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !23}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_DiscreteSet", metadata !"XGpio_DiscreteSet", metadata !"", i32 99, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XGpio*, i32, i32)* @XGpio_DiscreteSet, null, null, metadata !2, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [XGpio_DiscreteSet]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !18, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XGpio]
!9 = metadata !{i32 786454, metadata !10, null, metadata !"XGpio", i32 147, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [XGpio] [line 147, size 0, align 0, offset 0] [from ]
!10 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!11 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 142, i64 128, i64 32, i32 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 142, size 128, align 32, offset 0] [def] [from ]
!12 = metadata !{metadata !13, metadata !19, metadata !20, metadata !22}
!13 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"BaseAddress", i32 143, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [BaseAddress] [line 143, size 32, align 32, offset 0] [from u32]
!14 = metadata !{i32 786454, metadata !15, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!15 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786454, metadata !17, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!17 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!18 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!19 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"IsReady", i32 144, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [IsReady] [line 144, size 32, align 32, offset 32] [from u32]
!20 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"InterruptPresent", i32 145, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [InterruptPresent] [line 145, size 32, align 32, offset 64] [from int]
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"IsDual", i32 146, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [IsDual] [line 146, size 32, align 32, offset 96] [from int]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_DiscreteClear", metadata !"XGpio_DiscreteClear", metadata !"", i32 145, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.XGpio*, i32, i32)* @XGpio_DiscreteClear, null, null, metadata !2, i32 146} ; [ DW_TAG_subprogram ] [line 145] [def] [scope 146] [XGpio_DiscreteClear]
!24 = metadata !{void (%struct.XGpio*, i32, i32)* @XGpio_DiscreteSet}
!25 = metadata !{metadata !"void.XGpio *.1.unsigned int.0.u32.0"}
!26 = metadata !{void (i8*, i32)* @Xil_Assert}
!27 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!28 = metadata !{i32 (i32)* @Xil_In32}
!29 = metadata !{metadata !"u32.INTPTR.0"}
!30 = metadata !{void (i32, i32)* @Xil_Out32}
!31 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!32 = metadata !{void (%struct.XGpio*, i32, i32)* @XGpio_DiscreteClear}
!33 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.h"}
!34 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_assert.h"}
!35 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_io.h"}
!36 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!37 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!38 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!39 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!40 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!41 = metadata !{i32 786689, metadata !4, metadata !"InstancePtr", metadata !5, i32 16777315, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 99]
!42 = metadata !{i32 99, i32 32, metadata !4, null}
!43 = metadata !{i32 786689, metadata !4, metadata !"Channel", metadata !5, i32 33554531, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 99]
!44 = metadata !{i32 99, i32 54, metadata !4, null}
!45 = metadata !{i32 786689, metadata !4, metadata !"Mask", metadata !5, i32 50331747, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Mask] [line 99]
!46 = metadata !{i32 99, i32 67, metadata !4, null}
!47 = metadata !{i32 786688, metadata !4, metadata !"Current", metadata !5, i32 101, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Current] [line 101]
!48 = metadata !{i32 101, i32 6, metadata !4, null}
!49 = metadata !{i32 786688, metadata !4, metadata !"DataOffset", metadata !5, i32 102, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DataOffset] [line 102]
!50 = metadata !{i32 102, i32 11, metadata !4, null}
!51 = metadata !{i32 104, i32 2, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !53, i32 104, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 104, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!54 = metadata !{i32 104, i32 2, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 104, i32 2, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!56 = metadata !{i32 786443, metadata !1, metadata !52, i32 104, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!57 = metadata !{i32 104, i32 2, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !59, i32 104, i32 2, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!59 = metadata !{i32 786443, metadata !1, metadata !52, i32 104, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!60 = metadata !{i32 105, i32 2, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !62, i32 105, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!62 = metadata !{i32 786443, metadata !1, metadata !4, i32 105, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!63 = metadata !{i32 105, i32 2, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !65, i32 105, i32 2, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!65 = metadata !{i32 786443, metadata !1, metadata !61, i32 105, i32 2, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!66 = metadata !{i32 105, i32 2, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !68, i32 105, i32 2, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!68 = metadata !{i32 786443, metadata !1, metadata !61, i32 105, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!69 = metadata !{i32 106, i32 2, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !71, i32 106, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!71 = metadata !{i32 786443, metadata !1, metadata !4, i32 106, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!72 = metadata !{i32 106, i32 2, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !70, i32 106, i32 2, i32 2, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!74 = metadata !{i32 106, i32 2, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !70, i32 106, i32 2, i32 3, i32 30} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!76 = metadata !{i32 106, i32 2, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 106, i32 2, i32 5, i32 32} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!78 = metadata !{i32 786443, metadata !1, metadata !79, i32 106, i32 2, i32 1, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!79 = metadata !{i32 786443, metadata !1, metadata !70, i32 106, i32 2, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!80 = metadata !{i32 106, i32 2, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !82, i32 106, i32 2, i32 6, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!82 = metadata !{i32 786443, metadata !1, metadata !83, i32 106, i32 2, i32 4, i32 31} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!83 = metadata !{i32 786443, metadata !1, metadata !70, i32 106, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!84 = metadata !{i32 112, i32 2, metadata !4, null}
!85 = metadata !{i32 118, i32 12, metadata !4, null}
!86 = metadata !{i32 119, i32 2, metadata !4, null}
!87 = metadata !{i32 120, i32 2, metadata !4, null}
!88 = metadata !{i32 121, i32 1, metadata !4, null}
!89 = metadata !{i32 121, i32 1, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !4, i32 121, i32 1, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!91 = metadata !{i32 786689, metadata !23, metadata !"InstancePtr", metadata !5, i32 16777361, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 145]
!92 = metadata !{i32 145, i32 34, metadata !23, null}
!93 = metadata !{i32 786689, metadata !23, metadata !"Channel", metadata !5, i32 33554577, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Channel] [line 145]
!94 = metadata !{i32 145, i32 56, metadata !23, null}
!95 = metadata !{i32 786689, metadata !23, metadata !"Mask", metadata !5, i32 50331793, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Mask] [line 145]
!96 = metadata !{i32 145, i32 69, metadata !23, null}
!97 = metadata !{i32 786688, metadata !23, metadata !"Current", metadata !5, i32 147, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Current] [line 147]
!98 = metadata !{i32 147, i32 6, metadata !23, null}
!99 = metadata !{i32 786688, metadata !23, metadata !"DataOffset", metadata !5, i32 148, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DataOffset] [line 148]
!100 = metadata !{i32 148, i32 11, metadata !23, null}
!101 = metadata !{i32 150, i32 2, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !103, i32 150, i32 2, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!103 = metadata !{i32 786443, metadata !1, metadata !23, i32 150, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!104 = metadata !{i32 150, i32 2, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !106, i32 150, i32 2, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!106 = metadata !{i32 786443, metadata !1, metadata !102, i32 150, i32 2, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!107 = metadata !{i32 150, i32 2, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !109, i32 150, i32 2, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!109 = metadata !{i32 786443, metadata !1, metadata !102, i32 150, i32 2, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!110 = metadata !{i32 151, i32 2, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !112, i32 151, i32 2, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!112 = metadata !{i32 786443, metadata !1, metadata !23, i32 151, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!113 = metadata !{i32 151, i32 2, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !115, i32 151, i32 2, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!115 = metadata !{i32 786443, metadata !1, metadata !111, i32 151, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!116 = metadata !{i32 151, i32 2, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !118, i32 151, i32 2, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!118 = metadata !{i32 786443, metadata !1, metadata !111, i32 151, i32 2, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!119 = metadata !{i32 152, i32 2, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !121, i32 152, i32 2, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!121 = metadata !{i32 786443, metadata !1, metadata !23, i32 152, i32 2, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!122 = metadata !{i32 152, i32 2, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !120, i32 152, i32 2, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!124 = metadata !{i32 152, i32 2, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !120, i32 152, i32 2, i32 3, i32 41} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!126 = metadata !{i32 152, i32 2, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !128, i32 152, i32 2, i32 5, i32 43} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!128 = metadata !{i32 786443, metadata !1, metadata !129, i32 152, i32 2, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!129 = metadata !{i32 786443, metadata !1, metadata !120, i32 152, i32 2, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!130 = metadata !{i32 152, i32 2, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !132, i32 152, i32 2, i32 6, i32 44} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!132 = metadata !{i32 786443, metadata !1, metadata !133, i32 152, i32 2, i32 4, i32 42} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!133 = metadata !{i32 786443, metadata !1, metadata !120, i32 152, i32 2, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
!134 = metadata !{i32 158, i32 2, metadata !23, null}
!135 = metadata !{i32 164, i32 12, metadata !23, null}
!136 = metadata !{i32 165, i32 2, metadata !23, null}
!137 = metadata !{i32 166, i32 2, metadata !23, null}
!138 = metadata !{i32 167, i32 1, metadata !23, null}
!139 = metadata !{i32 167, i32 1, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !23, i32 167, i32 1, i32 1, i32 45} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_extra.c]
