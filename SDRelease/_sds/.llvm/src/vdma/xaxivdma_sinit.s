; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XAxiVdma_Config = type { i16, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XAxiVdma_ConfigTable = external global [0 x %struct.XAxiVdma_Config]

; Function Attrs: nounwind
define %struct.XAxiVdma_Config* @XAxiVdma_LookupConfig(i16 zeroext %DeviceId) #0 {
  %1 = alloca i16, align 2
  %CfgPtr = alloca %struct.XAxiVdma_Config*, align 4
  %i = alloca i32, align 4
  store i16 %DeviceId, i16* %1, align 2
  call void @llvm.dbg.declare(metadata !{i16* %1}, metadata !61), !dbg !62
  call void @llvm.dbg.declare(metadata !{%struct.XAxiVdma_Config** %CfgPtr}, metadata !63), !dbg !64
  store %struct.XAxiVdma_Config* null, %struct.XAxiVdma_Config** %CfgPtr, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !66), !dbg !67
  store i32 0, i32* %i, align 4, !dbg !68
  br label %2, !dbg !68

; <label>:2                                       ; preds = %18, %0
  %3 = load i32* %i, align 4, !dbg !70
  %4 = icmp slt i32 %3, 1, !dbg !70
  br i1 %4, label %5, label %21, !dbg !70

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4, !dbg !73
  %7 = getelementptr inbounds [0 x %struct.XAxiVdma_Config]* @XAxiVdma_ConfigTable, i32 0, i32 %6, !dbg !73
  %8 = getelementptr inbounds %struct.XAxiVdma_Config* %7, i32 0, i32 0, !dbg !73
  %9 = load i16* %8, align 2, !dbg !73
  %10 = zext i16 %9 to i32, !dbg !73
  %11 = load i16* %1, align 2, !dbg !73
  %12 = zext i16 %11 to i32, !dbg !73
  %13 = icmp eq i32 %10, %12, !dbg !73
  br i1 %13, label %14, label %17, !dbg !73

; <label>:14                                      ; preds = %5
  %15 = load i32* %i, align 4, !dbg !76
  %16 = getelementptr inbounds [0 x %struct.XAxiVdma_Config]* @XAxiVdma_ConfigTable, i32 0, i32 %15, !dbg !76
  store %struct.XAxiVdma_Config* %16, %struct.XAxiVdma_Config** %CfgPtr, align 4, !dbg !76
  br label %21, !dbg !78

; <label>:17                                      ; preds = %5
  br label %18, !dbg !79

; <label>:18                                      ; preds = %17
  %19 = load i32* %i, align 4, !dbg !80
  %20 = add nsw i32 %19, 1, !dbg !80
  store i32 %20, i32* %i, align 4, !dbg !80
  br label %2, !dbg !80

; <label>:21                                      ; preds = %14, %2
  %22 = load %struct.XAxiVdma_Config** %CfgPtr, align 4, !dbg !81
  ret %struct.XAxiVdma_Config* %22, !dbg !81
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!53, !54}
!xidane.function_declaration_filename = !{!53, !55}
!xidane.ExternC = !{!53}
!llvm.module.flags = !{!56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XAxiVdma_LookupConfig", metadata !"XAxiVdma_LookupConfig", metadata !"", i32 79, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.XAxiVdma_Config* (i16)* @XAxiVdma_LookupConfig, null, null, metadata !2, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [XAxiVdma_LookupConfig]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XAxiVdma_Config]
!9 = metadata !{i32 786454, metadata !10, null, metadata !"XAxiVdma_Config", i32 455, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [XAxiVdma_Config] [line 455, size 0, align 0, offset 0] [from ]
!10 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!11 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 401, i64 992, i64 32, i32 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 401, size 992, align 32, offset 0] [def] [from ]
!12 = metadata !{metadata !13, metadata !19, metadata !23, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!13 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"DeviceId", i32 402, i64 16, i64 16, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [DeviceId] [line 402, size 16, align 16, offset 0] [from u16]
!14 = metadata !{i32 786454, metadata !15, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!15 = metadata !{metadata !"../src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786454, metadata !17, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!17 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!18 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!19 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"BaseAddress", i32 403, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [BaseAddress] [line 403, size 32, align 32, offset 32] [from UINTPTR]
!20 = metadata !{i32 786454, metadata !15, null, metadata !"UINTPTR", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [UINTPTR] [line 143, size 0, align 0, offset 0] [from u_int32_t]
!21 = metadata !{i32 786454, metadata !17, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!22 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!23 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"MaxFrameStoreNum", i32 405, i64 16, i64 16, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [MaxFrameStoreNum] [line 405, size 16, align 16, offset 64] [from u16]
!24 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HasMm2S", i32 406, i64 32, i64 32, i64 96, i32 0, metadata !25} ; [ DW_TAG_member ] [HasMm2S] [line 406, size 32, align 32, offset 96] [from int]
!25 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!26 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HasMm2SDRE", i32 407, i64 32, i64 32, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [HasMm2SDRE] [line 407, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Mm2SWordLen", i32 408, i64 32, i64 32, i64 160, i32 0, metadata !25} ; [ DW_TAG_member ] [Mm2SWordLen] [line 408, size 32, align 32, offset 160] [from int]
!28 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HasS2Mm", i32 409, i64 32, i64 32, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [HasS2Mm] [line 409, size 32, align 32, offset 192] [from int]
!29 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HasS2MmDRE", i32 410, i64 32, i64 32, i64 224, i32 0, metadata !25} ; [ DW_TAG_member ] [HasS2MmDRE] [line 410, size 32, align 32, offset 224] [from int]
!30 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmWordLen", i32 411, i64 32, i64 32, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmWordLen] [line 411, size 32, align 32, offset 256] [from int]
!31 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"HasSG", i32 412, i64 32, i64 32, i64 288, i32 0, metadata !25} ; [ DW_TAG_member ] [HasSG] [line 412, size 32, align 32, offset 288] [from int]
!32 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"EnableVIDParamRead", i32 413, i64 32, i64 32, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [EnableVIDParamRead] [line 413, size 32, align 32, offset 320] [from int]
!33 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"UseFsync", i32 416, i64 32, i64 32, i64 352, i32 0, metadata !25} ; [ DW_TAG_member ] [UseFsync] [line 416, size 32, align 32, offset 352] [from int]
!34 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"FlushonFsync", i32 417, i64 32, i64 32, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [FlushonFsync] [line 417, size 32, align 32, offset 384] [from int]
!35 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Mm2SBufDepth", i32 419, i64 32, i64 32, i64 416, i32 0, metadata !25} ; [ DW_TAG_member ] [Mm2SBufDepth] [line 419, size 32, align 32, offset 416] [from int]
!36 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmBufDepth", i32 420, i64 32, i64 32, i64 448, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmBufDepth] [line 420, size 32, align 32, offset 448] [from int]
!37 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Mm2SGenLock", i32 421, i64 32, i64 32, i64 480, i32 0, metadata !25} ; [ DW_TAG_member ] [Mm2SGenLock] [line 421, size 32, align 32, offset 480] [from int]
!38 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmGenLock", i32 422, i64 32, i64 32, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmGenLock] [line 422, size 32, align 32, offset 512] [from int]
!39 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"InternalGenLock", i32 423, i64 32, i64 32, i64 544, i32 0, metadata !25} ; [ DW_TAG_member ] [InternalGenLock] [line 423, size 32, align 32, offset 544] [from int]
!40 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmSOF", i32 424, i64 32, i64 32, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmSOF] [line 424, size 32, align 32, offset 576] [from int]
!41 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Mm2SStreamWidth", i32 425, i64 32, i64 32, i64 608, i32 0, metadata !25} ; [ DW_TAG_member ] [Mm2SStreamWidth] [line 425, size 32, align 32, offset 608] [from int]
!42 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmStreamWidth", i32 426, i64 32, i64 32, i64 640, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmStreamWidth] [line 426, size 32, align 32, offset 640] [from int]
!43 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Mm2SThresRegEn", i32 427, i64 32, i64 32, i64 672, i32 0, metadata !25} ; [ DW_TAG_member ] [Mm2SThresRegEn] [line 427, size 32, align 32, offset 672] [from int]
!44 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Mm2SFrmStoreRegEn", i32 430, i64 32, i64 32, i64 704, i32 0, metadata !25} ; [ DW_TAG_member ] [Mm2SFrmStoreRegEn] [line 430, size 32, align 32, offset 704] [from int]
!45 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Mm2SDlyCntrEn", i32 433, i64 32, i64 32, i64 736, i32 0, metadata !25} ; [ DW_TAG_member ] [Mm2SDlyCntrEn] [line 433, size 32, align 32, offset 736] [from int]
!46 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"Mm2SFrmCntrEn", i32 436, i64 32, i64 32, i64 768, i32 0, metadata !25} ; [ DW_TAG_member ] [Mm2SFrmCntrEn] [line 436, size 32, align 32, offset 768] [from int]
!47 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmThresRegEn", i32 439, i64 32, i64 32, i64 800, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmThresRegEn] [line 439, size 32, align 32, offset 800] [from int]
!48 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmFrmStoreRegEn", i32 442, i64 32, i64 32, i64 832, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmFrmStoreRegEn] [line 442, size 32, align 32, offset 832] [from int]
!49 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmDlyCntrEn", i32 445, i64 32, i64 32, i64 864, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmDlyCntrEn] [line 445, size 32, align 32, offset 864] [from int]
!50 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"S2MmFrmCntrEn", i32 448, i64 32, i64 32, i64 896, i32 0, metadata !25} ; [ DW_TAG_member ] [S2MmFrmCntrEn] [line 448, size 32, align 32, offset 896] [from int]
!51 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"EnableAllDbgFeatures", i32 451, i64 32, i64 32, i64 928, i32 0, metadata !25} ; [ DW_TAG_member ] [EnableAllDbgFeatures] [line 451, size 32, align 32, offset 928] [from int]
!52 = metadata !{i32 786445, metadata !10, metadata !11, metadata !"AddrWidth", i32 454, i64 32, i64 32, i64 960, i32 0, metadata !25} ; [ DW_TAG_member ] [AddrWidth] [line 454, size 32, align 32, offset 960] [from int]
!53 = metadata !{%struct.XAxiVdma_Config* (i16)* @XAxiVdma_LookupConfig}
!54 = metadata !{metadata !"XAxiVdma_Config .u16.0"}
!55 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma.h"}
!56 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!57 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!58 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!59 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!60 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!61 = metadata !{i32 786689, metadata !4, metadata !"DeviceId", metadata !5, i32 16777295, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceId] [line 79]
!62 = metadata !{i32 79, i32 44, metadata !4, null}
!63 = metadata !{i32 786688, metadata !4, metadata !"CfgPtr", metadata !5, i32 82, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CfgPtr] [line 82]
!64 = metadata !{i32 82, i32 19, metadata !4, null}
!65 = metadata !{i32 82, i32 2, metadata !4, null}
!66 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 83, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 83]
!67 = metadata !{i32 83, i32 6, metadata !4, null}
!68 = metadata !{i32 85, i32 7, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !4, i32 85, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c]
!70 = metadata !{i32 85, i32 7, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !72, i32 85, i32 7, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c]
!72 = metadata !{i32 786443, metadata !1, metadata !69, i32 85, i32 7, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c]
!73 = metadata !{i32 86, i32 7, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 86, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c]
!75 = metadata !{i32 786443, metadata !1, metadata !69, i32 85, i32 52, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c]
!76 = metadata !{i32 87, i32 4, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !74, i32 86, i32 53, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vdma/xaxivdma_sinit.c]
!78 = metadata !{i32 88, i32 4, metadata !77, null}
!79 = metadata !{i32 90, i32 2, metadata !75, null}
!80 = metadata !{i32 85, i32 47, metadata !69, null}
!81 = metadata !{i32 92, i32 2, metadata !4, null}
