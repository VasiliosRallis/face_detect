; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_g.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XAxiVdma_Config = type { i16, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XAxiVdma_ConfigTable = global [1 x %struct.XAxiVdma_Config] [%struct.XAxiVdma_Config { i16 0, i32 1124073472, i16 3, i32 1, i32 0, i32 64, i32 1, i32 0, i32 64, i32 0, i32 1, i32 1, i32 1, i32 2048, i32 2048, i32 0, i32 0, i32 1, i32 1, i32 16, i32 16, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 32 }], align 4

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_g.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_g.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786484, i32 0, null, metadata !"XAxiVdma_ConfigTable", metadata !"XAxiVdma_ConfigTable", metadata !"", metadata !5, i32 47, metadata !6, i32 0, i32 1, [1 x %struct.XAxiVdma_Config]* @XAxiVdma_ConfigTable, null} ; [ DW_TAG_variable ] [XAxiVdma_ConfigTable] [line 47] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_g.c]
!6 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 992, i64 32, i32 0, i32 0, metadata !7, metadata !51, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 992, align 32, offset 0] [from XAxiVdma_Config]
!7 = metadata !{i32 786454, metadata !8, null, metadata !"XAxiVdma_Config", i32 455, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [XAxiVdma_Config] [line 455, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!9 = metadata !{i32 786451, metadata !8, null, metadata !"", i32 401, i64 992, i64 32, i32 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 401, size 992, align 32, offset 0] [def] [from ]
!10 = metadata !{metadata !11, metadata !17, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!11 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"DeviceId", i32 402, i64 16, i64 16, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [DeviceId] [line 402, size 16, align 16, offset 0] [from u16]
!12 = metadata !{i32 786454, metadata !13, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!13 = metadata !{metadata !"../src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!14 = metadata !{i32 786454, metadata !15, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!15 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!17 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"BaseAddress", i32 403, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [BaseAddress] [line 403, size 32, align 32, offset 32] [from UINTPTR]
!18 = metadata !{i32 786454, metadata !13, null, metadata !"UINTPTR", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [UINTPTR] [line 143, size 0, align 0, offset 0] [from u_int32_t]
!19 = metadata !{i32 786454, metadata !15, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!20 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!21 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"MaxFrameStoreNum", i32 405, i64 16, i64 16, i64 64, i32 0, metadata !12} ; [ DW_TAG_member ] [MaxFrameStoreNum] [line 405, size 16, align 16, offset 64] [from u16]
!22 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"HasMm2S", i32 406, i64 32, i64 32, i64 96, i32 0, metadata !23} ; [ DW_TAG_member ] [HasMm2S] [line 406, size 32, align 32, offset 96] [from int]
!23 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!24 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"HasMm2SDRE", i32 407, i64 32, i64 32, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [HasMm2SDRE] [line 407, size 32, align 32, offset 128] [from int]
!25 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"Mm2SWordLen", i32 408, i64 32, i64 32, i64 160, i32 0, metadata !23} ; [ DW_TAG_member ] [Mm2SWordLen] [line 408, size 32, align 32, offset 160] [from int]
!26 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"HasS2Mm", i32 409, i64 32, i64 32, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [HasS2Mm] [line 409, size 32, align 32, offset 192] [from int]
!27 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"HasS2MmDRE", i32 410, i64 32, i64 32, i64 224, i32 0, metadata !23} ; [ DW_TAG_member ] [HasS2MmDRE] [line 410, size 32, align 32, offset 224] [from int]
!28 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmWordLen", i32 411, i64 32, i64 32, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmWordLen] [line 411, size 32, align 32, offset 256] [from int]
!29 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"HasSG", i32 412, i64 32, i64 32, i64 288, i32 0, metadata !23} ; [ DW_TAG_member ] [HasSG] [line 412, size 32, align 32, offset 288] [from int]
!30 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"EnableVIDParamRead", i32 413, i64 32, i64 32, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [EnableVIDParamRead] [line 413, size 32, align 32, offset 320] [from int]
!31 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"UseFsync", i32 416, i64 32, i64 32, i64 352, i32 0, metadata !23} ; [ DW_TAG_member ] [UseFsync] [line 416, size 32, align 32, offset 352] [from int]
!32 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"FlushonFsync", i32 417, i64 32, i64 32, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [FlushonFsync] [line 417, size 32, align 32, offset 384] [from int]
!33 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"Mm2SBufDepth", i32 419, i64 32, i64 32, i64 416, i32 0, metadata !23} ; [ DW_TAG_member ] [Mm2SBufDepth] [line 419, size 32, align 32, offset 416] [from int]
!34 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmBufDepth", i32 420, i64 32, i64 32, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmBufDepth] [line 420, size 32, align 32, offset 448] [from int]
!35 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"Mm2SGenLock", i32 421, i64 32, i64 32, i64 480, i32 0, metadata !23} ; [ DW_TAG_member ] [Mm2SGenLock] [line 421, size 32, align 32, offset 480] [from int]
!36 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmGenLock", i32 422, i64 32, i64 32, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmGenLock] [line 422, size 32, align 32, offset 512] [from int]
!37 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"InternalGenLock", i32 423, i64 32, i64 32, i64 544, i32 0, metadata !23} ; [ DW_TAG_member ] [InternalGenLock] [line 423, size 32, align 32, offset 544] [from int]
!38 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmSOF", i32 424, i64 32, i64 32, i64 576, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmSOF] [line 424, size 32, align 32, offset 576] [from int]
!39 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"Mm2SStreamWidth", i32 425, i64 32, i64 32, i64 608, i32 0, metadata !23} ; [ DW_TAG_member ] [Mm2SStreamWidth] [line 425, size 32, align 32, offset 608] [from int]
!40 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmStreamWidth", i32 426, i64 32, i64 32, i64 640, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmStreamWidth] [line 426, size 32, align 32, offset 640] [from int]
!41 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"Mm2SThresRegEn", i32 427, i64 32, i64 32, i64 672, i32 0, metadata !23} ; [ DW_TAG_member ] [Mm2SThresRegEn] [line 427, size 32, align 32, offset 672] [from int]
!42 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"Mm2SFrmStoreRegEn", i32 430, i64 32, i64 32, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [Mm2SFrmStoreRegEn] [line 430, size 32, align 32, offset 704] [from int]
!43 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"Mm2SDlyCntrEn", i32 433, i64 32, i64 32, i64 736, i32 0, metadata !23} ; [ DW_TAG_member ] [Mm2SDlyCntrEn] [line 433, size 32, align 32, offset 736] [from int]
!44 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"Mm2SFrmCntrEn", i32 436, i64 32, i64 32, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [Mm2SFrmCntrEn] [line 436, size 32, align 32, offset 768] [from int]
!45 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmThresRegEn", i32 439, i64 32, i64 32, i64 800, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmThresRegEn] [line 439, size 32, align 32, offset 800] [from int]
!46 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmFrmStoreRegEn", i32 442, i64 32, i64 32, i64 832, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmFrmStoreRegEn] [line 442, size 32, align 32, offset 832] [from int]
!47 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmDlyCntrEn", i32 445, i64 32, i64 32, i64 864, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmDlyCntrEn] [line 445, size 32, align 32, offset 864] [from int]
!48 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"S2MmFrmCntrEn", i32 448, i64 32, i64 32, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [S2MmFrmCntrEn] [line 448, size 32, align 32, offset 896] [from int]
!49 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"EnableAllDbgFeatures", i32 451, i64 32, i64 32, i64 928, i32 0, metadata !23} ; [ DW_TAG_member ] [EnableAllDbgFeatures] [line 451, size 32, align 32, offset 928] [from int]
!50 = metadata !{i32 786445, metadata !8, metadata !9, metadata !"AddrWidth", i32 454, i64 32, i64 32, i64 960, i32 0, metadata !23} ; [ DW_TAG_member ] [AddrWidth] [line 454, size 32, align 32, offset 960] [from int]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!53 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!54 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!55 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!56 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!57 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
