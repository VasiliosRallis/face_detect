; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XVtc_Config = type { i16, i32 }

@XVtc_ConfigTable = external global [0 x %struct.XVtc_Config]

; Function Attrs: nounwind
define %struct.XVtc_Config* @XVtc_LookupConfig(i16 zeroext %DeviceId) #0 {
  %1 = alloca i16, align 2
  %CfgPtr = alloca %struct.XVtc_Config*, align 4
  %i = alloca i32, align 4
  store i16 %DeviceId, i16* %1, align 2
  call void @llvm.dbg.declare(metadata !{i16* %1}, metadata !31), !dbg !32
  call void @llvm.dbg.declare(metadata !{%struct.XVtc_Config** %CfgPtr}, metadata !33), !dbg !34
  store %struct.XVtc_Config* null, %struct.XVtc_Config** %CfgPtr, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !36), !dbg !38
  store i32 0, i32* %i, align 4, !dbg !39
  br label %2, !dbg !39

; <label>:2                                       ; preds = %18, %0
  %3 = load i32* %i, align 4, !dbg !41
  %4 = icmp slt i32 %3, 2, !dbg !41
  br i1 %4, label %5, label %21, !dbg !41

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4, !dbg !44
  %7 = getelementptr inbounds [0 x %struct.XVtc_Config]* @XVtc_ConfigTable, i32 0, i32 %6, !dbg !44
  %8 = getelementptr inbounds %struct.XVtc_Config* %7, i32 0, i32 0, !dbg !44
  %9 = load i16* %8, align 2, !dbg !44
  %10 = zext i16 %9 to i32, !dbg !44
  %11 = load i16* %1, align 2, !dbg !44
  %12 = zext i16 %11 to i32, !dbg !44
  %13 = icmp eq i32 %10, %12, !dbg !44
  br i1 %13, label %14, label %17, !dbg !44

; <label>:14                                      ; preds = %5
  %15 = load i32* %i, align 4, !dbg !47
  %16 = getelementptr inbounds [0 x %struct.XVtc_Config]* @XVtc_ConfigTable, i32 0, i32 %15, !dbg !47
  store %struct.XVtc_Config* %16, %struct.XVtc_Config** %CfgPtr, align 4, !dbg !47
  br label %21, !dbg !49

; <label>:17                                      ; preds = %5
  br label %18, !dbg !50

; <label>:18                                      ; preds = %17
  %19 = load i32* %i, align 4, !dbg !51
  %20 = add nsw i32 %19, 1, !dbg !51
  store i32 %20, i32* %i, align 4, !dbg !51
  br label %2, !dbg !51

; <label>:21                                      ; preds = %14, %2
  %22 = load %struct.XVtc_Config** %CfgPtr, align 4, !dbg !52
  ret %struct.XVtc_Config* %22, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!23, !24}
!xidane.function_declaration_filename = !{!23, !25}
!xidane.ExternC = !{!23}
!llvm.module.flags = !{!26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_LookupConfig", metadata !"XVtc_LookupConfig", metadata !"", i32 99, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.XVtc_Config* (i16)* @XVtc_LookupConfig, null, null, metadata !2, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [XVtc_LookupConfig]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc_Config]
!9 = metadata !{i32 786454, metadata !10, null, metadata !"XVtc_Config", i32 372, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [XVtc_Config] [line 372, size 0, align 0, offset 0] [from ]
!10 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!11 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 367, i64 64, i64 32, i32 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 367, size 64, align 32, offset 0] [def] [from ]
!12 = metadata !{metadata !13, metadata !19}
!13 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"DeviceId", i32 368, i64 16, i64 16, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [DeviceId] [line 368, size 16, align 16, offset 0] [from u16]
!14 = metadata !{i32 786454, metadata !15, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!15 = metadata !{metadata !"../src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786454, metadata !17, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!17 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!18 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!19 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"BaseAddress", i32 370, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [BaseAddress] [line 370, size 32, align 32, offset 32] [from u32]
!20 = metadata !{i32 786454, metadata !15, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!21 = metadata !{i32 786454, metadata !17, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!22 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!23 = metadata !{%struct.XVtc_Config* (i16)* @XVtc_LookupConfig}
!24 = metadata !{metadata !"XVtc_Config .u16.0"}
!25 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h"}
!26 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!27 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!28 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!29 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!30 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!31 = metadata !{i32 786689, metadata !4, metadata !"DeviceId", metadata !5, i32 16777315, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceId] [line 99]
!32 = metadata !{i32 99, i32 36, metadata !4, null}
!33 = metadata !{i32 786688, metadata !4, metadata !"CfgPtr", metadata !5, i32 102, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CfgPtr] [line 102]
!34 = metadata !{i32 102, i32 15, metadata !4, null}
!35 = metadata !{i32 102, i32 2, metadata !4, null}
!36 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 103, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 103]
!37 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!38 = metadata !{i32 103, i32 6, metadata !4, null}
!39 = metadata !{i32 106, i32 7, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 106, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c]
!41 = metadata !{i32 106, i32 7, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !43, i32 106, i32 7, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c]
!43 = metadata !{i32 786443, metadata !1, metadata !40, i32 106, i32 7, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c]
!44 = metadata !{i32 110, i32 7, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 110, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c]
!46 = metadata !{i32 786443, metadata !1, metadata !40, i32 106, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c]
!47 = metadata !{i32 111, i32 4, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !45, i32 110, i32 49, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_sinit.c]
!49 = metadata !{i32 112, i32 4, metadata !48, null}
!50 = metadata !{i32 114, i32 2, metadata !46, null}
!51 = metadata !{i32 106, i32 43, metadata !40, null}
!52 = metadata !{i32 116, i32 2, metadata !4, null}
