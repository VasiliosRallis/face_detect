; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_g.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XVtc_Config = type { i16, i32 }

@XVtc_ConfigTable = global [2 x %struct.XVtc_Config] [%struct.XVtc_Config { i16 0, i32 1136656384 }, %struct.XVtc_Config { i16 1, i32 1136787456 }], align 4

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_g.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_g.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786484, i32 0, null, metadata !"XVtc_ConfigTable", metadata !"XVtc_ConfigTable", metadata !"", metadata !5, i32 47, metadata !6, i32 0, i32 1, [2 x %struct.XVtc_Config]* @XVtc_ConfigTable, null} ; [ DW_TAG_variable ] [XVtc_ConfigTable] [line 47] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_g.c]
!6 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !7, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from XVtc_Config]
!7 = metadata !{i32 786454, metadata !8, null, metadata !"XVtc_Config", i32 372, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [XVtc_Config] [line 372, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!9 = metadata !{i32 786451, metadata !8, null, metadata !"", i32 367, i64 64, i64 32, i32 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 367, size 64, align 32, offset 0] [def] [from ]
!10 = metadata !{metadata !11, metadata !17}
!11 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"DeviceId", i32 368, i64 16, i64 16, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [DeviceId] [line 368, size 16, align 16, offset 0] [from u16]
!12 = metadata !{i32 786454, metadata !13, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!13 = metadata !{metadata !"../src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!14 = metadata !{i32 786454, metadata !15, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!15 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!17 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"BaseAddress", i32 370, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [BaseAddress] [line 370, size 32, align 32, offset 32] [from u32]
!18 = metadata !{i32 786454, metadata !13, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!19 = metadata !{i32 786454, metadata !15, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!20 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!23 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!24 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!25 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!26 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!27 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
