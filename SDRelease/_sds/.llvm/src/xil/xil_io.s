; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/xil/xil_io.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define zeroext i8 @Xil_In8(i32 %Addr) #0 {
  %1 = alloca i32, align 4
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !71), !dbg !72
  %2 = load i32* %1, align 4, !dbg !73
  %3 = inttoptr i32 %2 to i8*, !dbg !73
  %4 = load volatile i8* %3, align 1, !dbg !73
  ret i8 %4, !dbg !73
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define zeroext i16 @Xil_In16(i32 %Addr) #0 {
  %1 = alloca i32, align 4
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !74), !dbg !75
  %2 = load i32* %1, align 4, !dbg !76
  %3 = inttoptr i32 %2 to i16*, !dbg !76
  %4 = load volatile i16* %3, align 2, !dbg !76
  ret i16 %4, !dbg !76
}

; Function Attrs: nounwind
define i32 @Xil_In32(i32 %Addr) #0 {
  %1 = alloca i32, align 4
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !77), !dbg !78
  %2 = load i32* %1, align 4, !dbg !79
  %3 = inttoptr i32 %2 to i32*, !dbg !79
  %4 = load volatile i32* %3, align 4, !dbg !79
  ret i32 %4, !dbg !79
}

; Function Attrs: nounwind
define void @Xil_Out8(i32 %Addr, i8 zeroext %Value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %LocalAddr = alloca i8*, align 4
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !80), !dbg !81
  store i8 %Value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !82), !dbg !83
  call void @llvm.dbg.declare(metadata !{i8** %LocalAddr}, metadata !84), !dbg !86
  %3 = load i32* %1, align 4, !dbg !87
  %4 = inttoptr i32 %3 to i8*, !dbg !87
  store i8* %4, i8** %LocalAddr, align 4, !dbg !87
  %5 = load i8* %2, align 1, !dbg !88
  %6 = load i8** %LocalAddr, align 4, !dbg !88
  store i8 %5, i8* %6, align 1, !dbg !88
  ret void, !dbg !89
}

; Function Attrs: nounwind
define void @Xil_Out16(i32 %Addr, i16 zeroext %Value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %LocalAddr = alloca i16*, align 4
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !90), !dbg !91
  store i16 %Value, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !92), !dbg !93
  call void @llvm.dbg.declare(metadata !{i16** %LocalAddr}, metadata !94), !dbg !96
  %3 = load i32* %1, align 4, !dbg !97
  %4 = inttoptr i32 %3 to i16*, !dbg !97
  store i16* %4, i16** %LocalAddr, align 4, !dbg !97
  %5 = load i16* %2, align 2, !dbg !98
  %6 = load i16** %LocalAddr, align 4, !dbg !98
  store i16 %5, i16* %6, align 2, !dbg !98
  ret void, !dbg !99
}

; Function Attrs: nounwind
define void @Xil_Out32(i32 %Addr, i32 %Value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %LocalAddr = alloca i32*, align 4
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !100), !dbg !101
  store i32 %Value, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !102), !dbg !103
  call void @llvm.dbg.declare(metadata !{i32** %LocalAddr}, metadata !104), !dbg !106
  %3 = load i32* %1, align 4, !dbg !107
  %4 = inttoptr i32 %3 to i32*, !dbg !107
  store i32* %4, i32** %LocalAddr, align 4, !dbg !107
  %5 = load i32* %2, align 4, !dbg !108
  %6 = load i32** %LocalAddr, align 4, !dbg !108
  store i32 %5, i32* %6, align 4, !dbg !108
  ret void, !dbg !109
}

; Function Attrs: nounwind
define zeroext i16 @Xil_In16BE(i32 %Addr) #0 {
  %1 = alloca i32, align 4
  %temp = alloca i16, align 2
  %result = alloca i16, align 2
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !110), !dbg !111
  call void @llvm.dbg.declare(metadata !{i16* %temp}, metadata !112), !dbg !113
  call void @llvm.dbg.declare(metadata !{i16* %result}, metadata !114), !dbg !115
  %2 = load i32* %1, align 4, !dbg !116
  %3 = call zeroext i16 @Xil_In16(i32 %2), !dbg !116
  store i16 %3, i16* %temp, align 2, !dbg !116
  %4 = load i16* %temp, align 2, !dbg !117
  %5 = call zeroext i16 @Xil_EndianSwap16(i16 zeroext %4), !dbg !117
  store i16 %5, i16* %result, align 2, !dbg !117
  %6 = load i16* %result, align 2, !dbg !118
  ret i16 %6, !dbg !118
}

; Function Attrs: nounwind
define zeroext i16 @Xil_EndianSwap16(i16 zeroext %Data) #0 {
  %1 = alloca i16, align 2
  store i16 %Data, i16* %1, align 2
  call void @llvm.dbg.declare(metadata !{i16* %1}, metadata !119), !dbg !120
  %2 = load i16* %1, align 2, !dbg !121
  %3 = zext i16 %2 to i32, !dbg !121
  %4 = and i32 %3, 65280, !dbg !121
  %5 = lshr i32 %4, 8, !dbg !121
  %6 = load i16* %1, align 2, !dbg !121
  %7 = zext i16 %6 to i32, !dbg !121
  %8 = and i32 %7, 255, !dbg !121
  %9 = shl i32 %8, 8, !dbg !121
  %10 = or i32 %5, %9, !dbg !121
  %11 = trunc i32 %10 to i16, !dbg !121
  ret i16 %11, !dbg !121
}

; Function Attrs: nounwind
define i32 @Xil_In32BE(i32 %Addr) #0 {
  %1 = alloca i32, align 4
  %temp = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !122), !dbg !123
  call void @llvm.dbg.declare(metadata !{i32* %temp}, metadata !124), !dbg !125
  call void @llvm.dbg.declare(metadata !{i32* %result}, metadata !126), !dbg !127
  %2 = load i32* %1, align 4, !dbg !128
  %3 = call i32 @Xil_In32(i32 %2), !dbg !128
  store i32 %3, i32* %temp, align 4, !dbg !128
  %4 = load i32* %temp, align 4, !dbg !129
  %5 = call i32 @Xil_EndianSwap32(i32 %4), !dbg !129
  store i32 %5, i32* %result, align 4, !dbg !129
  %6 = load i32* %result, align 4, !dbg !130
  ret i32 %6, !dbg !130
}

; Function Attrs: nounwind
define i32 @Xil_EndianSwap32(i32 %Data) #0 {
  %1 = alloca i32, align 4
  %LoWord = alloca i16, align 2
  %HiWord = alloca i16, align 2
  store i32 %Data, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !131), !dbg !132
  call void @llvm.dbg.declare(metadata !{i16* %LoWord}, metadata !133), !dbg !134
  call void @llvm.dbg.declare(metadata !{i16* %HiWord}, metadata !135), !dbg !136
  %2 = load i32* %1, align 4, !dbg !137
  %3 = and i32 %2, 65535, !dbg !137
  %4 = trunc i32 %3 to i16, !dbg !137
  store i16 %4, i16* %LoWord, align 2, !dbg !137
  %5 = load i32* %1, align 4, !dbg !138
  %6 = and i32 %5, -65536, !dbg !138
  %7 = lshr i32 %6, 16, !dbg !138
  %8 = trunc i32 %7 to i16, !dbg !138
  store i16 %8, i16* %HiWord, align 2, !dbg !138
  %9 = load i16* %LoWord, align 2, !dbg !139
  %10 = zext i16 %9 to i32, !dbg !139
  %11 = and i32 %10, 65280, !dbg !139
  %12 = lshr i32 %11, 8, !dbg !139
  %13 = load i16* %LoWord, align 2, !dbg !139
  %14 = zext i16 %13 to i32, !dbg !139
  %15 = and i32 %14, 255, !dbg !139
  %16 = shl i32 %15, 8, !dbg !139
  %17 = or i32 %12, %16, !dbg !139
  %18 = trunc i32 %17 to i16, !dbg !139
  store i16 %18, i16* %LoWord, align 2, !dbg !139
  %19 = load i16* %HiWord, align 2, !dbg !140
  %20 = zext i16 %19 to i32, !dbg !140
  %21 = and i32 %20, 65280, !dbg !140
  %22 = lshr i32 %21, 8, !dbg !140
  %23 = load i16* %HiWord, align 2, !dbg !140
  %24 = zext i16 %23 to i32, !dbg !140
  %25 = and i32 %24, 255, !dbg !140
  %26 = shl i32 %25, 8, !dbg !140
  %27 = or i32 %22, %26, !dbg !140
  %28 = trunc i32 %27 to i16, !dbg !140
  store i16 %28, i16* %HiWord, align 2, !dbg !140
  %29 = load i16* %LoWord, align 2, !dbg !141
  %30 = zext i16 %29 to i32, !dbg !141
  %31 = shl i32 %30, 16, !dbg !141
  %32 = load i16* %HiWord, align 2, !dbg !141
  %33 = zext i16 %32 to i32, !dbg !141
  %34 = or i32 %31, %33, !dbg !141
  ret i32 %34, !dbg !141
}

; Function Attrs: nounwind
define void @Xil_Out16BE(i32 %Addr, i16 zeroext %Value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %temp = alloca i16, align 2
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !142), !dbg !143
  store i16 %Value, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !144), !dbg !145
  call void @llvm.dbg.declare(metadata !{i16* %temp}, metadata !146), !dbg !147
  %3 = load i16* %2, align 2, !dbg !148
  %4 = call zeroext i16 @Xil_EndianSwap16(i16 zeroext %3), !dbg !148
  store i16 %4, i16* %temp, align 2, !dbg !148
  %5 = load i32* %1, align 4, !dbg !149
  %6 = load i16* %temp, align 2, !dbg !149
  call void @Xil_Out16(i32 %5, i16 zeroext %6), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: nounwind
define void @Xil_Out32BE(i32 %Addr, i32 %Value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %Addr, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !151), !dbg !152
  store i32 %Value, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !153), !dbg !154
  call void @llvm.dbg.declare(metadata !{i32* %temp}, metadata !155), !dbg !156
  %3 = load i32* %2, align 4, !dbg !157
  %4 = call i32 @Xil_EndianSwap32(i32 %3), !dbg !157
  store i32 %4, i32* %temp, align 4, !dbg !157
  %5 = load i32* %1, align 4, !dbg !158
  %6 = load i32* %temp, align 4, !dbg !158
  call void @Xil_Out32(i32 %5, i32 %6), !dbg !158
  ret void, !dbg !159
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !48, !58, !59, !60, !50, !61, !62, !63, !54, !64, !56}
!xidane.function_declaration_filename = !{!45, !65, !47, !65, !49, !65, !51, !65, !53, !65, !55, !65, !57, !65, !58, !65, !60, !65, !61, !65, !63, !65, !64, !65}
!xidane.ExternC = !{!45, !47, !49, !51, !53, !55, !57, !58, !60, !61, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/xil/xil_io.c] [DW_LANG_C99]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/xil/xil_io.c", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !16, metadata !22, metadata !26, metadata !29, metadata !32, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !42}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_In8", metadata !"Xil_In8", metadata !"", i32 85, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i32)* @Xil_In8, null, null, metadata !2, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [Xil_In8]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/xil/xil_io.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !13}
!8 = metadata !{i32 786454, metadata !9, null, metadata !"u8", i32 90, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [u8] [line 90, size 0, align 0, offset 0] [from u_int8_t]
!9 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/xil/xil_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!10 = metadata !{i32 786454, metadata !11, null, metadata !"u_int8_t", i32 200, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [u_int8_t] [line 200, size 0, align 0, offset 0] [from unsigned char]
!11 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!12 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{i32 786454, metadata !9, null, metadata !"INTPTR", i32 142, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [INTPTR] [line 142, size 0, align 0, offset 0] [from u_int32_t]
!14 = metadata !{i32 786454, metadata !11, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!15 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_In16", metadata !"Xil_In16", metadata !"", i32 104, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i32)* @Xil_In16, null, null, metadata !2, i32 105} ; [ DW_TAG_subprogram ] [line 104] [def] [scope 105] [Xil_In16]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !19, metadata !13}
!19 = metadata !{i32 786454, metadata !9, null, metadata !"u16", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [u16] [line 91, size 0, align 0, offset 0] [from u_int16_t]
!20 = metadata !{i32 786454, metadata !11, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!21 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_In32", metadata !"Xil_In32", metadata !"", i32 123, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @Xil_In32, null, null, metadata !2, i32 124} ; [ DW_TAG_subprogram ] [line 123] [def] [scope 124] [Xil_In32]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !13}
!25 = metadata !{i32 786454, metadata !9, null, metadata !"u32", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [u32] [line 92, size 0, align 0, offset 0] [from u_int32_t]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_Out8", metadata !"Xil_Out8", metadata !"", i32 143, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8)* @Xil_Out8, null, null, metadata !2, i32 144} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 144] [Xil_Out8]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !13, metadata !8}
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_Out16", metadata !"Xil_Out16", metadata !"", i32 164, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i16)* @Xil_Out16, null, null, metadata !2, i32 165} ; [ DW_TAG_subprogram ] [line 164] [def] [scope 165] [Xil_Out16]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !13, metadata !19}
!32 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_Out32", metadata !"Xil_Out32", metadata !"", i32 185, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @Xil_Out32, null, null, metadata !2, i32 186} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 186] [Xil_Out32]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !13, metadata !25}
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_In16BE", metadata !"Xil_In16BE", metadata !"", i32 206, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i32)* @Xil_In16BE, null, null, metadata !2, i32 207} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 207] [Xil_In16BE]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_In32BE", metadata !"Xil_In32BE", metadata !"", i32 233, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @Xil_In32BE, null, null, metadata !2, i32 234} ; [ DW_TAG_subprogram ] [line 233] [def] [scope 234] [Xil_In32BE]
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_Out16BE", metadata !"Xil_Out16BE", metadata !"", i32 261, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i16)* @Xil_Out16BE, null, null, metadata !2, i32 262} ; [ DW_TAG_subprogram ] [line 261] [def] [scope 262] [Xil_Out16BE]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_Out32BE", metadata !"Xil_Out32BE", metadata !"", i32 286, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @Xil_Out32BE, null, null, metadata !2, i32 287} ; [ DW_TAG_subprogram ] [line 286] [def] [scope 287] [Xil_Out32BE]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_EndianSwap16", metadata !"Xil_EndianSwap16", metadata !"", i32 307, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16)* @Xil_EndianSwap16, null, null, metadata !2, i32 308} ; [ DW_TAG_subprogram ] [line 307] [def] [scope 308] [Xil_EndianSwap16]
!40 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !19, metadata !19}
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Xil_EndianSwap32", metadata !"Xil_EndianSwap32", metadata !"", i32 324, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @Xil_EndianSwap32, null, null, metadata !2, i32 325} ; [ DW_TAG_subprogram ] [line 324] [def] [scope 325] [Xil_EndianSwap32]
!43 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !25, metadata !25}
!45 = metadata !{i8 (i32)* @Xil_In8}
!46 = metadata !{metadata !"u8.INTPTR.0"}
!47 = metadata !{i16 (i32)* @Xil_In16}
!48 = metadata !{metadata !"u16.INTPTR.0"}
!49 = metadata !{i32 (i32)* @Xil_In32}
!50 = metadata !{metadata !"u32.INTPTR.0"}
!51 = metadata !{void (i32, i8)* @Xil_Out8}
!52 = metadata !{metadata !"void.INTPTR.0.u8.0"}
!53 = metadata !{void (i32, i16)* @Xil_Out16}
!54 = metadata !{metadata !"void.INTPTR.0.u16.0"}
!55 = metadata !{void (i32, i32)* @Xil_Out32}
!56 = metadata !{metadata !"void.INTPTR.0.u32.0"}
!57 = metadata !{i16 (i32)* @Xil_In16BE}
!58 = metadata !{i16 (i16)* @Xil_EndianSwap16}
!59 = metadata !{metadata !"u16.u16.0"}
!60 = metadata !{i32 (i32)* @Xil_In32BE}
!61 = metadata !{i32 (i32)* @Xil_EndianSwap32}
!62 = metadata !{metadata !"u32.u32.0"}
!63 = metadata !{void (i32, i16)* @Xil_Out16BE}
!64 = metadata !{void (i32, i32)* @Xil_Out32BE}
!65 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/xil/xil_io.h"}
!66 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!67 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!68 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!69 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!70 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!71 = metadata !{i32 786689, metadata !4, metadata !"Addr", metadata !5, i32 16777301, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 85]
!72 = metadata !{i32 85, i32 19, metadata !4, null}
!73 = metadata !{i32 87, i32 2, metadata !4, null}
!74 = metadata !{i32 786689, metadata !16, metadata !"Addr", metadata !5, i32 16777320, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 104]
!75 = metadata !{i32 104, i32 21, metadata !16, null}
!76 = metadata !{i32 106, i32 2, metadata !16, null}
!77 = metadata !{i32 786689, metadata !22, metadata !"Addr", metadata !5, i32 16777339, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 123]
!78 = metadata !{i32 123, i32 21, metadata !22, null}
!79 = metadata !{i32 125, i32 2, metadata !22, null}
!80 = metadata !{i32 786689, metadata !26, metadata !"Addr", metadata !5, i32 16777359, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 143]
!81 = metadata !{i32 143, i32 22, metadata !26, null}
!82 = metadata !{i32 786689, metadata !26, metadata !"Value", metadata !5, i32 33554575, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Value] [line 143]
!83 = metadata !{i32 143, i32 31, metadata !26, null}
!84 = metadata !{i32 786688, metadata !26, metadata !"LocalAddr", metadata !5, i32 145, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LocalAddr] [line 145]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u8]
!86 = metadata !{i32 145, i32 6, metadata !26, null}
!87 = metadata !{i32 145, i32 2, metadata !26, null}
!88 = metadata !{i32 146, i32 2, metadata !26, null}
!89 = metadata !{i32 147, i32 1, metadata !26, null}
!90 = metadata !{i32 786689, metadata !29, metadata !"Addr", metadata !5, i32 16777380, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 164]
!91 = metadata !{i32 164, i32 23, metadata !29, null}
!92 = metadata !{i32 786689, metadata !29, metadata !"Value", metadata !5, i32 33554596, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Value] [line 164]
!93 = metadata !{i32 164, i32 33, metadata !29, null}
!94 = metadata !{i32 786688, metadata !29, metadata !"LocalAddr", metadata !5, i32 166, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LocalAddr] [line 166]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u16]
!96 = metadata !{i32 166, i32 7, metadata !29, null}
!97 = metadata !{i32 166, i32 2, metadata !29, null}
!98 = metadata !{i32 167, i32 2, metadata !29, null}
!99 = metadata !{i32 168, i32 1, metadata !29, null}
!100 = metadata !{i32 786689, metadata !32, metadata !"Addr", metadata !5, i32 16777401, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 185]
!101 = metadata !{i32 185, i32 23, metadata !32, null}
!102 = metadata !{i32 786689, metadata !32, metadata !"Value", metadata !5, i32 33554617, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Value] [line 185]
!103 = metadata !{i32 185, i32 33, metadata !32, null}
!104 = metadata !{i32 786688, metadata !32, metadata !"LocalAddr", metadata !5, i32 187, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LocalAddr] [line 187]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u32]
!106 = metadata !{i32 187, i32 7, metadata !32, null}
!107 = metadata !{i32 187, i32 2, metadata !32, null}
!108 = metadata !{i32 188, i32 2, metadata !32, null}
!109 = metadata !{i32 189, i32 1, metadata !32, null}
!110 = metadata !{i32 786689, metadata !35, metadata !"Addr", metadata !5, i32 16777422, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 206]
!111 = metadata !{i32 206, i32 23, metadata !35, null}
!112 = metadata !{i32 786688, metadata !35, metadata !"temp", metadata !5, i32 208, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 208]
!113 = metadata !{i32 208, i32 6, metadata !35, null}
!114 = metadata !{i32 786688, metadata !35, metadata !"result", metadata !5, i32 209, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 209]
!115 = metadata !{i32 209, i32 6, metadata !35, null}
!116 = metadata !{i32 211, i32 9, metadata !35, null}
!117 = metadata !{i32 213, i32 11, metadata !35, null}
!118 = metadata !{i32 215, i32 2, metadata !35, null}
!119 = metadata !{i32 786689, metadata !39, metadata !"Data", metadata !5, i32 16777523, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Data] [line 307]
!120 = metadata !{i32 307, i32 26, metadata !39, null}
!121 = metadata !{i32 309, i32 2, metadata !39, null}
!122 = metadata !{i32 786689, metadata !36, metadata !"Addr", metadata !5, i32 16777449, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 233]
!123 = metadata !{i32 233, i32 23, metadata !36, null}
!124 = metadata !{i32 786688, metadata !36, metadata !"temp", metadata !5, i32 235, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 235]
!125 = metadata !{i32 235, i32 6, metadata !36, null}
!126 = metadata !{i32 786688, metadata !36, metadata !"result", metadata !5, i32 236, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 236]
!127 = metadata !{i32 236, i32 6, metadata !36, null}
!128 = metadata !{i32 238, i32 9, metadata !36, null}
!129 = metadata !{i32 240, i32 11, metadata !36, null}
!130 = metadata !{i32 242, i32 2, metadata !36, null}
!131 = metadata !{i32 786689, metadata !42, metadata !"Data", metadata !5, i32 16777540, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Data] [line 324]
!132 = metadata !{i32 324, i32 26, metadata !42, null}
!133 = metadata !{i32 786688, metadata !42, metadata !"LoWord", metadata !5, i32 326, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LoWord] [line 326]
!134 = metadata !{i32 326, i32 6, metadata !42, null}
!135 = metadata !{i32 786688, metadata !42, metadata !"HiWord", metadata !5, i32 327, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [HiWord] [line 327]
!136 = metadata !{i32 327, i32 6, metadata !42, null}
!137 = metadata !{i32 331, i32 2, metadata !42, null}
!138 = metadata !{i32 332, i32 2, metadata !42, null}
!139 = metadata !{i32 336, i32 2, metadata !42, null}
!140 = metadata !{i32 337, i32 2, metadata !42, null}
!141 = metadata !{i32 341, i32 2, metadata !42, null}
!142 = metadata !{i32 786689, metadata !37, metadata !"Addr", metadata !5, i32 16777477, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 261]
!143 = metadata !{i32 261, i32 25, metadata !37, null}
!144 = metadata !{i32 786689, metadata !37, metadata !"Value", metadata !5, i32 33554693, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Value] [line 261]
!145 = metadata !{i32 261, i32 35, metadata !37, null}
!146 = metadata !{i32 786688, metadata !37, metadata !"temp", metadata !5, i32 263, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 263]
!147 = metadata !{i32 263, i32 6, metadata !37, null}
!148 = metadata !{i32 265, i32 9, metadata !37, null}
!149 = metadata !{i32 267, i32 5, metadata !37, null}
!150 = metadata !{i32 268, i32 1, metadata !37, null}
!151 = metadata !{i32 786689, metadata !38, metadata !"Addr", metadata !5, i32 16777502, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Addr] [line 286]
!152 = metadata !{i32 286, i32 25, metadata !38, null}
!153 = metadata !{i32 786689, metadata !38, metadata !"Value", metadata !5, i32 33554718, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Value] [line 286]
!154 = metadata !{i32 286, i32 35, metadata !38, null}
!155 = metadata !{i32 786688, metadata !38, metadata !"temp", metadata !5, i32 288, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 288]
!156 = metadata !{i32 288, i32 6, metadata !38, null}
!157 = metadata !{i32 290, i32 9, metadata !38, null}
!158 = metadata !{i32 292, i32 5, metadata !38, null}
!159 = metadata !{i32 293, i32 1, metadata !38, null}
