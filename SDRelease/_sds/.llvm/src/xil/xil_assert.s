; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@Xil_AssertCallbackRoutine = internal global void (i8*, i32)* null, align 4
@Xil_AssertStatus = common global i32 0, align 4

; Function Attrs: nounwind
define void @Xil_Assert(i8* %File, i32 %Line) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %Xil_AssertWait = alloca i32, align 4
  store i8* %File, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !45), !dbg !46
  store i32 %Line, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !47), !dbg !48
  call void @llvm.dbg.declare(metadata !{i32* %Xil_AssertWait}, metadata !49), !dbg !50
  store i32 1, i32* %Xil_AssertWait, align 4, !dbg !51
  %3 = load void (i8*, i32)** @Xil_AssertCallbackRoutine, align 4, !dbg !52
  %4 = icmp ne void (i8*, i32)* %3, null, !dbg !52
  br i1 %4, label %5, label %9, !dbg !52

; <label>:5                                       ; preds = %0
  %6 = load void (i8*, i32)** @Xil_AssertCallbackRoutine, align 4, !dbg !54
  %7 = load i8** %1, align 4, !dbg !54
  %8 = load i32* %2, align 4, !dbg !54
  call void %6(i8* %7, i32 %8), !dbg !54
  br label %9, !dbg !56

; <label>:9                                       ; preds = %5, %0
  br label %10, !dbg !57

; <label>:10                                      ; preds = %13, %9
  %11 = load i32* %Xil_AssertWait, align 4, !dbg !58
  %12 = icmp ne i32 %11, 0, !dbg !58
  br i1 %12, label %13, label %14, !dbg !58

; <label>:13                                      ; preds = %10
  br label %10, !dbg !60

; <label>:14                                      ; preds = %10
  ret void, !dbg !62
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void @Xil_AssertSetCallback(void (i8*, i32)* %Routine) #0 {
  %1 = alloca void (i8*, i32)*, align 4
  store void (i8*, i32)* %Routine, void (i8*, i32)** %1, align 4
  call void @llvm.dbg.declare(metadata !{void (i8*, i32)** %1}, metadata !63), !dbg !64
  %2 = load void (i8*, i32)** %1, align 4, !dbg !65
  store void (i8*, i32)* %2, void (i8*, i32)** @Xil_AssertCallbackRoutine, align 4, !dbg !65
  ret void, !dbg !66
}

; Function Attrs: nounwind
define void @XNullHandler(i8* %NullParameter) #0 {
  %1 = alloca i8*, align 4
  store i8* %NullParameter, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !67), !dbg !68
  %2 = load i8** %1, align 4, !dbg !69
  ret void, !dbg !70
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!33, !34, !35, !36, !37, !38}
!xidane.function_declaration_filename = !{!33, !39, !35, !39, !37, !39}
!xidane.ExternC = !{!33, !35, !37}
!llvm.module.flags = !{!40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !27, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !17, metadata !23}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_Assert", metadata !"Xil_Assert", metadata !"", i32 96, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32)* @Xil_Assert, null, null, metadata !2, i32 97} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 97] [Xil_Assert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !13}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char8]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"char8", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [char8] [line 134, size 0, align 0, offset 0] [from char]
!11 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{i32 786454, metadata !11, null, metadata !"s32", i32 137, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [s32] [line 137, size 0, align 0, offset 0] [from int32_t]
!14 = metadata !{i32 786454, metadata !15, null, metadata !"int32_t", i32 196, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [int32_t] [line 196, size 0, align 0, offset 0] [from int]
!15 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_AssertSetCallback", metadata !"Xil_AssertSetCallback", metadata !"", i32 124, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (void (i8*, i32)*)* @Xil_AssertSetCallback, null, null, metadata !2, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [Xil_AssertSetCallback]
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 786454, metadata !21, null, metadata !"Xil_AssertCallback", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [Xil_AssertCallback] [line 76, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"XNullHandler", metadata !"XNullHandler", metadata !"", i32 143, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @XNullHandler, null, null, metadata !2, i32 144} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 144] [XNullHandler]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !26}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !32}
!28 = metadata !{i32 786484, i32 0, null, metadata !"Xil_AssertStatus", metadata !"Xil_AssertStatus", metadata !"", metadata !5, i32 67, metadata !29, i32 0, i32 1, i32* @Xil_AssertStatus, null} ; [ DW_TAG_variable ] [Xil_AssertStatus] [line 67] [def]
!29 = metadata !{i32 786454, metadata !11, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!30 = metadata !{i32 786454, metadata !15, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!31 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786484, i32 0, null, metadata !"Xil_AssertCallbackRoutine", metadata !"Xil_AssertCallbackRoutine", metadata !"", metadata !5, i32 77, metadata !20, i32 1, i32 1, void (i8*, i32)** @Xil_AssertCallbackRoutine, null} ; [ DW_TAG_variable ] [Xil_AssertCallbackRoutine] [line 77] [local] [def]
!33 = metadata !{void (i8*, i32)* @Xil_Assert}
!34 = metadata !{metadata !"void.const char8 *.1.s32.0"}
!35 = metadata !{void (void (i8*, i32)*)* @Xil_AssertSetCallback}
!36 = metadata !{metadata !"void.Xil_AssertCallback.1"}
!37 = metadata !{void (i8*)* @XNullHandler}
!38 = metadata !{metadata !"void.void *.1"}
!39 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.h"}
!40 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!41 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!42 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!43 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!44 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!45 = metadata !{i32 786689, metadata !4, metadata !"File", metadata !5, i32 16777312, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [File] [line 96]
!46 = metadata !{i32 96, i32 30, metadata !4, null}
!47 = metadata !{i32 786689, metadata !4, metadata !"Line", metadata !5, i32 33554528, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Line] [line 96]
!48 = metadata !{i32 96, i32 40, metadata !4, null}
!49 = metadata !{i32 786688, metadata !4, metadata !"Xil_AssertWait", metadata !5, i32 98, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Xil_AssertWait] [line 98]
!50 = metadata !{i32 98, i32 6, metadata !4, null}
!51 = metadata !{i32 98, i32 2, metadata !4, null}
!52 = metadata !{i32 100, i32 6, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 100, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.c]
!54 = metadata !{i32 101, i32 3, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 100, i32 38, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.c]
!56 = metadata !{i32 102, i32 2, metadata !55, null}
!57 = metadata !{i32 107, i32 2, metadata !4, null}
!58 = metadata !{i32 107, i32 2, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !4, i32 107, i32 2, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.c]
!60 = metadata !{i32 108, i32 2, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !4, i32 107, i32 30, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/xil/xil_assert.c]
!62 = metadata !{i32 109, i32 1, metadata !4, null}
!63 = metadata !{i32 786689, metadata !17, metadata !"Routine", metadata !5, i32 16777340, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Routine] [line 124]
!64 = metadata !{i32 124, i32 47, metadata !17, null}
!65 = metadata !{i32 126, i32 2, metadata !17, null}
!66 = metadata !{i32 127, i32 1, metadata !17, null}
!67 = metadata !{i32 786689, metadata !23, metadata !"NullParameter", metadata !5, i32 16777359, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NullParameter] [line 143]
!68 = metadata !{i32 143, i32 25, metadata !23, null}
!69 = metadata !{i32 145, i32 2, metadata !23, null}
!70 = metadata !{i32 146, i32 1, metadata !23, null}
