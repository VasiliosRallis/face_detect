; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XGpio_Config = type { i16, i32, i32, i32 }
%struct.XGpio = type { i32, i32, i32, i32 }

@XGpio_ConfigTable = external global [0 x %struct.XGpio_Config]
@Xil_AssertStatus = external global i32
@.str = private unnamed_addr constant [60 x i8] c"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c\00", align 1

; Function Attrs: nounwind
define %struct.XGpio_Config* @XGpio_LookupConfig(i16 zeroext %DeviceId) #0 {
  %1 = alloca i16, align 2
  %CfgPtr = alloca %struct.XGpio_Config*, align 4
  %Index = alloca i32, align 4
  store i16 %DeviceId, i16* %1, align 2
  call void @llvm.dbg.declare(metadata !{i16* %1}, metadata !52), !dbg !53
  call void @llvm.dbg.declare(metadata !{%struct.XGpio_Config** %CfgPtr}, metadata !54), !dbg !55
  store %struct.XGpio_Config* null, %struct.XGpio_Config** %CfgPtr, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata !{i32* %Index}, metadata !57), !dbg !58
  store i32 0, i32* %Index, align 4, !dbg !59
  br label %2, !dbg !59

; <label>:2                                       ; preds = %18, %0
  %3 = load i32* %Index, align 4, !dbg !61
  %4 = icmp slt i32 %3, 3, !dbg !61
  br i1 %4, label %5, label %21, !dbg !61

; <label>:5                                       ; preds = %2
  %6 = load i32* %Index, align 4, !dbg !64
  %7 = getelementptr inbounds [0 x %struct.XGpio_Config]* @XGpio_ConfigTable, i32 0, i32 %6, !dbg !64
  %8 = getelementptr inbounds %struct.XGpio_Config* %7, i32 0, i32 0, !dbg !64
  %9 = load i16* %8, align 2, !dbg !64
  %10 = zext i16 %9 to i32, !dbg !64
  %11 = load i16* %1, align 2, !dbg !64
  %12 = zext i16 %11 to i32, !dbg !64
  %13 = icmp eq i32 %10, %12, !dbg !64
  br i1 %13, label %14, label %17, !dbg !64

; <label>:14                                      ; preds = %5
  %15 = load i32* %Index, align 4, !dbg !67
  %16 = getelementptr inbounds [0 x %struct.XGpio_Config]* @XGpio_ConfigTable, i32 0, i32 %15, !dbg !67
  store %struct.XGpio_Config* %16, %struct.XGpio_Config** %CfgPtr, align 4, !dbg !67
  br label %21, !dbg !69

; <label>:17                                      ; preds = %5
  br label %18, !dbg !70

; <label>:18                                      ; preds = %17
  %19 = load i32* %Index, align 4, !dbg !71
  %20 = add nsw i32 %19, 1, !dbg !71
  store i32 %20, i32* %Index, align 4, !dbg !71
  br label %2, !dbg !71

; <label>:21                                      ; preds = %14, %2
  %22 = load %struct.XGpio_Config** %CfgPtr, align 4, !dbg !72
  ret %struct.XGpio_Config* %22, !dbg !72
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define i32 @XGpio_Initialize(%struct.XGpio* %InstancePtr, i16 zeroext %DeviceId) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XGpio*, align 4
  %3 = alloca i16, align 2
  %ConfigPtr = alloca %struct.XGpio_Config*, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %2}, metadata !73), !dbg !74
  store i16 %DeviceId, i16* %3, align 2
  call void @llvm.dbg.declare(metadata !{i16* %3}, metadata !75), !dbg !76
  call void @llvm.dbg.declare(metadata !{%struct.XGpio_Config** %ConfigPtr}, metadata !77), !dbg !78
  %4 = load %struct.XGpio** %2, align 4, !dbg !79
  %5 = icmp ne %struct.XGpio* %4, null, !dbg !79
  br i1 %5, label %6, label %7, !dbg !79

; <label>:6                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !82
  br label %8, !dbg !82

; <label>:7                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([60 x i8]* @.str, i32 0, i32 0), i32 143), !dbg !85
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !85
  store i32 0, i32* %1, !dbg !85
  br label %23, !dbg !85

; <label>:8                                       ; preds = %6
  %9 = load i16* %3, align 2, !dbg !88
  %10 = call %struct.XGpio_Config* @XGpio_LookupConfig(i16 zeroext %9), !dbg !88
  store %struct.XGpio_Config* %10, %struct.XGpio_Config** %ConfigPtr, align 4, !dbg !88
  %11 = load %struct.XGpio_Config** %ConfigPtr, align 4, !dbg !89
  %12 = icmp eq %struct.XGpio_Config* %11, null, !dbg !89
  br i1 %12, label %13, label %16, !dbg !89

; <label>:13                                      ; preds = %8
  %14 = load %struct.XGpio** %2, align 4, !dbg !91
  %15 = getelementptr inbounds %struct.XGpio* %14, i32 0, i32 1, !dbg !91
  store i32 0, i32* %15, align 4, !dbg !91
  store i32 2, i32* %1, !dbg !93
  br label %23, !dbg !93

; <label>:16                                      ; preds = %8
  %17 = load %struct.XGpio** %2, align 4, !dbg !94
  %18 = load %struct.XGpio_Config** %ConfigPtr, align 4, !dbg !94
  %19 = load %struct.XGpio_Config** %ConfigPtr, align 4, !dbg !94
  %20 = getelementptr inbounds %struct.XGpio_Config* %19, i32 0, i32 1, !dbg !94
  %21 = load i32* %20, align 4, !dbg !94
  %22 = call i32 @XGpio_CfgInitialize(%struct.XGpio* %17, %struct.XGpio_Config* %18, i32 %21), !dbg !94
  store i32 %22, i32* %1, !dbg !94
  br label %23, !dbg !94

; <label>:23                                      ; preds = %16, %13, %7
  %24 = load i32* %1, !dbg !95
  ret i32 %24, !dbg !95
}

declare void @Xil_Assert(i8*, i32) #2

declare i32 @XGpio_CfgInitialize(%struct.XGpio*, %struct.XGpio_Config*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!37, !38, !39, !40, !41, !42, !43, !44}
!xidane.function_declaration_filename = !{!37, !45, !39, !45, !41, !46, !43, !45}
!xidane.ExternC = !{!37, !39, !41, !43}
!llvm.module.flags = !{!47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !26}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_LookupConfig", metadata !"XGpio_LookupConfig", metadata !"", i32 95, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.XGpio_Config* (i16)* @XGpio_LookupConfig, null, null, metadata !2, i32 96} ; [ DW_TAG_subprogram ] [line 95] [def] [scope 96] [XGpio_LookupConfig]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XGpio_Config]
!9 = metadata !{i32 786454, metadata !10, null, metadata !"XGpio_Config", i32 135, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [XGpio_Config] [line 135, size 0, align 0, offset 0] [from ]
!10 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!11 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 130, i64 128, i64 32, i32 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 130, size 128, align 32, offset 0] [def] [from ]
!12 = metadata !{metadata !13, metadata !19, metadata !23, metadata !25}
!13 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"DeviceId", i32 131, i64 16, i64 16, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [DeviceId] [line 131, size 16, align 16, offset 0] [from u16]
!14 = metadata !{i32 786454, metadata !15, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!15 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786454, metadata !17, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!17 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!18 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!19 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"BaseAddress", i32 132, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [BaseAddress] [line 132, size 32, align 32, offset 32] [from u32]
!20 = metadata !{i32 786454, metadata !15, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!21 = metadata !{i32 786454, metadata !17, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!22 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!23 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"InterruptPresent", i32 133, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [InterruptPresent] [line 133, size 32, align 32, offset 64] [from int]
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"IsDual", i32 134, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [IsDual] [line 134, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_Initialize", metadata !"XGpio_Initialize", metadata !"", i32 136, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XGpio*, i16)* @XGpio_Initialize, null, null, metadata !2, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [XGpio_Initialize]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !24, metadata !29, metadata !14}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XGpio]
!30 = metadata !{i32 786454, metadata !10, null, metadata !"XGpio", i32 147, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [XGpio] [line 147, size 0, align 0, offset 0] [from ]
!31 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 142, i64 128, i64 32, i32 0, i32 0, null, metadata !32, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 142, size 128, align 32, offset 0] [def] [from ]
!32 = metadata !{metadata !33, metadata !34, metadata !35, metadata !36}
!33 = metadata !{i32 786445, metadata !10, metadata !31, metadata !"BaseAddress", i32 143, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [BaseAddress] [line 143, size 32, align 32, offset 0] [from u32]
!34 = metadata !{i32 786445, metadata !10, metadata !31, metadata !"IsReady", i32 144, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [IsReady] [line 144, size 32, align 32, offset 32] [from u32]
!35 = metadata !{i32 786445, metadata !10, metadata !31, metadata !"InterruptPresent", i32 145, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [InterruptPresent] [line 145, size 32, align 32, offset 64] [from int]
!36 = metadata !{i32 786445, metadata !10, metadata !31, metadata !"IsDual", i32 146, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [IsDual] [line 146, size 32, align 32, offset 96] [from int]
!37 = metadata !{%struct.XGpio_Config* (i16)* @XGpio_LookupConfig}
!38 = metadata !{metadata !"XGpio_Config .u16.0"}
!39 = metadata !{i32 (%struct.XGpio*, i16)* @XGpio_Initialize}
!40 = metadata !{metadata !"int.XGpio *.1.u16.0"}
!41 = metadata !{void (i8*, i32)* @Xil_Assert}
!42 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!43 = metadata !{i32 (%struct.XGpio*, %struct.XGpio_Config*, i32)* @XGpio_CfgInitialize}
!44 = metadata !{metadata !"int.XGpio *.1.XGpio_Config *.1.u32.0"}
!45 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.h"}
!46 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_assert.h"}
!47 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!48 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!49 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!50 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!51 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!52 = metadata !{i32 786689, metadata !4, metadata !"DeviceId", metadata !5, i32 16777311, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceId] [line 95]
!53 = metadata !{i32 95, i32 38, metadata !4, null}
!54 = metadata !{i32 786688, metadata !4, metadata !"CfgPtr", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CfgPtr] [line 97]
!55 = metadata !{i32 97, i32 16, metadata !4, null}
!56 = metadata !{i32 97, i32 2, metadata !4, null}
!57 = metadata !{i32 786688, metadata !4, metadata !"Index", metadata !5, i32 99, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Index] [line 99]
!58 = metadata !{i32 99, i32 6, metadata !4, null}
!59 = metadata !{i32 101, i32 7, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !4, i32 101, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!61 = metadata !{i32 101, i32 7, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !63, i32 101, i32 7, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!63 = metadata !{i32 786443, metadata !1, metadata !60, i32 101, i32 7, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!64 = metadata !{i32 102, i32 7, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !66, i32 102, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!66 = metadata !{i32 786443, metadata !1, metadata !60, i32 101, i32 61, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!67 = metadata !{i32 103, i32 4, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !65, i32 102, i32 54, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!69 = metadata !{i32 104, i32 4, metadata !68, null}
!70 = metadata !{i32 106, i32 2, metadata !66, null}
!71 = metadata !{i32 101, i32 52, metadata !60, null}
!72 = metadata !{i32 108, i32 2, metadata !4, null}
!73 = metadata !{i32 786689, metadata !26, metadata !"InstancePtr", metadata !5, i32 16777352, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 136]
!74 = metadata !{i32 136, i32 30, metadata !26, null}
!75 = metadata !{i32 786689, metadata !26, metadata !"DeviceId", metadata !5, i32 33554568, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceId] [line 136]
!76 = metadata !{i32 136, i32 47, metadata !26, null}
!77 = metadata !{i32 786688, metadata !26, metadata !"ConfigPtr", metadata !5, i32 138, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ConfigPtr] [line 138]
!78 = metadata !{i32 138, i32 16, metadata !26, null}
!79 = metadata !{i32 143, i32 2, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !81, i32 143, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!81 = metadata !{i32 786443, metadata !1, metadata !26, i32 143, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!82 = metadata !{i32 143, i32 2, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !84, i32 143, i32 2, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!84 = metadata !{i32 786443, metadata !1, metadata !80, i32 143, i32 2, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!85 = metadata !{i32 143, i32 2, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !87, i32 143, i32 2, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!87 = metadata !{i32 786443, metadata !1, metadata !80, i32 143, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!88 = metadata !{i32 150, i32 14, metadata !26, null}
!89 = metadata !{i32 151, i32 6, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !26, i32 151, i32 6, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!91 = metadata !{i32 152, i32 3, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !90, i32 151, i32 42, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_sinit.c]
!93 = metadata !{i32 153, i32 3, metadata !92, null}
!94 = metadata !{i32 156, i32 9, metadata !26, null}
!95 = metadata !{i32 158, i32 1, metadata !26, null}
