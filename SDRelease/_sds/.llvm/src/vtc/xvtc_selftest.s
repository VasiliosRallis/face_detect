; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XVtc = type { %struct.XVtc_Config, i32, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8*, void (i8*, i32)*, i8* }
%struct.XVtc_Config = type { i16, i32 }

@Xil_AssertStatus = external global i32
@.str = private unnamed_addr constant [61 x i8] c"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c\00", align 1

; Function Attrs: nounwind
define i32 @XVtc_SelfTest(%struct.XVtc* %InstancePtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XVtc*, align 4
  %Version = alloca i32, align 4
  %Status = alloca i32, align 4
  store %struct.XVtc* %InstancePtr, %struct.XVtc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XVtc** %2}, metadata !59), !dbg !60
  call void @llvm.dbg.declare(metadata !{i32* %Version}, metadata !61), !dbg !62
  call void @llvm.dbg.declare(metadata !{i32* %Status}, metadata !63), !dbg !64
  %3 = load %struct.XVtc** %2, align 4, !dbg !65
  %4 = icmp ne %struct.XVtc* %3, null, !dbg !65
  br i1 %4, label %5, label %6, !dbg !65

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !68
  br label %7, !dbg !68

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([61 x i8]* @.str, i32 0, i32 0), i32 96), !dbg !71
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !71
  store i32 0, i32* %1, !dbg !71
  br label %20, !dbg !71

; <label>:7                                       ; preds = %5
  %8 = load %struct.XVtc** %2, align 4, !dbg !74
  %9 = getelementptr inbounds %struct.XVtc* %8, i32 0, i32 0, !dbg !74
  %10 = getelementptr inbounds %struct.XVtc_Config* %9, i32 0, i32 1, !dbg !74
  %11 = load i32* %10, align 4, !dbg !74
  %12 = add i32 %11, 16, !dbg !74
  %13 = call i32 @Xil_In32(i32 %12), !dbg !74
  store i32 %13, i32* %Version, align 4, !dbg !74
  %14 = load i32* %Version, align 4, !dbg !75
  %15 = icmp ne i32 %14, 0, !dbg !75
  br i1 %15, label %16, label %17, !dbg !75

; <label>:16                                      ; preds = %7
  store i32 0, i32* %Status, align 4, !dbg !77
  br label %18, !dbg !79

; <label>:17                                      ; preds = %7
  store i32 1, i32* %Status, align 4, !dbg !80
  br label %18

; <label>:18                                      ; preds = %17, %16
  %19 = load i32* %Status, align 4, !dbg !82
  store i32 %19, i32* %1, !dbg !82
  br label %20, !dbg !82

; <label>:20                                      ; preds = %18, %6
  %21 = load i32* %1, !dbg !83
  ret i32 %21, !dbg !83
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @Xil_Assert(i8*, i32) #2

declare i32 @Xil_In32(i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!45, !46, !47, !48, !49, !50}
!xidane.function_declaration_filename = !{!45, !51, !47, !52, !49, !53}
!xidane.ExternC = !{!45, !47, !49}
!llvm.module.flags = !{!54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XVtc_SelfTest", metadata !"XVtc_SelfTest", metadata !"", i32 90, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XVtc*)* @XVtc_SelfTest, null, null, metadata !2, i32 91} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 91] [XVtc_SelfTest]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from XVtc]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc", i32 583, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [XVtc] [line 583, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!12 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 555, i64 416, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 555, size 416, align 32, offset 0] [def] [from ]
!13 = metadata !{metadata !14, metadata !28, metadata !29, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !44}
!14 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"Config", i32 556, i64 64, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [Config] [line 556, size 64, align 32, offset 0] [from XVtc_Config]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_Config", i32 372, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [XVtc_Config] [line 372, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 367, i64 64, i64 32, i32 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 367, size 64, align 32, offset 0] [def] [from ]
!17 = metadata !{metadata !18, metadata !24}
!18 = metadata !{i32 786445, metadata !11, metadata !16, metadata !"DeviceId", i32 368, i64 16, i64 16, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [DeviceId] [line 368, size 16, align 16, offset 0] [from u16]
!19 = metadata !{i32 786454, metadata !20, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!20 = metadata !{metadata !"../src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!21 = metadata !{i32 786454, metadata !22, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!22 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!23 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!24 = metadata !{i32 786445, metadata !11, metadata !16, metadata !"BaseAddress", i32 370, i64 32, i64 32, i64 32, i32 0, metadata !25} ; [ DW_TAG_member ] [BaseAddress] [line 370, size 32, align 32, offset 32] [from u32]
!25 = metadata !{i32 786454, metadata !20, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!26 = metadata !{i32 786454, metadata !22, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!27 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!28 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"IsReady", i32 557, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [IsReady] [line 557, size 32, align 32, offset 64] [from u32]
!29 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"FrameSyncCallBack", i32 561, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [FrameSyncCallBack] [line 561, size 32, align 32, offset 96] [from XVtc_CallBack]
!30 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_CallBack", i32 531, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [XVtc_CallBack] [line 531, size 0, align 0, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{null, metadata !34, metadata !25}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"FrameSyncRef", i32 563, i64 32, i64 32, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [FrameSyncRef] [line 563, size 32, align 32, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"LockCallBack", i32 566, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [LockCallBack] [line 566, size 32, align 32, offset 160] [from XVtc_CallBack]
!37 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"LockRef", i32 568, i64 32, i64 32, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [LockRef] [line 568, size 32, align 32, offset 192] [from ]
!38 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"DetectorCallBack", i32 571, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [DetectorCallBack] [line 571, size 32, align 32, offset 224] [from XVtc_CallBack]
!39 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"DetectorRef", i32 572, i64 32, i64 32, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [DetectorRef] [line 572, size 32, align 32, offset 256] [from ]
!40 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"GeneratorCallBack", i32 575, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [GeneratorCallBack] [line 575, size 32, align 32, offset 288] [from XVtc_CallBack]
!41 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"GeneratorRef", i32 577, i64 32, i64 32, i64 320, i32 0, metadata !34} ; [ DW_TAG_member ] [GeneratorRef] [line 577, size 32, align 32, offset 320] [from ]
!42 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"ErrCallBack", i32 580, i64 32, i64 32, i64 352, i32 0, metadata !43} ; [ DW_TAG_member ] [ErrCallBack] [line 580, size 32, align 32, offset 352] [from XVtc_ErrorCallBack]
!43 = metadata !{i32 786454, metadata !11, null, metadata !"XVtc_ErrorCallBack", i32 549, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [XVtc_ErrorCallBack] [line 549, size 0, align 0, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"ErrRef", i32 581, i64 32, i64 32, i64 384, i32 0, metadata !34} ; [ DW_TAG_member ] [ErrRef] [line 581, size 32, align 32, offset 384] [from ]
!45 = metadata !{i32 (%struct.XVtc*)* @XVtc_SelfTest}
!46 = metadata !{metadata !"int.XVtc *.1"}
!47 = metadata !{void (i8*, i32)* @Xil_Assert}
!48 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!49 = metadata !{i32 (i32)* @Xil_In32}
!50 = metadata !{metadata !"u32.INTPTR.0"}
!51 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/vtc/xvtc.h"}
!52 = metadata !{metadata !"../src/xil/xil_assert.h"}
!53 = metadata !{metadata !"../src/xil/xil_io.h"}
!54 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!55 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!56 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!57 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!58 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!59 = metadata !{i32 786689, metadata !4, metadata !"InstancePtr", metadata !5, i32 16777306, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 90]
!60 = metadata !{i32 90, i32 25, metadata !4, null}
!61 = metadata !{i32 786688, metadata !4, metadata !"Version", metadata !5, i32 92, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Version] [line 92]
!62 = metadata !{i32 92, i32 6, metadata !4, null}
!63 = metadata !{i32 786688, metadata !4, metadata !"Status", metadata !5, i32 93, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Status] [line 93]
!64 = metadata !{i32 93, i32 6, metadata !4, null}
!65 = metadata !{i32 96, i32 2, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !67, i32 96, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!67 = metadata !{i32 786443, metadata !1, metadata !4, i32 96, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!68 = metadata !{i32 96, i32 2, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !70, i32 96, i32 2, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!70 = metadata !{i32 786443, metadata !1, metadata !66, i32 96, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!71 = metadata !{i32 96, i32 2, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 96, i32 2, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!73 = metadata !{i32 786443, metadata !1, metadata !66, i32 96, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!74 = metadata !{i32 99, i32 12, metadata !4, null}
!75 = metadata !{i32 103, i32 5, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !4, i32 103, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!77 = metadata !{i32 104, i32 3, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !76, i32 103, i32 26, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!79 = metadata !{i32 105, i32 2, metadata !78, null}
!80 = metadata !{i32 107, i32 3, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !76, i32 106, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/vtc/xvtc_selftest.c]
!82 = metadata !{i32 110, i32 2, metadata !4, null}
!83 = metadata !{i32 111, i32 1, metadata !4, null}
