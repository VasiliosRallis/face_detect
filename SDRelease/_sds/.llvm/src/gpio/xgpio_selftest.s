; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%struct.XGpio = type { i32, i32, i32, i32 }

@Xil_AssertStatus = external global i32
@.str = private unnamed_addr constant [63 x i8] c"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c\00", align 1

; Function Attrs: nounwind
define i32 @XGpio_SelfTest(%struct.XGpio* %InstancePtr) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.XGpio*, align 4
  store %struct.XGpio* %InstancePtr, %struct.XGpio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.XGpio** %2}, metadata !36), !dbg !37
  %3 = load %struct.XGpio** %2, align 4, !dbg !38
  %4 = icmp ne %struct.XGpio* %3, null, !dbg !38
  br i1 %4, label %5, label %6, !dbg !38

; <label>:5                                       ; preds = %0
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !41
  br label %7, !dbg !41

; <label>:6                                       ; preds = %0
  call void @Xil_Assert(i8* getelementptr inbounds ([63 x i8]* @.str, i32 0, i32 0), i32 97), !dbg !44
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !44
  store i32 0, i32* %1, !dbg !44
  br label %17, !dbg !44

; <label>:7                                       ; preds = %5
  %8 = load %struct.XGpio** %2, align 4, !dbg !47
  %9 = getelementptr inbounds %struct.XGpio* %8, i32 0, i32 1, !dbg !47
  %10 = load i32* %9, align 4, !dbg !47
  %11 = icmp eq i32 %10, 286331153, !dbg !47
  br i1 %11, label %12, label %13, !dbg !47

; <label>:12                                      ; preds = %7
  store i32 0, i32* @Xil_AssertStatus, align 4, !dbg !50
  br label %14, !dbg !50

; <label>:13                                      ; preds = %7
  call void @Xil_Assert(i8* getelementptr inbounds ([63 x i8]* @.str, i32 0, i32 0), i32 98), !dbg !53
  store i32 1, i32* @Xil_AssertStatus, align 4, !dbg !53
  store i32 0, i32* %1, !dbg !53
  br label %17, !dbg !53

; <label>:14                                      ; preds = %12
  %15 = load %struct.XGpio** %2, align 4, !dbg !56
  %16 = call i32 @XGpio_DiscreteRead(%struct.XGpio* %15, i32 1), !dbg !56
  store i32 0, i32* %1, !dbg !57
  br label %17, !dbg !57

; <label>:17                                      ; preds = %14, %13, %6
  %18 = load i32* %1, !dbg !58
  ret i32 %18, !dbg !58
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @Xil_Assert(i8*, i32) #2

declare i32 @XGpio_DiscreteRead(%struct.XGpio*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!23, !24, !25, !26, !27, !28}
!xidane.function_declaration_filename = !{!23, !29, !25, !30, !27, !29}
!xidane.ExternC = !{!23, !25, !27}
!llvm.module.flags = !{!31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XGpio_SelfTest", metadata !"XGpio_SelfTest", metadata !"", i32 95, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.XGpio*)* @XGpio_SelfTest, null, null, metadata !2, i32 96} ; [ DW_TAG_subprogram ] [line 95] [def] [scope 96] [XGpio_SelfTest]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
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
!23 = metadata !{i32 (%struct.XGpio*)* @XGpio_SelfTest}
!24 = metadata !{metadata !"int.XGpio *.1"}
!25 = metadata !{void (i8*, i32)* @Xil_Assert}
!26 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!27 = metadata !{i32 (%struct.XGpio*, i32)* @XGpio_DiscreteRead}
!28 = metadata !{metadata !"u32.XGpio *.1.unsigned int.0"}
!29 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/xgpio.h"}
!30 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/gpio/../xil/xil_assert.h"}
!31 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!32 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!33 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!34 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!35 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!36 = metadata !{i32 786689, metadata !4, metadata !"InstancePtr", metadata !5, i32 16777311, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InstancePtr] [line 95]
!37 = metadata !{i32 95, i32 28, metadata !4, null}
!38 = metadata !{i32 97, i32 2, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 97, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 97, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!41 = metadata !{i32 97, i32 2, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !43, i32 97, i32 2, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!43 = metadata !{i32 786443, metadata !1, metadata !39, i32 97, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!44 = metadata !{i32 97, i32 2, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 97, i32 2, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!46 = metadata !{i32 786443, metadata !1, metadata !39, i32 97, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!47 = metadata !{i32 98, i32 2, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 98, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!49 = metadata !{i32 786443, metadata !1, metadata !4, i32 98, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!50 = metadata !{i32 98, i32 2, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !52, i32 98, i32 2, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!52 = metadata !{i32 786443, metadata !1, metadata !48, i32 98, i32 2, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!53 = metadata !{i32 98, i32 2, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !55, i32 98, i32 2, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!55 = metadata !{i32 786443, metadata !1, metadata !48, i32 98, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/gpio/xgpio_selftest.c]
!56 = metadata !{i32 106, i32 9, metadata !4, null}
!57 = metadata !{i32 108, i32 2, metadata !4, null}
!58 = metadata !{i32 109, i32 1, metadata !4, null}
