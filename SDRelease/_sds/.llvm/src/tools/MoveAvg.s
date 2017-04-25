; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%class.MoveAvg = type { %"class.std::queue", i32, double }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl" }
%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl" = type { double**, i32, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { double*, double*, double*, double** }
%"class.std::allocator" = type { i8 }
%"struct.std::_Deque_iterator.0" = type { double*, double*, double*, double** }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.std::allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator.2" = type { i8 }

@_ZN7MoveAvgC1Ev = alias %class.MoveAvg* (%class.MoveAvg*)* @_ZN7MoveAvgC2Ev
@_ZN7MoveAvgC1Ej = alias %class.MoveAvg* (%class.MoveAvg*, i32)* @_ZN7MoveAvgC2Ej

define %class.MoveAvg* @_ZN7MoveAvgC2Ev(%class.MoveAvg* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.MoveAvg*, align 4
  %2 = alloca %"class.std::deque", align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %class.MoveAvg* %this, %class.MoveAvg** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.MoveAvg** %1}, metadata !967), !dbg !969
  %5 = load %class.MoveAvg** %1
  %6 = getelementptr inbounds %class.MoveAvg* %5, i32 0, i32 0, !dbg !970
  %7 = call %"class.std::deque"* @_ZNSt5dequeIdSaIdEEC2Ev(%"class.std::deque"* %2), !dbg !970
  %8 = invoke %"class.std::queue"* @_ZNSt5queueIdSt5dequeIdSaIdEEEC2ERKS2_(%"class.std::queue"* %6, %"class.std::deque"* dereferenceable(40) %2)
          to label %9 unwind label %13, !dbg !970

; <label>:9                                       ; preds = %0
  %10 = call %"class.std::deque"* @_ZNSt5dequeIdSaIdEED2Ev(%"class.std::deque"* %2), !dbg !971
  %11 = getelementptr inbounds %class.MoveAvg* %5, i32 0, i32 1, !dbg !971
  store i32 2, i32* %11, align 4, !dbg !971
  %12 = getelementptr inbounds %class.MoveAvg* %5, i32 0, i32 2, !dbg !971
  store double 0.000000e+00, double* %12, align 8, !dbg !971
  ret %class.MoveAvg* %5, !dbg !973

; <label>:13                                      ; preds = %0
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !973
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !973
  store i8* %15, i8** %3, !dbg !973
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !973
  store i32 %16, i32* %4, !dbg !973
  %17 = invoke %"class.std::deque"* @_ZNSt5dequeIdSaIdEED2Ev(%"class.std::deque"* %2)
          to label %18 unwind label %24, !dbg !973

; <label>:18                                      ; preds = %13
  br label %19, !dbg !974

; <label>:19                                      ; preds = %18
  %20 = load i8** %3, !dbg !976
  %21 = load i32* %4, !dbg !976
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0, !dbg !976
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1, !dbg !976
  resume { i8*, i32 } %23, !dbg !976

; <label>:24                                      ; preds = %13
  %25 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !978
  %26 = extractvalue { i8*, i32 } %25, 0, !dbg !978
  call void @__clang_call_terminate(i8* %26) #10, !dbg !978
  unreachable, !dbg !978
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

define linkonce_odr %"class.std::deque"* @_ZNSt5dequeIdSaIdEEC2Ev(%"class.std::deque"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !980), !dbg !982
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !983
  %4 = call %"class.std::_Deque_base"* @_ZNSt11_Deque_baseIdSaIdEEC2Ev(%"class.std::_Deque_base"* %3), !dbg !983
  ret %"class.std::deque"* %2, !dbg !984
}

define linkonce_odr %"class.std::queue"* @_ZNSt5queueIdSt5dequeIdSaIdEEEC2ERKS2_(%"class.std::queue"* returned %this, %"class.std::deque"* dereferenceable(40) %__c) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::queue"*, align 4
  %2 = alloca %"class.std::deque"*, align 4
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::queue"** %1}, metadata !985), !dbg !987
  store %"class.std::deque"* %__c, %"class.std::deque"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %2}, metadata !988), !dbg !990
  %3 = load %"class.std::queue"** %1
  %4 = getelementptr inbounds %"class.std::queue"* %3, i32 0, i32 0, !dbg !991
  %5 = load %"class.std::deque"** %2, align 4, !dbg !991
  %6 = call %"class.std::deque"* @_ZNSt5dequeIdSaIdEEC2ERKS1_(%"class.std::deque"* %4, %"class.std::deque"* dereferenceable(40) %5), !dbg !991
  ret %"class.std::queue"* %3, !dbg !992
}

declare i32 @__gxx_personality_v0(...)

define linkonce_odr %"class.std::deque"* @_ZNSt5dequeIdSaIdEED2Ev(%"class.std::deque"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  %2 = alloca %"struct.std::_Deque_iterator", align 4
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca %"struct.std::_Deque_iterator", align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !993), !dbg !994
  %6 = load %"class.std::deque"** %1
  invoke void @_ZNSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %6)
          to label %7 unwind label %15, !dbg !995

; <label>:7                                       ; preds = %0
  invoke void @_ZNSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator"* sret %5, %"class.std::deque"* %6)
          to label %8 unwind label %15, !dbg !997

; <label>:8                                       ; preds = %7
  %9 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*, !dbg !999
  %10 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %9)
          to label %11 unwind label %15, !dbg !999

; <label>:11                                      ; preds = %8
  invoke void @_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_(%"class.std::deque"* %6, %"struct.std::_Deque_iterator"* %2, %"struct.std::_Deque_iterator"* %5, %"class.std::allocator"* dereferenceable(1) %10)
          to label %12 unwind label %15, !dbg !1001

; <label>:12                                      ; preds = %11
  %13 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*, !dbg !1003
  %14 = call %"class.std::_Deque_base"* @_ZNSt11_Deque_baseIdSaIdEED2Ev(%"class.std::_Deque_base"* %13), !dbg !1003
  ret %"class.std::deque"* %6, !dbg !1005

; <label>:15                                      ; preds = %11, %8, %7, %0
  %16 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1006
  %17 = extractvalue { i8*, i32 } %16, 0, !dbg !1006
  store i8* %17, i8** %3, !dbg !1006
  %18 = extractvalue { i8*, i32 } %16, 1, !dbg !1006
  store i32 %18, i32* %4, !dbg !1006
  %19 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*, !dbg !1005
  %20 = invoke %"class.std::_Deque_base"* @_ZNSt11_Deque_baseIdSaIdEED2Ev(%"class.std::_Deque_base"* %19)
          to label %21 unwind label %27, !dbg !1005

; <label>:21                                      ; preds = %15
  br label %22, !dbg !1011

; <label>:22                                      ; preds = %21
  %23 = load i8** %3, !dbg !1013
  %24 = load i32* %4, !dbg !1013
  %25 = insertvalue { i8*, i32 } undef, i8* %23, 0, !dbg !1013
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1, !dbg !1013
  resume { i8*, i32 } %26, !dbg !1013

; <label>:27                                      ; preds = %15
  %28 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1015
  %29 = extractvalue { i8*, i32 } %28, 0, !dbg !1015
  call void @__clang_call_terminate(i8* %29) #10, !dbg !1015
  unreachable, !dbg !1015
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #2 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #9
  call void @_ZSt9terminatev() #10
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

define %class.MoveAvg* @_ZN7MoveAvgC2Ej(%class.MoveAvg* returned %this, i32 %length) unnamed_addr #0 align 2 {
  %1 = alloca %class.MoveAvg*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::deque", align 4
  %4 = alloca i8*
  %5 = alloca i32
  store %class.MoveAvg* %this, %class.MoveAvg** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.MoveAvg** %1}, metadata !1017), !dbg !1018
  store i32 %length, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1019), !dbg !1021
  %6 = load %class.MoveAvg** %1
  %7 = getelementptr inbounds %class.MoveAvg* %6, i32 0, i32 0, !dbg !1022
  %8 = call %"class.std::deque"* @_ZNSt5dequeIdSaIdEEC2Ev(%"class.std::deque"* %3), !dbg !1022
  %9 = invoke %"class.std::queue"* @_ZNSt5queueIdSt5dequeIdSaIdEEEC2ERKS2_(%"class.std::queue"* %7, %"class.std::deque"* dereferenceable(40) %3)
          to label %10 unwind label %15, !dbg !1022

; <label>:10                                      ; preds = %0
  %11 = call %"class.std::deque"* @_ZNSt5dequeIdSaIdEED2Ev(%"class.std::deque"* %3), !dbg !1023
  %12 = getelementptr inbounds %class.MoveAvg* %6, i32 0, i32 1, !dbg !1023
  %13 = load i32* %2, align 4, !dbg !1023
  store i32 %13, i32* %12, align 4, !dbg !1023
  %14 = getelementptr inbounds %class.MoveAvg* %6, i32 0, i32 2, !dbg !1023
  store double 0.000000e+00, double* %14, align 8, !dbg !1023
  ret %class.MoveAvg* %6, !dbg !1025

; <label>:15                                      ; preds = %0
  %16 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1025
  %17 = extractvalue { i8*, i32 } %16, 0, !dbg !1025
  store i8* %17, i8** %4, !dbg !1025
  %18 = extractvalue { i8*, i32 } %16, 1, !dbg !1025
  store i32 %18, i32* %5, !dbg !1025
  %19 = invoke %"class.std::deque"* @_ZNSt5dequeIdSaIdEED2Ev(%"class.std::deque"* %3)
          to label %20 unwind label %26, !dbg !1025

; <label>:20                                      ; preds = %15
  br label %21, !dbg !1026

; <label>:21                                      ; preds = %20
  %22 = load i8** %4, !dbg !1028
  %23 = load i32* %5, !dbg !1028
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0, !dbg !1028
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1, !dbg !1028
  resume { i8*, i32 } %25, !dbg !1028

; <label>:26                                      ; preds = %15
  %27 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1030
  %28 = extractvalue { i8*, i32 } %27, 0, !dbg !1030
  call void @__clang_call_terminate(i8* %28) #10, !dbg !1030
  unreachable, !dbg !1030
}

define void @_ZN7MoveAvg9addSampleEd(%class.MoveAvg* %this, double %sample) #0 align 2 {
  %1 = alloca %class.MoveAvg*, align 4
  %2 = alloca double, align 8
  store %class.MoveAvg* %this, %class.MoveAvg** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.MoveAvg** %1}, metadata !1032), !dbg !1033
  store double %sample, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !1034), !dbg !1035
  %3 = load %class.MoveAvg** %1
  %4 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 0, !dbg !1036
  call void @_ZNSt5queueIdSt5dequeIdSaIdEEE4pushERKd(%"class.std::queue"* %4, double* dereferenceable(8) %2), !dbg !1036
  %5 = load double* %2, align 8, !dbg !1037
  %6 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 2, !dbg !1037
  %7 = load double* %6, align 8, !dbg !1037
  %8 = fadd double %7, %5, !dbg !1037
  store double %8, double* %6, align 8, !dbg !1037
  %9 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 0, !dbg !1038
  %10 = call i32 @_ZNKSt5queueIdSt5dequeIdSaIdEEE4sizeEv(%"class.std::queue"* %9), !dbg !1038
  %11 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 1, !dbg !1038
  %12 = load i32* %11, align 4, !dbg !1038
  %13 = icmp ugt i32 %10, %12, !dbg !1038
  br i1 %13, label %14, label %22, !dbg !1038

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 0, !dbg !1040
  %16 = call dereferenceable(8) double* @_ZNSt5queueIdSt5dequeIdSaIdEEE5frontEv(%"class.std::queue"* %15), !dbg !1040
  %17 = load double* %16, !dbg !1040
  %18 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 2, !dbg !1040
  %19 = load double* %18, align 8, !dbg !1040
  %20 = fsub double %19, %17, !dbg !1040
  store double %20, double* %18, align 8, !dbg !1040
  %21 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 0, !dbg !1042
  call void @_ZNSt5queueIdSt5dequeIdSaIdEEE3popEv(%"class.std::queue"* %21), !dbg !1042
  br label %22, !dbg !1043

; <label>:22                                      ; preds = %14, %0
  ret void, !dbg !1044
}

define linkonce_odr void @_ZNSt5queueIdSt5dequeIdSaIdEEE4pushERKd(%"class.std::queue"* %this, double* dereferenceable(8) %__x) #0 align 2 {
  %1 = alloca %"class.std::queue"*, align 4
  %2 = alloca double*, align 4
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::queue"** %1}, metadata !1045), !dbg !1046
  store double* %__x, double** %2, align 4
  call void @llvm.dbg.declare(metadata !{double** %2}, metadata !1047), !dbg !1048
  %3 = load %"class.std::queue"** %1
  %4 = getelementptr inbounds %"class.std::queue"* %3, i32 0, i32 0, !dbg !1049
  %5 = load double** %2, align 4, !dbg !1049
  call void @_ZNSt5dequeIdSaIdEE9push_backERKd(%"class.std::deque"* %4, double* dereferenceable(8) %5), !dbg !1049
  ret void, !dbg !1050
}

define linkonce_odr i32 @_ZNKSt5queueIdSt5dequeIdSaIdEEE4sizeEv(%"class.std::queue"* %this) #0 align 2 {
  %1 = alloca %"class.std::queue"*, align 4
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::queue"** %1}, metadata !1051), !dbg !1053
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0, !dbg !1054
  %4 = call i32 @_ZNKSt5dequeIdSaIdEE4sizeEv(%"class.std::deque"* %3), !dbg !1054
  ret i32 %4, !dbg !1054
}

define linkonce_odr dereferenceable(8) double* @_ZNSt5queueIdSt5dequeIdSaIdEEE5frontEv(%"class.std::queue"* %this) #0 align 2 {
  %1 = alloca %"class.std::queue"*, align 4
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::queue"** %1}, metadata !1055), !dbg !1056
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0, !dbg !1057
  %4 = call dereferenceable(8) double* @_ZNSt5dequeIdSaIdEE5frontEv(%"class.std::deque"* %3), !dbg !1057
  ret double* %4, !dbg !1057
}

define linkonce_odr void @_ZNSt5queueIdSt5dequeIdSaIdEEE3popEv(%"class.std::queue"* %this) #0 align 2 {
  %1 = alloca %"class.std::queue"*, align 4
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::queue"** %1}, metadata !1058), !dbg !1059
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0, !dbg !1060
  call void @_ZNSt5dequeIdSaIdEE9pop_frontEv(%"class.std::deque"* %3), !dbg !1060
  ret void, !dbg !1061
}

define double @_ZNK7MoveAvg13getLastSampleEv(%class.MoveAvg* %this) #0 align 2 {
  %1 = alloca double, align 8
  %2 = alloca %class.MoveAvg*, align 4
  store %class.MoveAvg* %this, %class.MoveAvg** %2, align 4
  call void @llvm.dbg.declare(metadata !{%class.MoveAvg** %2}, metadata !1062), !dbg !1064
  %3 = load %class.MoveAvg** %2
  %4 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 0, !dbg !1065
  %5 = call zeroext i1 @_ZNKSt5queueIdSt5dequeIdSaIdEEE5emptyEv(%"class.std::queue"* %4), !dbg !1065
  br i1 %5, label %6, label %7, !dbg !1065

; <label>:6                                       ; preds = %0
  store double 0.000000e+00, double* %1, !dbg !1067
  br label %11, !dbg !1067

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 0, !dbg !1068
  %9 = call dereferenceable(8) double* @_ZNKSt5queueIdSt5dequeIdSaIdEEE4backEv(%"class.std::queue"* %8), !dbg !1068
  %10 = load double* %9, !dbg !1068
  store double %10, double* %1, !dbg !1068
  br label %11, !dbg !1068

; <label>:11                                      ; preds = %7, %6
  %12 = load double* %1, !dbg !1069
  ret double %12, !dbg !1069
}

define linkonce_odr zeroext i1 @_ZNKSt5queueIdSt5dequeIdSaIdEEE5emptyEv(%"class.std::queue"* %this) #0 align 2 {
  %1 = alloca %"class.std::queue"*, align 4
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::queue"** %1}, metadata !1070), !dbg !1071
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0, !dbg !1072
  %4 = call zeroext i1 @_ZNKSt5dequeIdSaIdEE5emptyEv(%"class.std::deque"* %3), !dbg !1072
  ret i1 %4, !dbg !1072
}

define linkonce_odr dereferenceable(8) double* @_ZNKSt5queueIdSt5dequeIdSaIdEEE4backEv(%"class.std::queue"* %this) #0 align 2 {
  %1 = alloca %"class.std::queue"*, align 4
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::queue"** %1}, metadata !1073), !dbg !1074
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0, !dbg !1075
  %4 = call dereferenceable(8) double* @_ZNKSt5dequeIdSaIdEE4backEv(%"class.std::deque"* %3), !dbg !1075
  ret double* %4, !dbg !1075
}

define double @_ZNK7MoveAvg14getCurrentMeanEv(%class.MoveAvg* %this) #0 align 2 {
  %1 = alloca double, align 8
  %2 = alloca %class.MoveAvg*, align 4
  store %class.MoveAvg* %this, %class.MoveAvg** %2, align 4
  call void @llvm.dbg.declare(metadata !{%class.MoveAvg** %2}, metadata !1076), !dbg !1077
  %3 = load %class.MoveAvg** %2
  %4 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 0, !dbg !1078
  %5 = call zeroext i1 @_ZNKSt5queueIdSt5dequeIdSaIdEEE5emptyEv(%"class.std::queue"* %4), !dbg !1078
  br i1 %5, label %6, label %7, !dbg !1078

; <label>:6                                       ; preds = %0
  store double 0.000000e+00, double* %1, !dbg !1080
  br label %14, !dbg !1080

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 2, !dbg !1081
  %9 = load double* %8, align 8, !dbg !1081
  %10 = getelementptr inbounds %class.MoveAvg* %3, i32 0, i32 0, !dbg !1082
  %11 = call i32 @_ZNKSt5queueIdSt5dequeIdSaIdEEE4sizeEv(%"class.std::queue"* %10), !dbg !1082
  %12 = uitofp i32 %11 to double, !dbg !1082
  %13 = fdiv double %9, %12, !dbg !1082
  store double %13, double* %1, !dbg !1082
  br label %14, !dbg !1082

; <label>:14                                      ; preds = %7, %6
  %15 = load double* %1, !dbg !1083
  ret double %15, !dbg !1083
}

define i32 @_ZNK7MoveAvg11getSampleNBEv(%class.MoveAvg* %this) #0 align 2 {
  %1 = alloca %class.MoveAvg*, align 4
  store %class.MoveAvg* %this, %class.MoveAvg** %1, align 4
  call void @llvm.dbg.declare(metadata !{%class.MoveAvg** %1}, metadata !1084), !dbg !1085
  %2 = load %class.MoveAvg** %1
  %3 = getelementptr inbounds %class.MoveAvg* %2, i32 0, i32 0, !dbg !1086
  %4 = call i32 @_ZNKSt5queueIdSt5dequeIdSaIdEEE4sizeEv(%"class.std::queue"* %3), !dbg !1086
  ret i32 %4, !dbg !1086
}

define linkonce_odr dereferenceable(8) double* @_ZNKSt5dequeIdSaIdEE4backEv(%"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  %__tmp = alloca %"struct.std::_Deque_iterator.0", align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1087), !dbg !1089
  %2 = load %"class.std::deque"** %1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__tmp}, metadata !1090), !dbg !1092
  call void @_ZNKSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator.0"* sret %__tmp, %"class.std::deque"* %2), !dbg !1093
  %3 = call dereferenceable(16) %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorIdRKdPS0_EmmEv(%"struct.std::_Deque_iterator.0"* %__tmp), !dbg !1094
  %4 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRKdPS0_EdeEv(%"struct.std::_Deque_iterator.0"* %__tmp), !dbg !1095
  ret double* %4, !dbg !1095
}

define linkonce_odr void @_ZNKSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, %"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1096), !dbg !1097
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1098
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1098
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 3, !dbg !1098
  %6 = call %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorIdRKdPS0_EC2ERKS_IdRdPdE(%"struct.std::_Deque_iterator.0"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(16) %5), !dbg !1098
  ret void, !dbg !1098
}

define linkonce_odr dereferenceable(16) %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorIdRKdPS0_EmmEv(%"struct.std::_Deque_iterator.0"* %this) #0 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.0"*, align 4
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"** %1}, metadata !1099), !dbg !1101
  %2 = load %"struct.std::_Deque_iterator.0"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 0, !dbg !1102
  %4 = load double** %3, align 4, !dbg !1102
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 1, !dbg !1102
  %6 = load double** %5, align 4, !dbg !1102
  %7 = icmp eq double* %4, %6, !dbg !1102
  br i1 %7, label %8, label %15, !dbg !1102

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 3, !dbg !1104
  %10 = load double*** %9, align 4, !dbg !1104
  %11 = getelementptr inbounds double** %10, i32 -1, !dbg !1104
  call void @_ZNSt15_Deque_iteratorIdRKdPS0_E11_M_set_nodeEPPd(%"struct.std::_Deque_iterator.0"* %2, double** %11), !dbg !1104
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 2, !dbg !1106
  %13 = load double** %12, align 4, !dbg !1106
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 0, !dbg !1106
  store double* %13, double** %14, align 4, !dbg !1106
  br label %15, !dbg !1107

; <label>:15                                      ; preds = %8, %0
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 0, !dbg !1108
  %17 = load double** %16, align 4, !dbg !1108
  %18 = getelementptr inbounds double* %17, i32 -1, !dbg !1108
  store double* %18, double** %16, align 4, !dbg !1108
  ret %"struct.std::_Deque_iterator.0"* %2, !dbg !1109
}

; Function Attrs: nounwind
define linkonce_odr dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRKdPS0_EdeEv(%"struct.std::_Deque_iterator.0"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.0"*, align 4
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"** %1}, metadata !1110), !dbg !1112
  %2 = load %"struct.std::_Deque_iterator.0"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 0, !dbg !1113
  %4 = load double** %3, align 4, !dbg !1113
  ret double* %4, !dbg !1113
}

define linkonce_odr void @_ZNSt15_Deque_iteratorIdRKdPS0_E11_M_set_nodeEPPd(%"struct.std::_Deque_iterator.0"* %this, double** %__new_node) #0 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.0"*, align 4
  %2 = alloca double**, align 4
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"** %1}, metadata !1114), !dbg !1115
  store double** %__new_node, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1116), !dbg !1117
  %3 = load %"struct.std::_Deque_iterator.0"** %1
  %4 = load double*** %2, align 4, !dbg !1118
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %3, i32 0, i32 3, !dbg !1118
  store double** %4, double*** %5, align 4, !dbg !1118
  %6 = load double*** %2, align 4, !dbg !1119
  %7 = load double** %6, align 4, !dbg !1119
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %3, i32 0, i32 1, !dbg !1119
  store double* %7, double** %8, align 4, !dbg !1119
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %3, i32 0, i32 1, !dbg !1120
  %10 = load double** %9, align 4, !dbg !1120
  %11 = call i32 @_ZNSt15_Deque_iteratorIdRKdPS0_E14_S_buffer_sizeEv(), !dbg !1121
  %12 = getelementptr inbounds double* %10, i32 %11, !dbg !1121
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %3, i32 0, i32 2, !dbg !1121
  store double* %12, double** %13, align 4, !dbg !1121
  ret void, !dbg !1122
}

define linkonce_odr i32 @_ZNSt15_Deque_iteratorIdRKdPS0_E14_S_buffer_sizeEv() #0 align 2 {
  %1 = call i32 @_ZSt16__deque_buf_sizej(i32 8), !dbg !1123
  ret i32 %1, !dbg !1123
}

; Function Attrs: inlinehint nounwind
define linkonce_odr i32 @_ZSt16__deque_buf_sizej(i32 %__size) #4 {
  %1 = alloca i32, align 4
  store i32 %__size, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1124), !dbg !1125
  %2 = load i32* %1, align 4, !dbg !1126
  %3 = icmp ult i32 %2, 512, !dbg !1126
  br i1 %3, label %4, label %7, !dbg !1126

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4, !dbg !1127
  %6 = udiv i32 512, %5, !dbg !1127
  br label %8, !dbg !1127

; <label>:7                                       ; preds = %0
  br label %8, !dbg !1129

; <label>:8                                       ; preds = %7, %4
  %9 = phi i32 [ %6, %4 ], [ 1, %7 ], !dbg !1126
  ret i32 %9, !dbg !1131
}

; Function Attrs: nounwind
define linkonce_odr %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorIdRKdPS0_EC2ERKS_IdRdPdE(%"struct.std::_Deque_iterator.0"* returned %this, %"struct.std::_Deque_iterator"* dereferenceable(16) %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.0"*, align 4
  %2 = alloca %"struct.std::_Deque_iterator"*, align 4
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"** %1}, metadata !1134), !dbg !1135
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %2}, metadata !1136), !dbg !1137
  %3 = load %"struct.std::_Deque_iterator.0"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %3, i32 0, i32 0, !dbg !1138
  %5 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1138
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0, !dbg !1138
  %7 = load double** %6, align 4, !dbg !1138
  store double* %7, double** %4, align 4, !dbg !1138
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %3, i32 0, i32 1, !dbg !1138
  %9 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1138
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 1, !dbg !1138
  %11 = load double** %10, align 4, !dbg !1138
  store double* %11, double** %8, align 4, !dbg !1138
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %3, i32 0, i32 2, !dbg !1138
  %13 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1138
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 2, !dbg !1138
  %15 = load double** %14, align 4, !dbg !1138
  store double* %15, double** %12, align 4, !dbg !1138
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %3, i32 0, i32 3, !dbg !1138
  %17 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1138
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 3, !dbg !1138
  %19 = load double*** %18, align 4, !dbg !1138
  store double** %19, double*** %16, align 4, !dbg !1138
  ret %"struct.std::_Deque_iterator.0"* %3, !dbg !1139
}

define linkonce_odr zeroext i1 @_ZNKSt5dequeIdSaIdEE5emptyEv(%"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1140), !dbg !1141
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1142
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1142
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 3, !dbg !1142
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1142
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0, !dbg !1142
  %8 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %7, i32 0, i32 2, !dbg !1142
  %9 = call zeroext i1 @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(16) %5, %"struct.std::_Deque_iterator"* dereferenceable(16) %8), !dbg !1142
  ret i1 %9, !dbg !1142
}

; Function Attrs: inlinehint nounwind
define linkonce_odr zeroext i1 @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* dereferenceable(16) %__x, %"struct.std::_Deque_iterator"* dereferenceable(16) %__y) #4 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 4
  %2 = alloca %"struct.std::_Deque_iterator"*, align 4
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %1}, metadata !1143), !dbg !1144
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %2}, metadata !1145), !dbg !1146
  %3 = load %"struct.std::_Deque_iterator"** %1, align 4, !dbg !1147
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0, !dbg !1147
  %5 = load double** %4, align 4, !dbg !1147
  %6 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1147
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0, !dbg !1147
  %8 = load double** %7, align 4, !dbg !1147
  %9 = icmp eq double* %5, %8, !dbg !1147
  ret i1 %9, !dbg !1147
}

define linkonce_odr void @_ZNSt5dequeIdSaIdEE9pop_frontEv(%"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1148), !dbg !1149
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1150
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1150
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 2, !dbg !1150
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0, !dbg !1150
  %7 = load double** %6, align 4, !dbg !1150
  %8 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1150
  %9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0, !dbg !1150
  %10 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %9, i32 0, i32 2, !dbg !1150
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 2, !dbg !1150
  %12 = load double** %11, align 4, !dbg !1150
  %13 = getelementptr inbounds double* %12, i32 -1, !dbg !1150
  %14 = icmp ne double* %7, %13, !dbg !1150
  br i1 %14, label %15, label %30, !dbg !1150

; <label>:15                                      ; preds = %0
  %16 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1152
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0, !dbg !1152
  %18 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %17 to %"class.__gnu_cxx::new_allocator"*, !dbg !1152
  %19 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1152
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0, !dbg !1152
  %21 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %20, i32 0, i32 2, !dbg !1152
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator"* %21, i32 0, i32 0, !dbg !1152
  %23 = load double** %22, align 4, !dbg !1152
  call void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"class.__gnu_cxx::new_allocator"* %18, double* %23), !dbg !1152
  %24 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1154
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0, !dbg !1154
  %26 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %25, i32 0, i32 2, !dbg !1154
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator"* %26, i32 0, i32 0, !dbg !1154
  %28 = load double** %27, align 4, !dbg !1154
  %29 = getelementptr inbounds double* %28, i32 1, !dbg !1154
  store double* %29, double** %27, align 4, !dbg !1154
  br label %31, !dbg !1155

; <label>:30                                      ; preds = %0
  call void @_ZNSt5dequeIdSaIdEE16_M_pop_front_auxEv(%"class.std::deque"* %2), !dbg !1156
  br label %31

; <label>:31                                      ; preds = %30, %15
  ret void, !dbg !1157
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"class.__gnu_cxx::new_allocator"* %this, double* %__p) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  %2 = alloca double*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %1}, metadata !1158), !dbg !1160
  store double* %__p, double** %2, align 4
  call void @llvm.dbg.declare(metadata !{double** %2}, metadata !1161), !dbg !1163
  %3 = load %"class.__gnu_cxx::new_allocator"** %1
  %4 = load double** %2, align 4, !dbg !1164
  ret void, !dbg !1165
}

define linkonce_odr void @_ZNSt5dequeIdSaIdEE16_M_pop_front_auxEv(%"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1166), !dbg !1167
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1168
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1168
  %5 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4 to %"class.__gnu_cxx::new_allocator"*, !dbg !1168
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1168
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0, !dbg !1168
  %8 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %7, i32 0, i32 2, !dbg !1168
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 0, !dbg !1168
  %10 = load double** %9, align 4, !dbg !1168
  call void @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd(%"class.__gnu_cxx::new_allocator"* %5, double* %10), !dbg !1168
  %11 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1169
  %12 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1169
  %13 = getelementptr inbounds %"class.std::_Deque_base"* %12, i32 0, i32 0, !dbg !1169
  %14 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %13, i32 0, i32 2, !dbg !1169
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator"* %14, i32 0, i32 1, !dbg !1169
  %16 = load double** %15, align 4, !dbg !1169
  call void @_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd(%"class.std::_Deque_base"* %11, double* %16), !dbg !1169
  %17 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1170
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0, !dbg !1170
  %19 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %18, i32 0, i32 2, !dbg !1170
  %20 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1170
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %20, i32 0, i32 0, !dbg !1170
  %22 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %21, i32 0, i32 2, !dbg !1170
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator"* %22, i32 0, i32 3, !dbg !1170
  %24 = load double*** %23, align 4, !dbg !1170
  %25 = getelementptr inbounds double** %24, i32 1, !dbg !1170
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %19, double** %25), !dbg !1170
  %26 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1171
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %26, i32 0, i32 0, !dbg !1171
  %28 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %27, i32 0, i32 2, !dbg !1171
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator"* %28, i32 0, i32 1, !dbg !1171
  %30 = load double** %29, align 4, !dbg !1171
  %31 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1171
  %32 = getelementptr inbounds %"class.std::_Deque_base"* %31, i32 0, i32 0, !dbg !1171
  %33 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %32, i32 0, i32 2, !dbg !1171
  %34 = getelementptr inbounds %"struct.std::_Deque_iterator"* %33, i32 0, i32 0, !dbg !1171
  store double* %30, double** %34, align 4, !dbg !1171
  ret void, !dbg !1172
}

define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd(%"class.std::_Deque_base"* %this, double* %__p) #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca double*, align 4
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1173), !dbg !1175
  store double* %__p, double** %2, align 4
  call void @llvm.dbg.declare(metadata !{double** %2}, metadata !1176), !dbg !1177
  %3 = load %"class.std::_Deque_base"** %1
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1178
  %5 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4 to %"class.std::allocator"*, !dbg !1178
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*, !dbg !1178
  %7 = load double** %2, align 4, !dbg !1178
  %8 = call i32 @_ZSt16__deque_buf_sizej(i32 8), !dbg !1179
  call void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj(%"class.__gnu_cxx::new_allocator"* %6, double* %7, i32 %8), !dbg !1178
  ret void, !dbg !1180
}

define linkonce_odr void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this, double** %__new_node) #0 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 4
  %2 = alloca double**, align 4
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %1}, metadata !1181), !dbg !1183
  store double** %__new_node, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1184), !dbg !1185
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = load double*** %2, align 4, !dbg !1186
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3, !dbg !1186
  store double** %4, double*** %5, align 4, !dbg !1186
  %6 = load double*** %2, align 4, !dbg !1187
  %7 = load double** %6, align 4, !dbg !1187
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1, !dbg !1187
  store double* %7, double** %8, align 4, !dbg !1187
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1, !dbg !1188
  %10 = load double** %9, align 4, !dbg !1188
  %11 = call i32 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv(), !dbg !1189
  %12 = getelementptr inbounds double* %10, i32 %11, !dbg !1189
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2, !dbg !1189
  store double* %12, double** %13, align 4, !dbg !1189
  ret void, !dbg !1190
}

; Function Attrs: nounwind
define linkonce_odr i32 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv() #3 align 2 {
  %1 = call i32 @_ZSt16__deque_buf_sizej(i32 8), !dbg !1191
  ret i32 %1, !dbg !1191
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj(%"class.__gnu_cxx::new_allocator"* %this, double* %__p, i32) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  %3 = alloca double*, align 4
  %4 = alloca i32, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %2}, metadata !1192), !dbg !1193
  store double* %__p, double** %3, align 4
  call void @llvm.dbg.declare(metadata !{double** %3}, metadata !1194), !dbg !1195
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1196), !dbg !1197
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load double** %3, align 4, !dbg !1198
  %7 = bitcast double* %6 to i8*, !dbg !1198
  call void @_ZdlPv(i8* %7) #9, !dbg !1198
  ret void, !dbg !1199
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

define linkonce_odr dereferenceable(8) double* @_ZNSt5dequeIdSaIdEE5frontEv(%"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  %2 = alloca %"struct.std::_Deque_iterator", align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1200), !dbg !1201
  %3 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %3), !dbg !1202
  %4 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %2), !dbg !1202
  ret double* %4, !dbg !1202
}

define linkonce_odr void @_ZNSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1203), !dbg !1204
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1205
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1205
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 2, !dbg !1205
  %6 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(16) %5), !dbg !1205
  ret void, !dbg !1205
}

; Function Attrs: nounwind
define linkonce_odr dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 4
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %1}, metadata !1206), !dbg !1208
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0, !dbg !1209
  %4 = load double** %3, align 4, !dbg !1209
  ret double* %4, !dbg !1209
}

; Function Attrs: nounwind
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* returned %this, %"struct.std::_Deque_iterator"* dereferenceable(16) %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 4
  %2 = alloca %"struct.std::_Deque_iterator"*, align 4
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %1}, metadata !1210), !dbg !1211
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %2}, metadata !1212), !dbg !1213
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0, !dbg !1214
  %5 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1214
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0, !dbg !1214
  %7 = load double** %6, align 4, !dbg !1214
  store double* %7, double** %4, align 4, !dbg !1214
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1, !dbg !1214
  %9 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1214
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 1, !dbg !1214
  %11 = load double** %10, align 4, !dbg !1214
  store double* %11, double** %8, align 4, !dbg !1214
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2, !dbg !1214
  %13 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1214
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 2, !dbg !1214
  %15 = load double** %14, align 4, !dbg !1214
  store double* %15, double** %12, align 4, !dbg !1214
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3, !dbg !1214
  %17 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1214
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 3, !dbg !1214
  %19 = load double*** %18, align 4, !dbg !1214
  store double** %19, double*** %16, align 4, !dbg !1214
  ret %"struct.std::_Deque_iterator"* %3, !dbg !1215
}

define linkonce_odr i32 @_ZNKSt5dequeIdSaIdEE4sizeEv(%"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1216), !dbg !1217
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1218
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1218
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 3, !dbg !1218
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1218
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0, !dbg !1218
  %8 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %7, i32 0, i32 2, !dbg !1218
  %9 = call i32 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(16) %5, %"struct.std::_Deque_iterator"* dereferenceable(16) %8), !dbg !1218
  ret i32 %9, !dbg !1218
}

; Function Attrs: inlinehint nounwind
define linkonce_odr i32 @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* dereferenceable(16) %__x, %"struct.std::_Deque_iterator"* dereferenceable(16) %__y) #4 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 4
  %2 = alloca %"struct.std::_Deque_iterator"*, align 4
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %1}, metadata !1219), !dbg !1220
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %2}, metadata !1221), !dbg !1222
  %3 = call i32 @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv(), !dbg !1223
  %4 = load %"struct.std::_Deque_iterator"** %1, align 4, !dbg !1223
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %4, i32 0, i32 3, !dbg !1223
  %6 = load double*** %5, align 4, !dbg !1223
  %7 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1223
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %7, i32 0, i32 3, !dbg !1223
  %9 = load double*** %8, align 4, !dbg !1223
  %10 = ptrtoint double** %6 to i32, !dbg !1223
  %11 = ptrtoint double** %9 to i32, !dbg !1223
  %12 = sub i32 %10, %11, !dbg !1223
  %13 = sdiv exact i32 %12, 4, !dbg !1223
  %14 = sub nsw i32 %13, 1, !dbg !1223
  %15 = mul nsw i32 %3, %14, !dbg !1223
  %16 = load %"struct.std::_Deque_iterator"** %1, align 4, !dbg !1223
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator"* %16, i32 0, i32 0, !dbg !1223
  %18 = load double** %17, align 4, !dbg !1223
  %19 = load %"struct.std::_Deque_iterator"** %1, align 4, !dbg !1223
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator"* %19, i32 0, i32 1, !dbg !1223
  %21 = load double** %20, align 4, !dbg !1223
  %22 = ptrtoint double* %18 to i32, !dbg !1223
  %23 = ptrtoint double* %21 to i32, !dbg !1223
  %24 = sub i32 %22, %23, !dbg !1223
  %25 = sdiv exact i32 %24, 8, !dbg !1223
  %26 = add nsw i32 %15, %25, !dbg !1223
  %27 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1223
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator"* %27, i32 0, i32 2, !dbg !1223
  %29 = load double** %28, align 4, !dbg !1223
  %30 = load %"struct.std::_Deque_iterator"** %2, align 4, !dbg !1223
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator"* %30, i32 0, i32 0, !dbg !1223
  %32 = load double** %31, align 4, !dbg !1223
  %33 = ptrtoint double* %29 to i32, !dbg !1223
  %34 = ptrtoint double* %32 to i32, !dbg !1223
  %35 = sub i32 %33, %34, !dbg !1223
  %36 = sdiv exact i32 %35, 8, !dbg !1223
  %37 = add nsw i32 %26, %36, !dbg !1223
  ret i32 %37, !dbg !1223
}

define linkonce_odr void @_ZNSt5dequeIdSaIdEE9push_backERKd(%"class.std::deque"* %this, double* dereferenceable(8) %__x) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  %2 = alloca double*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1224), !dbg !1225
  store double* %__x, double** %2, align 4
  call void @llvm.dbg.declare(metadata !{double** %2}, metadata !1226), !dbg !1227
  %3 = load %"class.std::deque"** %1
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*, !dbg !1228
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0, !dbg !1228
  %6 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5, i32 0, i32 3, !dbg !1228
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0, !dbg !1228
  %8 = load double** %7, align 4, !dbg !1228
  %9 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*, !dbg !1228
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0, !dbg !1228
  %11 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %10, i32 0, i32 3, !dbg !1228
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %11, i32 0, i32 2, !dbg !1228
  %13 = load double** %12, align 4, !dbg !1228
  %14 = getelementptr inbounds double* %13, i32 -1, !dbg !1228
  %15 = icmp ne double* %8, %14, !dbg !1228
  br i1 %15, label %16, label %32, !dbg !1228

; <label>:16                                      ; preds = %0
  %17 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*, !dbg !1230
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0, !dbg !1230
  %19 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %18 to %"class.__gnu_cxx::new_allocator"*, !dbg !1230
  %20 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*, !dbg !1230
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %20, i32 0, i32 0, !dbg !1230
  %22 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %21, i32 0, i32 3, !dbg !1230
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator"* %22, i32 0, i32 0, !dbg !1230
  %24 = load double** %23, align 4, !dbg !1230
  %25 = load double** %2, align 4, !dbg !1230
  call void @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd(%"class.__gnu_cxx::new_allocator"* %19, double* %24, double* dereferenceable(8) %25), !dbg !1230
  %26 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*, !dbg !1232
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %26, i32 0, i32 0, !dbg !1232
  %28 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %27, i32 0, i32 3, !dbg !1232
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator"* %28, i32 0, i32 0, !dbg !1232
  %30 = load double** %29, align 4, !dbg !1232
  %31 = getelementptr inbounds double* %30, i32 1, !dbg !1232
  store double* %31, double** %29, align 4, !dbg !1232
  br label %34, !dbg !1233

; <label>:32                                      ; preds = %0
  %33 = load double** %2, align 4, !dbg !1234
  call void @_ZNSt5dequeIdSaIdEE16_M_push_back_auxERKd(%"class.std::deque"* %3, double* dereferenceable(8) %33), !dbg !1234
  br label %34

; <label>:34                                      ; preds = %32, %16
  ret void, !dbg !1235
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd(%"class.__gnu_cxx::new_allocator"* %this, double* %__p, double* dereferenceable(8) %__val) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  %2 = alloca double*, align 4
  %3 = alloca double*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %1}, metadata !1236), !dbg !1237
  store double* %__p, double** %2, align 4
  call void @llvm.dbg.declare(metadata !{double** %2}, metadata !1238), !dbg !1239
  store double* %__val, double** %3, align 4
  call void @llvm.dbg.declare(metadata !{double** %3}, metadata !1240), !dbg !1241
  %4 = load %"class.__gnu_cxx::new_allocator"** %1
  %5 = load double** %2, align 4, !dbg !1242
  %6 = bitcast double* %5 to i8*, !dbg !1242
  %7 = icmp eq i8* %6, null, !dbg !1242
  br i1 %7, label %12, label %8, !dbg !1242

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to double*, !dbg !1243
  %10 = load double** %3, align 4, !dbg !1243
  %11 = load double* %10, align 8, !dbg !1243
  store double %11, double* %9, align 8, !dbg !1243
  br label %12, !dbg !1243

; <label>:12                                      ; preds = %8, %0
  %13 = phi double* [ %9, %8 ], [ null, %0 ], !dbg !1242
  ret void, !dbg !1245
}

define linkonce_odr void @_ZNSt5dequeIdSaIdEE16_M_push_back_auxERKd(%"class.std::deque"* %this, double* dereferenceable(8) %__t) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  %2 = alloca double*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1248), !dbg !1249
  store double* %__t, double** %2, align 4
  call void @llvm.dbg.declare(metadata !{double** %2}, metadata !1250), !dbg !1251
  %5 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEj(%"class.std::deque"* %5, i32 1), !dbg !1252
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1253
  %7 = call double* @_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %6), !dbg !1253
  %8 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1253
  %9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0, !dbg !1253
  %10 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %9, i32 0, i32 3, !dbg !1253
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 3, !dbg !1253
  %12 = load double*** %11, align 4, !dbg !1253
  %13 = getelementptr inbounds double** %12, i32 1, !dbg !1253
  store double* %7, double** %13, align 4, !dbg !1253
  %14 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1254
  %15 = getelementptr inbounds %"class.std::_Deque_base"* %14, i32 0, i32 0, !dbg !1254
  %16 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %15 to %"class.__gnu_cxx::new_allocator"*, !dbg !1254
  %17 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1254
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0, !dbg !1254
  %19 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %18, i32 0, i32 3, !dbg !1254
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator"* %19, i32 0, i32 0, !dbg !1254
  %21 = load double** %20, align 4, !dbg !1254
  %22 = load double** %2, align 4, !dbg !1254
  invoke void @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd(%"class.__gnu_cxx::new_allocator"* %16, double* %21, double* dereferenceable(8) %22)
          to label %23 unwind label %43, !dbg !1254

; <label>:23                                      ; preds = %0
  %24 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1256
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0, !dbg !1256
  %26 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %25, i32 0, i32 3, !dbg !1256
  %27 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1256
  %28 = getelementptr inbounds %"class.std::_Deque_base"* %27, i32 0, i32 0, !dbg !1256
  %29 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %28, i32 0, i32 3, !dbg !1256
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator"* %29, i32 0, i32 3, !dbg !1256
  %31 = load double*** %30, align 4, !dbg !1256
  %32 = getelementptr inbounds double** %31, i32 1, !dbg !1256
  invoke void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %26, double** %32)
          to label %33 unwind label %43, !dbg !1256

; <label>:33                                      ; preds = %23
  %34 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1257
  %35 = getelementptr inbounds %"class.std::_Deque_base"* %34, i32 0, i32 0, !dbg !1257
  %36 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %35, i32 0, i32 3, !dbg !1257
  %37 = getelementptr inbounds %"struct.std::_Deque_iterator"* %36, i32 0, i32 1, !dbg !1257
  %38 = load double** %37, align 4, !dbg !1257
  %39 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1257
  %40 = getelementptr inbounds %"class.std::_Deque_base"* %39, i32 0, i32 0, !dbg !1257
  %41 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %40, i32 0, i32 3, !dbg !1257
  %42 = getelementptr inbounds %"struct.std::_Deque_iterator"* %41, i32 0, i32 0, !dbg !1257
  store double* %38, double** %42, align 4, !dbg !1257
  br label %64, !dbg !1258

; <label>:43                                      ; preds = %23, %0
  %44 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1259
  %45 = extractvalue { i8*, i32 } %44, 0, !dbg !1259
  store i8* %45, i8** %3, !dbg !1259
  %46 = extractvalue { i8*, i32 } %44, 1, !dbg !1259
  store i32 %46, i32* %4, !dbg !1259
  br label %47, !dbg !1259

; <label>:47                                      ; preds = %43
  %48 = load i8** %3, !dbg !1258
  %49 = call i8* @__cxa_begin_catch(i8* %48) #9, !dbg !1258
  %50 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1260
  %51 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1260
  %52 = getelementptr inbounds %"class.std::_Deque_base"* %51, i32 0, i32 0, !dbg !1260
  %53 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %52, i32 0, i32 3, !dbg !1260
  %54 = getelementptr inbounds %"struct.std::_Deque_iterator"* %53, i32 0, i32 3, !dbg !1260
  %55 = load double*** %54, align 4, !dbg !1260
  %56 = getelementptr inbounds double** %55, i32 1, !dbg !1260
  %57 = load double** %56, align 4, !dbg !1260
  invoke void @_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd(%"class.std::_Deque_base"* %50, double* %57)
          to label %58 unwind label %59, !dbg !1260

; <label>:58                                      ; preds = %47
  invoke void @__cxa_rethrow() #11
          to label %73 unwind label %59, !dbg !1262

; <label>:59                                      ; preds = %58, %47
  %60 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1263
  %61 = extractvalue { i8*, i32 } %60, 0, !dbg !1263
  store i8* %61, i8** %3, !dbg !1263
  %62 = extractvalue { i8*, i32 } %60, 1, !dbg !1263
  store i32 %62, i32* %4, !dbg !1263
  invoke void @__cxa_end_catch()
          to label %63 unwind label %70, !dbg !1264

; <label>:63                                      ; preds = %59
  br label %65, !dbg !1265

; <label>:64                                      ; preds = %33
  ret void, !dbg !1264

; <label>:65                                      ; preds = %63
  %66 = load i8** %3, !dbg !1267
  %67 = load i32* %4, !dbg !1267
  %68 = insertvalue { i8*, i32 } undef, i8* %66, 0, !dbg !1267
  %69 = insertvalue { i8*, i32 } %68, i32 %67, 1, !dbg !1267
  resume { i8*, i32 } %69, !dbg !1267

; <label>:70                                      ; preds = %59
  %71 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1269
  %72 = extractvalue { i8*, i32 } %71, 0, !dbg !1269
  call void @__clang_call_terminate(i8* %72) #10, !dbg !1269
  unreachable, !dbg !1269

; <label>:73                                      ; preds = %58
  unreachable
}

define linkonce_odr void @_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEj(%"class.std::deque"* %this, i32 %__nodes_to_add) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  %2 = alloca i32, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1271), !dbg !1272
  store i32 %__nodes_to_add, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1273), !dbg !1274
  %3 = load %"class.std::deque"** %1
  %4 = load i32* %2, align 4, !dbg !1275
  %5 = add i32 %4, 1, !dbg !1275
  %6 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*, !dbg !1275
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0, !dbg !1275
  %8 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %7, i32 0, i32 1, !dbg !1275
  %9 = load i32* %8, align 4, !dbg !1275
  %10 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*, !dbg !1275
  %11 = getelementptr inbounds %"class.std::_Deque_base"* %10, i32 0, i32 0, !dbg !1275
  %12 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %11, i32 0, i32 3, !dbg !1275
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %12, i32 0, i32 3, !dbg !1275
  %14 = load double*** %13, align 4, !dbg !1275
  %15 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*, !dbg !1275
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %15, i32 0, i32 0, !dbg !1275
  %17 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %16, i32 0, i32 0, !dbg !1275
  %18 = load double*** %17, align 4, !dbg !1275
  %19 = ptrtoint double** %14 to i32, !dbg !1275
  %20 = ptrtoint double** %18 to i32, !dbg !1275
  %21 = sub i32 %19, %20, !dbg !1275
  %22 = sdiv exact i32 %21, 4, !dbg !1275
  %23 = sub i32 %9, %22, !dbg !1275
  %24 = icmp ugt i32 %5, %23, !dbg !1275
  br i1 %24, label %25, label %27, !dbg !1275

; <label>:25                                      ; preds = %0
  %26 = load i32* %2, align 4, !dbg !1277
  call void @_ZNSt5dequeIdSaIdEE17_M_reallocate_mapEjb(%"class.std::deque"* %3, i32 %26, i1 zeroext false), !dbg !1277
  br label %27, !dbg !1277

; <label>:27                                      ; preds = %25, %0
  ret void, !dbg !1278
}

define linkonce_odr double* @_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1279), !dbg !1280
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0, !dbg !1281
  %4 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %3 to %"class.std::allocator"*, !dbg !1281
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*, !dbg !1281
  %6 = call i32 @_ZSt16__deque_buf_sizej(i32 8), !dbg !1282
  %7 = call double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv(%"class.__gnu_cxx::new_allocator"* %5, i32 %6, i8* null), !dbg !1281
  ret double* %7, !dbg !1281
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

define linkonce_odr double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv(%"class.__gnu_cxx::new_allocator"* %this, i32 %__n, i8*) #0 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %2}, metadata !1283), !dbg !1284
  store i32 %__n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1285), !dbg !1286
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1287), !dbg !1288
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i32* %3, align 4, !dbg !1289
  %7 = call i32 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %5) #9, !dbg !1291
  %8 = icmp ugt i32 %6, %7, !dbg !1291
  br i1 %8, label %9, label %10, !dbg !1291

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #11, !dbg !1292
  unreachable, !dbg !1292

; <label>:10                                      ; preds = %1
  %11 = load i32* %3, align 4, !dbg !1293
  %12 = mul i32 %11, 8, !dbg !1293
  %13 = call noalias i8* @_Znwj(i32 %12), !dbg !1293
  %14 = bitcast i8* %13 to double*, !dbg !1293
  ret double* %14, !dbg !1293
}

; Function Attrs: nounwind
define linkonce_odr i32 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %1}, metadata !1294), !dbg !1296
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret i32 536870911, !dbg !1297
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #6

; Function Attrs: nobuiltin
declare noalias i8* @_Znwj(i32) #7

define linkonce_odr void @_ZNSt5dequeIdSaIdEE17_M_reallocate_mapEjb(%"class.std::deque"* %this, i32 %__nodes_to_add, i1 zeroext %__add_at_front) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %__old_num_nodes = alloca i32, align 4
  %__new_num_nodes = alloca i32, align 4
  %__new_nstart = alloca double**, align 4
  %__new_map_size = alloca i32, align 4
  %__new_map = alloca double**, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1298), !dbg !1299
  store i32 %__nodes_to_add, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1300), !dbg !1301
  %4 = zext i1 %__add_at_front to i8
  store i8 %4, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !1302), !dbg !1303
  %5 = load %"class.std::deque"** %1
  call void @llvm.dbg.declare(metadata !{i32* %__old_num_nodes}, metadata !1304), !dbg !1307
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1308
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0, !dbg !1308
  %8 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %7, i32 0, i32 3, !dbg !1308
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 3, !dbg !1308
  %10 = load double*** %9, align 4, !dbg !1308
  %11 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1308
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0, !dbg !1308
  %13 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %12, i32 0, i32 2, !dbg !1308
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 3, !dbg !1308
  %15 = load double*** %14, align 4, !dbg !1308
  %16 = ptrtoint double** %10 to i32, !dbg !1308
  %17 = ptrtoint double** %15 to i32, !dbg !1308
  %18 = sub i32 %16, %17, !dbg !1308
  %19 = sdiv exact i32 %18, 4, !dbg !1308
  %20 = add nsw i32 %19, 1, !dbg !1308
  store i32 %20, i32* %__old_num_nodes, align 4, !dbg !1308
  call void @llvm.dbg.declare(metadata !{i32* %__new_num_nodes}, metadata !1309), !dbg !1310
  %21 = load i32* %__old_num_nodes, align 4, !dbg !1311
  %22 = load i32* %2, align 4, !dbg !1311
  %23 = add i32 %21, %22, !dbg !1311
  store i32 %23, i32* %__new_num_nodes, align 4, !dbg !1311
  call void @llvm.dbg.declare(metadata !{double*** %__new_nstart}, metadata !1312), !dbg !1317
  %24 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1318
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0, !dbg !1318
  %26 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %25, i32 0, i32 1, !dbg !1318
  %27 = load i32* %26, align 4, !dbg !1318
  %28 = load i32* %__new_num_nodes, align 4, !dbg !1318
  %29 = mul i32 2, %28, !dbg !1318
  %30 = icmp ugt i32 %27, %29, !dbg !1318
  br i1 %30, label %31, label %90, !dbg !1318

; <label>:31                                      ; preds = %0
  %32 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1320
  %33 = getelementptr inbounds %"class.std::_Deque_base"* %32, i32 0, i32 0, !dbg !1320
  %34 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %33, i32 0, i32 0, !dbg !1320
  %35 = load double*** %34, align 4, !dbg !1320
  %36 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1320
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %36, i32 0, i32 0, !dbg !1320
  %38 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %37, i32 0, i32 1, !dbg !1320
  %39 = load i32* %38, align 4, !dbg !1320
  %40 = load i32* %__new_num_nodes, align 4, !dbg !1320
  %41 = sub i32 %39, %40, !dbg !1320
  %42 = udiv i32 %41, 2, !dbg !1320
  %43 = getelementptr inbounds double** %35, i32 %42, !dbg !1320
  %44 = load i8* %3, align 1, !dbg !1320
  %45 = trunc i8 %44 to i1, !dbg !1320
  br i1 %45, label %46, label %48, !dbg !1320

; <label>:46                                      ; preds = %31
  %47 = load i32* %2, align 4, !dbg !1322
  br label %49, !dbg !1322

; <label>:48                                      ; preds = %31
  br label %49, !dbg !1324

; <label>:49                                      ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ], !dbg !1320
  %51 = getelementptr inbounds double** %43, i32 %50, !dbg !1326
  store double** %51, double*** %__new_nstart, align 4, !dbg !1326
  %52 = load double*** %__new_nstart, align 4, !dbg !1329
  %53 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1329
  %54 = getelementptr inbounds %"class.std::_Deque_base"* %53, i32 0, i32 0, !dbg !1329
  %55 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %54, i32 0, i32 2, !dbg !1329
  %56 = getelementptr inbounds %"struct.std::_Deque_iterator"* %55, i32 0, i32 3, !dbg !1329
  %57 = load double*** %56, align 4, !dbg !1329
  %58 = icmp ult double** %52, %57, !dbg !1329
  br i1 %58, label %59, label %73, !dbg !1329

; <label>:59                                      ; preds = %49
  %60 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1331
  %61 = getelementptr inbounds %"class.std::_Deque_base"* %60, i32 0, i32 0, !dbg !1331
  %62 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %61, i32 0, i32 2, !dbg !1331
  %63 = getelementptr inbounds %"struct.std::_Deque_iterator"* %62, i32 0, i32 3, !dbg !1331
  %64 = load double*** %63, align 4, !dbg !1331
  %65 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1331
  %66 = getelementptr inbounds %"class.std::_Deque_base"* %65, i32 0, i32 0, !dbg !1331
  %67 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %66, i32 0, i32 3, !dbg !1331
  %68 = getelementptr inbounds %"struct.std::_Deque_iterator"* %67, i32 0, i32 3, !dbg !1331
  %69 = load double*** %68, align 4, !dbg !1331
  %70 = getelementptr inbounds double** %69, i32 1, !dbg !1331
  %71 = load double*** %__new_nstart, align 4, !dbg !1331
  %72 = call double** @_ZSt4copyIPPdS1_ET0_T_S3_S2_(double** %64, double** %70, double** %71), !dbg !1331
  br label %89, !dbg !1331

; <label>:73                                      ; preds = %49
  %74 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1332
  %75 = getelementptr inbounds %"class.std::_Deque_base"* %74, i32 0, i32 0, !dbg !1332
  %76 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %75, i32 0, i32 2, !dbg !1332
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator"* %76, i32 0, i32 3, !dbg !1332
  %78 = load double*** %77, align 4, !dbg !1332
  %79 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1332
  %80 = getelementptr inbounds %"class.std::_Deque_base"* %79, i32 0, i32 0, !dbg !1332
  %81 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %80, i32 0, i32 3, !dbg !1332
  %82 = getelementptr inbounds %"struct.std::_Deque_iterator"* %81, i32 0, i32 3, !dbg !1332
  %83 = load double*** %82, align 4, !dbg !1332
  %84 = getelementptr inbounds double** %83, i32 1, !dbg !1332
  %85 = load double*** %__new_nstart, align 4, !dbg !1332
  %86 = load i32* %__old_num_nodes, align 4, !dbg !1332
  %87 = getelementptr inbounds double** %85, i32 %86, !dbg !1332
  %88 = call double** @_ZSt13copy_backwardIPPdS1_ET0_T_S3_S2_(double** %78, double** %84, double** %87), !dbg !1332
  br label %89

; <label>:89                                      ; preds = %73, %59
  br label %149, !dbg !1333

; <label>:90                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %__new_map_size}, metadata !1334), !dbg !1336
  %91 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1337
  %92 = getelementptr inbounds %"class.std::_Deque_base"* %91, i32 0, i32 0, !dbg !1337
  %93 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %92, i32 0, i32 1, !dbg !1337
  %94 = load i32* %93, align 4, !dbg !1337
  %95 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1338
  %96 = getelementptr inbounds %"class.std::_Deque_base"* %95, i32 0, i32 0, !dbg !1338
  %97 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %96, i32 0, i32 1, !dbg !1338
  %98 = call dereferenceable(4) i32* @_ZSt3maxIjERKT_S2_S2_(i32* dereferenceable(4) %97, i32* dereferenceable(4) %2), !dbg !1338
  %99 = load i32* %98, !dbg !1338
  %100 = add i32 %94, %99, !dbg !1338
  %101 = add i32 %100, 2, !dbg !1338
  store i32 %101, i32* %__new_map_size, align 4, !dbg !1338
  call void @llvm.dbg.declare(metadata !{double*** %__new_map}, metadata !1339), !dbg !1340
  %102 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1341
  %103 = load i32* %__new_map_size, align 4, !dbg !1341
  %104 = call double** @_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEj(%"class.std::_Deque_base"* %102, i32 %103), !dbg !1341
  store double** %104, double*** %__new_map, align 4, !dbg !1341
  %105 = load double*** %__new_map, align 4, !dbg !1342
  %106 = load i32* %__new_map_size, align 4, !dbg !1342
  %107 = load i32* %__new_num_nodes, align 4, !dbg !1342
  %108 = sub i32 %106, %107, !dbg !1342
  %109 = udiv i32 %108, 2, !dbg !1342
  %110 = getelementptr inbounds double** %105, i32 %109, !dbg !1342
  %111 = load i8* %3, align 1, !dbg !1342
  %112 = trunc i8 %111 to i1, !dbg !1342
  br i1 %112, label %113, label %115, !dbg !1342

; <label>:113                                     ; preds = %90
  %114 = load i32* %2, align 4, !dbg !1343
  br label %116, !dbg !1343

; <label>:115                                     ; preds = %90
  br label %116, !dbg !1345

; <label>:116                                     ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ], !dbg !1342
  %118 = getelementptr inbounds double** %110, i32 %117, !dbg !1347
  store double** %118, double*** %__new_nstart, align 4, !dbg !1347
  %119 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1350
  %120 = getelementptr inbounds %"class.std::_Deque_base"* %119, i32 0, i32 0, !dbg !1350
  %121 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %120, i32 0, i32 2, !dbg !1350
  %122 = getelementptr inbounds %"struct.std::_Deque_iterator"* %121, i32 0, i32 3, !dbg !1350
  %123 = load double*** %122, align 4, !dbg !1350
  %124 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1350
  %125 = getelementptr inbounds %"class.std::_Deque_base"* %124, i32 0, i32 0, !dbg !1350
  %126 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %125, i32 0, i32 3, !dbg !1350
  %127 = getelementptr inbounds %"struct.std::_Deque_iterator"* %126, i32 0, i32 3, !dbg !1350
  %128 = load double*** %127, align 4, !dbg !1350
  %129 = getelementptr inbounds double** %128, i32 1, !dbg !1350
  %130 = load double*** %__new_nstart, align 4, !dbg !1350
  %131 = call double** @_ZSt4copyIPPdS1_ET0_T_S3_S2_(double** %123, double** %129, double** %130), !dbg !1350
  %132 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1351
  %133 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1351
  %134 = getelementptr inbounds %"class.std::_Deque_base"* %133, i32 0, i32 0, !dbg !1351
  %135 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %134, i32 0, i32 0, !dbg !1351
  %136 = load double*** %135, align 4, !dbg !1351
  %137 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1351
  %138 = getelementptr inbounds %"class.std::_Deque_base"* %137, i32 0, i32 0, !dbg !1351
  %139 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %138, i32 0, i32 1, !dbg !1351
  %140 = load i32* %139, align 4, !dbg !1351
  call void @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdj(%"class.std::_Deque_base"* %132, double** %136, i32 %140), !dbg !1351
  %141 = load double*** %__new_map, align 4, !dbg !1352
  %142 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1352
  %143 = getelementptr inbounds %"class.std::_Deque_base"* %142, i32 0, i32 0, !dbg !1352
  %144 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %143, i32 0, i32 0, !dbg !1352
  store double** %141, double*** %144, align 4, !dbg !1352
  %145 = load i32* %__new_map_size, align 4, !dbg !1353
  %146 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1353
  %147 = getelementptr inbounds %"class.std::_Deque_base"* %146, i32 0, i32 0, !dbg !1353
  %148 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %147, i32 0, i32 1, !dbg !1353
  store i32 %145, i32* %148, align 4, !dbg !1353
  br label %149

; <label>:149                                     ; preds = %116, %89
  %150 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1354
  %151 = getelementptr inbounds %"class.std::_Deque_base"* %150, i32 0, i32 0, !dbg !1354
  %152 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %151, i32 0, i32 2, !dbg !1354
  %153 = load double*** %__new_nstart, align 4, !dbg !1354
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %152, double** %153), !dbg !1354
  %154 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*, !dbg !1355
  %155 = getelementptr inbounds %"class.std::_Deque_base"* %154, i32 0, i32 0, !dbg !1355
  %156 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %155, i32 0, i32 3, !dbg !1355
  %157 = load double*** %__new_nstart, align 4, !dbg !1355
  %158 = load i32* %__old_num_nodes, align 4, !dbg !1355
  %159 = getelementptr inbounds double** %157, i32 %158, !dbg !1355
  %160 = getelementptr inbounds double** %159, i32 -1, !dbg !1355
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %156, double** %160), !dbg !1355
  ret void, !dbg !1356
}

; Function Attrs: inlinehint
define linkonce_odr double** @_ZSt4copyIPPdS1_ET0_T_S3_S2_(double** %__first, double** %__last, double** %__result) #8 {
  %1 = alloca double**, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  store double** %__first, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1357), !dbg !1359
  store double** %__last, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1360), !dbg !1361
  store double** %__result, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1362), !dbg !1363
  %4 = load double*** %1, align 4, !dbg !1364
  %5 = call double** @_ZSt12__miter_baseIPPdENSt11_Miter_baseIT_E13iterator_typeES3_(double** %4), !dbg !1364
  %6 = load double*** %2, align 4, !dbg !1365
  %7 = call double** @_ZSt12__miter_baseIPPdENSt11_Miter_baseIT_E13iterator_typeES3_(double** %6), !dbg !1365
  %8 = load double*** %3, align 4, !dbg !1366
  %9 = call double** @_ZSt14__copy_move_a2ILb0EPPdS1_ET1_T0_S3_S2_(double** %5, double** %7, double** %8), !dbg !1366
  ret double** %9, !dbg !1366
}

; Function Attrs: inlinehint
define linkonce_odr double** @_ZSt13copy_backwardIPPdS1_ET0_T_S3_S2_(double** %__first, double** %__last, double** %__result) #8 {
  %1 = alloca double**, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  store double** %__first, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1367), !dbg !1368
  store double** %__last, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1369), !dbg !1370
  store double** %__result, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1371), !dbg !1372
  %4 = load double*** %1, align 4, !dbg !1373
  %5 = call double** @_ZSt12__miter_baseIPPdENSt11_Miter_baseIT_E13iterator_typeES3_(double** %4), !dbg !1373
  %6 = load double*** %2, align 4, !dbg !1374
  %7 = call double** @_ZSt12__miter_baseIPPdENSt11_Miter_baseIT_E13iterator_typeES3_(double** %6), !dbg !1374
  %8 = load double*** %3, align 4, !dbg !1375
  %9 = call double** @_ZSt23__copy_move_backward_a2ILb0EPPdS1_ET1_T0_S3_S2_(double** %5, double** %7, double** %8), !dbg !1375
  ret double** %9, !dbg !1375
}

; Function Attrs: inlinehint nounwind
define linkonce_odr dereferenceable(4) i32* @_ZSt3maxIjERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #4 {
  %1 = alloca i32*, align 4
  %2 = alloca i32*, align 4
  %3 = alloca i32*, align 4
  store i32* %__a, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !1376), !dbg !1377
  store i32* %__b, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1378), !dbg !1379
  %4 = load i32** %2, align 4, !dbg !1380
  %5 = load i32* %4, align 4, !dbg !1380
  %6 = load i32** %3, align 4, !dbg !1380
  %7 = load i32* %6, align 4, !dbg !1380
  %8 = icmp ult i32 %5, %7, !dbg !1380
  br i1 %8, label %9, label %11, !dbg !1380

; <label>:9                                       ; preds = %0
  %10 = load i32** %3, align 4, !dbg !1382
  store i32* %10, i32** %1, !dbg !1382
  br label %13, !dbg !1382

; <label>:11                                      ; preds = %0
  %12 = load i32** %2, align 4, !dbg !1383
  store i32* %12, i32** %1, !dbg !1383
  br label %13, !dbg !1383

; <label>:13                                      ; preds = %11, %9
  %14 = load i32** %1, !dbg !1384
  ret i32* %14, !dbg !1384
}

define linkonce_odr double** @_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEj(%"class.std::_Deque_base"* %this, i32 %__n) #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::allocator.1", align 1
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1385), !dbg !1386
  store i32 %__n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1387), !dbg !1388
  %6 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv(%"class.std::allocator.1"* sret %3, %"class.std::_Deque_base"* %6), !dbg !1389
  %7 = bitcast %"class.std::allocator.1"* %3 to %"class.__gnu_cxx::new_allocator.2"*, !dbg !1389
  %8 = load i32* %2, align 4, !dbg !1389
  %9 = invoke double** @_ZN9__gnu_cxx13new_allocatorIPdE8allocateEjPKv(%"class.__gnu_cxx::new_allocator.2"* %7, i32 %8, i8* null)
          to label %10 unwind label %12, !dbg !1389

; <label>:10                                      ; preds = %0
  %11 = call %"class.std::allocator.1"* @_ZNSaIPdED2Ev(%"class.std::allocator.1"* %3) #9, !dbg !1390
  ret double** %9, !dbg !1390

; <label>:12                                      ; preds = %0
  %13 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1392
  %14 = extractvalue { i8*, i32 } %13, 0, !dbg !1392
  store i8* %14, i8** %4, !dbg !1392
  %15 = extractvalue { i8*, i32 } %13, 1, !dbg !1392
  store i32 %15, i32* %5, !dbg !1392
  %16 = call %"class.std::allocator.1"* @_ZNSaIPdED2Ev(%"class.std::allocator.1"* %3) #9, !dbg !1392
  br label %17, !dbg !1392

; <label>:17                                      ; preds = %12
  %18 = load i8** %4, !dbg !1394
  %19 = load i32* %5, !dbg !1394
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0, !dbg !1394
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1, !dbg !1394
  resume { i8*, i32 } %21, !dbg !1394
}

define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdj(%"class.std::_Deque_base"* %this, double** %__p, i32 %__n) #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca double**, align 4
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::allocator.1", align 1
  %5 = alloca i8*
  %6 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1396), !dbg !1397
  store double** %__p, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1398), !dbg !1399
  store i32 %__n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1400), !dbg !1401
  %7 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv(%"class.std::allocator.1"* sret %4, %"class.std::_Deque_base"* %7), !dbg !1402
  %8 = bitcast %"class.std::allocator.1"* %4 to %"class.__gnu_cxx::new_allocator.2"*, !dbg !1402
  %9 = load double*** %2, align 4, !dbg !1402
  %10 = load i32* %3, align 4, !dbg !1402
  invoke void @_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_j(%"class.__gnu_cxx::new_allocator.2"* %8, double** %9, i32 %10)
          to label %11 unwind label %13, !dbg !1402

; <label>:11                                      ; preds = %0
  %12 = call %"class.std::allocator.1"* @_ZNSaIPdED2Ev(%"class.std::allocator.1"* %4) #9, !dbg !1403
  ret void, !dbg !1405

; <label>:13                                      ; preds = %0
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1406
  %15 = extractvalue { i8*, i32 } %14, 0, !dbg !1406
  store i8* %15, i8** %5, !dbg !1406
  %16 = extractvalue { i8*, i32 } %14, 1, !dbg !1406
  store i32 %16, i32* %6, !dbg !1406
  %17 = call %"class.std::allocator.1"* @_ZNSaIPdED2Ev(%"class.std::allocator.1"* %4) #9, !dbg !1406
  br label %18, !dbg !1406

; <label>:18                                      ; preds = %13
  %19 = load i8** %5, !dbg !1408
  %20 = load i32* %6, !dbg !1408
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0, !dbg !1408
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1, !dbg !1408
  resume { i8*, i32 } %22, !dbg !1408
}

define linkonce_odr void @_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv(%"class.std::allocator.1"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1410), !dbg !1412
  %2 = load %"class.std::_Deque_base"** %1
  %3 = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %2), !dbg !1413
  %4 = call %"class.std::allocator.1"* @_ZNSaIPdEC2IdEERKSaIT_E(%"class.std::allocator.1"* %agg.result, %"class.std::allocator"* dereferenceable(1) %3) #9, !dbg !1414
  ret void, !dbg !1414
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_j(%"class.__gnu_cxx::new_allocator.2"* %this, double** %__p, i32) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 4
  %3 = alloca double**, align 4
  %4 = alloca i32, align 4
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator.2"** %2}, metadata !1415), !dbg !1417
  store double** %__p, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1418), !dbg !1419
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1420), !dbg !1421
  %5 = load %"class.__gnu_cxx::new_allocator.2"** %2
  %6 = load double*** %3, align 4, !dbg !1422
  %7 = bitcast double** %6 to i8*, !dbg !1422
  call void @_ZdlPv(i8* %7) #9, !dbg !1422
  ret void, !dbg !1423
}

; Function Attrs: nounwind
define linkonce_odr %"class.std::allocator.1"* @_ZNSaIPdED2Ev(%"class.std::allocator.1"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.1"*, align 4
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator.1"** %1}, metadata !1424), !dbg !1426
  %2 = load %"class.std::allocator.1"** %1
  %3 = bitcast %"class.std::allocator.1"* %2 to %"class.__gnu_cxx::new_allocator.2"*, !dbg !1427
  %4 = call %"class.__gnu_cxx::new_allocator.2"* @_ZN9__gnu_cxx13new_allocatorIPdED2Ev(%"class.__gnu_cxx::new_allocator.2"* %3) #9, !dbg !1427
  ret %"class.std::allocator.1"* %2, !dbg !1429
}

; Function Attrs: nounwind
define linkonce_odr %"class.__gnu_cxx::new_allocator.2"* @_ZN9__gnu_cxx13new_allocatorIPdED2Ev(%"class.__gnu_cxx::new_allocator.2"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 4
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator.2"** %1}, metadata !1430), !dbg !1431
  %2 = load %"class.__gnu_cxx::new_allocator.2"** %1
  ret %"class.__gnu_cxx::new_allocator.2"* %2, !dbg !1432
}

; Function Attrs: nounwind
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1433), !dbg !1434
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0, !dbg !1435
  %4 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %3 to %"class.std::allocator"*, !dbg !1435
  ret %"class.std::allocator"* %4, !dbg !1435
}

; Function Attrs: nounwind
define linkonce_odr %"class.std::allocator.1"* @_ZNSaIPdEC2IdEERKSaIT_E(%"class.std::allocator.1"* returned %this, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #3 align 2 {
  %2 = alloca %"class.std::allocator.1"*, align 4
  %3 = alloca %"class.std::allocator"*, align 4
  store %"class.std::allocator.1"* %this, %"class.std::allocator.1"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator.1"** %2}, metadata !1436), !dbg !1437
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %3}, metadata !1438), !dbg !1440
  %4 = load %"class.std::allocator.1"** %2
  %5 = bitcast %"class.std::allocator.1"* %4 to %"class.__gnu_cxx::new_allocator.2"*, !dbg !1441
  %6 = call %"class.__gnu_cxx::new_allocator.2"* @_ZN9__gnu_cxx13new_allocatorIPdEC2Ev(%"class.__gnu_cxx::new_allocator.2"* %5) #9, !dbg !1441
  ret %"class.std::allocator.1"* %4, !dbg !1442
}

; Function Attrs: nounwind
define linkonce_odr %"class.__gnu_cxx::new_allocator.2"* @_ZN9__gnu_cxx13new_allocatorIPdEC2Ev(%"class.__gnu_cxx::new_allocator.2"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 4
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator.2"** %1}, metadata !1443), !dbg !1444
  %2 = load %"class.__gnu_cxx::new_allocator.2"** %1
  ret %"class.__gnu_cxx::new_allocator.2"* %2, !dbg !1445
}

define linkonce_odr double** @_ZN9__gnu_cxx13new_allocatorIPdE8allocateEjPKv(%"class.__gnu_cxx::new_allocator.2"* %this, i32 %__n, i8*) #0 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator.2"** %2}, metadata !1446), !dbg !1447
  store i32 %__n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1448), !dbg !1449
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1450), !dbg !1451
  %5 = load %"class.__gnu_cxx::new_allocator.2"** %2
  %6 = load i32* %3, align 4, !dbg !1452
  %7 = call i32 @_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %5) #9, !dbg !1454
  %8 = icmp ugt i32 %6, %7, !dbg !1454
  br i1 %8, label %9, label %10, !dbg !1454

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #11, !dbg !1455
  unreachable, !dbg !1455

; <label>:10                                      ; preds = %1
  %11 = load i32* %3, align 4, !dbg !1456
  %12 = mul i32 %11, 4, !dbg !1456
  %13 = call noalias i8* @_Znwj(i32 %12), !dbg !1456
  %14 = bitcast i8* %13 to double**, !dbg !1456
  ret double** %14, !dbg !1456
}

; Function Attrs: nounwind
define linkonce_odr i32 @_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv(%"class.__gnu_cxx::new_allocator.2"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.2"*, align 4
  store %"class.__gnu_cxx::new_allocator.2"* %this, %"class.__gnu_cxx::new_allocator.2"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator.2"** %1}, metadata !1457), !dbg !1459
  %2 = load %"class.__gnu_cxx::new_allocator.2"** %1
  ret i32 1073741823, !dbg !1460
}

; Function Attrs: inlinehint
define linkonce_odr double** @_ZSt23__copy_move_backward_a2ILb0EPPdS1_ET1_T0_S3_S2_(double** %__first, double** %__last, double** %__result) #8 {
  %1 = alloca double**, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  store double** %__first, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1461), !dbg !1462
  store double** %__last, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1463), !dbg !1464
  store double** %__result, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1465), !dbg !1466
  %4 = load double*** %1, align 4, !dbg !1467
  %5 = call double** @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_(double** %4), !dbg !1467
  %6 = load double*** %2, align 4, !dbg !1468
  %7 = call double** @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_(double** %6), !dbg !1468
  %8 = load double*** %3, align 4, !dbg !1469
  %9 = call double** @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_(double** %8), !dbg !1469
  %10 = call double** @_ZSt22__copy_move_backward_aILb0EPPdS1_ET1_T0_S3_S2_(double** %5, double** %7, double** %9), !dbg !1470
  ret double** %10, !dbg !1470
}

; Function Attrs: inlinehint
define linkonce_odr double** @_ZSt12__miter_baseIPPdENSt11_Miter_baseIT_E13iterator_typeES3_(double** %__it) #8 {
  %1 = alloca double**, align 4
  store double** %__it, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1471), !dbg !1472
  %2 = load double*** %1, align 4, !dbg !1473
  %3 = call double** @_ZNSt10_Iter_baseIPPdLb0EE7_S_baseES1_(double** %2), !dbg !1473
  ret double** %3, !dbg !1473
}

; Function Attrs: nounwind
define linkonce_odr double** @_ZNSt10_Iter_baseIPPdLb0EE7_S_baseES1_(double** %__it) #3 align 2 {
  %1 = alloca double**, align 4
  store double** %__it, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1474), !dbg !1476
  %2 = load double*** %1, align 4, !dbg !1477
  ret double** %2, !dbg !1477
}

; Function Attrs: inlinehint
define linkonce_odr double** @_ZSt22__copy_move_backward_aILb0EPPdS1_ET1_T0_S3_S2_(double** %__first, double** %__last, double** %__result) #8 {
  %1 = alloca double**, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  %__simple = alloca i8, align 1
  store double** %__first, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1478), !dbg !1479
  store double** %__last, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1480), !dbg !1481
  store double** %__result, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1482), !dbg !1483
  call void @llvm.dbg.declare(metadata !{i8* %__simple}, metadata !1484), !dbg !1486
  store i8 1, i8* %__simple, align 1, !dbg !1487
  %4 = load double*** %1, align 4, !dbg !1488
  %5 = load double*** %2, align 4, !dbg !1488
  %6 = load double*** %3, align 4, !dbg !1488
  %7 = call double** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPdEEPT_PKS4_S7_S5_(double** %4, double** %5, double** %6), !dbg !1488
  ret double** %7, !dbg !1488
}

; Function Attrs: inlinehint nounwind
define linkonce_odr double** @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_(double** %__it) #4 {
  %1 = alloca double**, align 4
  store double** %__it, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1489), !dbg !1490
  %2 = load double*** %1, align 4, !dbg !1491
  %3 = call double** @_ZNSt10_Iter_baseIPPdLb0EE7_S_baseES1_(double** %2), !dbg !1491
  ret double** %3, !dbg !1491
}

; Function Attrs: nounwind
define linkonce_odr double** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPdEEPT_PKS4_S7_S5_(double** %__first, double** %__last, double** %__result) #3 align 2 {
  %1 = alloca double**, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  %_Num = alloca i32, align 4
  store double** %__first, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1492), !dbg !1493
  store double** %__last, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1494), !dbg !1495
  store double** %__result, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1496), !dbg !1497
  call void @llvm.dbg.declare(metadata !{i32* %_Num}, metadata !1498), !dbg !1500
  %4 = load double*** %2, align 4, !dbg !1501
  %5 = load double*** %1, align 4, !dbg !1501
  %6 = ptrtoint double** %4 to i32, !dbg !1501
  %7 = ptrtoint double** %5 to i32, !dbg !1501
  %8 = sub i32 %6, %7, !dbg !1501
  %9 = sdiv exact i32 %8, 4, !dbg !1501
  store i32 %9, i32* %_Num, align 4, !dbg !1501
  %10 = load i32* %_Num, align 4, !dbg !1502
  %11 = icmp ne i32 %10, 0, !dbg !1502
  br i1 %11, label %12, label %22, !dbg !1502

; <label>:12                                      ; preds = %0
  %13 = load double*** %3, align 4, !dbg !1504
  %14 = load i32* %_Num, align 4, !dbg !1504
  %15 = sub i32 0, %14, !dbg !1504
  %16 = getelementptr inbounds double** %13, i32 %15, !dbg !1504
  %17 = bitcast double** %16 to i8*, !dbg !1504
  %18 = load double*** %1, align 4, !dbg !1504
  %19 = bitcast double** %18 to i8*, !dbg !1504
  %20 = load i32* %_Num, align 4, !dbg !1504
  %21 = mul i32 4, %20, !dbg !1504
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %17, i8* %19, i32 %21, i32 4, i1 false), !dbg !1504
  br label %22, !dbg !1504

; <label>:22                                      ; preds = %12, %0
  %23 = load double*** %3, align 4, !dbg !1505
  %24 = load i32* %_Num, align 4, !dbg !1505
  %25 = sub i32 0, %24, !dbg !1505
  %26 = getelementptr inbounds double** %23, i32 %25, !dbg !1505
  ret double** %26, !dbg !1505
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #9

; Function Attrs: inlinehint
define linkonce_odr double** @_ZSt14__copy_move_a2ILb0EPPdS1_ET1_T0_S3_S2_(double** %__first, double** %__last, double** %__result) #8 {
  %1 = alloca double**, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  store double** %__first, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1506), !dbg !1507
  store double** %__last, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1508), !dbg !1509
  store double** %__result, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1510), !dbg !1511
  %4 = load double*** %1, align 4, !dbg !1512
  %5 = call double** @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_(double** %4), !dbg !1512
  %6 = load double*** %2, align 4, !dbg !1513
  %7 = call double** @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_(double** %6), !dbg !1513
  %8 = load double*** %3, align 4, !dbg !1514
  %9 = call double** @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_(double** %8), !dbg !1514
  %10 = call double** @_ZSt13__copy_move_aILb0EPPdS1_ET1_T0_S3_S2_(double** %5, double** %7, double** %9), !dbg !1515
  ret double** %10, !dbg !1515
}

; Function Attrs: inlinehint
define linkonce_odr double** @_ZSt13__copy_move_aILb0EPPdS1_ET1_T0_S3_S2_(double** %__first, double** %__last, double** %__result) #8 {
  %1 = alloca double**, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  %__simple = alloca i8, align 1
  store double** %__first, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1516), !dbg !1517
  store double** %__last, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1518), !dbg !1519
  store double** %__result, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1520), !dbg !1521
  call void @llvm.dbg.declare(metadata !{i8* %__simple}, metadata !1522), !dbg !1523
  store i8 1, i8* %__simple, align 1, !dbg !1524
  %4 = load double*** %1, align 4, !dbg !1525
  %5 = load double*** %2, align 4, !dbg !1525
  %6 = load double*** %3, align 4, !dbg !1525
  %7 = call double** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPdEEPT_PKS4_S7_S5_(double** %4, double** %5, double** %6), !dbg !1525
  ret double** %7, !dbg !1525
}

; Function Attrs: nounwind
define linkonce_odr double** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPdEEPT_PKS4_S7_S5_(double** %__first, double** %__last, double** %__result) #3 align 2 {
  %1 = alloca double**, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  %_Num = alloca i32, align 4
  store double** %__first, double*** %1, align 4
  call void @llvm.dbg.declare(metadata !{double*** %1}, metadata !1526), !dbg !1527
  store double** %__last, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1528), !dbg !1529
  store double** %__result, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1530), !dbg !1531
  call void @llvm.dbg.declare(metadata !{i32* %_Num}, metadata !1532), !dbg !1533
  %4 = load double*** %2, align 4, !dbg !1534
  %5 = load double*** %1, align 4, !dbg !1534
  %6 = ptrtoint double** %4 to i32, !dbg !1534
  %7 = ptrtoint double** %5 to i32, !dbg !1534
  %8 = sub i32 %6, %7, !dbg !1534
  %9 = sdiv exact i32 %8, 4, !dbg !1534
  store i32 %9, i32* %_Num, align 4, !dbg !1534
  %10 = load i32* %_Num, align 4, !dbg !1535
  %11 = icmp ne i32 %10, 0, !dbg !1535
  br i1 %11, label %12, label %19, !dbg !1535

; <label>:12                                      ; preds = %0
  %13 = load double*** %3, align 4, !dbg !1537
  %14 = bitcast double** %13 to i8*, !dbg !1537
  %15 = load double*** %1, align 4, !dbg !1537
  %16 = bitcast double** %15 to i8*, !dbg !1537
  %17 = load i32* %_Num, align 4, !dbg !1537
  %18 = mul i32 4, %17, !dbg !1537
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %14, i8* %16, i32 %18, i32 4, i1 false), !dbg !1537
  br label %19, !dbg !1537

; <label>:19                                      ; preds = %12, %0
  %20 = load double*** %3, align 4, !dbg !1538
  %21 = load i32* %_Num, align 4, !dbg !1538
  %22 = getelementptr inbounds double** %20, i32 %21, !dbg !1538
  ret double** %22, !dbg !1538
}

define linkonce_odr %"class.std::deque"* @_ZNSt5dequeIdSaIdEEC2ERKS1_(%"class.std::deque"* returned %this, %"class.std::deque"* dereferenceable(40) %__x) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  %2 = alloca %"class.std::deque"*, align 4
  %3 = alloca %"struct.std::_Deque_iterator.0", align 4
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca %"struct.std::_Deque_iterator.0", align 4
  %7 = alloca %"struct.std::_Deque_iterator", align 4
  %8 = alloca %"struct.std::_Deque_iterator", align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1539), !dbg !1540
  store %"class.std::deque"* %__x, %"class.std::deque"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %2}, metadata !1541), !dbg !1542
  %9 = load %"class.std::deque"** %1
  %10 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*, !dbg !1543
  %11 = load %"class.std::deque"** %2, align 4, !dbg !1544
  %12 = bitcast %"class.std::deque"* %11 to %"class.std::_Deque_base"*, !dbg !1544
  %13 = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %12), !dbg !1544
  %14 = load %"class.std::deque"** %2, align 4, !dbg !1545
  %15 = call i32 @_ZNKSt5dequeIdSaIdEE4sizeEv(%"class.std::deque"* %14), !dbg !1545
  %16 = call %"class.std::_Deque_base"* @_ZNSt11_Deque_baseIdSaIdEEC2ERKS0_j(%"class.std::_Deque_base"* %10, %"class.std::allocator"* dereferenceable(1) %13, i32 %15), !dbg !1543
  %17 = load %"class.std::deque"** %2, align 4, !dbg !1546
  invoke void @_ZNKSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator.0"* sret %3, %"class.std::deque"* %17)
          to label %18 unwind label %36, !dbg !1546

; <label>:18                                      ; preds = %0
  %19 = load %"class.std::deque"** %2, align 4, !dbg !1548
  invoke void @_ZNKSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator.0"* sret %6, %"class.std::deque"* %19)
          to label %20 unwind label %36, !dbg !1548

; <label>:20                                      ; preds = %18
  %21 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*, !dbg !1550
  %22 = getelementptr inbounds %"class.std::_Deque_base"* %21, i32 0, i32 0, !dbg !1550
  %23 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %22, i32 0, i32 2, !dbg !1550
  %24 = invoke %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %7, %"struct.std::_Deque_iterator"* dereferenceable(16) %23)
          to label %25 unwind label %36, !dbg !1550

; <label>:25                                      ; preds = %20
  %26 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*, !dbg !1552
  %27 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %26)
          to label %28 unwind label %36, !dbg !1552

; <label>:28                                      ; preds = %25
  %29 = bitcast %"struct.std::_Deque_iterator.0"* %3 to { [4 x i32] }*, !dbg !1553
  %30 = getelementptr { [4 x i32] }* %29, i32 0, i32 0, !dbg !1553
  %31 = load [4 x i32]* %30, align 1, !dbg !1553
  %32 = bitcast %"struct.std::_Deque_iterator.0"* %6 to { [4 x i32] }*, !dbg !1553
  %33 = getelementptr { [4 x i32] }* %32, i32 0, i32 0, !dbg !1553
  %34 = load [4 x i32]* %33, align 1, !dbg !1553
  invoke void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEdET0_T_S9_S8_RSaIT1_E(%"struct.std::_Deque_iterator"* sret %8, [4 x i32] %31, [4 x i32] %34, %"struct.std::_Deque_iterator"* %7, %"class.std::allocator"* dereferenceable(1) %27)
          to label %35 unwind label %36, !dbg !1553

; <label>:35                                      ; preds = %28
  ret %"class.std::deque"* %9, !dbg !1554

; <label>:36                                      ; preds = %28, %25, %20, %18, %0
  %37 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1555
  %38 = extractvalue { i8*, i32 } %37, 0, !dbg !1555
  store i8* %38, i8** %4, !dbg !1555
  %39 = extractvalue { i8*, i32 } %37, 1, !dbg !1555
  store i32 %39, i32* %5, !dbg !1555
  %40 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*, !dbg !1554
  %41 = invoke %"class.std::_Deque_base"* @_ZNSt11_Deque_baseIdSaIdEED2Ev(%"class.std::_Deque_base"* %40)
          to label %42 unwind label %48, !dbg !1554

; <label>:42                                      ; preds = %36
  br label %43, !dbg !1557

; <label>:43                                      ; preds = %42
  %44 = load i8** %4, !dbg !1559
  %45 = load i32* %5, !dbg !1559
  %46 = insertvalue { i8*, i32 } undef, i8* %44, 0, !dbg !1559
  %47 = insertvalue { i8*, i32 } %46, i32 %45, 1, !dbg !1559
  resume { i8*, i32 } %47, !dbg !1559

; <label>:48                                      ; preds = %36
  %49 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1561
  %50 = extractvalue { i8*, i32 } %49, 0, !dbg !1561
  call void @__clang_call_terminate(i8* %50) #10, !dbg !1561
  unreachable, !dbg !1561
}

define linkonce_odr %"class.std::_Deque_base"* @_ZNSt11_Deque_baseIdSaIdEEC2ERKS0_j(%"class.std::_Deque_base"* returned %this, %"class.std::allocator"* dereferenceable(1) %__a, i32 %__num_elements) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca %"class.std::allocator"*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1563), !dbg !1564
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %2}, metadata !1565), !dbg !1566
  store i32 %__num_elements, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1567), !dbg !1568
  %6 = load %"class.std::_Deque_base"** %1
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0, !dbg !1569
  %8 = load %"class.std::allocator"** %2, align 4, !dbg !1569
  %9 = call %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %7, %"class.std::allocator"* dereferenceable(1) %8), !dbg !1569
  %10 = load i32* %3, align 4, !dbg !1570
  invoke void @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEj(%"class.std::_Deque_base"* %6, i32 %10)
          to label %11 unwind label %12, !dbg !1570

; <label>:11                                      ; preds = %0
  ret %"class.std::_Deque_base"* %6, !dbg !1572

; <label>:12                                      ; preds = %0
  %13 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1574
  %14 = extractvalue { i8*, i32 } %13, 0, !dbg !1574
  store i8* %14, i8** %4, !dbg !1574
  %15 = extractvalue { i8*, i32 } %13, 1, !dbg !1574
  store i32 %15, i32* %5, !dbg !1574
  %16 = call %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %7) #9, !dbg !1576
  br label %17, !dbg !1576

; <label>:17                                      ; preds = %12
  %18 = load i8** %4, !dbg !1577
  %19 = load i32* %5, !dbg !1577
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0, !dbg !1577
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1, !dbg !1577
  resume { i8*, i32 } %21, !dbg !1577
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEdET0_T_S9_S8_RSaIT1_E(%"struct.std::_Deque_iterator"* noalias sret %agg.result, [4 x i32] %__first.coerce, [4 x i32] %__last.coerce, %"struct.std::_Deque_iterator"* %__result, %"class.std::allocator"* dereferenceable(1)) #8 {
  %__first = alloca %"struct.std::_Deque_iterator.0", align 4
  %__last = alloca %"struct.std::_Deque_iterator.0", align 4
  %2 = alloca %"class.std::allocator"*, align 4
  %3 = alloca %"struct.std::_Deque_iterator.0", align 4
  %4 = alloca %"struct.std::_Deque_iterator.0", align 4
  %5 = alloca %"struct.std::_Deque_iterator", align 4
  %6 = bitcast %"struct.std::_Deque_iterator.0"* %__first to [4 x i32]*
  store [4 x i32] %__first.coerce, [4 x i32]* %6, align 1
  %7 = bitcast %"struct.std::_Deque_iterator.0"* %__last to [4 x i32]*
  store [4 x i32] %__last.coerce, [4 x i32]* %7, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__first}, metadata !1579), !dbg !1581
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__last}, metadata !1582), !dbg !1583
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__result}, metadata !1584), !dbg !1585
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %2}, metadata !1586), !dbg !1587
  %8 = bitcast %"struct.std::_Deque_iterator.0"* %3 to i8*, !dbg !1588
  %9 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*, !dbg !1588
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 16, i32 4, i1 false), !dbg !1588
  %10 = bitcast %"struct.std::_Deque_iterator.0"* %4 to i8*, !dbg !1588
  %11 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*, !dbg !1588
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 16, i32 4, i1 false), !dbg !1588
  %12 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* dereferenceable(16) %__result), !dbg !1588
  %13 = bitcast %"struct.std::_Deque_iterator.0"* %3 to { [4 x i32] }*, !dbg !1588
  %14 = getelementptr { [4 x i32] }* %13, i32 0, i32 0, !dbg !1588
  %15 = load [4 x i32]* %14, align 1, !dbg !1588
  %16 = bitcast %"struct.std::_Deque_iterator.0"* %4 to { [4 x i32] }*, !dbg !1588
  %17 = getelementptr { [4 x i32] }* %16, i32 0, i32 0, !dbg !1588
  %18 = load [4 x i32]* %17, align 1, !dbg !1588
  call void @_ZSt18uninitialized_copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, [4 x i32] %15, [4 x i32] %18, %"struct.std::_Deque_iterator"* %5), !dbg !1588
  ret void, !dbg !1588
}

define linkonce_odr void @_ZNKSt5dequeIdSaIdEE5beginEv(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, %"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1589), !dbg !1590
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1591
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1591
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 2, !dbg !1591
  %6 = call %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorIdRKdPS0_EC2ERKS_IdRdPdE(%"struct.std::_Deque_iterator.0"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(16) %5), !dbg !1591
  ret void, !dbg !1591
}

; Function Attrs: nounwind
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1592), !dbg !1593
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0, !dbg !1594
  %4 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %3 to %"class.std::allocator"*, !dbg !1594
  ret %"class.std::allocator"* %4, !dbg !1594
}

define linkonce_odr %"class.std::_Deque_base"* @_ZNSt11_Deque_baseIdSaIdEED2Ev(%"class.std::_Deque_base"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca %"class.std::_Deque_base"*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %2}, metadata !1595), !dbg !1596
  %5 = load %"class.std::_Deque_base"** %2
  store %"class.std::_Deque_base"* %5, %"class.std::_Deque_base"** %1
  %6 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0, !dbg !1597
  %7 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %6, i32 0, i32 0, !dbg !1597
  %8 = load double*** %7, align 4, !dbg !1597
  %9 = icmp ne double** %8, null, !dbg !1597
  br i1 %9, label %10, label %34, !dbg !1597

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0, !dbg !1600
  %12 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %11, i32 0, i32 2, !dbg !1600
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %12, i32 0, i32 3, !dbg !1600
  %14 = load double*** %13, align 4, !dbg !1600
  %15 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0, !dbg !1600
  %16 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %15, i32 0, i32 3, !dbg !1600
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator"* %16, i32 0, i32 3, !dbg !1600
  %18 = load double*** %17, align 4, !dbg !1600
  %19 = getelementptr inbounds double** %18, i32 1, !dbg !1600
  invoke void @_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_(%"class.std::_Deque_base"* %5, double** %14, double** %19)
          to label %20 unwind label %28, !dbg !1600

; <label>:20                                      ; preds = %10
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0, !dbg !1602
  %22 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %21, i32 0, i32 0, !dbg !1602
  %23 = load double*** %22, align 4, !dbg !1602
  %24 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0, !dbg !1602
  %25 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %24, i32 0, i32 1, !dbg !1602
  %26 = load i32* %25, align 4, !dbg !1602
  invoke void @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdj(%"class.std::_Deque_base"* %5, double** %23, i32 %26)
          to label %27 unwind label %28, !dbg !1602

; <label>:27                                      ; preds = %20
  br label %34, !dbg !1603

; <label>:28                                      ; preds = %20, %10
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1604
  %30 = extractvalue { i8*, i32 } %29, 0, !dbg !1604
  store i8* %30, i8** %3, !dbg !1604
  %31 = extractvalue { i8*, i32 } %29, 1, !dbg !1604
  store i32 %31, i32* %4, !dbg !1604
  %32 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0, !dbg !1605
  %33 = call %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %32) #9, !dbg !1605
  br label %38, !dbg !1605

; <label>:34                                      ; preds = %27, %0
  %35 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0, !dbg !1606
  %36 = call %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %35) #9, !dbg !1606
  %37 = load %"class.std::_Deque_base"** %1, !dbg !1605
  ret %"class.std::_Deque_base"* %37, !dbg !1605

; <label>:38                                      ; preds = %28
  %39 = load i8** %3, !dbg !1607
  %40 = load i32* %4, !dbg !1607
  %41 = insertvalue { i8*, i32 } undef, i8* %39, 0, !dbg !1607
  %42 = insertvalue { i8*, i32 } %41, i32 %40, 1, !dbg !1607
  resume { i8*, i32 } %42, !dbg !1607
}

define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_(%"class.std::_Deque_base"* %this, double** %__nstart, double** %__nfinish) #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  %__n = alloca double**, align 4
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1609), !dbg !1610
  store double** %__nstart, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1611), !dbg !1612
  store double** %__nfinish, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1613), !dbg !1614
  %4 = load %"class.std::_Deque_base"** %1
  call void @llvm.dbg.declare(metadata !{double*** %__n}, metadata !1615), !dbg !1617
  %5 = load double*** %2, align 4, !dbg !1618
  store double** %5, double*** %__n, align 4, !dbg !1618
  br label %6, !dbg !1618

; <label>:6                                       ; preds = %13, %0
  %7 = load double*** %__n, align 4, !dbg !1619
  %8 = load double*** %3, align 4, !dbg !1619
  %9 = icmp ult double** %7, %8, !dbg !1619
  br i1 %9, label %10, label %16, !dbg !1619

; <label>:10                                      ; preds = %6
  %11 = load double*** %__n, align 4, !dbg !1622
  %12 = load double** %11, align 4, !dbg !1622
  call void @_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd(%"class.std::_Deque_base"* %4, double* %12), !dbg !1622
  br label %13, !dbg !1622

; <label>:13                                      ; preds = %10
  %14 = load double*** %__n, align 4, !dbg !1623
  %15 = getelementptr inbounds double** %14, i32 1, !dbg !1623
  store double** %15, double*** %__n, align 4, !dbg !1623
  br label %6, !dbg !1623

; <label>:16                                      ; preds = %6
  ret void, !dbg !1624
}

; Function Attrs: inlinehint nounwind
define linkonce_odr %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* returned %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, align 4
  store %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1}, metadata !1625), !dbg !1627
  %2 = load %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1
  %3 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %2 to %"class.std::allocator"*, !dbg !1628
  %4 = call %"class.std::allocator"* @_ZNSaIdED2Ev(%"class.std::allocator"* %3) #9, !dbg !1628
  ret %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %2, !dbg !1630
}

; Function Attrs: nounwind
define linkonce_odr %"class.std::allocator"* @_ZNSaIdED2Ev(%"class.std::allocator"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 4
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %1}, metadata !1631), !dbg !1633
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*, !dbg !1634
  %4 = call %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #9, !dbg !1634
  ret %"class.std::allocator"* %2, !dbg !1636
}

; Function Attrs: nounwind
define linkonce_odr %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"class.__gnu_cxx::new_allocator"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %1}, metadata !1637), !dbg !1638
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret %"class.__gnu_cxx::new_allocator"* %2, !dbg !1639
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt18uninitialized_copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, [4 x i32] %__first.coerce, [4 x i32] %__last.coerce, %"struct.std::_Deque_iterator"* %__result) #8 {
  %__first = alloca %"struct.std::_Deque_iterator.0", align 4
  %__last = alloca %"struct.std::_Deque_iterator.0", align 4
  %__assignable = alloca i8, align 1
  %1 = alloca %"struct.std::_Deque_iterator.0", align 4
  %2 = alloca %"struct.std::_Deque_iterator.0", align 4
  %3 = alloca %"struct.std::_Deque_iterator", align 4
  %4 = bitcast %"struct.std::_Deque_iterator.0"* %__first to [4 x i32]*
  store [4 x i32] %__first.coerce, [4 x i32]* %4, align 1
  %5 = bitcast %"struct.std::_Deque_iterator.0"* %__last to [4 x i32]*
  store [4 x i32] %__last.coerce, [4 x i32]* %5, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__first}, metadata !1640), !dbg !1641
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__last}, metadata !1642), !dbg !1643
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__result}, metadata !1644), !dbg !1645
  call void @llvm.dbg.declare(metadata !{i8* %__assignable}, metadata !1646), !dbg !1647
  store i8 1, i8* %__assignable, align 1, !dbg !1648
  %6 = bitcast %"struct.std::_Deque_iterator.0"* %1 to i8*, !dbg !1649
  %7 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*, !dbg !1649
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 16, i32 4, i1 false), !dbg !1649
  %8 = bitcast %"struct.std::_Deque_iterator.0"* %2 to i8*, !dbg !1649
  %9 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*, !dbg !1649
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 16, i32 4, i1 false), !dbg !1649
  %10 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* dereferenceable(16) %__result), !dbg !1649
  %11 = bitcast %"struct.std::_Deque_iterator.0"* %1 to { [4 x i32] }*, !dbg !1649
  %12 = getelementptr { [4 x i32] }* %11, i32 0, i32 0, !dbg !1649
  %13 = load [4 x i32]* %12, align 1, !dbg !1649
  %14 = bitcast %"struct.std::_Deque_iterator.0"* %2 to { [4 x i32] }*, !dbg !1649
  %15 = getelementptr { [4 x i32] }* %14, i32 0, i32 0, !dbg !1649
  %16 = load [4 x i32]* %15, align 1, !dbg !1649
  call void @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIdRKdPS3_ES2_IdRdPdEEET0_T_SB_SA_(%"struct.std::_Deque_iterator"* sret %agg.result, [4 x i32] %13, [4 x i32] %16, %"struct.std::_Deque_iterator"* %3), !dbg !1649
  ret void, !dbg !1649
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #9

define linkonce_odr void @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIdRKdPS3_ES2_IdRdPdEEET0_T_SB_SA_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, [4 x i32] %__first.coerce, [4 x i32] %__last.coerce, %"struct.std::_Deque_iterator"* %__result) #0 align 2 {
  %__first = alloca %"struct.std::_Deque_iterator.0", align 4
  %__last = alloca %"struct.std::_Deque_iterator.0", align 4
  %1 = alloca %"struct.std::_Deque_iterator.0", align 4
  %2 = alloca %"struct.std::_Deque_iterator.0", align 4
  %3 = alloca %"struct.std::_Deque_iterator", align 4
  %4 = bitcast %"struct.std::_Deque_iterator.0"* %__first to [4 x i32]*
  store [4 x i32] %__first.coerce, [4 x i32]* %4, align 1
  %5 = bitcast %"struct.std::_Deque_iterator.0"* %__last to [4 x i32]*
  store [4 x i32] %__last.coerce, [4 x i32]* %5, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__first}, metadata !1650), !dbg !1651
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__last}, metadata !1652), !dbg !1653
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__result}, metadata !1654), !dbg !1655
  %6 = bitcast %"struct.std::_Deque_iterator.0"* %1 to i8*, !dbg !1656
  %7 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*, !dbg !1656
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 16, i32 4, i1 false), !dbg !1656
  %8 = bitcast %"struct.std::_Deque_iterator.0"* %2 to i8*, !dbg !1656
  %9 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*, !dbg !1656
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 16, i32 4, i1 false), !dbg !1656
  %10 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* dereferenceable(16) %__result), !dbg !1656
  %11 = bitcast %"struct.std::_Deque_iterator.0"* %1 to { [4 x i32] }*, !dbg !1656
  %12 = getelementptr { [4 x i32] }* %11, i32 0, i32 0, !dbg !1656
  %13 = load [4 x i32]* %12, align 1, !dbg !1656
  %14 = bitcast %"struct.std::_Deque_iterator.0"* %2 to { [4 x i32] }*, !dbg !1656
  %15 = getelementptr { [4 x i32] }* %14, i32 0, i32 0, !dbg !1656
  %16 = load [4 x i32]* %15, align 1, !dbg !1656
  call void @_ZSt4copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, [4 x i32] %13, [4 x i32] %16, %"struct.std::_Deque_iterator"* %3), !dbg !1656
  ret void, !dbg !1656
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt4copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, [4 x i32] %__first.coerce, [4 x i32] %__last.coerce, %"struct.std::_Deque_iterator"* %__result) #8 {
  %__first = alloca %"struct.std::_Deque_iterator.0", align 4
  %__last = alloca %"struct.std::_Deque_iterator.0", align 4
  %1 = alloca %"struct.std::_Deque_iterator.0", align 4
  %2 = alloca %"struct.std::_Deque_iterator.0", align 4
  %3 = alloca %"struct.std::_Deque_iterator.0", align 4
  %4 = alloca %"struct.std::_Deque_iterator.0", align 4
  %5 = alloca %"struct.std::_Deque_iterator", align 4
  %6 = bitcast %"struct.std::_Deque_iterator.0"* %__first to [4 x i32]*
  store [4 x i32] %__first.coerce, [4 x i32]* %6, align 1
  %7 = bitcast %"struct.std::_Deque_iterator.0"* %__last to [4 x i32]*
  store [4 x i32] %__last.coerce, [4 x i32]* %7, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__first}, metadata !1657), !dbg !1658
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__last}, metadata !1659), !dbg !1660
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__result}, metadata !1661), !dbg !1662
  %8 = bitcast %"struct.std::_Deque_iterator.0"* %2 to i8*, !dbg !1663
  %9 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*, !dbg !1663
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 16, i32 4, i1 false), !dbg !1663
  %10 = bitcast %"struct.std::_Deque_iterator.0"* %2 to { [4 x i32] }*, !dbg !1663
  %11 = getelementptr { [4 x i32] }* %10, i32 0, i32 0, !dbg !1663
  %12 = load [4 x i32]* %11, align 1, !dbg !1663
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.0"* sret %1, [4 x i32] %12), !dbg !1663
  %13 = bitcast %"struct.std::_Deque_iterator.0"* %4 to i8*, !dbg !1664
  %14 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*, !dbg !1664
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 16, i32 4, i1 false), !dbg !1664
  %15 = bitcast %"struct.std::_Deque_iterator.0"* %4 to { [4 x i32] }*, !dbg !1664
  %16 = getelementptr { [4 x i32] }* %15, i32 0, i32 0, !dbg !1664
  %17 = load [4 x i32]* %16, align 1, !dbg !1664
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.0"* sret %3, [4 x i32] %17), !dbg !1664
  %18 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* dereferenceable(16) %__result), !dbg !1665
  %19 = bitcast %"struct.std::_Deque_iterator.0"* %1 to { [4 x i32] }*, !dbg !1665
  %20 = getelementptr { [4 x i32] }* %19, i32 0, i32 0, !dbg !1665
  %21 = load [4 x i32]* %20, align 1, !dbg !1665
  %22 = bitcast %"struct.std::_Deque_iterator.0"* %3 to { [4 x i32] }*, !dbg !1665
  %23 = getelementptr { [4 x i32] }* %22, i32 0, i32 0, !dbg !1665
  %24 = load [4 x i32]* %23, align 1, !dbg !1665
  call void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, [4 x i32] %21, [4 x i32] %24, %"struct.std::_Deque_iterator"* %5), !dbg !1665
  ret void, !dbg !1665
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, [4 x i32] %__first.coerce, [4 x i32] %__last.coerce, %"struct.std::_Deque_iterator"* %__result) #8 {
  %__first = alloca %"struct.std::_Deque_iterator.0", align 4
  %__last = alloca %"struct.std::_Deque_iterator.0", align 4
  %1 = alloca %"struct.std::_Deque_iterator.0", align 4
  %2 = alloca %"struct.std::_Deque_iterator.0", align 4
  %3 = alloca %"struct.std::_Deque_iterator.0", align 4
  %4 = alloca %"struct.std::_Deque_iterator.0", align 4
  %5 = alloca %"struct.std::_Deque_iterator", align 4
  %6 = alloca %"struct.std::_Deque_iterator", align 4
  %7 = bitcast %"struct.std::_Deque_iterator.0"* %__first to [4 x i32]*
  store [4 x i32] %__first.coerce, [4 x i32]* %7, align 1
  %8 = bitcast %"struct.std::_Deque_iterator.0"* %__last to [4 x i32]*
  store [4 x i32] %__last.coerce, [4 x i32]* %8, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__first}, metadata !1666), !dbg !1667
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__last}, metadata !1668), !dbg !1669
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__result}, metadata !1670), !dbg !1671
  %9 = bitcast %"struct.std::_Deque_iterator.0"* %2 to i8*, !dbg !1672
  %10 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*, !dbg !1672
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 16, i32 4, i1 false), !dbg !1672
  %11 = bitcast %"struct.std::_Deque_iterator.0"* %2 to { [4 x i32] }*, !dbg !1672
  %12 = getelementptr { [4 x i32] }* %11, i32 0, i32 0, !dbg !1672
  %13 = load [4 x i32]* %12, align 1, !dbg !1672
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.0"* sret %1, [4 x i32] %13), !dbg !1672
  %14 = bitcast %"struct.std::_Deque_iterator.0"* %4 to i8*, !dbg !1673
  %15 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*, !dbg !1673
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 16, i32 4, i1 false), !dbg !1673
  %16 = bitcast %"struct.std::_Deque_iterator.0"* %4 to { [4 x i32] }*, !dbg !1673
  %17 = getelementptr { [4 x i32] }* %16, i32 0, i32 0, !dbg !1673
  %18 = load [4 x i32]* %17, align 1, !dbg !1673
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.0"* sret %3, [4 x i32] %18), !dbg !1673
  %19 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %6, %"struct.std::_Deque_iterator"* dereferenceable(16) %__result), !dbg !1674
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::_Deque_iterator"* sret %5, %"struct.std::_Deque_iterator"* %6), !dbg !1674
  %20 = bitcast %"struct.std::_Deque_iterator.0"* %1 to { [4 x i32] }*, !dbg !1675
  %21 = getelementptr { [4 x i32] }* %20, i32 0, i32 0, !dbg !1675
  %22 = load [4 x i32]* %21, align 1, !dbg !1675
  %23 = bitcast %"struct.std::_Deque_iterator.0"* %3 to { [4 x i32] }*, !dbg !1675
  %24 = getelementptr { [4 x i32] }* %23, i32 0, i32 0, !dbg !1675
  %25 = load [4 x i32]* %24, align 1, !dbg !1675
  call void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, [4 x i32] %22, [4 x i32] %25, %"struct.std::_Deque_iterator"* %5), !dbg !1675
  ret void, !dbg !1675
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt12__miter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, [4 x i32] %__it.coerce) #8 {
  %__it = alloca %"struct.std::_Deque_iterator.0", align 4
  %1 = alloca %"struct.std::_Deque_iterator.0", align 4
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %__it to [4 x i32]*
  store [4 x i32] %__it.coerce, [4 x i32]* %2, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__it}, metadata !1676), !dbg !1677
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %1 to i8*, !dbg !1678
  %4 = bitcast %"struct.std::_Deque_iterator.0"* %__it to i8*, !dbg !1678
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 16, i32 4, i1 false), !dbg !1678
  %5 = bitcast %"struct.std::_Deque_iterator.0"* %1 to { [4 x i32] }*, !dbg !1678
  %6 = getelementptr { [4 x i32] }* %5, i32 0, i32 0, !dbg !1678
  %7 = load [4 x i32]* %6, align 1, !dbg !1678
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.0"* sret %agg.result, [4 x i32] %7), !dbg !1678
  ret void, !dbg !1678
}

; Function Attrs: nounwind
define linkonce_odr void @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, [4 x i32] %__it.coerce) #3 align 2 {
  %__it = alloca %"struct.std::_Deque_iterator.0", align 4
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__it to [4 x i32]*
  store [4 x i32] %__it.coerce, [4 x i32]* %1, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__it}, metadata !1679), !dbg !1680
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %agg.result to i8*, !dbg !1681
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %__it to i8*, !dbg !1681
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 16, i32 4, i1 false), !dbg !1681
  ret void, !dbg !1681
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, [4 x i32] %__first.coerce, [4 x i32] %__last.coerce, %"struct.std::_Deque_iterator"* %__result) #8 {
  %__first = alloca %"struct.std::_Deque_iterator.0", align 4
  %__last = alloca %"struct.std::_Deque_iterator.0", align 4
  %__simple = alloca i8, align 1
  %1 = alloca %"struct.std::_Deque_iterator.0", align 4
  %2 = alloca %"struct.std::_Deque_iterator.0", align 4
  %3 = alloca %"struct.std::_Deque_iterator", align 4
  %4 = bitcast %"struct.std::_Deque_iterator.0"* %__first to [4 x i32]*
  store [4 x i32] %__first.coerce, [4 x i32]* %4, align 1
  %5 = bitcast %"struct.std::_Deque_iterator.0"* %__last to [4 x i32]*
  store [4 x i32] %__last.coerce, [4 x i32]* %5, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__first}, metadata !1682), !dbg !1683
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__last}, metadata !1684), !dbg !1685
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__result}, metadata !1686), !dbg !1687
  call void @llvm.dbg.declare(metadata !{i8* %__simple}, metadata !1688), !dbg !1689
  store i8 0, i8* %__simple, align 1, !dbg !1690
  %6 = bitcast %"struct.std::_Deque_iterator.0"* %1 to i8*, !dbg !1691
  %7 = bitcast %"struct.std::_Deque_iterator.0"* %__first to i8*, !dbg !1691
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 16, i32 4, i1 false), !dbg !1691
  %8 = bitcast %"struct.std::_Deque_iterator.0"* %2 to i8*, !dbg !1691
  %9 = bitcast %"struct.std::_Deque_iterator.0"* %__last to i8*, !dbg !1691
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 16, i32 4, i1 false), !dbg !1691
  %10 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* dereferenceable(16) %__result), !dbg !1691
  %11 = bitcast %"struct.std::_Deque_iterator.0"* %1 to { [4 x i32] }*, !dbg !1691
  %12 = getelementptr { [4 x i32] }* %11, i32 0, i32 0, !dbg !1691
  %13 = load [4 x i32]* %12, align 1, !dbg !1691
  %14 = bitcast %"struct.std::_Deque_iterator.0"* %2 to { [4 x i32] }*, !dbg !1691
  %15 = getelementptr { [4 x i32] }* %14, i32 0, i32 0, !dbg !1691
  %16 = load [4 x i32]* %15, align 1, !dbg !1691
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIdRKdPS4_ES3_IdRdPdEEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* sret %agg.result, [4 x i32] %13, [4 x i32] %16, %"struct.std::_Deque_iterator"* %3), !dbg !1691
  ret void, !dbg !1691
}

; Function Attrs: inlinehint nounwind
define linkonce_odr void @_ZSt12__niter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.0"* noalias sret %agg.result, [4 x i32] %__it.coerce) #4 {
  %__it = alloca %"struct.std::_Deque_iterator.0", align 4
  %1 = alloca %"struct.std::_Deque_iterator.0", align 4
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %__it to [4 x i32]*
  store [4 x i32] %__it.coerce, [4 x i32]* %2, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__it}, metadata !1692), !dbg !1693
  %3 = bitcast %"struct.std::_Deque_iterator.0"* %1 to i8*, !dbg !1694
  %4 = bitcast %"struct.std::_Deque_iterator.0"* %__it to i8*, !dbg !1694
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 16, i32 4, i1 false), !dbg !1694
  %5 = bitcast %"struct.std::_Deque_iterator.0"* %1 to { [4 x i32] }*, !dbg !1694
  %6 = getelementptr { [4 x i32] }* %5, i32 0, i32 0, !dbg !1694
  %7 = load [4 x i32]* %6, align 1, !dbg !1694
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.0"* sret %agg.result, [4 x i32] %7), !dbg !1694
  ret void, !dbg !1694
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #8 {
  %1 = alloca %"struct.std::_Deque_iterator", align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__it}, metadata !1695), !dbg !1696
  %2 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"* dereferenceable(16) %__it), !dbg !1697
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE7_S_baseES3_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator"* %1), !dbg !1697
  ret void, !dbg !1697
}

define linkonce_odr void @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE7_S_baseES3_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #0 align 2 {
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__it}, metadata !1698), !dbg !1699
  %1 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(16) %__it), !dbg !1700
  ret void, !dbg !1700
}

define linkonce_odr void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIdRKdPS4_ES3_IdRdPdEEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, [4 x i32] %__first.coerce, [4 x i32] %__last.coerce, %"struct.std::_Deque_iterator"* %__result) #0 align 2 {
  %__first = alloca %"struct.std::_Deque_iterator.0", align 4
  %__last = alloca %"struct.std::_Deque_iterator.0", align 4
  %__n = alloca i32, align 4
  %1 = bitcast %"struct.std::_Deque_iterator.0"* %__first to [4 x i32]*
  store [4 x i32] %__first.coerce, [4 x i32]* %1, align 1
  %2 = bitcast %"struct.std::_Deque_iterator.0"* %__last to [4 x i32]*
  store [4 x i32] %__last.coerce, [4 x i32]* %2, align 1
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__first}, metadata !1701), !dbg !1702
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"* %__last}, metadata !1703), !dbg !1704
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__result}, metadata !1705), !dbg !1706
  call void @llvm.dbg.declare(metadata !{i32* %__n}, metadata !1707), !dbg !1711
  %3 = call i32 @_ZStmiIdRKdPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator.0"* dereferenceable(16) %__last, %"struct.std::_Deque_iterator.0"* dereferenceable(16) %__first), !dbg !1712
  store i32 %3, i32* %__n, align 4, !dbg !1712
  br label %4, !dbg !1712

; <label>:4                                       ; preds = %13, %0
  %5 = load i32* %__n, align 4, !dbg !1713
  %6 = icmp sgt i32 %5, 0, !dbg !1713
  br i1 %6, label %7, label %16, !dbg !1713

; <label>:7                                       ; preds = %4
  %8 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRKdPS0_EdeEv(%"struct.std::_Deque_iterator.0"* %__first), !dbg !1716
  %9 = load double* %8, !dbg !1716
  %10 = call dereferenceable(8) double* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv(%"struct.std::_Deque_iterator"* %__result), !dbg !1718
  store double %9, double* %10, !dbg !1718
  %11 = call dereferenceable(16) %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorIdRKdPS0_EppEv(%"struct.std::_Deque_iterator.0"* %__first), !dbg !1719
  %12 = call dereferenceable(16) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %__result), !dbg !1720
  br label %13, !dbg !1721

; <label>:13                                      ; preds = %7
  %14 = load i32* %__n, align 4, !dbg !1722
  %15 = add nsw i32 %14, -1, !dbg !1722
  store i32 %15, i32* %__n, align 4, !dbg !1722
  br label %4, !dbg !1722

; <label>:16                                      ; preds = %4
  %17 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(16) %__result), !dbg !1723
  ret void, !dbg !1723
}

; Function Attrs: inlinehint
define linkonce_odr i32 @_ZStmiIdRKdPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator.0"* dereferenceable(16) %__x, %"struct.std::_Deque_iterator.0"* dereferenceable(16) %__y) #8 {
  %1 = alloca %"struct.std::_Deque_iterator.0"*, align 4
  %2 = alloca %"struct.std::_Deque_iterator.0"*, align 4
  store %"struct.std::_Deque_iterator.0"* %__x, %"struct.std::_Deque_iterator.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"** %1}, metadata !1724), !dbg !1725
  store %"struct.std::_Deque_iterator.0"* %__y, %"struct.std::_Deque_iterator.0"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"** %2}, metadata !1726), !dbg !1727
  %3 = call i32 @_ZNSt15_Deque_iteratorIdRKdPS0_E14_S_buffer_sizeEv(), !dbg !1728
  %4 = load %"struct.std::_Deque_iterator.0"** %1, align 4, !dbg !1728
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %4, i32 0, i32 3, !dbg !1728
  %6 = load double*** %5, align 4, !dbg !1728
  %7 = load %"struct.std::_Deque_iterator.0"** %2, align 4, !dbg !1728
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %7, i32 0, i32 3, !dbg !1728
  %9 = load double*** %8, align 4, !dbg !1728
  %10 = ptrtoint double** %6 to i32, !dbg !1728
  %11 = ptrtoint double** %9 to i32, !dbg !1728
  %12 = sub i32 %10, %11, !dbg !1728
  %13 = sdiv exact i32 %12, 4, !dbg !1728
  %14 = sub nsw i32 %13, 1, !dbg !1728
  %15 = mul nsw i32 %3, %14, !dbg !1728
  %16 = load %"struct.std::_Deque_iterator.0"** %1, align 4, !dbg !1728
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %16, i32 0, i32 0, !dbg !1728
  %18 = load double** %17, align 4, !dbg !1728
  %19 = load %"struct.std::_Deque_iterator.0"** %1, align 4, !dbg !1728
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %19, i32 0, i32 1, !dbg !1728
  %21 = load double** %20, align 4, !dbg !1728
  %22 = ptrtoint double* %18 to i32, !dbg !1728
  %23 = ptrtoint double* %21 to i32, !dbg !1728
  %24 = sub i32 %22, %23, !dbg !1728
  %25 = sdiv exact i32 %24, 8, !dbg !1728
  %26 = add nsw i32 %15, %25, !dbg !1728
  %27 = load %"struct.std::_Deque_iterator.0"** %2, align 4, !dbg !1728
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %27, i32 0, i32 2, !dbg !1728
  %29 = load double** %28, align 4, !dbg !1728
  %30 = load %"struct.std::_Deque_iterator.0"** %2, align 4, !dbg !1728
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %30, i32 0, i32 0, !dbg !1728
  %32 = load double** %31, align 4, !dbg !1728
  %33 = ptrtoint double* %29 to i32, !dbg !1728
  %34 = ptrtoint double* %32 to i32, !dbg !1728
  %35 = sub i32 %33, %34, !dbg !1728
  %36 = sdiv exact i32 %35, 8, !dbg !1728
  %37 = add nsw i32 %26, %36, !dbg !1728
  ret i32 %37, !dbg !1728
}

define linkonce_odr dereferenceable(16) %"struct.std::_Deque_iterator.0"* @_ZNSt15_Deque_iteratorIdRKdPS0_EppEv(%"struct.std::_Deque_iterator.0"* %this) #0 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.0"*, align 4
  store %"struct.std::_Deque_iterator.0"* %this, %"struct.std::_Deque_iterator.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator.0"** %1}, metadata !1729), !dbg !1730
  %2 = load %"struct.std::_Deque_iterator.0"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 0, !dbg !1731
  %4 = load double** %3, align 4, !dbg !1731
  %5 = getelementptr inbounds double* %4, i32 1, !dbg !1731
  store double* %5, double** %3, align 4, !dbg !1731
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 0, !dbg !1732
  %7 = load double** %6, align 4, !dbg !1732
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 2, !dbg !1732
  %9 = load double** %8, align 4, !dbg !1732
  %10 = icmp eq double* %7, %9, !dbg !1732
  br i1 %10, label %11, label %18, !dbg !1732

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 3, !dbg !1734
  %13 = load double*** %12, align 4, !dbg !1734
  %14 = getelementptr inbounds double** %13, i32 1, !dbg !1734
  call void @_ZNSt15_Deque_iteratorIdRKdPS0_E11_M_set_nodeEPPd(%"struct.std::_Deque_iterator.0"* %2, double** %14), !dbg !1734
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 1, !dbg !1736
  %16 = load double** %15, align 4, !dbg !1736
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator.0"* %2, i32 0, i32 0, !dbg !1736
  store double* %16, double** %17, align 4, !dbg !1736
  br label %18, !dbg !1737

; <label>:18                                      ; preds = %11, %0
  ret %"struct.std::_Deque_iterator.0"* %2, !dbg !1738
}

define linkonce_odr dereferenceable(16) %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEppEv(%"struct.std::_Deque_iterator"* %this) #0 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 4
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %1}, metadata !1739), !dbg !1740
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0, !dbg !1741
  %4 = load double** %3, align 4, !dbg !1741
  %5 = getelementptr inbounds double* %4, i32 1, !dbg !1741
  store double* %5, double** %3, align 4, !dbg !1741
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0, !dbg !1742
  %7 = load double** %6, align 4, !dbg !1742
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 2, !dbg !1742
  %9 = load double** %8, align 4, !dbg !1742
  %10 = icmp eq double* %7, %9, !dbg !1742
  br i1 %10, label %11, label %18, !dbg !1742

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3, !dbg !1744
  %13 = load double*** %12, align 4, !dbg !1744
  %14 = getelementptr inbounds double** %13, i32 1, !dbg !1744
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %2, double** %14), !dbg !1744
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1, !dbg !1746
  %16 = load double** %15, align 4, !dbg !1746
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0, !dbg !1746
  store double* %16, double** %17, align 4, !dbg !1746
  br label %18, !dbg !1747

; <label>:18                                      ; preds = %11, %0
  ret %"struct.std::_Deque_iterator"* %2, !dbg !1748
}

define linkonce_odr %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* returned %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, align 4
  %2 = alloca %"class.std::allocator"*, align 4
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1}, metadata !1749), !dbg !1750
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %2}, metadata !1751), !dbg !1752
  %5 = load %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1
  %6 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5 to %"class.std::allocator"*, !dbg !1753
  %7 = load %"class.std::allocator"** %2, align 4, !dbg !1753
  %8 = call %"class.std::allocator"* @_ZNSaIdEC2ERKS_(%"class.std::allocator"* %6, %"class.std::allocator"* dereferenceable(1) %7) #9, !dbg !1753
  %9 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5, i32 0, i32 0, !dbg !1753
  store double** null, double*** %9, align 4, !dbg !1753
  %10 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5, i32 0, i32 1, !dbg !1753
  store i32 0, i32* %10, align 4, !dbg !1753
  %11 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5, i32 0, i32 2, !dbg !1753
  %12 = invoke %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2Ev(%"struct.std::_Deque_iterator"* %11)
          to label %13 unwind label %17, !dbg !1753

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5, i32 0, i32 3, !dbg !1754
  %15 = invoke %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2Ev(%"struct.std::_Deque_iterator"* %14)
          to label %16 unwind label %17, !dbg !1754

; <label>:16                                      ; preds = %13
  ret %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5, !dbg !1756

; <label>:17                                      ; preds = %13, %0
  %18 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1758
  %19 = extractvalue { i8*, i32 } %18, 0, !dbg !1758
  store i8* %19, i8** %3, !dbg !1758
  %20 = extractvalue { i8*, i32 } %18, 1, !dbg !1758
  store i32 %20, i32* %4, !dbg !1758
  %21 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5 to %"class.std::allocator"*, !dbg !1758
  %22 = call %"class.std::allocator"* @_ZNSaIdED2Ev(%"class.std::allocator"* %21) #9, !dbg !1758
  br label %23, !dbg !1758

; <label>:23                                      ; preds = %17
  %24 = load i8** %3, !dbg !1761
  %25 = load i32* %4, !dbg !1761
  %26 = insertvalue { i8*, i32 } undef, i8* %24, 0, !dbg !1761
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1, !dbg !1761
  resume { i8*, i32 } %27, !dbg !1761
}

define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEj(%"class.std::_Deque_base"* %this, i32 %__num_elements) #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca i32, align 4
  %__num_nodes = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %__nstart = alloca double**, align 4
  %__nfinish = alloca double**, align 4
  %5 = alloca i8*
  %6 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1763), !dbg !1764
  store i32 %__num_elements, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1765), !dbg !1766
  %7 = load %"class.std::_Deque_base"** %1
  call void @llvm.dbg.declare(metadata !{i32* %__num_nodes}, metadata !1767), !dbg !1769
  %8 = load i32* %2, align 4, !dbg !1770
  %9 = call i32 @_ZSt16__deque_buf_sizej(i32 8), !dbg !1771
  %10 = udiv i32 %8, %9, !dbg !1771
  %11 = add i32 %10, 1, !dbg !1771
  store i32 %11, i32* %__num_nodes, align 4, !dbg !1771
  store i32 8, i32* %3, !dbg !1772
  %12 = load i32* %__num_nodes, align 4, !dbg !1772
  %13 = add i32 %12, 2, !dbg !1772
  store i32 %13, i32* %4, !dbg !1772
  %14 = call dereferenceable(4) i32* @_ZSt3maxIjERKT_S2_S2_(i32* dereferenceable(4) %3, i32* dereferenceable(4) %4), !dbg !1772
  %15 = load i32* %14, !dbg !1772
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1772
  %17 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %16, i32 0, i32 1, !dbg !1772
  store i32 %15, i32* %17, align 4, !dbg !1772
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1773
  %19 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %18, i32 0, i32 1, !dbg !1773
  %20 = load i32* %19, align 4, !dbg !1773
  %21 = call double** @_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEj(%"class.std::_Deque_base"* %7, i32 %20), !dbg !1773
  %22 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1773
  %23 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %22, i32 0, i32 0, !dbg !1773
  store double** %21, double*** %23, align 4, !dbg !1773
  call void @llvm.dbg.declare(metadata !{double*** %__nstart}, metadata !1774), !dbg !1775
  %24 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1776
  %25 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %24, i32 0, i32 0, !dbg !1776
  %26 = load double*** %25, align 4, !dbg !1776
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1776
  %28 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %27, i32 0, i32 1, !dbg !1776
  %29 = load i32* %28, align 4, !dbg !1776
  %30 = load i32* %__num_nodes, align 4, !dbg !1776
  %31 = sub i32 %29, %30, !dbg !1776
  %32 = udiv i32 %31, 2, !dbg !1776
  %33 = getelementptr inbounds double** %26, i32 %32, !dbg !1776
  store double** %33, double*** %__nstart, align 4, !dbg !1776
  call void @llvm.dbg.declare(metadata !{double*** %__nfinish}, metadata !1777), !dbg !1778
  %34 = load double*** %__nstart, align 4, !dbg !1779
  %35 = load i32* %__num_nodes, align 4, !dbg !1779
  %36 = getelementptr inbounds double** %34, i32 %35, !dbg !1779
  store double** %36, double*** %__nfinish, align 4, !dbg !1779
  %37 = load double*** %__nstart, align 4, !dbg !1780
  %38 = load double*** %__nfinish, align 4, !dbg !1780
  invoke void @_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_(%"class.std::_Deque_base"* %7, double** %37, double** %38)
          to label %39 unwind label %40, !dbg !1780

; <label>:39                                      ; preds = %0
  br label %63, !dbg !1782

; <label>:40                                      ; preds = %0
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1784
  %42 = extractvalue { i8*, i32 } %41, 0, !dbg !1784
  store i8* %42, i8** %5, !dbg !1784
  %43 = extractvalue { i8*, i32 } %41, 1, !dbg !1784
  store i32 %43, i32* %6, !dbg !1784
  br label %44, !dbg !1784

; <label>:44                                      ; preds = %40
  %45 = load i8** %5, !dbg !1785
  %46 = call i8* @__cxa_begin_catch(i8* %45) #9, !dbg !1785
  %47 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1786
  %48 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %47, i32 0, i32 0, !dbg !1786
  %49 = load double*** %48, align 4, !dbg !1786
  %50 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1786
  %51 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %50, i32 0, i32 1, !dbg !1786
  %52 = load i32* %51, align 4, !dbg !1786
  invoke void @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdj(%"class.std::_Deque_base"* %7, double** %49, i32 %52)
          to label %53 unwind label %58, !dbg !1786

; <label>:53                                      ; preds = %44
  %54 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1788
  %55 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %54, i32 0, i32 0, !dbg !1788
  store double** null, double*** %55, align 4, !dbg !1788
  %56 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1789
  %57 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %56, i32 0, i32 1, !dbg !1789
  store i32 0, i32* %57, align 4, !dbg !1789
  invoke void @__cxa_rethrow() #11
          to label %97 unwind label %58, !dbg !1790

; <label>:58                                      ; preds = %53, %44
  %59 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1791
  %60 = extractvalue { i8*, i32 } %59, 0, !dbg !1791
  store i8* %60, i8** %5, !dbg !1791
  %61 = extractvalue { i8*, i32 } %59, 1, !dbg !1791
  store i32 %61, i32* %6, !dbg !1791
  invoke void @__cxa_end_catch()
          to label %62 unwind label %94, !dbg !1792

; <label>:62                                      ; preds = %58
  br label %89, !dbg !1793

; <label>:63                                      ; preds = %39
  %64 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1795
  %65 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %64, i32 0, i32 2, !dbg !1795
  %66 = load double*** %__nstart, align 4, !dbg !1795
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %65, double** %66), !dbg !1795
  %67 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1796
  %68 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %67, i32 0, i32 3, !dbg !1796
  %69 = load double*** %__nfinish, align 4, !dbg !1796
  %70 = getelementptr inbounds double** %69, i32 -1, !dbg !1796
  call void @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %68, double** %70), !dbg !1796
  %71 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1797
  %72 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %71, i32 0, i32 2, !dbg !1797
  %73 = getelementptr inbounds %"struct.std::_Deque_iterator"* %72, i32 0, i32 1, !dbg !1797
  %74 = load double** %73, align 4, !dbg !1797
  %75 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1797
  %76 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %75, i32 0, i32 2, !dbg !1797
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator"* %76, i32 0, i32 0, !dbg !1797
  store double* %74, double** %77, align 4, !dbg !1797
  %78 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1798
  %79 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %78, i32 0, i32 3, !dbg !1798
  %80 = getelementptr inbounds %"struct.std::_Deque_iterator"* %79, i32 0, i32 1, !dbg !1798
  %81 = load double** %80, align 4, !dbg !1798
  %82 = load i32* %2, align 4, !dbg !1798
  %83 = call i32 @_ZSt16__deque_buf_sizej(i32 8), !dbg !1799
  %84 = urem i32 %82, %83, !dbg !1799
  %85 = getelementptr inbounds double* %81, i32 %84, !dbg !1799
  %86 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0, !dbg !1799
  %87 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %86, i32 0, i32 3, !dbg !1799
  %88 = getelementptr inbounds %"struct.std::_Deque_iterator"* %87, i32 0, i32 0, !dbg !1799
  store double* %85, double** %88, align 4, !dbg !1799
  ret void, !dbg !1792

; <label>:89                                      ; preds = %62
  %90 = load i8** %5, !dbg !1800
  %91 = load i32* %6, !dbg !1800
  %92 = insertvalue { i8*, i32 } undef, i8* %90, 0, !dbg !1800
  %93 = insertvalue { i8*, i32 } %92, i32 %91, 1, !dbg !1800
  resume { i8*, i32 } %93, !dbg !1800

; <label>:94                                      ; preds = %58
  %95 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1802
  %96 = extractvalue { i8*, i32 } %95, 0, !dbg !1802
  call void @__clang_call_terminate(i8* %96) #10, !dbg !1802
  unreachable, !dbg !1802

; <label>:97                                      ; preds = %53
  unreachable
}

define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_(%"class.std::_Deque_base"* %this, double** %__nstart, double** %__nfinish) #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca double**, align 4
  %3 = alloca double**, align 4
  %__cur = alloca double**, align 4
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1804), !dbg !1805
  store double** %__nstart, double*** %2, align 4
  call void @llvm.dbg.declare(metadata !{double*** %2}, metadata !1806), !dbg !1807
  store double** %__nfinish, double*** %3, align 4
  call void @llvm.dbg.declare(metadata !{double*** %3}, metadata !1808), !dbg !1809
  %6 = load %"class.std::_Deque_base"** %1
  call void @llvm.dbg.declare(metadata !{double*** %__cur}, metadata !1810), !dbg !1811
  %7 = load double*** %2, align 4, !dbg !1812
  store double** %7, double*** %__cur, align 4, !dbg !1812
  br label %8, !dbg !1812

; <label>:8                                       ; preds = %16, %0
  %9 = load double*** %__cur, align 4, !dbg !1815
  %10 = load double*** %3, align 4, !dbg !1815
  %11 = icmp ult double** %9, %10, !dbg !1815
  br i1 %11, label %12, label %29, !dbg !1815

; <label>:12                                      ; preds = %8
  %13 = invoke double* @_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %6)
          to label %14 unwind label %19, !dbg !1818

; <label>:14                                      ; preds = %12
  %15 = load double*** %__cur, align 4, !dbg !1819
  store double* %13, double** %15, align 4, !dbg !1819
  br label %16, !dbg !1819

; <label>:16                                      ; preds = %14
  %17 = load double*** %__cur, align 4, !dbg !1821
  %18 = getelementptr inbounds double** %17, i32 1, !dbg !1821
  store double** %18, double*** %__cur, align 4, !dbg !1821
  br label %8, !dbg !1821

; <label>:19                                      ; preds = %12
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1822
  %21 = extractvalue { i8*, i32 } %20, 0, !dbg !1822
  store i8* %21, i8** %4, !dbg !1822
  %22 = extractvalue { i8*, i32 } %20, 1, !dbg !1822
  store i32 %22, i32* %5, !dbg !1822
  br label %23, !dbg !1822

; <label>:23                                      ; preds = %19
  %24 = load i8** %4, !dbg !1823
  %25 = call i8* @__cxa_begin_catch(i8* %24) #9, !dbg !1823
  %26 = load double*** %2, align 4, !dbg !1824
  %27 = load double*** %__cur, align 4, !dbg !1824
  invoke void @_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_(%"class.std::_Deque_base"* %6, double** %26, double** %27)
          to label %28 unwind label %30, !dbg !1824

; <label>:28                                      ; preds = %23
  invoke void @__cxa_rethrow() #11
          to label %44 unwind label %30, !dbg !1826

; <label>:29                                      ; preds = %8
  br label %35, !dbg !1823

; <label>:30                                      ; preds = %28, %23
  %31 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1827
  %32 = extractvalue { i8*, i32 } %31, 0, !dbg !1827
  store i8* %32, i8** %4, !dbg !1827
  %33 = extractvalue { i8*, i32 } %31, 1, !dbg !1827
  store i32 %33, i32* %5, !dbg !1827
  invoke void @__cxa_end_catch()
          to label %34 unwind label %41, !dbg !1828

; <label>:34                                      ; preds = %30
  br label %36, !dbg !1829

; <label>:35                                      ; preds = %29
  ret void, !dbg !1828

; <label>:36                                      ; preds = %34
  %37 = load i8** %4, !dbg !1831
  %38 = load i32* %5, !dbg !1831
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0, !dbg !1831
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1, !dbg !1831
  resume { i8*, i32 } %40, !dbg !1831

; <label>:41                                      ; preds = %30
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !1833
  %43 = extractvalue { i8*, i32 } %42, 0, !dbg !1833
  call void @__clang_call_terminate(i8* %43) #10, !dbg !1833
  unreachable, !dbg !1833

; <label>:44                                      ; preds = %28
  unreachable
}

; Function Attrs: nounwind
define linkonce_odr %"class.std::allocator"* @_ZNSaIdEC2ERKS_(%"class.std::allocator"* returned %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 4
  %2 = alloca %"class.std::allocator"*, align 4
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %1}, metadata !1835), !dbg !1836
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %2}, metadata !1837), !dbg !1838
  %3 = load %"class.std::allocator"** %1
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*, !dbg !1839
  %5 = load %"class.std::allocator"** %2, align 4, !dbg !1839
  %6 = bitcast %"class.std::allocator"* %5 to %"class.__gnu_cxx::new_allocator"*, !dbg !1839
  %7 = call %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %4, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %6) #9, !dbg !1839
  ret %"class.std::allocator"* %3, !dbg !1840
}

; Function Attrs: nounwind
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2Ev(%"struct.std::_Deque_iterator"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 4
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"** %1}, metadata !1841), !dbg !1842
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0, !dbg !1843
  store double* null, double** %3, align 4, !dbg !1843
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1, !dbg !1843
  store double* null, double** %4, align 4, !dbg !1843
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 2, !dbg !1843
  store double* null, double** %5, align 4, !dbg !1843
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3, !dbg !1843
  store double** null, double*** %6, align 4, !dbg !1843
  ret %"struct.std::_Deque_iterator"* %2, !dbg !1844
}

; Function Attrs: nounwind
define linkonce_odr %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* returned %this, %"class.__gnu_cxx::new_allocator"* dereferenceable(1)) unnamed_addr #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  %3 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %2}, metadata !1845), !dbg !1846
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %3}, metadata !1847), !dbg !1848
  %4 = load %"class.__gnu_cxx::new_allocator"** %2
  ret %"class.__gnu_cxx::new_allocator"* %4, !dbg !1849
}

; Function Attrs: nounwind
define linkonce_odr void @_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator"* dereferenceable(1)) #3 align 2 {
  %2 = alloca %"class.std::deque"*, align 4
  %3 = alloca %"class.std::allocator"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %2}, metadata !1850), !dbg !1851
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__first}, metadata !1852), !dbg !1853
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_iterator"* %__last}, metadata !1854), !dbg !1855
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %3}, metadata !1856), !dbg !1857
  %4 = load %"class.std::deque"** %2
  ret void, !dbg !1858
}

define linkonce_odr void @_ZNSt5dequeIdSaIdEE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #0 align 2 {
  %1 = alloca %"class.std::deque"*, align 4
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::deque"** %1}, metadata !1859), !dbg !1860
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*, !dbg !1861
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0, !dbg !1861
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 3, !dbg !1861
  %6 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* dereferenceable(16) %5), !dbg !1861
  ret void, !dbg !1861
}

define linkonce_odr %"class.std::_Deque_base"* @_ZNSt11_Deque_baseIdSaIdEEC2Ev(%"class.std::_Deque_base"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::_Deque_base"** %1}, metadata !1862), !dbg !1863
  %4 = load %"class.std::_Deque_base"** %1
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0, !dbg !1864
  %6 = call %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5), !dbg !1864
  invoke void @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEj(%"class.std::_Deque_base"* %4, i32 0)
          to label %7 unwind label %8, !dbg !1865

; <label>:7                                       ; preds = %0
  ret %"class.std::_Deque_base"* %4, !dbg !1867

; <label>:8                                       ; preds = %0
  %9 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1869
  %10 = extractvalue { i8*, i32 } %9, 0, !dbg !1869
  store i8* %10, i8** %2, !dbg !1869
  %11 = extractvalue { i8*, i32 } %9, 1, !dbg !1869
  store i32 %11, i32* %3, !dbg !1869
  %12 = call %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %5) #9, !dbg !1871
  br label %13, !dbg !1871

; <label>:13                                      ; preds = %8
  %14 = load i8** %2, !dbg !1872
  %15 = load i32* %3, !dbg !1872
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0, !dbg !1872
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1, !dbg !1872
  resume { i8*, i32 } %17, !dbg !1872
}

define linkonce_odr %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2Ev(%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %this, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1}, metadata !1874), !dbg !1875
  %4 = load %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"** %1
  %5 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4 to %"class.std::allocator"*, !dbg !1876
  %6 = call %"class.std::allocator"* @_ZNSaIdEC2Ev(%"class.std::allocator"* %5) #9, !dbg !1876
  %7 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 0, !dbg !1876
  store double** null, double*** %7, align 4, !dbg !1876
  %8 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 1, !dbg !1876
  store i32 0, i32* %8, align 4, !dbg !1876
  %9 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 2, !dbg !1876
  %10 = invoke %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2Ev(%"struct.std::_Deque_iterator"* %9)
          to label %11 unwind label %15, !dbg !1876

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, i32 0, i32 3, !dbg !1877
  %13 = invoke %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIdRdPdEC2Ev(%"struct.std::_Deque_iterator"* %12)
          to label %14 unwind label %15, !dbg !1877

; <label>:14                                      ; preds = %11
  ret %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4, !dbg !1879

; <label>:15                                      ; preds = %11, %0
  %16 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !1881
  %17 = extractvalue { i8*, i32 } %16, 0, !dbg !1881
  store i8* %17, i8** %2, !dbg !1881
  %18 = extractvalue { i8*, i32 } %16, 1, !dbg !1881
  store i32 %18, i32* %3, !dbg !1881
  %19 = bitcast %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* %4 to %"class.std::allocator"*, !dbg !1881
  %20 = call %"class.std::allocator"* @_ZNSaIdED2Ev(%"class.std::allocator"* %19) #9, !dbg !1881
  br label %21, !dbg !1881

; <label>:21                                      ; preds = %15
  %22 = load i8** %2, !dbg !1884
  %23 = load i32* %3, !dbg !1884
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0, !dbg !1884
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1, !dbg !1884
  resume { i8*, i32 } %25, !dbg !1884
}

; Function Attrs: nounwind
define linkonce_odr %"class.std::allocator"* @_ZNSaIdEC2Ev(%"class.std::allocator"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 4
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %1}, metadata !1886), !dbg !1887
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*, !dbg !1888
  %4 = call %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #9, !dbg !1888
  ret %"class.std::allocator"* %2, !dbg !1889
}

; Function Attrs: nounwind
define linkonce_odr %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.__gnu_cxx::new_allocator"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %1}, metadata !1890), !dbg !1891
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret %"class.__gnu_cxx::new_allocator"* %2, !dbg !1892
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!788, !789, !790, !789, !791, !792, !793, !789, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !789, !805, !806, !807, !808, !809, !810, !811, !806, !812, !813, !814, !810, !815, !816, !817, !818, !819, !803, !820, !821, !822, !823, !824, !825, !826, !827, !826, !827, !828, !808, !829, !830, !831, !789, !832, !833, !834, !789, !835, !836, !837, !821, !838, !823, !839, !840, !841, !842, !843, !803, !844, !845, !846, !803, !847, !827, !847, !827, !848, !801, !849, !850, !851, !799, !852, !853, !854, !799, !855, !856, !857, !858, !859, !860, !861, !801, !862, !789, !863, !864, !865, !866, !867, !868, !869, !868, !870, !871, !872, !873, !874, !875, !876, !877, !878, !840, !879, !789, !879, !789, !880, !789, !881, !882, !883, !884, !883, !884, !885, !789, !886, !860, !887, !801, !888, !868, !889, !890, !891, !892, !893, !868, !894, !895, !896, !897, !898, !868, !899, !868, !900, !897, !791, !792, !901, !792, !901, !792, !902, !903, !904, !905, !906, !816, !907, !908, !909, !789, !910, !911, !912, !789, !912, !789, !913, !789, !914, !789, !915, !916, !917, !916, !918, !916, !919, !916, !920, !921, !922, !923, !924, !916, !925, !926, !927, !928, !929, !930, !931, !916, !932, !933, !934, !818, !935, !818, !936, !937, !938, !939, !940, !911, !936, !937, !941, !942, !943, !789, !943, !789, !944, !945, !793, !789, !946, !947, !948, !845, !790, !789, !949, !789, !950, !789, !950, !789, !951, !789, !952, !789}
!xidane.function_declaration_filename = !{!788, !953, !790, !954, !791, !955, !793, !954, !794, !953, !796, !953, !798, !955, !800, !955, !802, !955, !804, !955, !805, !953, !807, !955, !809, !955, !811, !953, !812, !953, !814, !954, !815, !954, !817, !954, !819, !954, !820, !954, !822, !954, !824, !954, !826, !954, !826, !954, !828, !954, !829, !954, !831, !954, !832, !956, !834, !954, !835, !954, !837, !954, !838, !954, !839, !956, !843, !954, !844, !954, !846, !954, !847, !954, !847, !954, !848, !954, !849, !954, !851, !954, !852, !956, !854, !954, !855, !954, !857, !954, !859, !956, !861, !956, !862, !957, !865, !954, !867, !958, !869, !958, !870, !958, !872, !954, !874, !954, !876, !954, !878, !956, !879, !959, !879, !959, !880, !956, !881, !954, !883, !959, !883, !959, !885, !956, !886, !956, !887, !956, !888, !958, !889, !958, !891, !960, !893, !958, !894, !958, !896, !958, !898, !958, !899, !958, !900, !958, !791, !955, !901, !954, !901, !954, !902, !954, !904, !961, !906, !954, !907, !954, !909, !954, !910, !954, !912, !954, !912, !954, !913, !959, !914, !956, !915, !961, !917, !961, !918, !958, !919, !958, !920, !958, !922, !960, !924, !958, !925, !958, !927, !958, !929, !960, !931, !958, !932, !954, !934, !954, !935, !954, !936, !954, !938, !954, !940, !954, !936, !954, !941, !959, !943, !954, !943, !954, !944, !956, !793, !954, !946, !954, !948, !954, !790, !954, !949, !954, !950, !954, !950, !954, !951, !959, !952, !956}
!llvm.module.flags = !{!962, !963, !964, !965}
!llvm.ident = !{!966}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !11, metadata !620, metadata !375, metadata !781, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{metadata !3, metadata !7}
!3 = metadata !{i32 786436, metadata !4, metadata !"_ZTSSt10__are_sameIPdS0_E", metadata !"", i32 113, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, metadata !"_ZTSNSt10__are_sameIPdS0_EUt_E"} ; [ DW_TAG_enumeration_type ] [line 113, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/cpp_type_traits.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 786472, metadata !"__value", i64 1} ; [ DW_TAG_enumerator ] [__value :: 1]
!7 = metadata !{i32 786436, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"", i32 559, i64 32, i64 32, i32 0, i32 0, null, metadata !9, i32 0, null, null, metadata !"_ZTSNSt11_Deque_baseIdSaIdEEUt_E"} ; [ DW_TAG_enumeration_type ] [line 559, size 32, align 32, offset 0] [def] [from ]
!8 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786472, metadata !"_S_initial_map_size", i64 8} ; [ DW_TAG_enumerator ] [_S_initial_map_size :: 8]
!11 = metadata !{metadata !12, metadata !41, metadata !96, metadata !244, metadata !256, metadata !301, metadata !360, metadata !374, metadata !378, metadata !442, metadata !457, metadata !460, metadata !521, metadata !523, metadata !524, metadata !566, metadata !576, metadata !3, metadata !579, metadata !585, metadata !588, metadata !591, metadata !594, metadata !595, metadata !596, metadata !600, metadata !608, metadata !616, metadata !618, metadata !7}
!12 = metadata !{i32 786434, metadata !13, null, metadata !"MoveAvg", i32 26, i64 448, i64 64, i32 0, i32 0, null, metadata !14, i32 0, null, null, metadata !"_ZTS7MoveAvg"} ; [ DW_TAG_class_type ] [MoveAvg] [line 26, size 448, align 64, offset 0] [def] [from ]
!13 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!14 = metadata !{metadata !15, metadata !16, metadata !20, metadata !22, metadata !26, metadata !29, metadata !32, metadata !37, metadata !38}
!15 = metadata !{i32 786445, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"qu", i32 66, i64 320, i64 32, i64 0, i32 1, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE"} ; [ DW_TAG_member ] [qu] [line 66, size 320, align 32, offset 0] [private] [from _ZTSSt5queueIdSt5dequeIdSaIdEEE]
!16 = metadata !{i32 786445, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"maxLen", i32 67, i64 32, i64 32, i64 320, i32 1, metadata !17} ; [ DW_TAG_member ] [maxLen] [line 67, size 32, align 32, offset 320] [private] [from u_int32_t]
!17 = metadata !{i32 786454, metadata !18, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!18 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!19 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!20 = metadata !{i32 786445, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"sum", i32 68, i64 64, i64 64, i64 384, i32 1, metadata !21} ; [ DW_TAG_member ] [sum] [line 68, size 64, align 64, offset 384] [private] [from double]
!21 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!22 = metadata !{i32 786478, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"MoveAvg", metadata !"MoveAvg", metadata !"", i32 33, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 33} ; [ DW_TAG_subprogram ] [line 33] [MoveAvg]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !25}
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTS7MoveAvg"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTS7MoveAvg]
!26 = metadata !{i32 786478, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"MoveAvg", metadata !"MoveAvg", metadata !"", i32 39, metadata !27, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 39} ; [ DW_TAG_subprogram ] [line 39] [MoveAvg]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !25, metadata !17}
!29 = metadata !{i32 786478, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"addSample", metadata !"addSample", metadata !"_ZN7MoveAvg9addSampleEd", i32 45, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 45} ; [ DW_TAG_subprogram ] [line 45] [addSample]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !25, metadata !21}
!32 = metadata !{i32 786478, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"getLastSample", metadata !"getLastSample", metadata !"_ZNK7MoveAvg13getLastSampleEv", i32 51, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 51} ; [ DW_TAG_subprogram ] [line 51] [getLastSample]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !21, metadata !35}
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!36 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS7MoveAvg"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTS7MoveAvg]
!37 = metadata !{i32 786478, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"getCurrentMean", metadata !"getCurrentMean", metadata !"_ZNK7MoveAvg14getCurrentMeanEv", i32 57, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 57} ; [ DW_TAG_subprogram ] [line 57] [getCurrentMean]
!38 = metadata !{i32 786478, metadata !13, metadata !"_ZTS7MoveAvg", metadata !"getSampleNB", metadata !"getSampleNB", metadata !"_ZNK7MoveAvg11getSampleNBEv", i32 63, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 63} ; [ DW_TAG_subprogram ] [line 63] [getSampleNB]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !17, metadata !35}
!41 = metadata !{i32 786434, metadata !42, metadata !43, metadata !"queue<double, std::deque<double, std::allocator<double> > >", i32 96, i64 320, i64 32, i32 0, i32 0, null, metadata !45, i32 0, null, metadata !93, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE"} ; [ DW_TAG_class_type ] [queue<double, std::deque<double, std::allocator<double> > >] [line 96, size 320, align 32, offset 0] [def] [from ]
!42 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_queue.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!43 = metadata !{i32 786489, metadata !44, null, metadata !"std", i32 186} ; [ DW_TAG_namespace ] [std] [line 186]
!44 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/arm-xilinx-linux-gnueabi/bits/c++config.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!45 = metadata !{metadata !46, metadata !47, metadata !53, metadata !59, metadata !65, metadata !73, metadata !81, metadata !82, metadata !83, metadata !90}
!46 = metadata !{i32 786445, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"c", i32 129, i64 320, i64 32, i64 0, i32 2, metadata !"_ZTSSt5dequeIdSaIdEE"} ; [ DW_TAG_member ] [c] [line 129, size 320, align 32, offset 0] [protected] [from _ZTSSt5dequeIdSaIdEE]
!47 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"queue", metadata !"queue", metadata !"", i32 137, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 137} ; [ DW_TAG_subprogram ] [line 137] [queue]
!48 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{null, metadata !50, metadata !51}
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSt5queueIdSt5dequeIdSaIdEEE]
!51 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt5dequeIdSaIdEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt5dequeIdSaIdEE]
!53 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"empty", metadata !"empty", metadata !"_ZNKSt5queueIdSt5dequeIdSaIdEEE5emptyEv", i32 153, metadata !54, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 153} ; [ DW_TAG_subprogram ] [line 153] [empty]
!54 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786468, null, null, metadata !"bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!58 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt5queueIdSt5dequeIdSaIdEEE]
!59 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"size", metadata !"size", metadata !"_ZNKSt5queueIdSt5dequeIdSaIdEEE4sizeEv", i32 158, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 158} ; [ DW_TAG_subprogram ] [line 158] [size]
!60 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{metadata !62, metadata !57}
!62 = metadata !{i32 786454, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"size_type", i32 117, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [size_type] [line 117, size 0, align 0, offset 0] [from size_type]
!63 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"size_type", i32 755, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [size_type] [line 755, size 0, align 0, offset 0] [from size_t]
!64 = metadata !{i32 786454, metadata !44, metadata !43, metadata !"size_t", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [size_t] [line 188, size 0, align 0, offset 0] [from unsigned int]
!65 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"front", metadata !"front", metadata !"_ZNSt5queueIdSt5dequeIdSaIdEEE5frontEv", i32 166, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 166} ; [ DW_TAG_subprogram ] [line 166] [front]
!66 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{metadata !68, metadata !50}
!68 = metadata !{i32 786454, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"reference", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [reference] [line 115, size 0, align 0, offset 0] [from reference]
!69 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"reference", i32 749, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [reference] [line 749, size 0, align 0, offset 0] [from reference]
!70 = metadata !{i32 786454, metadata !71, metadata !"_ZTSSaIdE", metadata !"reference", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [reference] [line 99, size 0, align 0, offset 0] [from ]
!71 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/allocator.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!72 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from double]
!73 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"front", metadata !"front", metadata !"_ZNKSt5queueIdSt5dequeIdSaIdEEE5frontEv", i32 177, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 177} ; [ DW_TAG_subprogram ] [line 177] [front]
!74 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !76, metadata !57}
!76 = metadata !{i32 786454, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"const_reference", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [const_reference] [line 116, size 0, align 0, offset 0] [from const_reference]
!77 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"const_reference", i32 750, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [const_reference] [line 750, size 0, align 0, offset 0] [from const_reference]
!78 = metadata !{i32 786454, metadata !71, metadata !"_ZTSSaIdE", metadata !"const_reference", i32 100, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [const_reference] [line 100, size 0, align 0, offset 0] [from ]
!79 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!81 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"back", metadata !"back", metadata !"_ZNSt5queueIdSt5dequeIdSaIdEEE4backEv", i32 188, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 188} ; [ DW_TAG_subprogram ] [line 188] [back]
!82 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"back", metadata !"back", metadata !"_ZNKSt5queueIdSt5dequeIdSaIdEEE4backEv", i32 199, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 199} ; [ DW_TAG_subprogram ] [line 199] [back]
!83 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"push", metadata !"push", metadata !"_ZNSt5queueIdSt5dequeIdSaIdEEE4pushERKd", i32 215, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 215} ; [ DW_TAG_subprogram ] [line 215] [push]
!84 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{null, metadata !50, metadata !86}
!86 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from value_type]
!88 = metadata !{i32 786454, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"value_type", i32 114, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [value_type] [line 114, size 0, align 0, offset 0] [from value_type]
!89 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"value_type", i32 746, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [value_type] [line 746, size 0, align 0, offset 0] [from double]
!90 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"pop", metadata !"pop", metadata !"_ZNSt5queueIdSt5dequeIdSaIdEEE3popEv", i32 241, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 241} ; [ DW_TAG_subprogram ] [line 241] [pop]
!91 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{null, metadata !50}
!93 = metadata !{metadata !94, metadata !95}
!94 = metadata !{i32 786479, null, metadata !"_Tp", metadata !21, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!95 = metadata !{i32 786479, null, metadata !"_Sequence", metadata !"_ZTSSt5dequeIdSaIdEE", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!96 = metadata !{i32 786434, metadata !8, metadata !43, metadata !"deque<double, std::allocator<double> >", i32 735, i64 320, i64 32, i32 0, i32 0, null, metadata !97, i32 0, null, metadata !242, metadata !"_ZTSSt5dequeIdSaIdEE"} ; [ DW_TAG_class_type ] [deque<double, std::allocator<double> >] [line 735, size 320, align 32, offset 0] [def] [from ]
!97 = metadata !{metadata !98, metadata !99, metadata !102, metadata !106, metadata !112, metadata !118, metadata !121, metadata !122, metadata !126, metadata !129, metadata !133, metadata !138, metadata !143, metadata !144, metadata !145, metadata !149, metadata !153, metadata !154, metadata !155, metadata !158, metadata !159, metadata !162, metadata !165, metadata !168, metadata !171, metadata !174, metadata !175, metadata !176, metadata !179, metadata !182, metadata !183, metadata !184, metadata !187, metadata !188, metadata !189, metadata !190, metadata !193, metadata !196, metadata !199, metadata !202, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !218, metadata !223, metadata !226, metadata !227, metadata !228, metadata !229, metadata !232, metadata !233, metadata !236, metadata !237, metadata !238, metadata !239}
!98 = metadata !{i32 786460, null, metadata !"_ZTSSt5dequeIdSaIdEE", null, i32 0, i64 0, i64 0, i64 0, i32 2, metadata !"_ZTSSt11_Deque_baseIdSaIdEE"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [protected] [from _ZTSSt11_Deque_baseIdSaIdEE]
!99 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_S_buffer_size", metadata !"_S_buffer_size", metadata !"_ZNSt5dequeIdSaIdEE14_S_buffer_sizeEv", i32 762, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 762} ; [ DW_TAG_subprogram ] [line 762] [protected] [_S_buffer_size]
!100 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !64}
!102 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"deque", metadata !"deque", metadata !"", i32 788, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 788} ; [ DW_TAG_subprogram ] [line 788] [deque]
!103 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{null, metadata !105}
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSt5dequeIdSaIdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSt5dequeIdSaIdEE]
!106 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"deque", metadata !"deque", metadata !"", i32 795, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 795} ; [ DW_TAG_subprogram ] [line 795] [deque]
!107 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{null, metadata !105, metadata !109}
!109 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from allocator_type]
!111 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"allocator_type", i32 757, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIdE"} ; [ DW_TAG_typedef ] [allocator_type] [line 757, size 0, align 0, offset 0] [from _ZTSSaIdE]
!112 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"deque", metadata !"deque", metadata !"", i32 833, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 833} ; [ DW_TAG_subprogram ] [line 833] [deque]
!113 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{null, metadata !105, metadata !115, metadata !116, metadata !109}
!115 = metadata !{i32 786454, metadata !8, null, metadata !"size_type", i32 755, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [size_type] [line 755, size 0, align 0, offset 0] [from size_t]
!116 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from value_type]
!118 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"deque", metadata !"deque", metadata !"", i32 846, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 846} ; [ DW_TAG_subprogram ] [line 846] [deque]
!119 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{null, metadata !105, metadata !51}
!121 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"~deque", metadata !"~deque", metadata !"", i32 922, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 922} ; [ DW_TAG_subprogram ] [line 922] [~deque]
!122 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"operator=", metadata !"operator=", metadata !"_ZNSt5dequeIdSaIdEEaSERKS1_", i32 933, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 933} ; [ DW_TAG_subprogram ] [line 933] [operator=]
!123 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{metadata !125, metadata !105, metadata !51}
!125 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt5dequeIdSaIdEE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt5dequeIdSaIdEE]
!126 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"assign", metadata !"assign", metadata !"_ZNSt5dequeIdSaIdEE6assignEjRKd", i32 983, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 983} ; [ DW_TAG_subprogram ] [line 983] [assign]
!127 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{null, metadata !105, metadata !115, metadata !116}
!129 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"get_allocator", metadata !"get_allocator", metadata !"_ZNKSt5dequeIdSaIdEE13get_allocatorEv", i32 1033, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1033} ; [ DW_TAG_subprogram ] [line 1033] [get_allocator]
!130 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !111, metadata !132}
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!133 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"begin", metadata !"begin", metadata !"_ZNSt5dequeIdSaIdEE5beginEv", i32 1042, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1042} ; [ DW_TAG_subprogram ] [line 1042] [begin]
!134 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !136, metadata !105}
!136 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"iterator", i32 751, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [iterator] [line 751, size 0, align 0, offset 0] [from iterator]
!137 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"iterator", i32 453, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_typedef ] [iterator] [line 453, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRdPdE]
!138 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"begin", metadata !"begin", metadata !"_ZNKSt5dequeIdSaIdEE5beginEv", i32 1050, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1050} ; [ DW_TAG_subprogram ] [line 1050] [begin]
!139 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !141, metadata !132}
!141 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"const_iterator", i32 752, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [const_iterator] [line 752, size 0, align 0, offset 0] [from const_iterator]
!142 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"const_iterator", i32 454, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E"} ; [ DW_TAG_typedef ] [const_iterator] [line 454, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRKdPS0_E]
!143 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"end", metadata !"end", metadata !"_ZNSt5dequeIdSaIdEE3endEv", i32 1059, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1059} ; [ DW_TAG_subprogram ] [line 1059] [end]
!144 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"end", metadata !"end", metadata !"_ZNKSt5dequeIdSaIdEE3endEv", i32 1068, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1068} ; [ DW_TAG_subprogram ] [line 1068] [end]
!145 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"rbegin", metadata !"rbegin", metadata !"_ZNSt5dequeIdSaIdEE6rbeginEv", i32 1077, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1077} ; [ DW_TAG_subprogram ] [line 1077] [rbegin]
!146 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{metadata !148, metadata !105}
!148 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"reverse_iterator", i32 754, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt16reverse_iteratorISt15_Deque_iteratorIdRdPdEE"} ; [ DW_TAG_typedef ] [reverse_iterator] [line 754, size 0, align 0, offset 0] [from _ZTSSt16reverse_iteratorISt15_Deque_iteratorIdRdPdEE]
!149 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"rbegin", metadata !"rbegin", metadata !"_ZNKSt5dequeIdSaIdEE6rbeginEv", i32 1086, metadata !150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1086} ; [ DW_TAG_subprogram ] [line 1086] [rbegin]
!150 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !152, metadata !132}
!152 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"const_reverse_iterator", i32 753, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt16reverse_iteratorISt15_Deque_iteratorIdRKdPS1_EE"} ; [ DW_TAG_typedef ] [const_reverse_iterator] [line 753, size 0, align 0, offset 0] [from _ZTSSt16reverse_iteratorISt15_Deque_iteratorIdRKdPS1_EE]
!153 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"rend", metadata !"rend", metadata !"_ZNSt5dequeIdSaIdEE4rendEv", i32 1095, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1095} ; [ DW_TAG_subprogram ] [line 1095] [rend]
!154 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"rend", metadata !"rend", metadata !"_ZNKSt5dequeIdSaIdEE4rendEv", i32 1104, metadata !150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1104} ; [ DW_TAG_subprogram ] [line 1104] [rend]
!155 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"size", metadata !"size", metadata !"_ZNKSt5dequeIdSaIdEE4sizeEv", i32 1147, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1147} ; [ DW_TAG_subprogram ] [line 1147] [size]
!156 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !115, metadata !132}
!158 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"max_size", metadata !"max_size", metadata !"_ZNKSt5dequeIdSaIdEE8max_sizeEv", i32 1152, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1152} ; [ DW_TAG_subprogram ] [line 1152] [max_size]
!159 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"resize", metadata !"resize", metadata !"_ZNSt5dequeIdSaIdEE6resizeEjd", i32 1210, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1210} ; [ DW_TAG_subprogram ] [line 1210] [resize]
!160 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!161 = metadata !{null, metadata !105, metadata !115, metadata !89}
!162 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"empty", metadata !"empty", metadata !"_ZNKSt5dequeIdSaIdEE5emptyEv", i32 1233, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1233} ; [ DW_TAG_subprogram ] [line 1233] [empty]
!163 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !56, metadata !132}
!165 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNSt5dequeIdSaIdEEixEj", i32 1249, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1249} ; [ DW_TAG_subprogram ] [line 1249] [operator[]]
!166 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!167 = metadata !{metadata !69, metadata !105, metadata !115}
!168 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNKSt5dequeIdSaIdEEixEj", i32 1264, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1264} ; [ DW_TAG_subprogram ] [line 1264] [operator[]]
!169 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!170 = metadata !{metadata !77, metadata !132, metadata !115}
!171 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_range_check", metadata !"_M_range_check", metadata !"_ZNKSt5dequeIdSaIdEE14_M_range_checkEj", i32 1270, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1270} ; [ DW_TAG_subprogram ] [line 1270] [protected] [_M_range_check]
!172 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{null, metadata !132, metadata !115}
!174 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"at", metadata !"at", metadata !"_ZNSt5dequeIdSaIdEE2atEj", i32 1292, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1292} ; [ DW_TAG_subprogram ] [line 1292] [at]
!175 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"at", metadata !"at", metadata !"_ZNKSt5dequeIdSaIdEE2atEj", i32 1310, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1310} ; [ DW_TAG_subprogram ] [line 1310] [at]
!176 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"front", metadata !"front", metadata !"_ZNSt5dequeIdSaIdEE5frontEv", i32 1321, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1321} ; [ DW_TAG_subprogram ] [line 1321] [front]
!177 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{metadata !69, metadata !105}
!179 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"front", metadata !"front", metadata !"_ZNKSt5dequeIdSaIdEE5frontEv", i32 1329, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1329} ; [ DW_TAG_subprogram ] [line 1329] [front]
!180 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{metadata !77, metadata !132}
!182 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"back", metadata !"back", metadata !"_ZNSt5dequeIdSaIdEE4backEv", i32 1337, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1337} ; [ DW_TAG_subprogram ] [line 1337] [back]
!183 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"back", metadata !"back", metadata !"_ZNKSt5dequeIdSaIdEE4backEv", i32 1349, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1349} ; [ DW_TAG_subprogram ] [line 1349] [back]
!184 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"push_front", metadata !"push_front", metadata !"_ZNSt5dequeIdSaIdEE10push_frontERKd", i32 1367, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1367} ; [ DW_TAG_subprogram ] [line 1367] [push_front]
!185 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!186 = metadata !{null, metadata !105, metadata !116}
!187 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"push_back", metadata !"push_back", metadata !"_ZNSt5dequeIdSaIdEE9push_backERKd", i32 1398, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1398} ; [ DW_TAG_subprogram ] [line 1398] [push_back]
!188 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"pop_front", metadata !"pop_front", metadata !"_ZNSt5dequeIdSaIdEE9pop_frontEv", i32 1429, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1429} ; [ DW_TAG_subprogram ] [line 1429] [pop_front]
!189 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"pop_back", metadata !"pop_back", metadata !"_ZNSt5dequeIdSaIdEE8pop_backEv", i32 1450, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1450} ; [ DW_TAG_subprogram ] [line 1450] [pop_back]
!190 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"insert", metadata !"insert", metadata !"_ZNSt5dequeIdSaIdEE6insertESt15_Deque_iteratorIdRdPdERKd", i32 1498, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1498} ; [ DW_TAG_subprogram ] [line 1498] [insert]
!191 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!192 = metadata !{metadata !136, metadata !105, metadata !136, metadata !116}
!193 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"insert", metadata !"insert", metadata !"_ZNSt5dequeIdSaIdEE6insertESt15_Deque_iteratorIdRdPdEjRKd", i32 1558, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1558} ; [ DW_TAG_subprogram ] [line 1558] [insert]
!194 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!195 = metadata !{null, metadata !105, metadata !136, metadata !115, metadata !116}
!196 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"erase", metadata !"erase", metadata !"_ZNSt5dequeIdSaIdEE5eraseESt15_Deque_iteratorIdRdPdE", i32 1624, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1624} ; [ DW_TAG_subprogram ] [line 1624] [erase]
!197 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{metadata !136, metadata !105, metadata !136}
!199 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"erase", metadata !"erase", metadata !"_ZNSt5dequeIdSaIdEE5eraseESt15_Deque_iteratorIdRdPdES5_", i32 1648, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1648} ; [ DW_TAG_subprogram ] [line 1648] [erase]
!200 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{metadata !136, metadata !105, metadata !136, metadata !136}
!202 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"swap", metadata !"swap", metadata !"_ZNSt5dequeIdSaIdEE4swapERS1_", i32 1662, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1662} ; [ DW_TAG_subprogram ] [line 1662] [swap]
!203 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!204 = metadata !{null, metadata !105, metadata !125}
!205 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"clear", metadata !"clear", metadata !"_ZNSt5dequeIdSaIdEE5clearEv", i32 1682, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1682} ; [ DW_TAG_subprogram ] [line 1682] [clear]
!206 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_fill_initialize", metadata !"_M_fill_initialize", metadata !"_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd", i32 1746, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1746} ; [ DW_TAG_subprogram ] [line 1746] [protected] [_M_fill_initialize]
!207 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_fill_assign", metadata !"_M_fill_assign", metadata !"_ZNSt5dequeIdSaIdEE14_M_fill_assignEjRKd", i32 1804, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1804} ; [ DW_TAG_subprogram ] [line 1804] [protected] [_M_fill_assign]
!208 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_push_back_aux", metadata !"_M_push_back_aux", metadata !"_ZNSt5dequeIdSaIdEE16_M_push_back_auxERKd", i32 1821, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1821} ; [ DW_TAG_subprogram ] [line 1821] [protected] [_M_push_back_aux]
!209 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_push_front_aux", metadata !"_M_push_front_aux", metadata !"_ZNSt5dequeIdSaIdEE17_M_push_front_auxERKd", i32 1823, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1823} ; [ DW_TAG_subprogram ] [line 1823] [protected] [_M_push_front_aux]
!210 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_pop_back_aux", metadata !"_M_pop_back_aux", metadata !"_ZNSt5dequeIdSaIdEE15_M_pop_back_auxEv", i32 1832, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1832} ; [ DW_TAG_subprogram ] [line 1832] [protected] [_M_pop_back_aux]
!211 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_pop_front_aux", metadata !"_M_pop_front_aux", metadata !"_ZNSt5dequeIdSaIdEE16_M_pop_front_auxEv", i32 1834, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1834} ; [ DW_TAG_subprogram ] [line 1834] [protected] [_M_pop_front_aux]
!212 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_fill_insert", metadata !"_M_fill_insert", metadata !"_ZNSt5dequeIdSaIdEE14_M_fill_insertESt15_Deque_iteratorIdRdPdEjRKd", i32 1878, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1878} ; [ DW_TAG_subprogram ] [line 1878] [protected] [_M_fill_insert]
!213 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_insert_aux", metadata !"_M_insert_aux", metadata !"_ZNSt5dequeIdSaIdEE13_M_insert_auxESt15_Deque_iteratorIdRdPdERKd", i32 1883, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1883} ; [ DW_TAG_subprogram ] [line 1883] [protected] [_M_insert_aux]
!214 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_insert_aux", metadata !"_M_insert_aux", metadata !"_ZNSt5dequeIdSaIdEE13_M_insert_auxESt15_Deque_iteratorIdRdPdEjRKd", i32 1892, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1892} ; [ DW_TAG_subprogram ] [line 1892] [protected] [_M_insert_aux]
!215 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_destroy_data_aux", metadata !"_M_destroy_data_aux", metadata !"_ZNSt5dequeIdSaIdEE19_M_destroy_data_auxESt15_Deque_iteratorIdRdPdES5_", i32 1905, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1905} ; [ DW_TAG_subprogram ] [line 1905] [protected] [_M_destroy_data_aux]
!216 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{null, metadata !105, metadata !136, metadata !136}
!218 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_destroy_data", metadata !"_M_destroy_data", metadata !"_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_", i32 1915, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1915} ; [ DW_TAG_subprogram ] [line 1915] [protected] [_M_destroy_data]
!219 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{null, metadata !105, metadata !136, metadata !136, metadata !221}
!221 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !222} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIdE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSaIdE]
!223 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_erase_at_begin", metadata !"_M_erase_at_begin", metadata !"_ZNSt5dequeIdSaIdEE17_M_erase_at_beginESt15_Deque_iteratorIdRdPdE", i32 1924, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1924} ; [ DW_TAG_subprogram ] [line 1924] [protected] [_M_erase_at_begin]
!224 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!225 = metadata !{null, metadata !105, metadata !136}
!226 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_erase_at_end", metadata !"_M_erase_at_end", metadata !"_ZNSt5dequeIdSaIdEE15_M_erase_at_endESt15_Deque_iteratorIdRdPdE", i32 1934, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1934} ; [ DW_TAG_subprogram ] [line 1934] [protected] [_M_erase_at_end]
!227 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_erase", metadata !"_M_erase", metadata !"_ZNSt5dequeIdSaIdEE8_M_eraseESt15_Deque_iteratorIdRdPdE", i32 1943, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1943} ; [ DW_TAG_subprogram ] [line 1943] [protected] [_M_erase]
!228 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_erase", metadata !"_M_erase", metadata !"_ZNSt5dequeIdSaIdEE8_M_eraseESt15_Deque_iteratorIdRdPdES5_", i32 1946, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1946} ; [ DW_TAG_subprogram ] [line 1946] [protected] [_M_erase]
!229 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_reserve_elements_at_front", metadata !"_M_reserve_elements_at_front", metadata !"_ZNSt5dequeIdSaIdEE28_M_reserve_elements_at_frontEj", i32 1960, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1960} ; [ DW_TAG_subprogram ] [line 1960] [protected] [_M_reserve_elements_at_front]
!230 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{metadata !136, metadata !105, metadata !115}
!232 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_reserve_elements_at_back", metadata !"_M_reserve_elements_at_back", metadata !"_ZNSt5dequeIdSaIdEE27_M_reserve_elements_at_backEj", i32 1970, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1970} ; [ DW_TAG_subprogram ] [line 1970] [protected] [_M_reserve_elements_at_back]
!233 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_new_elements_at_front", metadata !"_M_new_elements_at_front", metadata !"_ZNSt5dequeIdSaIdEE24_M_new_elements_at_frontEj", i32 1980, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1980} ; [ DW_TAG_subprogram ] [line 1980] [protected] [_M_new_elements_at_front]
!234 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{null, metadata !105, metadata !115}
!236 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_new_elements_at_back", metadata !"_M_new_elements_at_back", metadata !"_ZNSt5dequeIdSaIdEE23_M_new_elements_at_backEj", i32 1983, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1983} ; [ DW_TAG_subprogram ] [line 1983] [protected] [_M_new_elements_at_back]
!237 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_reserve_map_at_back", metadata !"_M_reserve_map_at_back", metadata !"_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEj", i32 1996, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1996} ; [ DW_TAG_subprogram ] [line 1996] [protected] [_M_reserve_map_at_back]
!238 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_reserve_map_at_front", metadata !"_M_reserve_map_at_front", metadata !"_ZNSt5dequeIdSaIdEE23_M_reserve_map_at_frontEj", i32 2004, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 2004} ; [ DW_TAG_subprogram ] [line 2004] [protected] [_M_reserve_map_at_front]
!239 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_reallocate_map", metadata !"_M_reallocate_map", metadata !"_ZNSt5dequeIdSaIdEE17_M_reallocate_mapEjb", i32 2012, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 2012} ; [ DW_TAG_subprogram ] [line 2012] [protected] [_M_reallocate_map]
!240 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!241 = metadata !{null, metadata !105, metadata !115, metadata !56}
!242 = metadata !{metadata !94, metadata !243}
!243 = metadata !{i32 786479, null, metadata !"_Alloc", metadata !"_ZTSSaIdE", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!244 = metadata !{i32 786434, metadata !71, metadata !43, metadata !"allocator<double>", i32 92, i64 8, i64 8, i32 0, i32 0, null, metadata !245, i32 0, null, metadata !255, metadata !"_ZTSSaIdE"} ; [ DW_TAG_class_type ] [allocator<double>] [line 92, size 8, align 8, offset 0] [def] [from ]
!245 = metadata !{metadata !246, metadata !247, metadata !251, metadata !254}
!246 = metadata !{i32 786460, null, metadata !"_ZTSSaIdE", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIdEE]
!247 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIdE", metadata !"allocator", metadata !"allocator", metadata !"", i32 113, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 113} ; [ DW_TAG_subprogram ] [line 113] [allocator]
!248 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!249 = metadata !{null, metadata !250}
!250 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSaIdE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSaIdE]
!251 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIdE", metadata !"allocator", metadata !"allocator", metadata !"", i32 115, metadata !252, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 115} ; [ DW_TAG_subprogram ] [line 115] [allocator]
!252 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!253 = metadata !{null, metadata !250, metadata !221}
!254 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIdE", metadata !"~allocator", metadata !"~allocator", metadata !"", i32 121, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 121} ; [ DW_TAG_subprogram ] [line 121] [~allocator]
!255 = metadata !{metadata !94}
!256 = metadata !{i32 786434, metadata !257, metadata !258, metadata !"new_allocator<double>", i32 58, i64 8, i64 8, i32 0, i32 0, null, metadata !259, i32 0, null, metadata !255, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE"} ; [ DW_TAG_class_type ] [new_allocator<double>] [line 58, size 8, align 8, offset 0] [def] [from ]
!257 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!258 = metadata !{i32 786489, metadata !4, null, metadata !"__gnu_cxx", i32 68} ; [ DW_TAG_namespace ] [__gnu_cxx] [line 68]
!259 = metadata !{metadata !260, metadata !264, metadata !269, metadata !270, metadata !277, metadata !283, metadata !289, metadata !292, metadata !295, metadata !298}
!260 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"", i32 79, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 79} ; [ DW_TAG_subprogram ] [line 79] [new_allocator]
!261 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!262 = metadata !{null, metadata !263}
!263 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN9__gnu_cxx13new_allocatorIdEE]
!264 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"", i32 81, metadata !265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 81} ; [ DW_TAG_subprogram ] [line 81] [new_allocator]
!265 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!266 = metadata !{null, metadata !263, metadata !267}
!267 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !268} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!268 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIdEE]
!269 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"~new_allocator", metadata !"~new_allocator", metadata !"", i32 86, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 86} ; [ DW_TAG_subprogram ] [line 86] [~new_allocator]
!270 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"address", metadata !"address", metadata !"_ZNK9__gnu_cxx13new_allocatorIdE7addressERd", i32 89, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 89} ; [ DW_TAG_subprogram ] [line 89] [address]
!271 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!272 = metadata !{metadata !273, metadata !275, metadata !276}
!273 = metadata !{i32 786454, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"pointer", i32 63, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [pointer] [line 63, size 0, align 0, offset 0] [from ]
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from double]
!275 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !268} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!276 = metadata !{i32 786454, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"reference", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [reference] [line 65, size 0, align 0, offset 0] [from ]
!277 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"address", metadata !"address", metadata !"_ZNK9__gnu_cxx13new_allocatorIdE7addressERKd", i32 93, metadata !278, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 93} ; [ DW_TAG_subprogram ] [line 93] [address]
!278 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!279 = metadata !{metadata !280, metadata !275, metadata !282}
!280 = metadata !{i32 786454, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"const_pointer", i32 64, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [const_pointer] [line 64, size 0, align 0, offset 0] [from ]
!281 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!282 = metadata !{i32 786454, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"const_reference", i32 66, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [const_reference] [line 66, size 0, align 0, offset 0] [from ]
!283 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"allocate", metadata !"allocate", metadata !"_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv", i32 99, metadata !284, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 99} ; [ DW_TAG_subprogram ] [line 99] [allocate]
!284 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{metadata !273, metadata !263, metadata !286, metadata !287}
!286 = metadata !{i32 786454, metadata !257, null, metadata !"size_type", i32 61, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [size_type] [line 61, size 0, align 0, offset 0] [from size_t]
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !288} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!288 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!289 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj", i32 109, metadata !290, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 109} ; [ DW_TAG_subprogram ] [line 109] [deallocate]
!290 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{null, metadata !263, metadata !273, metadata !286}
!292 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"max_size", metadata !"max_size", metadata !"_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv", i32 113, metadata !293, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 113} ; [ DW_TAG_subprogram ] [line 113] [max_size]
!293 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!294 = metadata !{metadata !286, metadata !275}
!295 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"construct", metadata !"construct", metadata !"_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd", i32 129, metadata !296, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 129} ; [ DW_TAG_subprogram ] [line 129] [construct]
!296 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{null, metadata !263, metadata !273, metadata !79}
!298 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"destroy", metadata !"destroy", metadata !"_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd", i32 133, metadata !299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 133} ; [ DW_TAG_subprogram ] [line 133] [destroy]
!299 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{null, metadata !263, metadata !273}
!301 = metadata !{i32 786434, metadata !8, metadata !43, metadata !"_Deque_base<double, std::allocator<double> >", i32 444, i64 320, i64 32, i32 0, i32 0, null, metadata !302, i32 0, null, metadata !242, metadata !"_ZTSSt11_Deque_baseIdSaIdEE"} ; [ DW_TAG_class_type ] [_Deque_base<double, std::allocator<double> >] [line 444, size 320, align 32, offset 0] [def] [from ]
!302 = metadata !{metadata !303, metadata !304, metadata !310, metadata !314, metadata !317, metadata !322, metadata !325, metadata !326, metadata !332, metadata !337, metadata !342, metadata !345, metadata !348, metadata !352, metadata !355, metadata !356, metadata !359}
!303 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_impl", i32 561, i64 320, i64 32, i64 0, i32 2, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE"} ; [ DW_TAG_member ] [_M_impl] [line 561, size 320, align 32, offset 0] [protected] [from _ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE]
!304 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"get_allocator", metadata !"get_allocator", metadata !"_ZNKSt11_Deque_baseIdSaIdEE13get_allocatorEv", i32 450, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 450} ; [ DW_TAG_subprogram ] [line 450] [get_allocator]
!305 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!306 = metadata !{metadata !307, metadata !308}
!307 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"allocator_type", i32 447, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIdE"} ; [ DW_TAG_typedef ] [allocator_type] [line 447, size 0, align 0, offset 0] [from _ZTSSaIdE]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!309 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt11_Deque_baseIdSaIdEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt11_Deque_baseIdSaIdEE]
!310 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Deque_base", metadata !"_Deque_base", metadata !"", i32 456, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 456} ; [ DW_TAG_subprogram ] [line 456] [_Deque_base]
!311 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!312 = metadata !{null, metadata !313}
!313 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSt11_Deque_baseIdSaIdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSt11_Deque_baseIdSaIdEE]
!314 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Deque_base", metadata !"_Deque_base", metadata !"", i32 460, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 460} ; [ DW_TAG_subprogram ] [line 460] [_Deque_base]
!315 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!316 = metadata !{null, metadata !313, metadata !64}
!317 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Deque_base", metadata !"_Deque_base", metadata !"", i32 464, metadata !318, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 464} ; [ DW_TAG_subprogram ] [line 464] [_Deque_base]
!318 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !319, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!319 = metadata !{null, metadata !313, metadata !320, metadata !64}
!320 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!321 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from allocator_type]
!322 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Deque_base", metadata !"_Deque_base", metadata !"", i32 468, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 468} ; [ DW_TAG_subprogram ] [line 468] [_Deque_base]
!323 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!324 = metadata !{null, metadata !313, metadata !320}
!325 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"~_Deque_base", metadata !"~_Deque_base", metadata !"", i32 487, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 487} ; [ DW_TAG_subprogram ] [line 487] [~_Deque_base]
!326 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_get_Tp_allocator", metadata !"_M_get_Tp_allocator", metadata !"_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv", i32 524, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 524} ; [ DW_TAG_subprogram ] [line 524] [protected] [_M_get_Tp_allocator]
!327 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!328 = metadata !{metadata !329, metadata !313}
!329 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !330} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _Tp_alloc_type]
!330 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Tp_alloc_type", i32 492, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_typedef ] [_Tp_alloc_type] [line 492, size 0, align 0, offset 0] [from other]
!331 = metadata !{i32 786454, metadata !71, metadata !"_ZTSNSaIdE6rebindIdEE", metadata !"other", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIdE"} ; [ DW_TAG_typedef ] [other] [line 105, size 0, align 0, offset 0] [from _ZTSSaIdE]
!332 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_get_Tp_allocator", metadata !"_M_get_Tp_allocator", metadata !"_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv", i32 528, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 528} ; [ DW_TAG_subprogram ] [line 528] [protected] [_M_get_Tp_allocator]
!333 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!334 = metadata !{metadata !335, metadata !308}
!335 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !336} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!336 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !330} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _Tp_alloc_type]
!337 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_get_map_allocator", metadata !"_M_get_map_allocator", metadata !"_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv", i32 532, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 532} ; [ DW_TAG_subprogram ] [line 532] [protected] [_M_get_map_allocator]
!338 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!339 = metadata !{metadata !340, metadata !308}
!340 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Map_alloc_type", i32 490, i64 0, i64 0, i64 0, i32 0, metadata !341} ; [ DW_TAG_typedef ] [_Map_alloc_type] [line 490, size 0, align 0, offset 0] [from other]
!341 = metadata !{i32 786454, metadata !71, metadata !"_ZTSNSaIdE6rebindIPdEE", metadata !"other", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIPdE"} ; [ DW_TAG_typedef ] [other] [line 105, size 0, align 0, offset 0] [from _ZTSSaIPdE]
!342 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_allocate_node", metadata !"_M_allocate_node", metadata !"_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv", i32 536, metadata !343, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 536} ; [ DW_TAG_subprogram ] [line 536] [protected] [_M_allocate_node]
!343 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{metadata !274, metadata !313}
!345 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_deallocate_node", metadata !"_M_deallocate_node", metadata !"_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd", i32 542, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 542} ; [ DW_TAG_subprogram ] [line 542] [protected] [_M_deallocate_node]
!346 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!347 = metadata !{null, metadata !313, metadata !274}
!348 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_allocate_map", metadata !"_M_allocate_map", metadata !"_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEj", i32 548, metadata !349, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 548} ; [ DW_TAG_subprogram ] [line 548] [protected] [_M_allocate_map]
!349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{metadata !351, metadata !313, metadata !64}
!351 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!352 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_deallocate_map", metadata !"_M_deallocate_map", metadata !"_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdj", i32 552, metadata !353, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 552} ; [ DW_TAG_subprogram ] [line 552] [protected] [_M_deallocate_map]
!353 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!354 = metadata !{null, metadata !313, metadata !351, metadata !64}
!355 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_initialize_map", metadata !"_M_initialize_map", metadata !"_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEj", i32 556, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 556} ; [ DW_TAG_subprogram ] [line 556] [protected] [_M_initialize_map]
!356 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_create_nodes", metadata !"_M_create_nodes", metadata !"_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_", i32 557, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 557} ; [ DW_TAG_subprogram ] [line 557] [protected] [_M_create_nodes]
!357 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!358 = metadata !{null, metadata !313, metadata !351, metadata !351}
!359 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_destroy_nodes", metadata !"_M_destroy_nodes", metadata !"_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_", i32 558, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 558} ; [ DW_TAG_subprogram ] [line 558] [protected] [_M_destroy_nodes]
!360 = metadata !{i32 786451, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Deque_impl", i32 497, i64 320, i64 32, i32 0, i32 0, null, metadata !361, i32 0, null, null, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE"} ; [ DW_TAG_structure_type ] [_Deque_impl] [line 497, size 320, align 32, offset 0] [def] [from ]
!361 = metadata !{metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !371}
!362 = metadata !{i32 786460, null, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !330} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _Tp_alloc_type]
!363 = metadata !{i32 786445, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"_M_map", i32 500, i64 32, i64 32, i64 0, i32 0, metadata !351} ; [ DW_TAG_member ] [_M_map] [line 500, size 32, align 32, offset 0] [from ]
!364 = metadata !{i32 786445, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"_M_map_size", i32 501, i64 32, i64 32, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ] [_M_map_size] [line 501, size 32, align 32, offset 32] [from size_t]
!365 = metadata !{i32 786445, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"_M_start", i32 502, i64 128, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [_M_start] [line 502, size 128, align 32, offset 64] [from iterator]
!366 = metadata !{i32 786445, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"_M_finish", i32 503, i64 128, i64 32, i64 192, i32 0, metadata !137} ; [ DW_TAG_member ] [_M_finish] [line 503, size 128, align 32, offset 192] [from iterator]
!367 = metadata !{i32 786478, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"_Deque_impl", metadata !"_Deque_impl", metadata !"", i32 505, metadata !368, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 505} ; [ DW_TAG_subprogram ] [line 505] [_Deque_impl]
!368 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!369 = metadata !{null, metadata !370}
!370 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE]
!371 = metadata !{i32 786478, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"_Deque_impl", metadata !"_Deque_impl", metadata !"", i32 510, metadata !372, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 510} ; [ DW_TAG_subprogram ] [line 510] [_Deque_impl]
!372 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!373 = metadata !{null, metadata !370, metadata !335}
!374 = metadata !{i32 786451, metadata !71, metadata !"_ZTSSaIdE", metadata !"rebind<double>", i32 104, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, metadata !376, metadata !"_ZTSNSaIdE6rebindIdEE"} ; [ DW_TAG_structure_type ] [rebind<double>] [line 104, size 8, align 8, offset 0] [def] [from ]
!375 = metadata !{}
!376 = metadata !{metadata !377}
!377 = metadata !{i32 786479, null, metadata !"_Tp1", metadata !21, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!378 = metadata !{i32 786451, metadata !8, metadata !43, metadata !"_Deque_iterator<double, double &, double *>", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !379, i32 0, null, metadata !439, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_structure_type ] [_Deque_iterator<double, double &, double *>] [line 106, size 128, align 32, offset 0] [def] [from ]
!379 = metadata !{metadata !380, metadata !381, metadata !382, metadata !383, metadata !385, metadata !386, metadata !390, metadata !393, metadata !399, metadata !404, metadata !408, metadata !412, metadata !417, metadata !421, metadata !422, metadata !423, metadata !428, metadata !431, metadata !432, metadata !433, metadata !436}
!380 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_M_cur", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ] [_M_cur] [line 123, size 32, align 32, offset 0] [from ]
!381 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_M_first", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !274} ; [ DW_TAG_member ] [_M_first] [line 124, size 32, align 32, offset 32] [from ]
!382 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_M_last", i32 125, i64 32, i64 32, i64 64, i32 0, metadata !274} ; [ DW_TAG_member ] [_M_last] [line 125, size 32, align 32, offset 64] [from ]
!383 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_M_node", i32 126, i64 32, i64 32, i64 96, i32 0, metadata !384} ; [ DW_TAG_member ] [_M_node] [line 126, size 32, align 32, offset 96] [from _Map_pointer]
!384 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_Map_pointer", i32 120, i64 0, i64 0, i64 0, i32 0, metadata !351} ; [ DW_TAG_typedef ] [_Map_pointer] [line 120, size 0, align 0, offset 0] [from ]
!385 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_S_buffer_size", metadata !"_S_buffer_size", metadata !"_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv", i32 111, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 111} ; [ DW_TAG_subprogram ] [line 111] [_S_buffer_size]
!386 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"", i32 128, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 128} ; [ DW_TAG_subprogram ] [line 128] [_Deque_iterator]
!387 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!388 = metadata !{null, metadata !389, metadata !274, metadata !384}
!389 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSt15_Deque_iteratorIdRdPdE]
!390 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"", i32 132, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 132} ; [ DW_TAG_subprogram ] [line 132] [_Deque_iterator]
!391 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!392 = metadata !{null, metadata !389}
!393 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"", i32 135, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 135} ; [ DW_TAG_subprogram ] [line 135] [_Deque_iterator]
!394 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!395 = metadata !{null, metadata !389, metadata !396}
!396 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !397} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!397 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !398} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from iterator]
!398 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"iterator", i32 108, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_typedef ] [iterator] [line 108, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRdPdE]
!399 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_M_const_cast", metadata !"_M_const_cast", metadata !"_ZNKSt15_Deque_iteratorIdRdPdE13_M_const_castEv", i32 140, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 140} ; [ DW_TAG_subprogram ] [line 140] [_M_const_cast]
!400 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!401 = metadata !{metadata !398, metadata !402}
!402 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !403} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!403 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRdPdE]
!404 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator*", metadata !"operator*", metadata !"_ZNKSt15_Deque_iteratorIdRdPdEdeEv", i32 144, metadata !405, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 144} ; [ DW_TAG_subprogram ] [line 144] [operator*]
!405 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!406 = metadata !{metadata !407, metadata !402}
!407 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"reference", i32 117, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [reference] [line 117, size 0, align 0, offset 0] [from ]
!408 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator->", metadata !"operator->", metadata !"_ZNKSt15_Deque_iteratorIdRdPdEptEv", i32 148, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 148} ; [ DW_TAG_subprogram ] [line 148] [operator->]
!409 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!410 = metadata !{metadata !411, metadata !402}
!411 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"pointer", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [pointer] [line 116, size 0, align 0, offset 0] [from ]
!412 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator++", metadata !"operator++", metadata !"_ZNSt15_Deque_iteratorIdRdPdEppEv", i32 152, metadata !413, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 152} ; [ DW_TAG_subprogram ] [line 152] [operator++]
!413 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !414, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!414 = metadata !{metadata !415, metadata !389}
!415 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !416} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _Self]
!416 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_Self", i32 121, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_typedef ] [_Self] [line 121, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRdPdE]
!417 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator++", metadata !"operator++", metadata !"_ZNSt15_Deque_iteratorIdRdPdEppEi", i32 164, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 164} ; [ DW_TAG_subprogram ] [line 164] [operator++]
!418 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!419 = metadata !{metadata !416, metadata !389, metadata !420}
!420 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!421 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator--", metadata !"operator--", metadata !"_ZNSt15_Deque_iteratorIdRdPdEmmEv", i32 172, metadata !413, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 172} ; [ DW_TAG_subprogram ] [line 172] [operator--]
!422 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator--", metadata !"operator--", metadata !"_ZNSt15_Deque_iteratorIdRdPdEmmEi", i32 184, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 184} ; [ DW_TAG_subprogram ] [line 184] [operator--]
!423 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator+=", metadata !"operator+=", metadata !"_ZNSt15_Deque_iteratorIdRdPdEpLEi", i32 192, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 192} ; [ DW_TAG_subprogram ] [line 192] [operator+=]
!424 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!425 = metadata !{metadata !415, metadata !389, metadata !426}
!426 = metadata !{i32 786454, metadata !8, null, metadata !"difference_type", i32 119, i64 0, i64 0, i64 0, i32 0, metadata !427} ; [ DW_TAG_typedef ] [difference_type] [line 119, size 0, align 0, offset 0] [from ptrdiff_t]
!427 = metadata !{i32 786454, metadata !44, metadata !43, metadata !"ptrdiff_t", i32 189, i64 0, i64 0, i64 0, i32 0, metadata !420} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 189, size 0, align 0, offset 0] [from int]
!428 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator+", metadata !"operator+", metadata !"_ZNKSt15_Deque_iteratorIdRdPdEplEi", i32 211, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 211} ; [ DW_TAG_subprogram ] [line 211] [operator+]
!429 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!430 = metadata !{metadata !416, metadata !402, metadata !426}
!431 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator-=", metadata !"operator-=", metadata !"_ZNSt15_Deque_iteratorIdRdPdEmIEi", i32 218, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 218} ; [ DW_TAG_subprogram ] [line 218] [operator-=]
!432 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator-", metadata !"operator-", metadata !"_ZNKSt15_Deque_iteratorIdRdPdEmiEi", i32 222, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 222} ; [ DW_TAG_subprogram ] [line 222] [operator-]
!433 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNKSt15_Deque_iteratorIdRdPdEixEi", i32 229, metadata !434, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 229} ; [ DW_TAG_subprogram ] [line 229] [operator[]]
!434 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!435 = metadata !{metadata !407, metadata !402, metadata !426}
!436 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_M_set_node", metadata !"_M_set_node", metadata !"_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_", i32 238, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 238} ; [ DW_TAG_subprogram ] [line 238] [_M_set_node]
!437 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!438 = metadata !{null, metadata !389, metadata !384}
!439 = metadata !{metadata !94, metadata !440, metadata !441}
!440 = metadata !{i32 786479, null, metadata !"_Ref", metadata !72, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!441 = metadata !{i32 786479, null, metadata !"_Ptr", metadata !274, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!442 = metadata !{i32 786434, metadata !71, metadata !43, metadata !"allocator<double *>", i32 92, i64 8, i64 8, i32 0, i32 0, null, metadata !443, i32 0, null, metadata !455, metadata !"_ZTSSaIPdE"} ; [ DW_TAG_class_type ] [allocator<double *>] [line 92, size 8, align 8, offset 0] [def] [from ]
!443 = metadata !{metadata !444, metadata !445, metadata !449, metadata !454}
!444 = metadata !{i32 786460, null, metadata !"_ZTSSaIPdE", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIPdEE]
!445 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIPdE", metadata !"allocator", metadata !"allocator", metadata !"", i32 113, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 113} ; [ DW_TAG_subprogram ] [line 113] [allocator]
!446 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!447 = metadata !{null, metadata !448}
!448 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSaIPdE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSaIPdE]
!449 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIPdE", metadata !"allocator", metadata !"allocator", metadata !"", i32 115, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 115} ; [ DW_TAG_subprogram ] [line 115] [allocator]
!450 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!451 = metadata !{null, metadata !448, metadata !452}
!452 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !453} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!453 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIPdE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSaIPdE]
!454 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIPdE", metadata !"~allocator", metadata !"~allocator", metadata !"", i32 121, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 121} ; [ DW_TAG_subprogram ] [line 121] [~allocator]
!455 = metadata !{metadata !456}
!456 = metadata !{i32 786479, null, metadata !"_Tp", metadata !274, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!457 = metadata !{i32 786451, metadata !71, metadata !"_ZTSSaIdE", metadata !"rebind<double *>", i32 104, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, metadata !458, metadata !"_ZTSNSaIdE6rebindIPdEE"} ; [ DW_TAG_structure_type ] [rebind<double *>] [line 104, size 8, align 8, offset 0] [def] [from ]
!458 = metadata !{metadata !459}
!459 = metadata !{i32 786479, null, metadata !"_Tp1", metadata !274, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!460 = metadata !{i32 786451, metadata !8, metadata !43, metadata !"_Deque_iterator<double, const double &, const double *>", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !461, i32 0, null, metadata !518, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E"} ; [ DW_TAG_structure_type ] [_Deque_iterator<double, const double &, const double *>] [line 106, size 128, align 32, offset 0] [def] [from ]
!461 = metadata !{metadata !462, metadata !463, metadata !464, metadata !465, metadata !467, metadata !468, metadata !472, metadata !475, metadata !481, metadata !486, metadata !490, metadata !494, metadata !499, metadata !502, metadata !503, metadata !504, metadata !507, metadata !510, metadata !511, metadata !512, metadata !515}
!462 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_M_cur", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ] [_M_cur] [line 123, size 32, align 32, offset 0] [from ]
!463 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_M_first", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !274} ; [ DW_TAG_member ] [_M_first] [line 124, size 32, align 32, offset 32] [from ]
!464 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_M_last", i32 125, i64 32, i64 32, i64 64, i32 0, metadata !274} ; [ DW_TAG_member ] [_M_last] [line 125, size 32, align 32, offset 64] [from ]
!465 = metadata !{i32 786445, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_M_node", i32 126, i64 32, i64 32, i64 96, i32 0, metadata !466} ; [ DW_TAG_member ] [_M_node] [line 126, size 32, align 32, offset 96] [from _Map_pointer]
!466 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_Map_pointer", i32 120, i64 0, i64 0, i64 0, i32 0, metadata !351} ; [ DW_TAG_typedef ] [_Map_pointer] [line 120, size 0, align 0, offset 0] [from ]
!467 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_S_buffer_size", metadata !"_S_buffer_size", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_E14_S_buffer_sizeEv", i32 111, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 111} ; [ DW_TAG_subprogram ] [line 111] [_S_buffer_size]
!468 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"", i32 128, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 128} ; [ DW_TAG_subprogram ] [line 128] [_Deque_iterator]
!469 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!470 = metadata !{null, metadata !471, metadata !274, metadata !466}
!471 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSt15_Deque_iteratorIdRKdPS0_E]
!472 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"", i32 132, metadata !473, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 132} ; [ DW_TAG_subprogram ] [line 132] [_Deque_iterator]
!473 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!474 = metadata !{null, metadata !471}
!475 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"", i32 135, metadata !476, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 135} ; [ DW_TAG_subprogram ] [line 135] [_Deque_iterator]
!476 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !477, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!477 = metadata !{null, metadata !471, metadata !478}
!478 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !479} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!479 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !480} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from iterator]
!480 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"iterator", i32 108, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_typedef ] [iterator] [line 108, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRdPdE]
!481 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_M_const_cast", metadata !"_M_const_cast", metadata !"_ZNKSt15_Deque_iteratorIdRKdPS0_E13_M_const_castEv", i32 140, metadata !482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 140} ; [ DW_TAG_subprogram ] [line 140] [_M_const_cast]
!482 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!483 = metadata !{metadata !480, metadata !484}
!484 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !485} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!485 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRKdPS0_E]
!486 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator*", metadata !"operator*", metadata !"_ZNKSt15_Deque_iteratorIdRKdPS0_EdeEv", i32 144, metadata !487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 144} ; [ DW_TAG_subprogram ] [line 144] [operator*]
!487 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!488 = metadata !{metadata !489, metadata !484}
!489 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"reference", i32 117, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [reference] [line 117, size 0, align 0, offset 0] [from ]
!490 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator->", metadata !"operator->", metadata !"_ZNKSt15_Deque_iteratorIdRKdPS0_EptEv", i32 148, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 148} ; [ DW_TAG_subprogram ] [line 148] [operator->]
!491 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!492 = metadata !{metadata !493, metadata !484}
!493 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"pointer", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [pointer] [line 116, size 0, align 0, offset 0] [from ]
!494 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator++", metadata !"operator++", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EppEv", i32 152, metadata !495, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 152} ; [ DW_TAG_subprogram ] [line 152] [operator++]
!495 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !496, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!496 = metadata !{metadata !497, metadata !471}
!497 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _Self]
!498 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_Self", i32 121, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E"} ; [ DW_TAG_typedef ] [_Self] [line 121, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRKdPS0_E]
!499 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator++", metadata !"operator++", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EppEi", i32 164, metadata !500, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 164} ; [ DW_TAG_subprogram ] [line 164] [operator++]
!500 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !501, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!501 = metadata !{metadata !498, metadata !471, metadata !420}
!502 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator--", metadata !"operator--", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EmmEv", i32 172, metadata !495, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 172} ; [ DW_TAG_subprogram ] [line 172] [operator--]
!503 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator--", metadata !"operator--", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EmmEi", i32 184, metadata !500, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 184} ; [ DW_TAG_subprogram ] [line 184] [operator--]
!504 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator+=", metadata !"operator+=", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EpLEi", i32 192, metadata !505, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 192} ; [ DW_TAG_subprogram ] [line 192] [operator+=]
!505 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!506 = metadata !{metadata !497, metadata !471, metadata !426}
!507 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator+", metadata !"operator+", metadata !"_ZNKSt15_Deque_iteratorIdRKdPS0_EplEi", i32 211, metadata !508, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 211} ; [ DW_TAG_subprogram ] [line 211] [operator+]
!508 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !509, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!509 = metadata !{metadata !498, metadata !484, metadata !426}
!510 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator-=", metadata !"operator-=", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EmIEi", i32 218, metadata !505, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 218} ; [ DW_TAG_subprogram ] [line 218] [operator-=]
!511 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator-", metadata !"operator-", metadata !"_ZNKSt15_Deque_iteratorIdRKdPS0_EmiEi", i32 222, metadata !508, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 222} ; [ DW_TAG_subprogram ] [line 222] [operator-]
!512 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNKSt15_Deque_iteratorIdRKdPS0_EixEi", i32 229, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 229} ; [ DW_TAG_subprogram ] [line 229] [operator[]]
!513 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !514, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!514 = metadata !{metadata !489, metadata !484, metadata !426}
!515 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_M_set_node", metadata !"_M_set_node", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_E11_M_set_nodeEPPd", i32 238, metadata !516, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 238} ; [ DW_TAG_subprogram ] [line 238] [_M_set_node]
!516 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !517, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!517 = metadata !{null, metadata !471, metadata !466}
!518 = metadata !{metadata !94, metadata !519, metadata !520}
!519 = metadata !{i32 786479, null, metadata !"_Ref", metadata !79, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!520 = metadata !{i32 786479, null, metadata !"_Ptr", metadata !281, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!521 = metadata !{i32 786434, metadata !522, metadata !43, metadata !"reverse_iterator<std::_Deque_iterator<double, double &, double *> >", i32 97, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt16reverse_iteratorISt15_Deque_iteratorIdRdPdEE"} ; [ DW_TAG_class_type ] [reverse_iterator<std::_Deque_iterator<double, double &, double *> >] [line 97, size 0, align 0, offset 0] [decl] [from ]
!522 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_iterator.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!523 = metadata !{i32 786434, metadata !522, metadata !43, metadata !"reverse_iterator<std::_Deque_iterator<double, const double &, const double *> >", i32 97, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt16reverse_iteratorISt15_Deque_iteratorIdRKdPS1_EE"} ; [ DW_TAG_class_type ] [reverse_iterator<std::_Deque_iterator<double, const double &, const double *> >] [line 97, size 0, align 0, offset 0] [decl] [from ]
!524 = metadata !{i32 786434, metadata !257, metadata !258, metadata !"new_allocator<double *>", i32 58, i64 8, i64 8, i32 0, i32 0, null, metadata !525, i32 0, null, metadata !455, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE"} ; [ DW_TAG_class_type ] [new_allocator<double *>] [line 58, size 8, align 8, offset 0] [def] [from ]
!525 = metadata !{metadata !526, metadata !530, metadata !535, metadata !536, metadata !543, metadata !551, metadata !554, metadata !557, metadata !560, metadata !563}
!526 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"", i32 79, metadata !527, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 79} ; [ DW_TAG_subprogram ] [line 79] [new_allocator]
!527 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !528, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!528 = metadata !{null, metadata !529}
!529 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN9__gnu_cxx13new_allocatorIPdEE]
!530 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"", i32 81, metadata !531, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 81} ; [ DW_TAG_subprogram ] [line 81] [new_allocator]
!531 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !532, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!532 = metadata !{null, metadata !529, metadata !533}
!533 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !534} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!534 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIPdEE]
!535 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"~new_allocator", metadata !"~new_allocator", metadata !"", i32 86, metadata !527, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 86} ; [ DW_TAG_subprogram ] [line 86] [~new_allocator]
!536 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"address", metadata !"address", metadata !"_ZNK9__gnu_cxx13new_allocatorIPdE7addressERS1_", i32 89, metadata !537, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 89} ; [ DW_TAG_subprogram ] [line 89] [address]
!537 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !538, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!538 = metadata !{metadata !539, metadata !540, metadata !541}
!539 = metadata !{i32 786454, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"pointer", i32 63, i64 0, i64 0, i64 0, i32 0, metadata !351} ; [ DW_TAG_typedef ] [pointer] [line 63, size 0, align 0, offset 0] [from ]
!540 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !534} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!541 = metadata !{i32 786454, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"reference", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !542} ; [ DW_TAG_typedef ] [reference] [line 65, size 0, align 0, offset 0] [from ]
!542 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!543 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"address", metadata !"address", metadata !"_ZNK9__gnu_cxx13new_allocatorIPdE7addressERKS1_", i32 93, metadata !544, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 93} ; [ DW_TAG_subprogram ] [line 93] [address]
!544 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !545, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!545 = metadata !{metadata !546, metadata !540, metadata !549}
!546 = metadata !{i32 786454, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"const_pointer", i32 64, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_typedef ] [const_pointer] [line 64, size 0, align 0, offset 0] [from ]
!547 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !548} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!548 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!549 = metadata !{i32 786454, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"const_reference", i32 66, i64 0, i64 0, i64 0, i32 0, metadata !550} ; [ DW_TAG_typedef ] [const_reference] [line 66, size 0, align 0, offset 0] [from ]
!550 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !548} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!551 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"allocate", metadata !"allocate", metadata !"_ZN9__gnu_cxx13new_allocatorIPdE8allocateEjPKv", i32 99, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 99} ; [ DW_TAG_subprogram ] [line 99] [allocate]
!552 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!553 = metadata !{metadata !539, metadata !529, metadata !286, metadata !287}
!554 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_j", i32 109, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 109} ; [ DW_TAG_subprogram ] [line 109] [deallocate]
!555 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !556, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!556 = metadata !{null, metadata !529, metadata !539, metadata !286}
!557 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"max_size", metadata !"max_size", metadata !"_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv", i32 113, metadata !558, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 113} ; [ DW_TAG_subprogram ] [line 113] [max_size]
!558 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!559 = metadata !{metadata !286, metadata !540}
!560 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"construct", metadata !"construct", metadata !"_ZN9__gnu_cxx13new_allocatorIPdE9constructEPS1_RKS1_", i32 129, metadata !561, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 129} ; [ DW_TAG_subprogram ] [line 129] [construct]
!561 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!562 = metadata !{null, metadata !529, metadata !539, metadata !550}
!563 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"destroy", metadata !"destroy", metadata !"_ZN9__gnu_cxx13new_allocatorIPdE7destroyEPS1_", i32 133, metadata !564, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 133} ; [ DW_TAG_subprogram ] [line 133] [destroy]
!564 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !565, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!565 = metadata !{null, metadata !529, metadata !539}
!566 = metadata !{i32 786451, metadata !567, metadata !43, metadata !"_Iter_base<double **, false>", i32 209, i64 8, i64 8, i32 0, i32 0, null, metadata !568, i32 0, null, metadata !573, metadata !"_ZTSSt10_Iter_baseIPPdLb0EE"} ; [ DW_TAG_structure_type ] [_Iter_base<double **, false>] [line 209, size 8, align 8, offset 0] [def] [from ]
!567 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_iterator_base_types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!568 = metadata !{metadata !569}
!569 = metadata !{i32 786478, metadata !567, metadata !"_ZTSSt10_Iter_baseIPPdLb0EE", metadata !"_S_base", metadata !"_S_base", metadata !"_ZNSt10_Iter_baseIPPdLb0EE7_S_baseES1_", i32 212, metadata !570, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 212} ; [ DW_TAG_subprogram ] [line 212] [_S_base]
!570 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !571, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!571 = metadata !{metadata !572, metadata !351}
!572 = metadata !{i32 786454, metadata !567, metadata !"_ZTSSt10_Iter_baseIPPdLb0EE", metadata !"iterator_type", i32 211, i64 0, i64 0, i64 0, i32 0, metadata !351} ; [ DW_TAG_typedef ] [iterator_type] [line 211, size 0, align 0, offset 0] [from ]
!573 = metadata !{metadata !574, metadata !575}
!574 = metadata !{i32 786479, null, metadata !"_Iterator", metadata !351, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!575 = metadata !{i32 786480, null, metadata !"_HasBase", metadata !56, i8 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!576 = metadata !{i32 786451, metadata !4, metadata !43, metadata !"__are_same<double *, double *>", i32 111, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, metadata !577, metadata !"_ZTSSt10__are_sameIPdS0_E"} ; [ DW_TAG_structure_type ] [__are_same<double *, double *>] [line 111, size 8, align 8, offset 0] [def] [from ]
!577 = metadata !{metadata !578, metadata !578}
!578 = metadata !{i32 786479, null, metadata !"", metadata !274, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!579 = metadata !{i32 786451, metadata !580, metadata !43, metadata !"__copy_move_backward<false, true, std::random_access_iterator_tag>", i32 565, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, metadata !581, metadata !"_ZTSSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE"} ; [ DW_TAG_structure_type ] [__copy_move_backward<false, true, std::random_access_iterator_tag>] [line 565, size 8, align 8, offset 0] [def] [from ]
!580 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!581 = metadata !{metadata !582, metadata !583, metadata !584}
!582 = metadata !{i32 786480, null, metadata !"", metadata !56, i8 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!583 = metadata !{i32 786480, null, metadata !"", metadata !56, i8 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!584 = metadata !{i32 786479, null, metadata !"", metadata !"_ZTSSt26random_access_iterator_tag", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!585 = metadata !{i32 786451, metadata !567, metadata !43, metadata !"random_access_iterator_tag", i32 103, i64 8, i64 8, i32 0, i32 0, null, metadata !586, i32 0, null, null, metadata !"_ZTSSt26random_access_iterator_tag"} ; [ DW_TAG_structure_type ] [random_access_iterator_tag] [line 103, size 8, align 8, offset 0] [def] [from ]
!586 = metadata !{metadata !587}
!587 = metadata !{i32 786460, null, metadata !"_ZTSSt26random_access_iterator_tag", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt26bidirectional_iterator_tag"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSSt26bidirectional_iterator_tag]
!588 = metadata !{i32 786451, metadata !567, metadata !43, metadata !"bidirectional_iterator_tag", i32 99, i64 8, i64 8, i32 0, i32 0, null, metadata !589, i32 0, null, null, metadata !"_ZTSSt26bidirectional_iterator_tag"} ; [ DW_TAG_structure_type ] [bidirectional_iterator_tag] [line 99, size 8, align 8, offset 0] [def] [from ]
!589 = metadata !{metadata !590}
!590 = metadata !{i32 786460, null, metadata !"_ZTSSt26bidirectional_iterator_tag", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt20forward_iterator_tag"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSSt20forward_iterator_tag]
!591 = metadata !{i32 786451, metadata !567, metadata !43, metadata !"forward_iterator_tag", i32 95, i64 8, i64 8, i32 0, i32 0, null, metadata !592, i32 0, null, null, metadata !"_ZTSSt20forward_iterator_tag"} ; [ DW_TAG_structure_type ] [forward_iterator_tag] [line 95, size 8, align 8, offset 0] [def] [from ]
!592 = metadata !{metadata !593}
!593 = metadata !{i32 786460, null, metadata !"_ZTSSt20forward_iterator_tag", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt18input_iterator_tag"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSSt18input_iterator_tag]
!594 = metadata !{i32 786451, metadata !567, metadata !43, metadata !"input_iterator_tag", i32 89, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, null, metadata !"_ZTSSt18input_iterator_tag"} ; [ DW_TAG_structure_type ] [input_iterator_tag] [line 89, size 8, align 8, offset 0] [def] [from ]
!595 = metadata !{i32 786451, metadata !580, metadata !43, metadata !"__copy_move<false, true, std::random_access_iterator_tag>", i32 365, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, metadata !581, metadata !"_ZTSSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE"} ; [ DW_TAG_structure_type ] [__copy_move<false, true, std::random_access_iterator_tag>] [line 365, size 8, align 8, offset 0] [def] [from ]
!596 = metadata !{i32 786451, metadata !597, metadata !43, metadata !"__uninitialized_copy<true>", i32 87, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, metadata !598, metadata !"_ZTSSt20__uninitialized_copyILb1EE"} ; [ DW_TAG_structure_type ] [__uninitialized_copy<true>] [line 87, size 8, align 8, offset 0] [def] [from ]
!597 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_uninitialized.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!598 = metadata !{metadata !599}
!599 = metadata !{i32 786480, null, metadata !"_TrivialValueTypes", metadata !56, i8 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!600 = metadata !{i32 786451, metadata !567, metadata !43, metadata !"_Iter_base<std::_Deque_iterator<double, const double &, const double *>, false>", i32 209, i64 8, i64 8, i32 0, i32 0, null, metadata !601, i32 0, null, metadata !606, metadata !"_ZTSSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE"} ; [ DW_TAG_structure_type ] [_Iter_base<std::_Deque_iterator<double, const double &, const double *>, false>] [line 209, size 8, align 8, offset 0] [def] [from ]
!601 = metadata !{metadata !602}
!602 = metadata !{i32 786478, metadata !567, metadata !"_ZTSSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE", metadata !"_S_base", metadata !"_S_base", metadata !"_ZNSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE7_S_baseES4_", i32 212, metadata !603, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 212} ; [ DW_TAG_subprogram ] [line 212] [_S_base]
!603 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !604, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!604 = metadata !{metadata !605, metadata !460}
!605 = metadata !{i32 786454, metadata !567, metadata !"_ZTSSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE", metadata !"iterator_type", i32 211, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E"} ; [ DW_TAG_typedef ] [iterator_type] [line 211, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRKdPS0_E]
!606 = metadata !{metadata !607, metadata !575}
!607 = metadata !{i32 786479, null, metadata !"_Iterator", metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!608 = metadata !{i32 786451, metadata !567, metadata !43, metadata !"_Iter_base<std::_Deque_iterator<double, double &, double *>, false>", i32 209, i64 8, i64 8, i32 0, i32 0, null, metadata !609, i32 0, null, metadata !614, metadata !"_ZTSSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE"} ; [ DW_TAG_structure_type ] [_Iter_base<std::_Deque_iterator<double, double &, double *>, false>] [line 209, size 8, align 8, offset 0] [def] [from ]
!609 = metadata !{metadata !610}
!610 = metadata !{i32 786478, metadata !567, metadata !"_ZTSSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE", metadata !"_S_base", metadata !"_S_base", metadata !"_ZNSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE7_S_baseES3_", i32 212, metadata !611, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 212} ; [ DW_TAG_subprogram ] [line 212] [_S_base]
!611 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !612, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!612 = metadata !{metadata !613, metadata !378}
!613 = metadata !{i32 786454, metadata !567, metadata !"_ZTSSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE", metadata !"iterator_type", i32 211, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_typedef ] [iterator_type] [line 211, size 0, align 0, offset 0] [from _ZTSSt15_Deque_iteratorIdRdPdE]
!614 = metadata !{metadata !615, metadata !575}
!615 = metadata !{i32 786479, null, metadata !"_Iterator", metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!616 = metadata !{i32 786451, metadata !580, metadata !43, metadata !"__copy_move<false, false, std::random_access_iterator_tag>", i32 327, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, metadata !617, metadata !"_ZTSSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE"} ; [ DW_TAG_structure_type ] [__copy_move<false, false, std::random_access_iterator_tag>] [line 327, size 8, align 8, offset 0] [def] [from ]
!617 = metadata !{metadata !582, metadata !582, metadata !584}
!618 = metadata !{i32 786451, metadata !567, metadata !43, metadata !"iterator_traits<std::_Deque_iterator<double, const double &, const double *> >", i32 163, i64 8, i64 8, i32 0, i32 0, null, metadata !375, i32 0, null, metadata !619, metadata !"_ZTSSt15iterator_traitsISt15_Deque_iteratorIdRKdPS1_EE"} ; [ DW_TAG_structure_type ] [iterator_traits<std::_Deque_iterator<double, const double &, const double *> >] [line 163, size 8, align 8, offset 0] [def] [from ]
!619 = metadata !{metadata !607}
!620 = metadata !{metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !644, metadata !645, metadata !646, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676, metadata !677, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !693, metadata !699, metadata !701, metadata !702, metadata !705, metadata !706, metadata !707, metadata !711, metadata !715, metadata !717, metadata !718, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !738, metadata !742, metadata !744, metadata !748, metadata !749, metadata !750, metadata !752, metadata !754, metadata !755, metadata !756, metadata !757, metadata !759, metadata !760, metadata !761, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780}
!621 = metadata !{i32 786478, metadata !1, metadata !"_ZTS7MoveAvg", metadata !"MoveAvg", metadata !"MoveAvg", metadata !"_ZN7MoveAvgC2Ev", i32 22, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %class.MoveAvg* (%class.MoveAvg*)* @_ZN7MoveAvgC2Ev, null, metadata !22, metadata !375, i32 23} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 23] [MoveAvg]
!622 = metadata !{i32 786478, metadata !1, metadata !"_ZTS7MoveAvg", metadata !"MoveAvg", metadata !"MoveAvg", metadata !"_ZN7MoveAvgC2Ej", i32 26, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %class.MoveAvg* (%class.MoveAvg*, i32)* @_ZN7MoveAvgC2Ej, null, metadata !26, metadata !375, i32 27} ; [ DW_TAG_subprogram ] [line 26] [def] [scope 27] [MoveAvg]
!623 = metadata !{i32 786478, metadata !1, metadata !"_ZTS7MoveAvg", metadata !"addSample", metadata !"addSample", metadata !"_ZN7MoveAvg9addSampleEd", i32 30, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.MoveAvg*, double)* @_ZN7MoveAvg9addSampleEd, null, metadata !29, metadata !375, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [addSample]
!624 = metadata !{i32 786478, metadata !1, metadata !"_ZTS7MoveAvg", metadata !"getLastSample", metadata !"getLastSample", metadata !"_ZNK7MoveAvg13getLastSampleEv", i32 41, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%class.MoveAvg*)* @_ZNK7MoveAvg13getLastSampleEv, null, metadata !32, metadata !375, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [getLastSample]
!625 = metadata !{i32 786478, metadata !1, metadata !"_ZTS7MoveAvg", metadata !"getCurrentMean", metadata !"getCurrentMean", metadata !"_ZNK7MoveAvg14getCurrentMeanEv", i32 50, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%class.MoveAvg*)* @_ZNK7MoveAvg14getCurrentMeanEv, null, metadata !37, metadata !375, i32 51} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 51] [getCurrentMean]
!626 = metadata !{i32 786478, metadata !1, metadata !"_ZTS7MoveAvg", metadata !"getSampleNB", metadata !"getSampleNB", metadata !"_ZNK7MoveAvg11getSampleNBEv", i32 58, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%class.MoveAvg*)* @_ZNK7MoveAvg11getSampleNBEv, null, metadata !38, metadata !375, i32 59} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 59] [getSampleNB]
!627 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"back", metadata !"back", metadata !"_ZNKSt5queueIdSt5dequeIdSaIdEEE4backEv", i32 199, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%"class.std::queue"*)* @_ZNKSt5queueIdSt5dequeIdSaIdEEE4backEv, null, metadata !82, metadata !375, i32 200} ; [ DW_TAG_subprogram ] [line 199] [def] [scope 200] [back]
!628 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"back", metadata !"back", metadata !"_ZNKSt5dequeIdSaIdEE4backEv", i32 1349, metadata !180, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE4backEv, null, metadata !183, metadata !375, i32 1350} ; [ DW_TAG_subprogram ] [line 1349] [def] [scope 1350] [back]
!629 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator*", metadata !"operator*", metadata !"_ZNKSt15_Deque_iteratorIdRKdPS0_EdeEv", i32 144, metadata !487, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%"struct.std::_Deque_iterator.0"*)* @_ZNKSt15_Deque_iteratorIdRKdPS0_EdeEv, null, metadata !486, metadata !375, i32 145} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 145] [operator*]
!630 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator--", metadata !"operator--", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EmmEv", i32 172, metadata !495, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Deque_iterator.0"* (%"struct.std::_Deque_iterator.0"*)* @_ZNSt15_Deque_iteratorIdRKdPS0_EmmEv, null, metadata !502, metadata !375, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [operator--]
!631 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_M_set_node", metadata !"_M_set_node", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_E11_M_set_nodeEPPd", i32 238, metadata !516, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator.0"*, double**)* @_ZNSt15_Deque_iteratorIdRKdPS0_E11_M_set_nodeEPPd, null, metadata !515, metadata !375, i32 239} ; [ DW_TAG_subprogram ] [line 238] [def] [scope 239] [_M_set_node]
!632 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_S_buffer_size", metadata !"_S_buffer_size", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_E14_S_buffer_sizeEv", i32 111, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @_ZNSt15_Deque_iteratorIdRKdPS0_E14_S_buffer_sizeEv, null, metadata !467, metadata !375, i32 112} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 112] [_S_buffer_size]
!633 = metadata !{i32 786478, metadata !8, metadata !43, metadata !"__deque_buf_size", metadata !"__deque_buf_size", metadata !"_ZSt16__deque_buf_sizej", i32 89, metadata !634, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @_ZSt16__deque_buf_sizej, null, null, metadata !375, i32 90} ; [ DW_TAG_subprogram ] [line 89] [def] [scope 90] [__deque_buf_size]
!634 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !635, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!635 = metadata !{metadata !64, metadata !64}
!636 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"end", metadata !"end", metadata !"_ZNKSt5dequeIdSaIdEE3endEv", i32 1068, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator.0"*, %"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE3endEv, null, metadata !144, metadata !375, i32 1069} ; [ DW_TAG_subprogram ] [line 1068] [def] [scope 1069] [end]
!637 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EC2ERKS_IdRdPdE", i32 135, metadata !476, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Deque_iterator.0"* (%"struct.std::_Deque_iterator.0"*, %"struct.std::_Deque_iterator"*)* @_ZNSt15_Deque_iteratorIdRKdPS0_EC2ERKS_IdRdPdE, null, metadata !475, metadata !375, i32 137} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 137] [_Deque_iterator]
!638 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"empty", metadata !"empty", metadata !"_ZNKSt5queueIdSt5dequeIdSaIdEEE5emptyEv", i32 153, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.std::queue"*)* @_ZNKSt5queueIdSt5dequeIdSaIdEEE5emptyEv, null, metadata !53, metadata !375, i32 154} ; [ DW_TAG_subprogram ] [line 153] [def] [scope 154] [empty]
!639 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"empty", metadata !"empty", metadata !"_ZNKSt5dequeIdSaIdEE5emptyEv", i32 1233, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE5emptyEv, null, metadata !162, metadata !375, i32 1234} ; [ DW_TAG_subprogram ] [line 1233] [def] [scope 1234] [empty]
!640 = metadata !{i32 786478, metadata !8, metadata !43, metadata !"operator==<double, double &, double *>", metadata !"operator==<double, double &, double *>", metadata !"_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_", i32 251, metadata !641, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_, metadata !439, null, metadata !375, i32 253} ; [ DW_TAG_subprogram ] [line 251] [def] [scope 253] [operator==<double, double &, double *>]
!641 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!642 = metadata !{metadata !56, metadata !643, metadata !643}
!643 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !403} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!644 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"pop", metadata !"pop", metadata !"_ZNSt5queueIdSt5dequeIdSaIdEEE3popEv", i32 241, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::queue"*)* @_ZNSt5queueIdSt5dequeIdSaIdEEE3popEv, null, metadata !90, metadata !375, i32 242} ; [ DW_TAG_subprogram ] [line 241] [def] [scope 242] [pop]
!645 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"pop_front", metadata !"pop_front", metadata !"_ZNSt5dequeIdSaIdEE9pop_frontEv", i32 1429, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE9pop_frontEv, null, metadata !188, metadata !375, i32 1430} ; [ DW_TAG_subprogram ] [line 1429] [def] [scope 1430] [pop_front]
!646 = metadata !{i32 786478, metadata !647, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_pop_front_aux", metadata !"_M_pop_front_aux", metadata !"_ZNSt5dequeIdSaIdEE16_M_pop_front_auxEv", i32 525, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE16_M_pop_front_auxEv, null, metadata !211, metadata !375, i32 526} ; [ DW_TAG_subprogram ] [line 525] [def] [scope 526] [_M_pop_front_aux]
!647 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!648 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_M_set_node", metadata !"_M_set_node", metadata !"_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_", i32 238, metadata !437, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, double**)* @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_, null, metadata !436, metadata !375, i32 239} ; [ DW_TAG_subprogram ] [line 238] [def] [scope 239] [_M_set_node]
!649 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_S_buffer_size", metadata !"_S_buffer_size", metadata !"_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv", i32 111, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv, null, metadata !385, metadata !375, i32 112} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 112] [_S_buffer_size]
!650 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_deallocate_node", metadata !"_M_deallocate_node", metadata !"_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd", i32 542, metadata !346, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::_Deque_base"*, double*)* @_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd, null, metadata !345, metadata !375, i32 543} ; [ DW_TAG_subprogram ] [line 542] [def] [scope 543] [_M_deallocate_node]
!651 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj", i32 109, metadata !290, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.__gnu_cxx::new_allocator"*, double*, i32)* @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj, null, metadata !289, metadata !375, i32 110} ; [ DW_TAG_subprogram ] [line 109] [def] [scope 110] [deallocate]
!652 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"destroy", metadata !"destroy", metadata !"_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd", i32 133, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.__gnu_cxx::new_allocator"*, double*)* @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd, null, metadata !298, metadata !375, i32 133} ; [ DW_TAG_subprogram ] [line 133] [def] [destroy]
!653 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"front", metadata !"front", metadata !"_ZNSt5queueIdSt5dequeIdSaIdEEE5frontEv", i32 166, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%"class.std::queue"*)* @_ZNSt5queueIdSt5dequeIdSaIdEEE5frontEv, null, metadata !65, metadata !375, i32 167} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 167] [front]
!654 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"front", metadata !"front", metadata !"_ZNSt5dequeIdSaIdEE5frontEv", i32 1321, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE5frontEv, null, metadata !176, metadata !375, i32 1322} ; [ DW_TAG_subprogram ] [line 1321] [def] [scope 1322] [front]
!655 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator*", metadata !"operator*", metadata !"_ZNKSt15_Deque_iteratorIdRdPdEdeEv", i32 144, metadata !405, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%"struct.std::_Deque_iterator"*)* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv, null, metadata !404, metadata !375, i32 145} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 145] [operator*]
!656 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"begin", metadata !"begin", metadata !"_ZNSt5dequeIdSaIdEE5beginEv", i32 1042, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, %"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE5beginEv, null, metadata !133, metadata !375, i32 1043} ; [ DW_TAG_subprogram ] [line 1042] [def] [scope 1043] [begin]
!657 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_", i32 135, metadata !394, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Deque_iterator"* (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_, null, metadata !393, metadata !375, i32 137} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 137] [_Deque_iterator]
!658 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"size", metadata !"size", metadata !"_ZNKSt5queueIdSt5dequeIdSaIdEEE4sizeEv", i32 158, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.std::queue"*)* @_ZNKSt5queueIdSt5dequeIdSaIdEEE4sizeEv, null, metadata !59, metadata !375, i32 159} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 159] [size]
!659 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"size", metadata !"size", metadata !"_ZNKSt5dequeIdSaIdEE4sizeEv", i32 1147, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE4sizeEv, null, metadata !155, metadata !375, i32 1148} ; [ DW_TAG_subprogram ] [line 1147] [def] [scope 1148] [size]
!660 = metadata !{i32 786478, metadata !8, metadata !43, metadata !"operator-<double, double &, double *>", metadata !"operator-<double, double &, double *>", metadata !"_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_", i32 335, metadata !661, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_, metadata !439, null, metadata !375, i32 337} ; [ DW_TAG_subprogram ] [line 335] [def] [scope 337] [operator-<double, double &, double *>]
!661 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !662, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!662 = metadata !{metadata !663, metadata !643, metadata !643}
!663 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"difference_type", i32 119, i64 0, i64 0, i64 0, i32 0, metadata !427} ; [ DW_TAG_typedef ] [difference_type] [line 119, size 0, align 0, offset 0] [from ptrdiff_t]
!664 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"push", metadata !"push", metadata !"_ZNSt5queueIdSt5dequeIdSaIdEEE4pushERKd", i32 215, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::queue"*, double*)* @_ZNSt5queueIdSt5dequeIdSaIdEEE4pushERKd, null, metadata !83, metadata !375, i32 216} ; [ DW_TAG_subprogram ] [line 215] [def] [scope 216] [push]
!665 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"push_back", metadata !"push_back", metadata !"_ZNSt5dequeIdSaIdEE9push_backERKd", i32 1398, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::deque"*, double*)* @_ZNSt5dequeIdSaIdEE9push_backERKd, null, metadata !187, metadata !375, i32 1399} ; [ DW_TAG_subprogram ] [line 1398] [def] [scope 1399] [push_back]
!666 = metadata !{i32 786478, metadata !647, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_push_back_aux", metadata !"_M_push_back_aux", metadata !"_ZNSt5dequeIdSaIdEE16_M_push_back_auxERKd", i32 448, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::deque"*, double*)* @_ZNSt5dequeIdSaIdEE16_M_push_back_auxERKd, null, metadata !208, metadata !375, i32 450} ; [ DW_TAG_subprogram ] [line 448] [def] [scope 450] [_M_push_back_aux]
!667 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_allocate_node", metadata !"_M_allocate_node", metadata !"_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv", i32 536, metadata !343, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%"class.std::_Deque_base"*)* @_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv, null, metadata !342, metadata !375, i32 537} ; [ DW_TAG_subprogram ] [line 536] [def] [scope 537] [_M_allocate_node]
!668 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"allocate", metadata !"allocate", metadata !"_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv", i32 99, metadata !284, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%"class.__gnu_cxx::new_allocator"*, i32, i8*)* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv, null, metadata !283, metadata !375, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [allocate]
!669 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"max_size", metadata !"max_size", metadata !"_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv", i32 113, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.__gnu_cxx::new_allocator"*)* @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, null, metadata !292, metadata !375, i32 114} ; [ DW_TAG_subprogram ] [line 113] [def] [scope 114] [max_size]
!670 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_reserve_map_at_back", metadata !"_M_reserve_map_at_back", metadata !"_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEj", i32 1996, metadata !234, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::deque"*, i32)* @_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEj, null, metadata !237, metadata !375, i32 1997} ; [ DW_TAG_subprogram ] [line 1996] [def] [scope 1997] [_M_reserve_map_at_back]
!671 = metadata !{i32 786478, metadata !647, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_reallocate_map", metadata !"_M_reallocate_map", metadata !"_ZNSt5dequeIdSaIdEE17_M_reallocate_mapEjb", i32 879, metadata !240, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::deque"*, i32, i1)* @_ZNSt5dequeIdSaIdEE17_M_reallocate_mapEjb, null, metadata !239, metadata !375, i32 880} ; [ DW_TAG_subprogram ] [line 879] [def] [scope 880] [_M_reallocate_map]
!672 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_deallocate_map", metadata !"_M_deallocate_map", metadata !"_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdj", i32 552, metadata !353, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::_Deque_base"*, double**, i32)* @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdj, null, metadata !352, metadata !375, i32 553} ; [ DW_TAG_subprogram ] [line 552] [def] [scope 553] [_M_deallocate_map]
!673 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIPdE", metadata !"~allocator", metadata !"~allocator", metadata !"_ZNSaIPdED2Ev", i32 121, metadata !446, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator.1"* (%"class.std::allocator.1"*)* @_ZNSaIPdED2Ev, null, metadata !454, metadata !375, i32 121} ; [ DW_TAG_subprogram ] [line 121] [def] [~allocator]
!674 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"~new_allocator", metadata !"~new_allocator", metadata !"_ZN9__gnu_cxx13new_allocatorIPdED2Ev", i32 86, metadata !527, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.__gnu_cxx::new_allocator.2"* (%"class.__gnu_cxx::new_allocator.2"*)* @_ZN9__gnu_cxx13new_allocatorIPdED2Ev, null, metadata !535, metadata !375, i32 86} ; [ DW_TAG_subprogram ] [line 86] [def] [~new_allocator]
!675 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_j", i32 109, metadata !555, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.__gnu_cxx::new_allocator.2"*, double**, i32)* @_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_j, null, metadata !554, metadata !375, i32 110} ; [ DW_TAG_subprogram ] [line 109] [def] [scope 110] [deallocate]
!676 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_get_map_allocator", metadata !"_M_get_map_allocator", metadata !"_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv", i32 532, metadata !338, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::allocator.1"*, %"class.std::_Deque_base"*)* @_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv, null, metadata !337, metadata !375, i32 533} ; [ DW_TAG_subprogram ] [line 532] [def] [scope 533] [_M_get_map_allocator]
!677 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIPdE", metadata !"allocator<double>", metadata !"allocator<double>", metadata !"_ZNSaIPdEC2IdEERKSaIT_E", i32 119, metadata !678, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator.1"* (%"class.std::allocator.1"*, %"class.std::allocator"*)* @_ZNSaIPdEC2IdEERKSaIT_E, metadata !376, metadata !680, metadata !375, i32 119} ; [ DW_TAG_subprogram ] [line 119] [def] [allocator<double>]
!678 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !679, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!679 = metadata !{null, metadata !448, metadata !221}
!680 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIPdE", metadata !"allocator<double>", metadata !"allocator<double>", metadata !"", i32 119, metadata !678, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !376, i32 0, null, i32 119} ; [ DW_TAG_subprogram ] [line 119] [allocator<double>]
!681 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"_ZN9__gnu_cxx13new_allocatorIPdEC2Ev", i32 79, metadata !527, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.__gnu_cxx::new_allocator.2"* (%"class.__gnu_cxx::new_allocator.2"*)* @_ZN9__gnu_cxx13new_allocatorIPdEC2Ev, null, metadata !526, metadata !375, i32 79} ; [ DW_TAG_subprogram ] [line 79] [def] [new_allocator]
!682 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_get_Tp_allocator", metadata !"_M_get_Tp_allocator", metadata !"_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv", i32 528, metadata !333, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator"* (%"class.std::_Deque_base"*)* @_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv, null, metadata !332, metadata !375, i32 529} ; [ DW_TAG_subprogram ] [line 528] [def] [scope 529] [_M_get_Tp_allocator]
!683 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_allocate_map", metadata !"_M_allocate_map", metadata !"_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEj", i32 548, metadata !349, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (%"class.std::_Deque_base"*, i32)* @_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEj, null, metadata !348, metadata !375, i32 549} ; [ DW_TAG_subprogram ] [line 548] [def] [scope 549] [_M_allocate_map]
!684 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"allocate", metadata !"allocate", metadata !"_ZN9__gnu_cxx13new_allocatorIPdE8allocateEjPKv", i32 99, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (%"class.__gnu_cxx::new_allocator.2"*, i32, i8*)* @_ZN9__gnu_cxx13new_allocatorIPdE8allocateEjPKv, null, metadata !551, metadata !375, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [allocate]
!685 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE", metadata !"max_size", metadata !"max_size", metadata !"_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv", i32 113, metadata !558, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.__gnu_cxx::new_allocator.2"*)* @_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv, null, metadata !557, metadata !375, i32 114} ; [ DW_TAG_subprogram ] [line 113] [def] [scope 114] [max_size]
!686 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"max<unsigned int>", metadata !"max<unsigned int>", metadata !"_ZSt3maxIjERKT_S2_S2_", i32 217, metadata !687, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* (i32*, i32*)* @_ZSt3maxIjERKT_S2_S2_, metadata !691, null, metadata !375, i32 218} ; [ DW_TAG_subprogram ] [line 217] [def] [scope 218] [max<unsigned int>]
!687 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !688, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!688 = metadata !{metadata !689, metadata !689, metadata !689}
!689 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !690} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!690 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned int]
!691 = metadata !{metadata !692}
!692 = metadata !{i32 786479, null, metadata !"_Tp", metadata !19, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!693 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"copy_backward<double **, double **>", metadata !"copy_backward<double **, double **>", metadata !"_ZSt13copy_backwardIPPdS1_ET0_T_S3_S2_", i32 630, metadata !694, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**, double**, double**)* @_ZSt13copy_backwardIPPdS1_ET0_T_S3_S2_, metadata !696, null, metadata !375, i32 631} ; [ DW_TAG_subprogram ] [line 630] [def] [scope 631] [copy_backward<double **, double **>]
!694 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !695, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!695 = metadata !{metadata !351, metadata !351, metadata !351, metadata !351}
!696 = metadata !{metadata !697, metadata !698}
!697 = metadata !{i32 786479, null, metadata !"_BI1", metadata !351, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!698 = metadata !{i32 786479, null, metadata !"_BI2", metadata !351, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!699 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__miter_base<double **>", metadata !"__miter_base<double **>", metadata !"_ZSt12__miter_baseIPPdENSt11_Miter_baseIT_E13iterator_typeES3_", i32 289, metadata !570, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**)* @_ZSt12__miter_baseIPPdENSt11_Miter_baseIT_E13iterator_typeES3_, metadata !700, null, metadata !375, i32 290} ; [ DW_TAG_subprogram ] [line 289] [def] [scope 290] [__miter_base<double **>]
!700 = metadata !{metadata !574}
!701 = metadata !{i32 786478, metadata !567, metadata !"_ZTSSt10_Iter_baseIPPdLb0EE", metadata !"_S_base", metadata !"_S_base", metadata !"_ZNSt10_Iter_baseIPPdLb0EE7_S_baseES1_", i32 212, metadata !570, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**)* @_ZNSt10_Iter_baseIPPdLb0EE7_S_baseES1_, null, metadata !569, metadata !375, i32 213} ; [ DW_TAG_subprogram ] [line 212] [def] [scope 213] [_S_base]
!702 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__copy_move_backward_a2<false, double **, double **>", metadata !"__copy_move_backward_a2<false, double **, double **>", metadata !"_ZSt23__copy_move_backward_a2ILb0EPPdS1_ET1_T0_S3_S2_", i32 603, metadata !694, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**, double**, double**)* @_ZSt23__copy_move_backward_a2ILb0EPPdS1_ET1_T0_S3_S2_, metadata !703, null, metadata !375, i32 604} ; [ DW_TAG_subprogram ] [line 603] [def] [scope 604] [__copy_move_backward_a2<false, double **, double **>]
!703 = metadata !{metadata !704, metadata !697, metadata !698}
!704 = metadata !{i32 786480, null, metadata !"_IsMove", metadata !56, i8 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!705 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__niter_base<double **>", metadata !"__niter_base<double **>", metadata !"_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_", i32 278, metadata !570, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**)* @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_, metadata !700, null, metadata !375, i32 279} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 279] [__niter_base<double **>]
!706 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__copy_move_backward_a<false, double **, double **>", metadata !"__copy_move_backward_a<false, double **, double **>", metadata !"_ZSt22__copy_move_backward_aILb0EPPdS1_ET1_T0_S3_S2_", i32 585, metadata !694, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**, double**, double**)* @_ZSt22__copy_move_backward_aILb0EPPdS1_ET1_T0_S3_S2_, metadata !703, null, metadata !375, i32 586} ; [ DW_TAG_subprogram ] [line 585] [def] [scope 586] [__copy_move_backward_a<false, double **, double **>]
!707 = metadata !{i32 786478, metadata !580, metadata !"_ZTSSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE", metadata !"__copy_move_b<double *>", metadata !"__copy_move_b<double *>", metadata !"_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPdEEPT_PKS4_S7_S5_", i32 569, metadata !708, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**, double**, double**)* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPdEEPT_PKS4_S7_S5_, metadata !455, metadata !710, metadata !375, i32 570} ; [ DW_TAG_subprogram ] [line 569] [def] [scope 570] [__copy_move_b<double *>]
!708 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !709, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!709 = metadata !{metadata !351, metadata !547, metadata !547, metadata !351}
!710 = metadata !{i32 786478, metadata !580, metadata !"_ZTSSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE", metadata !"__copy_move_b<double *>", metadata !"__copy_move_b<double *>", metadata !"_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPdEEPT_PKS4_S7_S5_", i32 569, metadata !708, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !455, i32 0, null, i32 569} ; [ DW_TAG_subprogram ] [line 569] [__copy_move_b<double *>]
!711 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"copy<double **, double **>", metadata !"copy<double **, double **>", metadata !"_ZSt4copyIPPdS1_ET0_T_S3_S2_", i32 456, metadata !694, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**, double**, double**)* @_ZSt4copyIPPdS1_ET0_T_S3_S2_, metadata !712, null, metadata !375, i32 457} ; [ DW_TAG_subprogram ] [line 456] [def] [scope 457] [copy<double **, double **>]
!712 = metadata !{metadata !713, metadata !714}
!713 = metadata !{i32 786479, null, metadata !"_II", metadata !351, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!714 = metadata !{i32 786479, null, metadata !"_OI", metadata !351, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!715 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__copy_move_a2<false, double **, double **>", metadata !"__copy_move_a2<false, double **, double **>", metadata !"_ZSt14__copy_move_a2ILb0EPPdS1_ET1_T0_S3_S2_", i32 430, metadata !694, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**, double**, double**)* @_ZSt14__copy_move_a2ILb0EPPdS1_ET1_T0_S3_S2_, metadata !716, null, metadata !375, i32 431} ; [ DW_TAG_subprogram ] [line 430] [def] [scope 431] [__copy_move_a2<false, double **, double **>]
!716 = metadata !{metadata !704, metadata !713, metadata !714}
!717 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__copy_move_a<false, double **, double **>", metadata !"__copy_move_a<false, double **, double **>", metadata !"_ZSt13__copy_move_aILb0EPPdS1_ET1_T0_S3_S2_", i32 385, metadata !694, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**, double**, double**)* @_ZSt13__copy_move_aILb0EPPdS1_ET1_T0_S3_S2_, metadata !716, null, metadata !375, i32 386} ; [ DW_TAG_subprogram ] [line 385] [def] [scope 386] [__copy_move_a<false, double **, double **>]
!718 = metadata !{i32 786478, metadata !580, metadata !"_ZTSSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE", metadata !"__copy_m<double *>", metadata !"__copy_m<double *>", metadata !"_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPdEEPT_PKS4_S7_S5_", i32 369, metadata !708, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double** (double**, double**, double**)* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPdEEPT_PKS4_S7_S5_, metadata !455, metadata !719, metadata !375, i32 370} ; [ DW_TAG_subprogram ] [line 369] [def] [scope 370] [__copy_m<double *>]
!719 = metadata !{i32 786478, metadata !580, metadata !"_ZTSSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE", metadata !"__copy_m<double *>", metadata !"__copy_m<double *>", metadata !"_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPdEEPT_PKS4_S7_S5_", i32 369, metadata !708, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !455, i32 0, null, i32 369} ; [ DW_TAG_subprogram ] [line 369] [__copy_m<double *>]
!720 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"construct", metadata !"construct", metadata !"_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd", i32 129, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.__gnu_cxx::new_allocator"*, double*, double*)* @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd, null, metadata !295, metadata !375, i32 130} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 130] [construct]
!721 = metadata !{i32 786478, metadata !42, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE", metadata !"queue", metadata !"queue", metadata !"_ZNSt5queueIdSt5dequeIdSaIdEEEC2ERKS2_", i32 137, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::queue"* (%"class.std::queue"*, %"class.std::deque"*)* @_ZNSt5queueIdSt5dequeIdSaIdEEEC2ERKS2_, null, metadata !47, metadata !375, i32 138} ; [ DW_TAG_subprogram ] [line 137] [def] [scope 138] [queue]
!722 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"deque", metadata !"deque", metadata !"_ZNSt5dequeIdSaIdEEC2ERKS1_", i32 846, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::deque"* (%"class.std::deque"*, %"class.std::deque"*)* @_ZNSt5dequeIdSaIdEEC2ERKS1_, null, metadata !118, metadata !375, i32 848} ; [ DW_TAG_subprogram ] [line 846] [def] [scope 848] [deque]
!723 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"~_Deque_base", metadata !"~_Deque_base", metadata !"_ZNSt11_Deque_baseIdSaIdEED2Ev", i32 566, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::_Deque_base"* (%"class.std::_Deque_base"*)* @_ZNSt11_Deque_baseIdSaIdEED2Ev, null, metadata !325, metadata !375, i32 567} ; [ DW_TAG_subprogram ] [line 566] [def] [scope 567] [~_Deque_base]
!724 = metadata !{i32 786478, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"~_Deque_impl", metadata !"~_Deque_impl", metadata !"_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev", i32 497, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 320, i1 false, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* (%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*)* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev, null, metadata !725, metadata !375, i32 497} ; [ DW_TAG_subprogram ] [line 497] [def] [~_Deque_impl]
!725 = metadata !{i32 786478, null, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"~_Deque_impl", metadata !"~_Deque_impl", metadata !"", i32 0, metadata !368, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, null, i32 0} ; [ DW_TAG_subprogram ] [line 0] [~_Deque_impl]
!726 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIdE", metadata !"~allocator", metadata !"~allocator", metadata !"_ZNSaIdED2Ev", i32 121, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator"* (%"class.std::allocator"*)* @_ZNSaIdED2Ev, null, metadata !254, metadata !375, i32 121} ; [ DW_TAG_subprogram ] [line 121] [def] [~allocator]
!727 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"~new_allocator", metadata !"~new_allocator", metadata !"_ZN9__gnu_cxx13new_allocatorIdED2Ev", i32 86, metadata !261, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIdED2Ev, null, metadata !269, metadata !375, i32 86} ; [ DW_TAG_subprogram ] [line 86] [def] [~new_allocator]
!728 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_destroy_nodes", metadata !"_M_destroy_nodes", metadata !"_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_", i32 644, metadata !357, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::_Deque_base"*, double**, double**)* @_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_, null, metadata !359, metadata !375, i32 645} ; [ DW_TAG_subprogram ] [line 644] [def] [scope 645] [_M_destroy_nodes]
!729 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_get_Tp_allocator", metadata !"_M_get_Tp_allocator", metadata !"_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv", i32 524, metadata !327, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator"* (%"class.std::_Deque_base"*)* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv, null, metadata !326, metadata !375, i32 525} ; [ DW_TAG_subprogram ] [line 524] [def] [scope 525] [_M_get_Tp_allocator]
!730 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"begin", metadata !"begin", metadata !"_ZNKSt5dequeIdSaIdEE5beginEv", i32 1050, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator.0"*, %"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE5beginEv, null, metadata !138, metadata !375, i32 1051} ; [ DW_TAG_subprogram ] [line 1050] [def] [scope 1051] [begin]
!731 = metadata !{i32 786478, metadata !597, metadata !43, metadata !"__uninitialized_copy_a<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *>, double>", metadata !"__uninitialized_copy_a<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *>, double>", metadata !"_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEdET0_T_S9_S8_RSaIT1_E", i32 276, metadata !732, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*, %"class.std::allocator"*)* @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEdET0_T_S9_S8_RSaIT1_E, metadata !735, null, metadata !375, i32 278} ; [ DW_TAG_subprogram ] [line 276] [def] [scope 278] [__uninitialized_copy_a<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *>, double>]
!732 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !733, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!733 = metadata !{metadata !378, metadata !460, metadata !460, metadata !378, metadata !734}
!734 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIdE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSaIdE]
!735 = metadata !{metadata !736, metadata !737, metadata !94}
!736 = metadata !{i32 786479, null, metadata !"_InputIterator", metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!737 = metadata !{i32 786479, null, metadata !"_ForwardIterator", metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!738 = metadata !{i32 786478, metadata !597, metadata !43, metadata !"uninitialized_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"uninitialized_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"_ZSt18uninitialized_copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_", i32 107, metadata !739, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZSt18uninitialized_copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_, metadata !741, null, metadata !375, i32 109} ; [ DW_TAG_subprogram ] [line 107] [def] [scope 109] [uninitialized_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >]
!739 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !740, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!740 = metadata !{metadata !378, metadata !460, metadata !460, metadata !378}
!741 = metadata !{metadata !736, metadata !737}
!742 = metadata !{i32 786478, metadata !597, metadata !"_ZTSSt20__uninitialized_copyILb1EE", metadata !"__uninit_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"__uninit_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIdRKdPS3_ES2_IdRdPdEEET0_T_SB_SA_", i32 91, metadata !739, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIdRKdPS3_ES2_IdRdPdEEET0_T_SB_SA_, metadata !741, metadata !743, metadata !375, i32 93} ; [ DW_TAG_subprogram ] [line 91] [def] [scope 93] [__uninit_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >]
!743 = metadata !{i32 786478, metadata !597, metadata !"_ZTSSt20__uninitialized_copyILb1EE", metadata !"__uninit_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"__uninit_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIdRKdPS3_ES2_IdRdPdEEET0_T_SB_SA_", i32 91, metadata !739, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !741, i32 0, null, i32 91} ; [ DW_TAG_subprogram ] [line 91] [__uninit_copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >]
!744 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"_ZSt4copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_", i32 456, metadata !739, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZSt4copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_, metadata !745, null, metadata !375, i32 457} ; [ DW_TAG_subprogram ] [line 456] [def] [scope 457] [copy<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >]
!745 = metadata !{metadata !746, metadata !747}
!746 = metadata !{i32 786479, null, metadata !"_II", metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!747 = metadata !{i32 786479, null, metadata !"_OI", metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!748 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__miter_base<std::_Deque_iterator<double, const double &, const double *> >", metadata !"__miter_base<std::_Deque_iterator<double, const double &, const double *> >", metadata !"_ZSt12__miter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_", i32 289, metadata !603, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator.0"*, [4 x i32])* @_ZSt12__miter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_, metadata !619, null, metadata !375, i32 290} ; [ DW_TAG_subprogram ] [line 289] [def] [scope 290] [__miter_base<std::_Deque_iterator<double, const double &, const double *> >]
!749 = metadata !{i32 786478, metadata !567, metadata !"_ZTSSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE", metadata !"_S_base", metadata !"_S_base", metadata !"_ZNSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE7_S_baseES4_", i32 212, metadata !603, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator.0"*, [4 x i32])* @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE7_S_baseES4_, null, metadata !602, metadata !375, i32 213} ; [ DW_TAG_subprogram ] [line 212] [def] [scope 213] [_S_base]
!750 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__copy_move_a2<false, std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"__copy_move_a2<false, std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_", i32 430, metadata !739, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_, metadata !751, null, metadata !375, i32 431} ; [ DW_TAG_subprogram ] [line 430] [def] [scope 431] [__copy_move_a2<false, std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >]
!751 = metadata !{metadata !704, metadata !746, metadata !747}
!752 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__niter_base<std::_Deque_iterator<double, double &, double *> >", metadata !"__niter_base<std::_Deque_iterator<double, double &, double *> >", metadata !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEENSt11_Niter_baseIT_E13iterator_typeES5_", i32 278, metadata !611, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEENSt11_Niter_baseIT_E13iterator_typeES5_, metadata !753, null, metadata !375, i32 279} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 279] [__niter_base<std::_Deque_iterator<double, double &, double *> >]
!753 = metadata !{metadata !615}
!754 = metadata !{i32 786478, metadata !567, metadata !"_ZTSSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE", metadata !"_S_base", metadata !"_S_base", metadata !"_ZNSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE7_S_baseES3_", i32 212, metadata !611, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE7_S_baseES3_, null, metadata !610, metadata !375, i32 213} ; [ DW_TAG_subprogram ] [line 212] [def] [scope 213] [_S_base]
!755 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__niter_base<std::_Deque_iterator<double, const double &, const double *> >", metadata !"__niter_base<std::_Deque_iterator<double, const double &, const double *> >", metadata !"_ZSt12__niter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_", i32 278, metadata !603, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator.0"*, [4 x i32])* @_ZSt12__niter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_, metadata !619, null, metadata !375, i32 279} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 279] [__niter_base<std::_Deque_iterator<double, const double &, const double *> >]
!756 = metadata !{i32 786478, metadata !580, metadata !43, metadata !"__copy_move_a<false, std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"__copy_move_a<false, std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_", i32 385, metadata !739, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_, metadata !751, null, metadata !375, i32 386} ; [ DW_TAG_subprogram ] [line 385] [def] [scope 386] [__copy_move_a<false, std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >]
!757 = metadata !{i32 786478, metadata !580, metadata !"_ZTSSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE", metadata !"__copy_m<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"__copy_m<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIdRKdPS4_ES3_IdRdPdEEET0_T_SC_SB_", i32 331, metadata !739, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIdRKdPS4_ES3_IdRdPdEEET0_T_SC_SB_, metadata !745, metadata !758, metadata !375, i32 332} ; [ DW_TAG_subprogram ] [line 331] [def] [scope 332] [__copy_m<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >]
!758 = metadata !{i32 786478, metadata !580, metadata !"_ZTSSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE", metadata !"__copy_m<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"__copy_m<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >", metadata !"_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIdRKdPS4_ES3_IdRdPdEEET0_T_SC_SB_", i32 331, metadata !739, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !745, i32 0, null, i32 331} ; [ DW_TAG_subprogram ] [line 331] [__copy_m<std::_Deque_iterator<double, const double &, const double *>, std::_Deque_iterator<double, double &, double *> >]
!759 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"operator++", metadata !"operator++", metadata !"_ZNSt15_Deque_iteratorIdRdPdEppEv", i32 152, metadata !413, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Deque_iterator"* (%"struct.std::_Deque_iterator"*)* @_ZNSt15_Deque_iteratorIdRdPdEppEv, null, metadata !412, metadata !375, i32 153} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 153] [operator++]
!760 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"operator++", metadata !"operator++", metadata !"_ZNSt15_Deque_iteratorIdRKdPS0_EppEv", i32 152, metadata !495, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Deque_iterator.0"* (%"struct.std::_Deque_iterator.0"*)* @_ZNSt15_Deque_iteratorIdRKdPS0_EppEv, null, metadata !494, metadata !375, i32 153} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 153] [operator++]
!761 = metadata !{i32 786478, metadata !8, metadata !43, metadata !"operator-<double, const double &, const double *>", metadata !"operator-<double, const double &, const double *>", metadata !"_ZStmiIdRKdPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_", i32 335, metadata !762, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"struct.std::_Deque_iterator.0"*, %"struct.std::_Deque_iterator.0"*)* @_ZStmiIdRKdPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_, metadata !518, null, metadata !375, i32 337} ; [ DW_TAG_subprogram ] [line 335] [def] [scope 337] [operator-<double, const double &, const double *>]
!762 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !763, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!763 = metadata !{metadata !764, metadata !765, metadata !765}
!764 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", metadata !"difference_type", i32 119, i64 0, i64 0, i64 0, i32 0, metadata !427} ; [ DW_TAG_typedef ] [difference_type] [line 119, size 0, align 0, offset 0] [from ptrdiff_t]
!765 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !485} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!766 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Deque_base", metadata !"_Deque_base", metadata !"_ZNSt11_Deque_baseIdSaIdEEC2ERKS0_j", i32 464, metadata !318, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::_Deque_base"* (%"class.std::_Deque_base"*, %"class.std::allocator"*, i32)* @_ZNSt11_Deque_baseIdSaIdEEC2ERKS0_j, null, metadata !317, metadata !375, i32 466} ; [ DW_TAG_subprogram ] [line 464] [def] [scope 466] [_Deque_base]
!767 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_initialize_map", metadata !"_M_initialize_map", metadata !"_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEj", i32 587, metadata !315, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::_Deque_base"*, i32)* @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEj, null, metadata !355, metadata !375, i32 588} ; [ DW_TAG_subprogram ] [line 587] [def] [scope 588] [_M_initialize_map]
!768 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_M_create_nodes", metadata !"_M_create_nodes", metadata !"_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_", i32 626, metadata !357, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::_Deque_base"*, double**, double**)* @_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_, null, metadata !356, metadata !375, i32 627} ; [ DW_TAG_subprogram ] [line 626] [def] [scope 627] [_M_create_nodes]
!769 = metadata !{i32 786478, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"_Deque_impl", metadata !"_Deque_impl", metadata !"_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2ERKS0_", i32 510, metadata !372, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* (%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, %"class.std::allocator"*)* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2ERKS0_, null, metadata !371, metadata !375, i32 513} ; [ DW_TAG_subprogram ] [line 510] [def] [scope 513] [_Deque_impl]
!770 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", metadata !"_Deque_iterator", metadata !"_Deque_iterator", metadata !"_ZNSt15_Deque_iteratorIdRdPdEC2Ev", i32 132, metadata !391, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Deque_iterator"* (%"struct.std::_Deque_iterator"*)* @_ZNSt15_Deque_iteratorIdRdPdEC2Ev, null, metadata !390, metadata !375, i32 133} ; [ DW_TAG_subprogram ] [line 132] [def] [scope 133] [_Deque_iterator]
!771 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIdE", metadata !"allocator", metadata !"allocator", metadata !"_ZNSaIdEC2ERKS_", i32 115, metadata !252, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator"* (%"class.std::allocator"*, %"class.std::allocator"*)* @_ZNSaIdEC2ERKS_, null, metadata !251, metadata !375, i32 116} ; [ DW_TAG_subprogram ] [line 115] [def] [scope 116] [allocator]
!772 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_", i32 81, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, null, metadata !264, metadata !375, i32 81} ; [ DW_TAG_subprogram ] [line 81] [def] [new_allocator]
!773 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"~deque", metadata !"~deque", metadata !"_ZNSt5dequeIdSaIdEED2Ev", i32 922, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::deque"* (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEED2Ev, null, metadata !121, metadata !375, i32 923} ; [ DW_TAG_subprogram ] [line 922] [def] [scope 923] [~deque]
!774 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"end", metadata !"end", metadata !"_ZNSt5dequeIdSaIdEE3endEv", i32 1059, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Deque_iterator"*, %"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE3endEv, null, metadata !143, metadata !375, i32 1060} ; [ DW_TAG_subprogram ] [line 1059] [def] [scope 1060] [end]
!775 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_M_destroy_data", metadata !"_M_destroy_data", metadata !"_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_", i32 1915, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::deque"*, %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*, %"class.std::allocator"*)* @_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_, null, metadata !218, metadata !375, i32 1917} ; [ DW_TAG_subprogram ] [line 1915] [def] [scope 1917] [_M_destroy_data]
!776 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"deque", metadata !"deque", metadata !"_ZNSt5dequeIdSaIdEEC2Ev", i32 788, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::deque"* (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEEC2Ev, null, metadata !102, metadata !375, i32 788} ; [ DW_TAG_subprogram ] [line 788] [def] [deque]
!777 = metadata !{i32 786478, metadata !8, metadata !"_ZTSSt11_Deque_baseIdSaIdEE", metadata !"_Deque_base", metadata !"_Deque_base", metadata !"_ZNSt11_Deque_baseIdSaIdEEC2Ev", i32 456, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::_Deque_base"* (%"class.std::_Deque_base"*)* @_ZNSt11_Deque_baseIdSaIdEEC2Ev, null, metadata !310, metadata !375, i32 458} ; [ DW_TAG_subprogram ] [line 456] [def] [scope 458] [_Deque_base]
!778 = metadata !{i32 786478, metadata !8, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE", metadata !"_Deque_impl", metadata !"_Deque_impl", metadata !"_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2Ev", i32 505, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* (%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*)* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2Ev, null, metadata !367, metadata !375, i32 508} ; [ DW_TAG_subprogram ] [line 505] [def] [scope 508] [_Deque_impl]
!779 = metadata !{i32 786478, metadata !71, metadata !"_ZTSSaIdE", metadata !"allocator", metadata !"allocator", metadata !"_ZNSaIdEC2Ev", i32 113, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator"* (%"class.std::allocator"*)* @_ZNSaIdEC2Ev, null, metadata !247, metadata !375, i32 113} ; [ DW_TAG_subprogram ] [line 113] [def] [allocator]
!780 = metadata !{i32 786478, metadata !257, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"_ZN9__gnu_cxx13new_allocatorIdEC2Ev", i32 79, metadata !261, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIdEC2Ev, null, metadata !260, metadata !375, i32 79} ; [ DW_TAG_subprogram ] [line 79] [def] [new_allocator]
!781 = metadata !{metadata !782, metadata !786, metadata !787}
!782 = metadata !{i32 786490, metadata !783, metadata !785, i32 56} ; [ DW_TAG_imported_module ]
!783 = metadata !{i32 786489, metadata !784, null, metadata !"__gnu_debug", i32 54} ; [ DW_TAG_namespace ] [__gnu_debug] [line 54]
!784 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/debug/debug.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!785 = metadata !{i32 786489, metadata !784, metadata !43, metadata !"__debug", i32 48} ; [ DW_TAG_namespace ] [__debug] [line 48]
!786 = metadata !{i32 786440, metadata !258, metadata !64, i32 44} ; [ DW_TAG_imported_declaration ]
!787 = metadata !{i32 786440, metadata !258, metadata !427, i32 45} ; [ DW_TAG_imported_declaration ]
!788 = metadata !{%class.MoveAvg* (%class.MoveAvg*)* @_ZN7MoveAvgC2Ev}
!789 = metadata !{metadata !"void."}
!790 = metadata !{%"class.std::deque"* (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEEC2Ev}
!791 = metadata !{%"class.std::queue"* (%"class.std::queue"*, %"class.std::deque"*)* @_ZNSt5queueIdSt5dequeIdSaIdEEEC2ERKS2_}
!792 = metadata !{metadata !"void.const class std::deque<double, class std::allocator<double> > &.0"}
!793 = metadata !{%"class.std::deque"* (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEED2Ev}
!794 = metadata !{%class.MoveAvg* (%class.MoveAvg*, i32)* @_ZN7MoveAvgC2Ej}
!795 = metadata !{metadata !"void.u_int32_t.0"}
!796 = metadata !{void (%class.MoveAvg*, double)* @_ZN7MoveAvg9addSampleEd}
!797 = metadata !{metadata !"void.double.0"}
!798 = metadata !{void (%"class.std::queue"*, double*)* @_ZNSt5queueIdSt5dequeIdSaIdEEE4pushERKd}
!799 = metadata !{metadata !"void.const value_type &.0"}
!800 = metadata !{i32 (%"class.std::queue"*)* @_ZNKSt5queueIdSt5dequeIdSaIdEEE4sizeEv}
!801 = metadata !{metadata !"size_type."}
!802 = metadata !{double* (%"class.std::queue"*)* @_ZNSt5queueIdSt5dequeIdSaIdEEE5frontEv}
!803 = metadata !{metadata !"reference."}
!804 = metadata !{void (%"class.std::queue"*)* @_ZNSt5queueIdSt5dequeIdSaIdEEE3popEv}
!805 = metadata !{double (%class.MoveAvg*)* @_ZNK7MoveAvg13getLastSampleEv}
!806 = metadata !{metadata !"double."}
!807 = metadata !{i1 (%"class.std::queue"*)* @_ZNKSt5queueIdSt5dequeIdSaIdEEE5emptyEv}
!808 = metadata !{metadata !"_Bool."}
!809 = metadata !{double* (%"class.std::queue"*)* @_ZNKSt5queueIdSt5dequeIdSaIdEEE4backEv}
!810 = metadata !{metadata !"const_reference."}
!811 = metadata !{double (%class.MoveAvg*)* @_ZNK7MoveAvg14getCurrentMeanEv}
!812 = metadata !{i32 (%class.MoveAvg*)* @_ZNK7MoveAvg11getSampleNBEv}
!813 = metadata !{metadata !"u_int32_t."}
!814 = metadata !{double* (%"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE4backEv}
!815 = metadata !{void (%"struct.std::_Deque_iterator.0"*, %"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE3endEv}
!816 = metadata !{metadata !"const_iterator."}
!817 = metadata !{%"struct.std::_Deque_iterator.0"* (%"struct.std::_Deque_iterator.0"*)* @_ZNSt15_Deque_iteratorIdRKdPS0_EmmEv}
!818 = metadata !{metadata !"_Self ."}
!819 = metadata !{double* (%"struct.std::_Deque_iterator.0"*)* @_ZNKSt15_Deque_iteratorIdRKdPS0_EdeEv}
!820 = metadata !{void (%"struct.std::_Deque_iterator.0"*, double**)* @_ZNSt15_Deque_iteratorIdRKdPS0_E11_M_set_nodeEPPd}
!821 = metadata !{metadata !"void._Map_pointer.1"}
!822 = metadata !{i32 ()* @_ZNSt15_Deque_iteratorIdRKdPS0_E14_S_buffer_sizeEv}
!823 = metadata !{metadata !"size_t."}
!824 = metadata !{i32 (i32)* @_ZSt16__deque_buf_sizej}
!825 = metadata !{metadata !"size_t.size_t.0"}
!826 = metadata !{%"struct.std::_Deque_iterator.0"* (%"struct.std::_Deque_iterator.0"*, %"struct.std::_Deque_iterator"*)* @_ZNSt15_Deque_iteratorIdRKdPS0_EC2ERKS_IdRdPdE}
!827 = metadata !{metadata !"void.const iterator &.0"}
!828 = metadata !{i1 (%"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE5emptyEv}
!829 = metadata !{i1 (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZSteqIdRdPdEbRKSt15_Deque_iteratorIT_T0_T1_ES8_}
!830 = metadata !{metadata !"_Bool.const _Deque_iterator<double, double &, double *> &.0.const _Deque_iterator<double, double &, double *> &.0"}
!831 = metadata !{void (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE9pop_frontEv}
!832 = metadata !{void (%"class.__gnu_cxx::new_allocator"*, double*)* @_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd}
!833 = metadata !{metadata !"void.pointer.1"}
!834 = metadata !{void (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE16_M_pop_front_auxEv}
!835 = metadata !{void (%"class.std::_Deque_base"*, double*)* @_ZNSt11_Deque_baseIdSaIdEE18_M_deallocate_nodeEPd}
!836 = metadata !{metadata !"void.double *.1"}
!837 = metadata !{void (%"struct.std::_Deque_iterator"*, double**)* @_ZNSt15_Deque_iteratorIdRdPdE11_M_set_nodeEPS1_}
!838 = metadata !{i32 ()* @_ZNSt15_Deque_iteratorIdRdPdE14_S_buffer_sizeEv}
!839 = metadata !{void (%"class.__gnu_cxx::new_allocator"*, double*, i32)* @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj}
!840 = metadata !{metadata !"void.pointer.1.size_type.0"}
!841 = metadata !{void (i8*)* @_ZdlPv}
!842 = metadata !{metadata !"void.void *.1"}
!843 = metadata !{double* (%"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE5frontEv}
!844 = metadata !{void (%"struct.std::_Deque_iterator"*, %"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE5beginEv}
!845 = metadata !{metadata !"iterator."}
!846 = metadata !{double* (%"struct.std::_Deque_iterator"*)* @_ZNKSt15_Deque_iteratorIdRdPdEdeEv}
!847 = metadata !{%"struct.std::_Deque_iterator"* (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZNSt15_Deque_iteratorIdRdPdEC2ERKS2_}
!848 = metadata !{i32 (%"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE4sizeEv}
!849 = metadata !{i32 (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZStmiIdRdPdENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_}
!850 = metadata !{metadata !"typename _Deque_iterator<double, double &, double *>::difference_type.const _Deque_iterator<double, double &, double *> &.0.const _Deque_iterator<double, double &, double *> &.0"}
!851 = metadata !{void (%"class.std::deque"*, double*)* @_ZNSt5dequeIdSaIdEE9push_backERKd}
!852 = metadata !{void (%"class.__gnu_cxx::new_allocator"*, double*, double*)* @_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd}
!853 = metadata !{metadata !"void.pointer.1.const double &.0"}
!854 = metadata !{void (%"class.std::deque"*, double*)* @_ZNSt5dequeIdSaIdEE16_M_push_back_auxERKd}
!855 = metadata !{void (%"class.std::deque"*, i32)* @_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEj}
!856 = metadata !{metadata !"void.size_type.0"}
!857 = metadata !{double* (%"class.std::_Deque_base"*)* @_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv}
!858 = metadata !{metadata !"double ."}
!859 = metadata !{double* (%"class.__gnu_cxx::new_allocator"*, i32, i8*)* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv}
!860 = metadata !{metadata !"pointer.size_type.0.const void *.1"}
!861 = metadata !{i32 (%"class.__gnu_cxx::new_allocator"*)* @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv}
!862 = metadata !{void ()* @_ZSt17__throw_bad_allocv}
!863 = metadata !{i8* (i32)* @_Znwj}
!864 = metadata !{metadata !"void .std::size_t.0"}
!865 = metadata !{void (%"class.std::deque"*, i32, i1)* @_ZNSt5dequeIdSaIdEE17_M_reallocate_mapEjb}
!866 = metadata !{metadata !"void.size_type.0._Bool.0"}
!867 = metadata !{double** (double**, double**, double**)* @_ZSt4copyIPPdS1_ET0_T_S3_S2_}
!868 = metadata !{metadata !"double *.double **.1.double **.1.double **.1"}
!869 = metadata !{double** (double**, double**, double**)* @_ZSt13copy_backwardIPPdS1_ET0_T_S3_S2_}
!870 = metadata !{i32* (i32*, i32*)* @_ZSt3maxIjERKT_S2_S2_}
!871 = metadata !{metadata !"const unsigned int .const unsigned int &.0.const unsigned int &.0"}
!872 = metadata !{double** (%"class.std::_Deque_base"*, i32)* @_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEj}
!873 = metadata !{metadata !"double *.size_t.0"}
!874 = metadata !{void (%"class.std::_Deque_base"*, double**, i32)* @_ZNSt11_Deque_baseIdSaIdEE17_M_deallocate_mapEPPdj}
!875 = metadata !{metadata !"void.double **.1.size_t.0"}
!876 = metadata !{void (%"class.std::allocator.1"*, %"class.std::_Deque_base"*)* @_ZNKSt11_Deque_baseIdSaIdEE20_M_get_map_allocatorEv}
!877 = metadata !{metadata !"_Map_alloc_type."}
!878 = metadata !{void (%"class.__gnu_cxx::new_allocator.2"*, double**, i32)* @_ZN9__gnu_cxx13new_allocatorIPdE10deallocateEPS1_j}
!879 = metadata !{%"class.std::allocator.1"* (%"class.std::allocator.1"*)* @_ZNSaIPdED2Ev}
!880 = metadata !{%"class.__gnu_cxx::new_allocator.2"* (%"class.__gnu_cxx::new_allocator.2"*)* @_ZN9__gnu_cxx13new_allocatorIPdED2Ev}
!881 = metadata !{%"class.std::allocator"* (%"class.std::_Deque_base"*)* @_ZNKSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv}
!882 = metadata !{metadata !"const _Tp_alloc_type ."}
!883 = metadata !{%"class.std::allocator.1"* (%"class.std::allocator.1"*, %"class.std::allocator"*)* @_ZNSaIPdEC2IdEERKSaIT_E}
!884 = metadata !{metadata !"void.const allocator<double> &.0"}
!885 = metadata !{%"class.__gnu_cxx::new_allocator.2"* (%"class.__gnu_cxx::new_allocator.2"*)* @_ZN9__gnu_cxx13new_allocatorIPdEC2Ev}
!886 = metadata !{double** (%"class.__gnu_cxx::new_allocator.2"*, i32, i8*)* @_ZN9__gnu_cxx13new_allocatorIPdE8allocateEjPKv}
!887 = metadata !{i32 (%"class.__gnu_cxx::new_allocator.2"*)* @_ZNK9__gnu_cxx13new_allocatorIPdE8max_sizeEv}
!888 = metadata !{double** (double**, double**, double**)* @_ZSt23__copy_move_backward_a2ILb0EPPdS1_ET1_T0_S3_S2_}
!889 = metadata !{double** (double**)* @_ZSt12__miter_baseIPPdENSt11_Miter_baseIT_E13iterator_typeES3_}
!890 = metadata !{metadata !"typename _Miter_base<double **>::iterator_type.double **.1"}
!891 = metadata !{double** (double**)* @_ZNSt10_Iter_baseIPPdLb0EE7_S_baseES1_}
!892 = metadata !{metadata !"iterator_type.double **.1"}
!893 = metadata !{double** (double**, double**, double**)* @_ZSt22__copy_move_backward_aILb0EPPdS1_ET1_T0_S3_S2_}
!894 = metadata !{double** (double**)* @_ZSt12__niter_baseIPPdENSt11_Niter_baseIT_E13iterator_typeES3_}
!895 = metadata !{metadata !"typename _Niter_base<double **>::iterator_type.double **.1"}
!896 = metadata !{double** (double**, double**, double**)* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPdEEPT_PKS4_S7_S5_}
!897 = metadata !{metadata !"double *.double *const *.1.double *const *.1.double **.1"}
!898 = metadata !{double** (double**, double**, double**)* @_ZSt14__copy_move_a2ILb0EPPdS1_ET1_T0_S3_S2_}
!899 = metadata !{double** (double**, double**, double**)* @_ZSt13__copy_move_aILb0EPPdS1_ET1_T0_S3_S2_}
!900 = metadata !{double** (double**, double**, double**)* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPdEEPT_PKS4_S7_S5_}
!901 = metadata !{%"class.std::deque"* (%"class.std::deque"*, %"class.std::deque"*)* @_ZNSt5dequeIdSaIdEEC2ERKS1_}
!902 = metadata !{%"class.std::_Deque_base"* (%"class.std::_Deque_base"*, %"class.std::allocator"*, i32)* @_ZNSt11_Deque_baseIdSaIdEEC2ERKS0_j}
!903 = metadata !{metadata !"void.const allocator_type &.0.size_t.0"}
!904 = metadata !{void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*, %"class.std::allocator"*)* @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEdET0_T_S9_S8_RSaIT1_E}
!905 = metadata !{metadata !"struct std::_Deque_iterator<double, double &, double *>.struct std::_Deque_iterator<double, const double &, const double *>.0.struct std::_Deque_iterator<double, const double &, const double *>.0.struct std::_Deque_iterator<double, double &, double *>.0.allocator<double> &.0"}
!906 = metadata !{void (%"struct.std::_Deque_iterator.0"*, %"class.std::deque"*)* @_ZNKSt5dequeIdSaIdEE5beginEv}
!907 = metadata !{%"class.std::allocator"* (%"class.std::_Deque_base"*)* @_ZNSt11_Deque_baseIdSaIdEE19_M_get_Tp_allocatorEv}
!908 = metadata !{metadata !"_Tp_alloc_type ."}
!909 = metadata !{%"class.std::_Deque_base"* (%"class.std::_Deque_base"*)* @_ZNSt11_Deque_baseIdSaIdEED2Ev}
!910 = metadata !{void (%"class.std::_Deque_base"*, double**, double**)* @_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_}
!911 = metadata !{metadata !"void.double **.1.double **.1"}
!912 = metadata !{%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* (%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*)* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implD2Ev}
!913 = metadata !{%"class.std::allocator"* (%"class.std::allocator"*)* @_ZNSaIdED2Ev}
!914 = metadata !{%"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIdED2Ev}
!915 = metadata !{void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZSt18uninitialized_copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_}
!916 = metadata !{metadata !"struct std::_Deque_iterator<double, double &, double *>.struct std::_Deque_iterator<double, const double &, const double *>.0.struct std::_Deque_iterator<double, const double &, const double *>.0.struct std::_Deque_iterator<double, double &, double *>.0"}
!917 = metadata !{void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIdRKdPS3_ES2_IdRdPdEEET0_T_SB_SA_}
!918 = metadata !{void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZSt4copyISt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET0_T_S9_S8_}
!919 = metadata !{void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_}
!920 = metadata !{void (%"struct.std::_Deque_iterator.0"*, [4 x i32])* @_ZSt12__miter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_}
!921 = metadata !{metadata !"typename _Miter_base<struct _Deque_iterator<double, const double &, const double *> >::iterator_type.struct std::_Deque_iterator<double, const double &, const double *>.0"}
!922 = metadata !{void (%"struct.std::_Deque_iterator.0"*, [4 x i32])* @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRKdPS1_ELb0EE7_S_baseES4_}
!923 = metadata !{metadata !"iterator_type.struct std::_Deque_iterator<double, const double &, const double *>.0"}
!924 = metadata !{void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIdRKdPS1_ES0_IdRdPdEET1_T0_S9_S8_}
!925 = metadata !{void (%"struct.std::_Deque_iterator.0"*, [4 x i32])* @_ZSt12__niter_baseISt15_Deque_iteratorIdRKdPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_}
!926 = metadata !{metadata !"typename _Niter_base<struct _Deque_iterator<double, const double &, const double *> >::iterator_type.struct std::_Deque_iterator<double, const double &, const double *>.0"}
!927 = metadata !{void (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEENSt11_Niter_baseIT_E13iterator_typeES5_}
!928 = metadata !{metadata !"typename _Niter_base<struct _Deque_iterator<double, double &, double *> >::iterator_type.struct std::_Deque_iterator<double, double &, double *>.0"}
!929 = metadata !{void (%"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*)* @_ZNSt10_Iter_baseISt15_Deque_iteratorIdRdPdELb0EE7_S_baseES3_}
!930 = metadata !{metadata !"iterator_type.struct std::_Deque_iterator<double, double &, double *>.0"}
!931 = metadata !{void (%"struct.std::_Deque_iterator"*, [4 x i32], [4 x i32], %"struct.std::_Deque_iterator"*)* @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIdRKdPS4_ES3_IdRdPdEEET0_T_SC_SB_}
!932 = metadata !{i32 (%"struct.std::_Deque_iterator.0"*, %"struct.std::_Deque_iterator.0"*)* @_ZStmiIdRKdPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_}
!933 = metadata !{metadata !"typename _Deque_iterator<double, const double &, const double *>::difference_type.const _Deque_iterator<double, const double &, const double *> &.0.const _Deque_iterator<double, const double &, const double *> &.0"}
!934 = metadata !{%"struct.std::_Deque_iterator.0"* (%"struct.std::_Deque_iterator.0"*)* @_ZNSt15_Deque_iteratorIdRKdPS0_EppEv}
!935 = metadata !{%"struct.std::_Deque_iterator"* (%"struct.std::_Deque_iterator"*)* @_ZNSt15_Deque_iteratorIdRdPdEppEv}
!936 = metadata !{%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* (%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*, %"class.std::allocator"*)* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2ERKS0_}
!937 = metadata !{metadata !"void.const _Tp_alloc_type &.0"}
!938 = metadata !{void (%"class.std::_Deque_base"*, i32)* @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEj}
!939 = metadata !{metadata !"void.size_t.0"}
!940 = metadata !{void (%"class.std::_Deque_base"*, double**, double**)* @_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_}
!941 = metadata !{%"class.std::allocator"* (%"class.std::allocator"*, %"class.std::allocator"*)* @_ZNSaIdEC2ERKS_}
!942 = metadata !{metadata !"void.const class std::allocator<double> &.0"}
!943 = metadata !{%"struct.std::_Deque_iterator"* (%"struct.std::_Deque_iterator"*)* @_ZNSt15_Deque_iteratorIdRdPdEC2Ev}
!944 = metadata !{%"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_}
!945 = metadata !{metadata !"void.const class __gnu_cxx::new_allocator<double> &.0"}
!946 = metadata !{void (%"class.std::deque"*, %"struct.std::_Deque_iterator"*, %"struct.std::_Deque_iterator"*, %"class.std::allocator"*)* @_ZNSt5dequeIdSaIdEE15_M_destroy_dataESt15_Deque_iteratorIdRdPdES5_RKS0_}
!947 = metadata !{metadata !"void.iterator.0.iterator.0.const std::allocator<double> &.0"}
!948 = metadata !{void (%"struct.std::_Deque_iterator"*, %"class.std::deque"*)* @_ZNSt5dequeIdSaIdEE3endEv}
!949 = metadata !{%"class.std::_Deque_base"* (%"class.std::_Deque_base"*)* @_ZNSt11_Deque_baseIdSaIdEEC2Ev}
!950 = metadata !{%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"* (%"struct.std::_Deque_base<double, std::allocator<double> >::_Deque_impl"*)* @_ZNSt11_Deque_baseIdSaIdEE11_Deque_implC2Ev}
!951 = metadata !{%"class.std::allocator"* (%"class.std::allocator"*)* @_ZNSaIdEC2Ev}
!952 = metadata !{%"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIdEC2Ev}
!953 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.h"}
!954 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h"}
!955 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_queue.h"}
!956 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h"}
!957 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/functexcept.h"}
!958 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h"}
!959 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/allocator.h"}
!960 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_iterator_base_types.h"}
!961 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_uninitialized.h"}
!962 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!963 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!964 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!965 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!966 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!967 = metadata !{i32 786689, metadata !621, metadata !"this", null, i32 16777216, metadata !968, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!968 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS7MoveAvg"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS7MoveAvg]
!969 = metadata !{i32 0, i32 0, metadata !621, null}
!970 = metadata !{i32 23, i32 1, metadata !621, null}
!971 = metadata !{i32 23, i32 1, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !621, i32 23, i32 1, i32 1, i32 62} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!973 = metadata !{i32 24, i32 1, metadata !621, null}
!974 = metadata !{i32 24, i32 1, metadata !975, null}
!975 = metadata !{i32 786443, metadata !1, metadata !621, i32 24, i32 1, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!976 = metadata !{i32 24, i32 1, metadata !977, null}
!977 = metadata !{i32 786443, metadata !1, metadata !621, i32 24, i32 1, i32 3, i32 65} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!978 = metadata !{i32 24, i32 1, metadata !979, null}
!979 = metadata !{i32 786443, metadata !1, metadata !621, i32 24, i32 1, i32 2, i32 64} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!980 = metadata !{i32 786689, metadata !776, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!981 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSt5dequeIdSaIdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSt5dequeIdSaIdEE]
!982 = metadata !{i32 0, i32 0, metadata !776, null}
!983 = metadata !{i32 788, i32 25, metadata !776, null}
!984 = metadata !{i32 788, i32 27, metadata !776, null}
!985 = metadata !{i32 786689, metadata !721, metadata !"this", null, i32 16777216, metadata !986, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!986 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSt5queueIdSt5dequeIdSaIdEEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSt5queueIdSt5dequeIdSaIdEEE]
!987 = metadata !{i32 0, i32 0, metadata !721, null}
!988 = metadata !{i32 786689, metadata !721, metadata !"__c", metadata !989, i32 33554569, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__c] [line 137]
!989 = metadata !{i32 786473, metadata !42}       ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_queue.h]
!990 = metadata !{i32 137, i32 30, metadata !721, null}
!991 = metadata !{i32 138, i32 16, metadata !721, null}
!992 = metadata !{i32 138, i32 18, metadata !721, null}
!993 = metadata !{i32 786689, metadata !773, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!994 = metadata !{i32 0, i32 0, metadata !773, null}
!995 = metadata !{i32 923, i32 25, metadata !996, null}
!996 = metadata !{i32 786443, metadata !8, metadata !773, i32 923, i32 7, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!997 = metadata !{i32 923, i32 34, metadata !998, null}
!998 = metadata !{i32 786443, metadata !8, metadata !996, i32 923, i32 34, i32 1, i32 66} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!999 = metadata !{i32 923, i32 41, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !8, metadata !996, i32 923, i32 41, i32 3, i32 68} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1001 = metadata !{i32 923, i32 9, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !8, metadata !996, i32 923, i32 9, i32 5, i32 70} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1003 = metadata !{i32 923, i32 65, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !8, metadata !996, i32 923, i32 65, i32 7, i32 72} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1005 = metadata !{i32 923, i32 65, metadata !773, null}
!1006 = metadata !{i32 923, i32 65, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !8, metadata !1008, i32 923, i32 65, i32 8, i32 73} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1008 = metadata !{i32 786443, metadata !8, metadata !1009, i32 923, i32 65, i32 6, i32 71} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1009 = metadata !{i32 786443, metadata !8, metadata !1010, i32 923, i32 65, i32 4, i32 69} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1010 = metadata !{i32 786443, metadata !8, metadata !996, i32 923, i32 65, i32 2, i32 67} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1011 = metadata !{i32 923, i32 65, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !8, metadata !773, i32 923, i32 65, i32 9, i32 74} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1013 = metadata !{i32 923, i32 65, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !8, metadata !773, i32 923, i32 65, i32 11, i32 76} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1015 = metadata !{i32 923, i32 65, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !8, metadata !773, i32 923, i32 65, i32 10, i32 75} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1017 = metadata !{i32 786689, metadata !622, metadata !"this", null, i32 16777216, metadata !968, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1018 = metadata !{i32 0, i32 0, metadata !622, null}
!1019 = metadata !{i32 786689, metadata !622, metadata !"length", metadata !1020, i32 33554458, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 26]
!1020 = metadata !{i32 786473, metadata !1}       ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1021 = metadata !{i32 26, i32 28, metadata !622, null}
!1022 = metadata !{i32 27, i32 1, metadata !622, null}
!1023 = metadata !{i32 27, i32 1, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !622, i32 27, i32 1, i32 1, i32 77} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1025 = metadata !{i32 28, i32 1, metadata !622, null}
!1026 = metadata !{i32 28, i32 1, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !622, i32 28, i32 1, i32 1, i32 78} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1028 = metadata !{i32 28, i32 1, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1, metadata !622, i32 28, i32 1, i32 3, i32 80} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1030 = metadata !{i32 28, i32 1, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !1, metadata !622, i32 28, i32 1, i32 2, i32 79} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1032 = metadata !{i32 786689, metadata !623, metadata !"this", null, i32 16777216, metadata !968, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1033 = metadata !{i32 0, i32 0, metadata !623, null}
!1034 = metadata !{i32 786689, metadata !623, metadata !"sample", metadata !1020, i32 33554462, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sample] [line 30]
!1035 = metadata !{i32 30, i32 32, metadata !623, null}
!1036 = metadata !{i32 32, i32 2, metadata !623, null}
!1037 = metadata !{i32 33, i32 2, metadata !623, null}
!1038 = metadata !{i32 34, i32 5, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1, metadata !623, i32 34, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1040 = metadata !{i32 36, i32 10, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1, metadata !1039, i32 35, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1042 = metadata !{i32 37, i32 3, metadata !1041, null}
!1043 = metadata !{i32 38, i32 2, metadata !1041, null}
!1044 = metadata !{i32 39, i32 1, metadata !623, null}
!1045 = metadata !{i32 786689, metadata !664, metadata !"this", null, i32 16777216, metadata !986, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1046 = metadata !{i32 0, i32 0, metadata !664, null}
!1047 = metadata !{i32 786689, metadata !664, metadata !"__x", metadata !989, i32 33554647, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__x] [line 215]
!1048 = metadata !{i32 215, i32 30, metadata !664, null}
!1049 = metadata !{i32 216, i32 9, metadata !664, null}
!1050 = metadata !{i32 216, i32 27, metadata !664, null}
!1051 = metadata !{i32 786689, metadata !658, metadata !"this", null, i32 16777216, metadata !1052, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1052 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1053 = metadata !{i32 0, i32 0, metadata !658, null}
!1054 = metadata !{i32 159, i32 16, metadata !658, null}
!1055 = metadata !{i32 786689, metadata !653, metadata !"this", null, i32 16777216, metadata !986, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1056 = metadata !{i32 0, i32 0, metadata !653, null}
!1057 = metadata !{i32 169, i32 9, metadata !653, null}
!1058 = metadata !{i32 786689, metadata !644, metadata !"this", null, i32 16777216, metadata !986, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1059 = metadata !{i32 0, i32 0, metadata !644, null}
!1060 = metadata !{i32 244, i32 2, metadata !644, null}
!1061 = metadata !{i32 245, i32 7, metadata !644, null}
!1062 = metadata !{i32 786689, metadata !624, metadata !"this", null, i32 16777216, metadata !1063, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1063 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1064 = metadata !{i32 0, i32 0, metadata !624, null}
!1065 = metadata !{i32 43, i32 6, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !624, i32 43, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1067 = metadata !{i32 44, i32 3, metadata !1066, null}
!1068 = metadata !{i32 46, i32 10, metadata !1066, null}
!1069 = metadata !{i32 48, i32 1, metadata !624, null}
!1070 = metadata !{i32 786689, metadata !638, metadata !"this", null, i32 16777216, metadata !1052, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1071 = metadata !{i32 0, i32 0, metadata !638, null}
!1072 = metadata !{i32 154, i32 16, metadata !638, null}
!1073 = metadata !{i32 786689, metadata !627, metadata !"this", null, i32 16777216, metadata !1052, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1074 = metadata !{i32 0, i32 0, metadata !627, null}
!1075 = metadata !{i32 202, i32 9, metadata !627, null}
!1076 = metadata !{i32 786689, metadata !625, metadata !"this", null, i32 16777216, metadata !1063, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1077 = metadata !{i32 0, i32 0, metadata !625, null}
!1078 = metadata !{i32 52, i32 6, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !1, metadata !625, i32 52, i32 6, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/tools/MoveAvg.cpp]
!1080 = metadata !{i32 53, i32 3, metadata !1079, null}
!1081 = metadata !{i32 55, i32 3, metadata !1079, null}
!1082 = metadata !{i32 55, i32 16, metadata !1079, null}
!1083 = metadata !{i32 56, i32 1, metadata !625, null}
!1084 = metadata !{i32 786689, metadata !626, metadata !"this", null, i32 16777216, metadata !1063, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1085 = metadata !{i32 0, i32 0, metadata !626, null}
!1086 = metadata !{i32 60, i32 9, metadata !626, null}
!1087 = metadata !{i32 786689, metadata !628, metadata !"this", null, i32 16777216, metadata !1088, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1088 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1089 = metadata !{i32 0, i32 0, metadata !628, null}
!1090 = metadata !{i32 786688, metadata !628, metadata !"__tmp", metadata !1091, i32 1351, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__tmp] [line 1351]
!1091 = metadata !{i32 786473, metadata !8}       ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1092 = metadata !{i32 1351, i32 17, metadata !628, null}
!1093 = metadata !{i32 1351, i32 25, metadata !628, null}
!1094 = metadata !{i32 1352, i32 2, metadata !628, null}
!1095 = metadata !{i32 1353, i32 9, metadata !628, null}
!1096 = metadata !{i32 786689, metadata !636, metadata !"this", null, i32 16777216, metadata !1088, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1097 = metadata !{i32 0, i32 0, metadata !636, null}
!1098 = metadata !{i32 1069, i32 9, metadata !636, null}
!1099 = metadata !{i32 786689, metadata !630, metadata !"this", null, i32 16777216, metadata !1100, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSt15_Deque_iteratorIdRKdPS0_E]
!1101 = metadata !{i32 0, i32 0, metadata !630, null}
!1102 = metadata !{i32 174, i32 6, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !8, metadata !630, i32 174, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1104 = metadata !{i32 176, i32 6, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !8, metadata !1103, i32 175, i32 4, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1106 = metadata !{i32 177, i32 6, metadata !1105, null}
!1107 = metadata !{i32 178, i32 4, metadata !1105, null}
!1108 = metadata !{i32 179, i32 2, metadata !630, null}
!1109 = metadata !{i32 180, i32 2, metadata !630, null}
!1110 = metadata !{i32 786689, metadata !629, metadata !"this", null, i32 16777216, metadata !1111, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !485} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1112 = metadata !{i32 0, i32 0, metadata !629, null}
!1113 = metadata !{i32 145, i32 9, metadata !629, null}
!1114 = metadata !{i32 786689, metadata !631, metadata !"this", null, i32 16777216, metadata !1100, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1115 = metadata !{i32 0, i32 0, metadata !631, null}
!1116 = metadata !{i32 786689, metadata !631, metadata !"__new_node", metadata !1091, i32 33554670, metadata !466, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__new_node] [line 238]
!1117 = metadata !{i32 238, i32 32, metadata !631, null}
!1118 = metadata !{i32 240, i32 2, metadata !631, null}
!1119 = metadata !{i32 241, i32 2, metadata !631, null}
!1120 = metadata !{i32 242, i32 2, metadata !631, null}
!1121 = metadata !{i32 242, i32 39, metadata !631, null}
!1122 = metadata !{i32 243, i32 7, metadata !631, null}
!1123 = metadata !{i32 112, i32 16, metadata !632, null}
!1124 = metadata !{i32 786689, metadata !633, metadata !"__size", metadata !1091, i32 16777305, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__size] [line 89]
!1125 = metadata !{i32 89, i32 27, metadata !633, null}
!1126 = metadata !{i32 90, i32 5, metadata !633, null}
!1127 = metadata !{i32 90, i32 5, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !8, metadata !633, i32 90, i32 5, i32 1, i32 81} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1129 = metadata !{i32 90, i32 5, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !8, metadata !633, i32 90, i32 5, i32 2, i32 82} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1131 = metadata !{i32 90, i32 5, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !8, metadata !1133, i32 90, i32 5, i32 4, i32 84} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1133 = metadata !{i32 786443, metadata !8, metadata !633, i32 90, i32 5, i32 3, i32 83} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1134 = metadata !{i32 786689, metadata !637, metadata !"this", null, i32 16777216, metadata !1100, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1135 = metadata !{i32 0, i32 0, metadata !637, null}
!1136 = metadata !{i32 786689, metadata !637, metadata !"__x", metadata !1091, i32 33554567, metadata !478, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__x] [line 135]
!1137 = metadata !{i32 135, i32 39, metadata !637, null}
!1138 = metadata !{i32 137, i32 52, metadata !637, null}
!1139 = metadata !{i32 137, i32 54, metadata !637, null}
!1140 = metadata !{i32 786689, metadata !639, metadata !"this", null, i32 16777216, metadata !1088, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1141 = metadata !{i32 0, i32 0, metadata !639, null}
!1142 = metadata !{i32 1234, i32 16, metadata !639, null}
!1143 = metadata !{i32 786689, metadata !640, metadata !"__x", metadata !1091, i32 16777467, metadata !643, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__x] [line 251]
!1144 = metadata !{i32 251, i32 56, metadata !640, null}
!1145 = metadata !{i32 786689, metadata !640, metadata !"__y", metadata !1091, i32 33554684, metadata !643, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__y] [line 252]
!1146 = metadata !{i32 252, i32 49, metadata !640, null}
!1147 = metadata !{i32 253, i32 7, metadata !640, null}
!1148 = metadata !{i32 786689, metadata !645, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1149 = metadata !{i32 0, i32 0, metadata !645, null}
!1150 = metadata !{i32 1431, i32 6, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !8, metadata !645, i32 1431, i32 6, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1152 = metadata !{i32 1434, i32 6, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !8, metadata !1151, i32 1433, i32 4, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1154 = metadata !{i32 1435, i32 6, metadata !1153, null}
!1155 = metadata !{i32 1436, i32 4, metadata !1153, null}
!1156 = metadata !{i32 1438, i32 4, metadata !1151, null}
!1157 = metadata !{i32 1439, i32 7, metadata !645, null}
!1158 = metadata !{i32 786689, metadata !652, metadata !"this", null, i32 16777216, metadata !1159, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIdEE]
!1160 = metadata !{i32 0, i32 0, metadata !652, null}
!1161 = metadata !{i32 786689, metadata !652, metadata !"__p", metadata !1162, i32 33554565, metadata !273, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 133]
!1162 = metadata !{i32 786473, metadata !257}     ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h]
!1163 = metadata !{i32 133, i32 23, metadata !652, null}
!1164 = metadata !{i32 133, i32 30, metadata !652, null}
!1165 = metadata !{i32 133, i32 43, metadata !652, null}
!1166 = metadata !{i32 786689, metadata !646, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1167 = metadata !{i32 0, i32 0, metadata !646, null}
!1168 = metadata !{i32 527, i32 7, metadata !646, null}
!1169 = metadata !{i32 528, i32 7, metadata !646, null}
!1170 = metadata !{i32 529, i32 7, metadata !646, null}
!1171 = metadata !{i32 530, i32 7, metadata !646, null}
!1172 = metadata !{i32 531, i32 5, metadata !646, null}
!1173 = metadata !{i32 786689, metadata !650, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSt11_Deque_baseIdSaIdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSt11_Deque_baseIdSaIdEE]
!1175 = metadata !{i32 0, i32 0, metadata !650, null}
!1176 = metadata !{i32 786689, metadata !650, metadata !"__p", metadata !1091, i32 33554974, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 542]
!1177 = metadata !{i32 542, i32 31, metadata !650, null}
!1178 = metadata !{i32 544, i32 2, metadata !650, null}
!1179 = metadata !{i32 544, i32 42, metadata !650, null}
!1180 = metadata !{i32 545, i32 7, metadata !650, null}
!1181 = metadata !{i32 786689, metadata !648, metadata !"this", null, i32 16777216, metadata !1182, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSt15_Deque_iteratorIdRdPdE]
!1183 = metadata !{i32 0, i32 0, metadata !648, null}
!1184 = metadata !{i32 786689, metadata !648, metadata !"__new_node", metadata !1091, i32 33554670, metadata !384, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__new_node] [line 238]
!1185 = metadata !{i32 238, i32 32, metadata !648, null}
!1186 = metadata !{i32 240, i32 2, metadata !648, null}
!1187 = metadata !{i32 241, i32 2, metadata !648, null}
!1188 = metadata !{i32 242, i32 2, metadata !648, null}
!1189 = metadata !{i32 242, i32 39, metadata !648, null}
!1190 = metadata !{i32 243, i32 7, metadata !648, null}
!1191 = metadata !{i32 112, i32 16, metadata !649, null}
!1192 = metadata !{i32 786689, metadata !651, metadata !"this", null, i32 16777216, metadata !1159, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1193 = metadata !{i32 0, i32 0, metadata !651, null}
!1194 = metadata !{i32 786689, metadata !651, metadata !"__p", metadata !1162, i32 33554541, metadata !273, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 109]
!1195 = metadata !{i32 109, i32 26, metadata !651, null}
!1196 = metadata !{i32 786689, metadata !651, metadata !"", metadata !1162, i32 50331757, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 109]
!1197 = metadata !{i32 109, i32 40, metadata !651, null}
!1198 = metadata !{i32 110, i32 9, metadata !651, null}
!1199 = metadata !{i32 110, i32 33, metadata !651, null}
!1200 = metadata !{i32 786689, metadata !654, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1201 = metadata !{i32 0, i32 0, metadata !654, null}
!1202 = metadata !{i32 1322, i32 17, metadata !654, null}
!1203 = metadata !{i32 786689, metadata !656, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1204 = metadata !{i32 0, i32 0, metadata !656, null}
!1205 = metadata !{i32 1043, i32 9, metadata !656, null}
!1206 = metadata !{i32 786689, metadata !655, metadata !"this", null, i32 16777216, metadata !1207, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1207 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !403} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1208 = metadata !{i32 0, i32 0, metadata !655, null}
!1209 = metadata !{i32 145, i32 9, metadata !655, null}
!1210 = metadata !{i32 786689, metadata !657, metadata !"this", null, i32 16777216, metadata !1182, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1211 = metadata !{i32 0, i32 0, metadata !657, null}
!1212 = metadata !{i32 786689, metadata !657, metadata !"__x", metadata !1091, i32 33554567, metadata !396, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__x] [line 135]
!1213 = metadata !{i32 135, i32 39, metadata !657, null}
!1214 = metadata !{i32 137, i32 52, metadata !657, null}
!1215 = metadata !{i32 137, i32 54, metadata !657, null}
!1216 = metadata !{i32 786689, metadata !659, metadata !"this", null, i32 16777216, metadata !1088, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1217 = metadata !{i32 0, i32 0, metadata !659, null}
!1218 = metadata !{i32 1148, i32 16, metadata !659, null}
!1219 = metadata !{i32 786689, metadata !660, metadata !"__x", metadata !1091, i32 16777551, metadata !643, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__x] [line 335]
!1220 = metadata !{i32 335, i32 55, metadata !660, null}
!1221 = metadata !{i32 786689, metadata !660, metadata !"__y", metadata !1091, i32 33554768, metadata !643, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__y] [line 336]
!1222 = metadata !{i32 336, i32 48, metadata !660, null}
!1223 = metadata !{i32 339, i32 3, metadata !660, null}
!1224 = metadata !{i32 786689, metadata !665, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1225 = metadata !{i32 0, i32 0, metadata !665, null}
!1226 = metadata !{i32 786689, metadata !665, metadata !"__x", metadata !1091, i32 33555830, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__x] [line 1398]
!1227 = metadata !{i32 1398, i32 35, metadata !665, null}
!1228 = metadata !{i32 1400, i32 6, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !8, metadata !665, i32 1400, i32 6, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1230 = metadata !{i32 1403, i32 6, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !8, metadata !1229, i32 1402, i32 4, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1232 = metadata !{i32 1404, i32 6, metadata !1231, null}
!1233 = metadata !{i32 1405, i32 4, metadata !1231, null}
!1234 = metadata !{i32 1407, i32 4, metadata !1229, null}
!1235 = metadata !{i32 1408, i32 7, metadata !665, null}
!1236 = metadata !{i32 786689, metadata !720, metadata !"this", null, i32 16777216, metadata !1159, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1237 = metadata !{i32 0, i32 0, metadata !720, null}
!1238 = metadata !{i32 786689, metadata !720, metadata !"__p", metadata !1162, i32 33554561, metadata !273, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 129]
!1239 = metadata !{i32 129, i32 25, metadata !720, null}
!1240 = metadata !{i32 786689, metadata !720, metadata !"__val", metadata !1162, i32 50331777, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__val] [line 129]
!1241 = metadata !{i32 129, i32 41, metadata !720, null}
!1242 = metadata !{i32 130, i32 9, metadata !720, null}
!1243 = metadata !{i32 130, i32 9, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !257, metadata !720, i32 130, i32 9, i32 2, i32 86} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h]
!1245 = metadata !{i32 130, i32 40, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !257, metadata !1247, i32 130, i32 40, i32 3, i32 87} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h]
!1247 = metadata !{i32 786443, metadata !257, metadata !720, i32 130, i32 40, i32 1, i32 85} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h]
!1248 = metadata !{i32 786689, metadata !666, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1249 = metadata !{i32 0, i32 0, metadata !666, null}
!1250 = metadata !{i32 786689, metadata !666, metadata !"__t", metadata !1091, i32 33556253, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__t] [line 1821]
!1251 = metadata !{i32 1821, i32 46, metadata !666, null}
!1252 = metadata !{i32 451, i32 2, metadata !666, null}
!1253 = metadata !{i32 452, i32 43, metadata !666, null}
!1254 = metadata !{i32 459, i32 6, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !647, metadata !666, i32 454, i32 4, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1256 = metadata !{i32 461, i32 6, metadata !1255, null}
!1257 = metadata !{i32 463, i32 6, metadata !1255, null}
!1258 = metadata !{i32 464, i32 4, metadata !1255, null}
!1259 = metadata !{i32 470, i32 7, metadata !1255, null}
!1260 = metadata !{i32 467, i32 6, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !647, metadata !666, i32 466, i32 4, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1262 = metadata !{i32 468, i32 6, metadata !1261, null}
!1263 = metadata !{i32 470, i32 7, metadata !1261, null}
!1264 = metadata !{i32 470, i32 7, metadata !666, null}
!1265 = metadata !{i32 470, i32 7, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !647, metadata !666, i32 470, i32 7, i32 1, i32 88} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1267 = metadata !{i32 470, i32 7, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !647, metadata !666, i32 470, i32 7, i32 3, i32 90} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1269 = metadata !{i32 470, i32 7, metadata !1270, null}
!1270 = metadata !{i32 786443, metadata !647, metadata !666, i32 470, i32 7, i32 2, i32 89} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1271 = metadata !{i32 786689, metadata !670, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1272 = metadata !{i32 0, i32 0, metadata !670, null}
!1273 = metadata !{i32 786689, metadata !670, metadata !"__nodes_to_add", metadata !1091, i32 33556428, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__nodes_to_add] [line 1996]
!1274 = metadata !{i32 1996, i32 40, metadata !670, null}
!1275 = metadata !{i32 1998, i32 6, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !8, metadata !670, i32 1998, i32 6, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1277 = metadata !{i32 2000, i32 4, metadata !1276, null}
!1278 = metadata !{i32 2001, i32 7, metadata !670, null}
!1279 = metadata !{i32 786689, metadata !667, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1280 = metadata !{i32 0, i32 0, metadata !667, null}
!1281 = metadata !{i32 538, i32 9, metadata !667, null}
!1282 = metadata !{i32 538, i32 42, metadata !667, null}
!1283 = metadata !{i32 786689, metadata !668, metadata !"this", null, i32 16777216, metadata !1159, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1284 = metadata !{i32 0, i32 0, metadata !668, null}
!1285 = metadata !{i32 786689, metadata !668, metadata !"__n", metadata !1162, i32 33554531, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__n] [line 99]
!1286 = metadata !{i32 99, i32 26, metadata !668, null}
!1287 = metadata !{i32 786689, metadata !668, metadata !"", metadata !1162, i32 50331747, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 99]
!1288 = metadata !{i32 99, i32 43, metadata !668, null}
!1289 = metadata !{i32 101, i32 6, metadata !1290, null}
!1290 = metadata !{i32 786443, metadata !257, metadata !668, i32 101, i32 6, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h]
!1291 = metadata !{i32 101, i32 12, metadata !1290, null}
!1292 = metadata !{i32 102, i32 4, metadata !1290, null}
!1293 = metadata !{i32 104, i32 27, metadata !668, null}
!1294 = metadata !{i32 786689, metadata !669, metadata !"this", null, i32 16777216, metadata !1295, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !268} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1296 = metadata !{i32 0, i32 0, metadata !669, null}
!1297 = metadata !{i32 114, i32 9, metadata !669, null}
!1298 = metadata !{i32 786689, metadata !671, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1299 = metadata !{i32 0, i32 0, metadata !671, null}
!1300 = metadata !{i32 786689, metadata !671, metadata !"__nodes_to_add", metadata !1091, i32 33556444, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__nodes_to_add] [line 2012]
!1301 = metadata !{i32 2012, i32 35, metadata !671, null}
!1302 = metadata !{i32 786689, metadata !671, metadata !"__add_at_front", metadata !1091, i32 50333660, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__add_at_front] [line 2012]
!1303 = metadata !{i32 2012, i32 56, metadata !671, null}
!1304 = metadata !{i32 786688, metadata !671, metadata !"__old_num_nodes", metadata !1305, i32 881, metadata !1306, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__old_num_nodes] [line 881]
!1305 = metadata !{i32 786473, metadata !647}     ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1306 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from size_type]
!1307 = metadata !{i32 881, i32 23, metadata !671, null}
!1308 = metadata !{i32 881, i32 7, metadata !671, null}
!1309 = metadata !{i32 786688, metadata !671, metadata !"__new_num_nodes", metadata !1305, i32 883, metadata !1306, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__new_num_nodes] [line 883]
!1310 = metadata !{i32 883, i32 23, metadata !671, null}
!1311 = metadata !{i32 883, i32 7, metadata !671, null}
!1312 = metadata !{i32 786688, metadata !671, metadata !"__new_nstart", metadata !1305, i32 885, metadata !1313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__new_nstart] [line 885]
!1313 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"_Map_pointer", i32 760, i64 0, i64 0, i64 0, i32 0, metadata !1314} ; [ DW_TAG_typedef ] [_Map_pointer] [line 760, size 0, align 0, offset 0] [from ]
!1314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1315} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pointer]
!1315 = metadata !{i32 786454, metadata !8, metadata !"_ZTSSt5dequeIdSaIdEE", metadata !"pointer", i32 747, i64 0, i64 0, i64 0, i32 0, metadata !1316} ; [ DW_TAG_typedef ] [pointer] [line 747, size 0, align 0, offset 0] [from pointer]
!1316 = metadata !{i32 786454, metadata !71, metadata !"_ZTSSaIdE", metadata !"pointer", i32 97, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [pointer] [line 97, size 0, align 0, offset 0] [from ]
!1317 = metadata !{i32 885, i32 20, metadata !671, null}
!1318 = metadata !{i32 886, i32 11, metadata !1319, null}
!1319 = metadata !{i32 786443, metadata !647, metadata !671, i32 886, i32 11, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1320 = metadata !{i32 888, i32 4, metadata !1321, null}
!1321 = metadata !{i32 786443, metadata !647, metadata !1319, i32 887, i32 2, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1322 = metadata !{i32 888, i32 4, metadata !1323, null}
!1323 = metadata !{i32 786443, metadata !647, metadata !1321, i32 888, i32 4, i32 1, i32 91} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1324 = metadata !{i32 888, i32 4, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !647, metadata !1321, i32 888, i32 4, i32 2, i32 92} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1326 = metadata !{i32 888, i32 4, metadata !1327, null}
!1327 = metadata !{i32 786443, metadata !647, metadata !1328, i32 888, i32 4, i32 4, i32 94} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1328 = metadata !{i32 786443, metadata !647, metadata !1321, i32 888, i32 4, i32 3, i32 93} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1329 = metadata !{i32 891, i32 8, metadata !1330, null}
!1330 = metadata !{i32 786443, metadata !647, metadata !1321, i32 891, i32 8, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1331 = metadata !{i32 892, i32 6, metadata !1330, null}
!1332 = metadata !{i32 896, i32 6, metadata !1330, null}
!1333 = metadata !{i32 899, i32 2, metadata !1321, null}
!1334 = metadata !{i32 786688, metadata !1335, metadata !"__new_map_size", metadata !1305, i32 902, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__new_map_size] [line 902]
!1335 = metadata !{i32 786443, metadata !647, metadata !1319, i32 901, i32 2, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1336 = metadata !{i32 902, i32 14, metadata !1335, null}
!1337 = metadata !{i32 902, i32 4, metadata !1335, null}
!1338 = metadata !{i32 903, i32 33, metadata !1335, null}
!1339 = metadata !{i32 786688, metadata !1335, metadata !"__new_map", metadata !1305, i32 906, metadata !1313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__new_map] [line 906]
!1340 = metadata !{i32 906, i32 17, metadata !1335, null}
!1341 = metadata !{i32 906, i32 29, metadata !1335, null}
!1342 = metadata !{i32 907, i32 4, metadata !1335, null}
!1343 = metadata !{i32 907, i32 4, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !647, metadata !1335, i32 907, i32 4, i32 1, i32 95} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1345 = metadata !{i32 907, i32 4, metadata !1346, null}
!1346 = metadata !{i32 786443, metadata !647, metadata !1335, i32 907, i32 4, i32 2, i32 96} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1347 = metadata !{i32 907, i32 4, metadata !1348, null}
!1348 = metadata !{i32 786443, metadata !647, metadata !1349, i32 907, i32 4, i32 4, i32 98} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1349 = metadata !{i32 786443, metadata !647, metadata !1335, i32 907, i32 4, i32 3, i32 97} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/deque.tcc]
!1350 = metadata !{i32 909, i32 4, metadata !1335, null}
!1351 = metadata !{i32 912, i32 4, metadata !1335, null}
!1352 = metadata !{i32 914, i32 4, metadata !1335, null}
!1353 = metadata !{i32 915, i32 4, metadata !1335, null}
!1354 = metadata !{i32 918, i32 7, metadata !671, null}
!1355 = metadata !{i32 919, i32 7, metadata !671, null}
!1356 = metadata !{i32 920, i32 5, metadata !671, null}
!1357 = metadata !{i32 786689, metadata !711, metadata !"__first", metadata !1358, i32 16777672, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 456]
!1358 = metadata !{i32 786473, metadata !580}     ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h]
!1359 = metadata !{i32 456, i32 14, metadata !711, null}
!1360 = metadata !{i32 786689, metadata !711, metadata !"__last", metadata !1358, i32 33554888, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 456]
!1361 = metadata !{i32 456, i32 27, metadata !711, null}
!1362 = metadata !{i32 786689, metadata !711, metadata !"__result", metadata !1358, i32 50332104, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 456]
!1363 = metadata !{i32 456, i32 39, metadata !711, null}
!1364 = metadata !{i32 465, i32 9, metadata !711, null}
!1365 = metadata !{i32 465, i32 37, metadata !711, null}
!1366 = metadata !{i32 464, i32 15, metadata !711, null}
!1367 = metadata !{i32 786689, metadata !693, metadata !"__first", metadata !1358, i32 16777846, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 630]
!1368 = metadata !{i32 630, i32 24, metadata !693, null}
!1369 = metadata !{i32 786689, metadata !693, metadata !"__last", metadata !1358, i32 33555062, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 630]
!1370 = metadata !{i32 630, i32 38, metadata !693, null}
!1371 = metadata !{i32 786689, metadata !693, metadata !"__result", metadata !1358, i32 50332278, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 630]
!1372 = metadata !{i32 630, i32 51, metadata !693, null}
!1373 = metadata !{i32 641, i32 9, metadata !693, null}
!1374 = metadata !{i32 641, i32 37, metadata !693, null}
!1375 = metadata !{i32 640, i32 15, metadata !693, null}
!1376 = metadata !{i32 786689, metadata !686, metadata !"__a", metadata !1358, i32 16777433, metadata !689, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__a] [line 217]
!1377 = metadata !{i32 217, i32 20, metadata !686, null}
!1378 = metadata !{i32 786689, metadata !686, metadata !"__b", metadata !1358, i32 33554649, metadata !689, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__b] [line 217]
!1379 = metadata !{i32 217, i32 36, metadata !686, null}
!1380 = metadata !{i32 222, i32 11, metadata !1381, null}
!1381 = metadata !{i32 786443, metadata !580, metadata !686, i32 222, i32 11, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h]
!1382 = metadata !{i32 223, i32 2, metadata !1381, null}
!1383 = metadata !{i32 224, i32 7, metadata !686, null}
!1384 = metadata !{i32 225, i32 5, metadata !686, null}
!1385 = metadata !{i32 786689, metadata !683, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1386 = metadata !{i32 0, i32 0, metadata !683, null}
!1387 = metadata !{i32 786689, metadata !683, metadata !"__n", metadata !1091, i32 33554980, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__n] [line 548]
!1388 = metadata !{i32 548, i32 30, metadata !683, null}
!1389 = metadata !{i32 549, i32 16, metadata !683, null}
!1390 = metadata !{i32 549, i32 16, metadata !1391, null}
!1391 = metadata !{i32 786443, metadata !8, metadata !683, i32 549, i32 16, i32 1, i32 99} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1392 = metadata !{i32 549, i32 54, metadata !1393, null}
!1393 = metadata !{i32 786443, metadata !8, metadata !683, i32 549, i32 54, i32 2, i32 100} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1394 = metadata !{i32 549, i32 54, metadata !1395, null}
!1395 = metadata !{i32 786443, metadata !8, metadata !683, i32 549, i32 54, i32 3, i32 101} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1396 = metadata !{i32 786689, metadata !672, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1397 = metadata !{i32 0, i32 0, metadata !672, null}
!1398 = metadata !{i32 786689, metadata !672, metadata !"__p", metadata !1091, i32 33554984, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 552]
!1399 = metadata !{i32 552, i32 31, metadata !672, null}
!1400 = metadata !{i32 786689, metadata !672, metadata !"__n", metadata !1091, i32 50332200, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__n] [line 552]
!1401 = metadata !{i32 552, i32 43, metadata !672, null}
!1402 = metadata !{i32 553, i32 9, metadata !672, null}
!1403 = metadata !{i32 553, i32 9, metadata !1404, null}
!1404 = metadata !{i32 786443, metadata !8, metadata !672, i32 553, i32 9, i32 1, i32 102} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1405 = metadata !{i32 553, i32 54, metadata !672, null}
!1406 = metadata !{i32 553, i32 54, metadata !1407, null}
!1407 = metadata !{i32 786443, metadata !8, metadata !672, i32 553, i32 54, i32 2, i32 103} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1408 = metadata !{i32 553, i32 54, metadata !1409, null}
!1409 = metadata !{i32 786443, metadata !8, metadata !672, i32 553, i32 54, i32 3, i32 104} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1410 = metadata !{i32 786689, metadata !676, metadata !"this", null, i32 16777216, metadata !1411, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1411 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1412 = metadata !{i32 0, i32 0, metadata !676, null}
!1413 = metadata !{i32 533, i32 32, metadata !676, null}
!1414 = metadata !{i32 533, i32 9, metadata !676, null}
!1415 = metadata !{i32 786689, metadata !675, metadata !"this", null, i32 16777216, metadata !1416, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1416 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIPdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIPdEE]
!1417 = metadata !{i32 0, i32 0, metadata !675, null}
!1418 = metadata !{i32 786689, metadata !675, metadata !"__p", metadata !1162, i32 33554541, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 109]
!1419 = metadata !{i32 109, i32 26, metadata !675, null}
!1420 = metadata !{i32 786689, metadata !675, metadata !"", metadata !1162, i32 50331757, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 109]
!1421 = metadata !{i32 109, i32 40, metadata !675, null}
!1422 = metadata !{i32 110, i32 9, metadata !675, null}
!1423 = metadata !{i32 110, i32 33, metadata !675, null}
!1424 = metadata !{i32 786689, metadata !673, metadata !"this", null, i32 16777216, metadata !1425, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1425 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSaIPdE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSaIPdE]
!1426 = metadata !{i32 0, i32 0, metadata !673, null}
!1427 = metadata !{i32 121, i32 30, metadata !1428, null}
!1428 = metadata !{i32 786443, metadata !71, metadata !673, i32 121, i32 28, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/allocator.h]
!1429 = metadata !{i32 121, i32 30, metadata !673, null}
!1430 = metadata !{i32 786689, metadata !674, metadata !"this", null, i32 16777216, metadata !1416, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1431 = metadata !{i32 0, i32 0, metadata !674, null}
!1432 = metadata !{i32 86, i32 48, metadata !674, null}
!1433 = metadata !{i32 786689, metadata !682, metadata !"this", null, i32 16777216, metadata !1411, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1434 = metadata !{i32 0, i32 0, metadata !682, null}
!1435 = metadata !{i32 529, i32 9, metadata !682, null}
!1436 = metadata !{i32 786689, metadata !677, metadata !"this", null, i32 16777216, metadata !1425, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1437 = metadata !{i32 0, i32 0, metadata !677, null}
!1438 = metadata !{i32 786689, metadata !677, metadata !"", metadata !1439, i32 33554551, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 119]
!1439 = metadata !{i32 786473, metadata !71}      ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/allocator.h]
!1440 = metadata !{i32 119, i32 41, metadata !677, null}
!1441 = metadata !{i32 119, i32 51, metadata !677, null}
!1442 = metadata !{i32 119, i32 53, metadata !677, null}
!1443 = metadata !{i32 786689, metadata !681, metadata !"this", null, i32 16777216, metadata !1416, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1444 = metadata !{i32 0, i32 0, metadata !681, null}
!1445 = metadata !{i32 79, i32 47, metadata !681, null}
!1446 = metadata !{i32 786689, metadata !684, metadata !"this", null, i32 16777216, metadata !1416, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1447 = metadata !{i32 0, i32 0, metadata !684, null}
!1448 = metadata !{i32 786689, metadata !684, metadata !"__n", metadata !1162, i32 33554531, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__n] [line 99]
!1449 = metadata !{i32 99, i32 26, metadata !684, null}
!1450 = metadata !{i32 786689, metadata !684, metadata !"", metadata !1162, i32 50331747, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 99]
!1451 = metadata !{i32 99, i32 43, metadata !684, null}
!1452 = metadata !{i32 101, i32 6, metadata !1453, null}
!1453 = metadata !{i32 786443, metadata !257, metadata !684, i32 101, i32 6, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h]
!1454 = metadata !{i32 101, i32 12, metadata !1453, null}
!1455 = metadata !{i32 102, i32 4, metadata !1453, null}
!1456 = metadata !{i32 104, i32 27, metadata !684, null}
!1457 = metadata !{i32 786689, metadata !685, metadata !"this", null, i32 16777216, metadata !1458, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1458 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !534} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1459 = metadata !{i32 0, i32 0, metadata !685, null}
!1460 = metadata !{i32 114, i32 9, metadata !685, null}
!1461 = metadata !{i32 786689, metadata !702, metadata !"__first", metadata !1358, i32 16777819, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 603]
!1462 = metadata !{i32 603, i32 34, metadata !702, null}
!1463 = metadata !{i32 786689, metadata !702, metadata !"__last", metadata !1358, i32 33555035, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 603]
!1464 = metadata !{i32 603, i32 48, metadata !702, null}
!1465 = metadata !{i32 786689, metadata !702, metadata !"__result", metadata !1358, i32 50332251, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 603]
!1466 = metadata !{i32 603, i32 61, metadata !702, null}
!1467 = metadata !{i32 606, i32 6, metadata !702, null}
!1468 = metadata !{i32 606, i32 34, metadata !702, null}
!1469 = metadata !{i32 607, i32 6, metadata !702, null}
!1470 = metadata !{i32 605, i32 19, metadata !702, null}
!1471 = metadata !{i32 786689, metadata !699, metadata !"__it", metadata !1358, i32 16777505, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__it] [line 289]
!1472 = metadata !{i32 289, i32 28, metadata !699, null}
!1473 = metadata !{i32 290, i32 14, metadata !699, null}
!1474 = metadata !{i32 786689, metadata !701, metadata !"__it", metadata !1475, i32 16777428, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__it] [line 212]
!1475 = metadata !{i32 786473, metadata !567}     ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_iterator_base_types.h]
!1476 = metadata !{i32 212, i32 46, metadata !701, null}
!1477 = metadata !{i32 213, i32 9, metadata !701, null}
!1478 = metadata !{i32 786689, metadata !706, metadata !"__first", metadata !1358, i32 16777801, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 585]
!1479 = metadata !{i32 585, i32 33, metadata !706, null}
!1480 = metadata !{i32 786689, metadata !706, metadata !"__last", metadata !1358, i32 33555017, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 585]
!1481 = metadata !{i32 585, i32 47, metadata !706, null}
!1482 = metadata !{i32 786689, metadata !706, metadata !"__result", metadata !1358, i32 50332233, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 585]
!1483 = metadata !{i32 585, i32 60, metadata !706, null}
!1484 = metadata !{i32 786688, metadata !706, metadata !"__simple", metadata !1358, i32 590, metadata !1485, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__simple] [line 590]
!1485 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from bool]
!1486 = metadata !{i32 590, i32 18, metadata !706, null}
!1487 = metadata !{i32 590, i32 7, metadata !706, null}
!1488 = metadata !{i32 595, i32 14, metadata !706, null}
!1489 = metadata !{i32 786689, metadata !705, metadata !"__it", metadata !1358, i32 16777494, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__it] [line 278]
!1490 = metadata !{i32 278, i32 28, metadata !705, null}
!1491 = metadata !{i32 279, i32 14, metadata !705, null}
!1492 = metadata !{i32 786689, metadata !707, metadata !"__first", metadata !1358, i32 16777785, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 569]
!1493 = metadata !{i32 569, i32 34, metadata !707, null}
!1494 = metadata !{i32 786689, metadata !707, metadata !"__last", metadata !1358, i32 33555001, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 569]
!1495 = metadata !{i32 569, i32 54, metadata !707, null}
!1496 = metadata !{i32 786689, metadata !707, metadata !"__result", metadata !1358, i32 50332217, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 569]
!1497 = metadata !{i32 569, i32 67, metadata !707, null}
!1498 = metadata !{i32 786688, metadata !707, metadata !"_Num", metadata !1358, i32 576, metadata !1499, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_Num] [line 576]
!1499 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !427} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ptrdiff_t]
!1500 = metadata !{i32 576, i32 20, metadata !707, null}
!1501 = metadata !{i32 576, i32 4, metadata !707, null}
!1502 = metadata !{i32 577, i32 8, metadata !1503, null}
!1503 = metadata !{i32 786443, metadata !580, metadata !707, i32 577, i32 8, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h]
!1504 = metadata !{i32 578, i32 6, metadata !1503, null}
!1505 = metadata !{i32 579, i32 4, metadata !707, null}
!1506 = metadata !{i32 786689, metadata !715, metadata !"__first", metadata !1358, i32 16777646, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 430]
!1507 = metadata !{i32 430, i32 24, metadata !715, null}
!1508 = metadata !{i32 786689, metadata !715, metadata !"__last", metadata !1358, i32 33554862, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 430]
!1509 = metadata !{i32 430, i32 37, metadata !715, null}
!1510 = metadata !{i32 786689, metadata !715, metadata !"__result", metadata !1358, i32 50332078, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 430]
!1511 = metadata !{i32 430, i32 49, metadata !715, null}
!1512 = metadata !{i32 432, i32 46, metadata !715, null}
!1513 = metadata !{i32 433, i32 11, metadata !715, null}
!1514 = metadata !{i32 434, i32 11, metadata !715, null}
!1515 = metadata !{i32 432, i32 18, metadata !715, null}
!1516 = metadata !{i32 786689, metadata !717, metadata !"__first", metadata !1358, i32 16777601, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 385]
!1517 = metadata !{i32 385, i32 23, metadata !717, null}
!1518 = metadata !{i32 786689, metadata !717, metadata !"__last", metadata !1358, i32 33554817, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 385]
!1519 = metadata !{i32 385, i32 36, metadata !717, null}
!1520 = metadata !{i32 786689, metadata !717, metadata !"__result", metadata !1358, i32 50332033, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 385]
!1521 = metadata !{i32 385, i32 48, metadata !717, null}
!1522 = metadata !{i32 786688, metadata !717, metadata !"__simple", metadata !1358, i32 390, metadata !1485, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__simple] [line 390]
!1523 = metadata !{i32 390, i32 18, metadata !717, null}
!1524 = metadata !{i32 390, i32 7, metadata !717, null}
!1525 = metadata !{i32 395, i32 14, metadata !717, null}
!1526 = metadata !{i32 786689, metadata !718, metadata !"__first", metadata !1358, i32 16777585, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 369]
!1527 = metadata !{i32 369, i32 29, metadata !718, null}
!1528 = metadata !{i32 786689, metadata !718, metadata !"__last", metadata !1358, i32 33554801, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 369]
!1529 = metadata !{i32 369, i32 49, metadata !718, null}
!1530 = metadata !{i32 786689, metadata !718, metadata !"__result", metadata !1358, i32 50332017, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 369]
!1531 = metadata !{i32 369, i32 62, metadata !718, null}
!1532 = metadata !{i32 786688, metadata !718, metadata !"_Num", metadata !1358, i32 376, metadata !1499, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_Num] [line 376]
!1533 = metadata !{i32 376, i32 20, metadata !718, null}
!1534 = metadata !{i32 376, i32 4, metadata !718, null}
!1535 = metadata !{i32 377, i32 8, metadata !1536, null}
!1536 = metadata !{i32 786443, metadata !580, metadata !718, i32 377, i32 8, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h]
!1537 = metadata !{i32 378, i32 6, metadata !1536, null}
!1538 = metadata !{i32 379, i32 4, metadata !718, null}
!1539 = metadata !{i32 786689, metadata !722, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1540 = metadata !{i32 0, i32 0, metadata !722, null}
!1541 = metadata !{i32 786689, metadata !722, metadata !"__x", metadata !1091, i32 33555278, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__x] [line 846]
!1542 = metadata !{i32 846, i32 26, metadata !722, null}
!1543 = metadata !{i32 848, i32 7, metadata !722, null}
!1544 = metadata !{i32 847, i32 15, metadata !722, null}
!1545 = metadata !{i32 847, i32 42, metadata !722, null}
!1546 = metadata !{i32 848, i32 37, metadata !1547, null}
!1547 = metadata !{i32 786443, metadata !8, metadata !722, i32 848, i32 7, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1548 = metadata !{i32 848, i32 50, metadata !1549, null}
!1549 = metadata !{i32 786443, metadata !8, metadata !1547, i32 848, i32 50, i32 1, i32 105} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1550 = metadata !{i32 848, i32 9, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !8, metadata !1547, i32 848, i32 9, i32 2, i32 106} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1552 = metadata !{i32 850, i32 9, metadata !1547, null}
!1553 = metadata !{i32 848, i32 9, metadata !1547, null}
!1554 = metadata !{i32 850, i32 33, metadata !722, null}
!1555 = metadata !{i32 850, i32 33, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !8, metadata !1547, i32 850, i32 33, i32 1, i32 107} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1557 = metadata !{i32 850, i32 33, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !8, metadata !722, i32 850, i32 33, i32 2, i32 108} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1559 = metadata !{i32 850, i32 33, metadata !1560, null}
!1560 = metadata !{i32 786443, metadata !8, metadata !722, i32 850, i32 33, i32 4, i32 110} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1561 = metadata !{i32 850, i32 33, metadata !1562, null}
!1562 = metadata !{i32 786443, metadata !8, metadata !722, i32 850, i32 33, i32 3, i32 109} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1563 = metadata !{i32 786689, metadata !766, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1564 = metadata !{i32 0, i32 0, metadata !766, null}
!1565 = metadata !{i32 786689, metadata !766, metadata !"__a", metadata !1091, i32 33554896, metadata !320, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__a] [line 464]
!1566 = metadata !{i32 464, i32 41, metadata !766, null}
!1567 = metadata !{i32 786689, metadata !766, metadata !"__num_elements", metadata !1091, i32 50332112, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__num_elements] [line 464]
!1568 = metadata !{i32 464, i32 53, metadata !766, null}
!1569 = metadata !{i32 466, i32 7, metadata !766, null}
!1570 = metadata !{i32 466, i32 9, metadata !1571, null}
!1571 = metadata !{i32 786443, metadata !8, metadata !766, i32 466, i32 7, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1572 = metadata !{i32 466, i32 44, metadata !1573, null}
!1573 = metadata !{i32 786443, metadata !8, metadata !766, i32 466, i32 44, i32 1, i32 111} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1574 = metadata !{i32 466, i32 44, metadata !1575, null}
!1575 = metadata !{i32 786443, metadata !8, metadata !1571, i32 466, i32 44, i32 2, i32 112} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1576 = metadata !{i32 466, i32 44, metadata !766, null}
!1577 = metadata !{i32 466, i32 44, metadata !1578, null}
!1578 = metadata !{i32 786443, metadata !8, metadata !766, i32 466, i32 44, i32 3, i32 113} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1579 = metadata !{i32 786689, metadata !731, metadata !"__first", metadata !1580, i32 16777492, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 276]
!1580 = metadata !{i32 786473, metadata !597}     ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_uninitialized.h]
!1581 = metadata !{i32 276, i32 43, metadata !731, null}
!1582 = metadata !{i32 786689, metadata !731, metadata !"__last", metadata !1580, i32 33554708, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 276]
!1583 = metadata !{i32 276, i32 67, metadata !731, null}
!1584 = metadata !{i32 786689, metadata !731, metadata !"__result", metadata !1580, i32 50331925, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 277]
!1585 = metadata !{i32 277, i32 24, metadata !731, null}
!1586 = metadata !{i32 786689, metadata !731, metadata !"", metadata !1580, i32 67109141, metadata !734, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 277]
!1587 = metadata !{i32 277, i32 49, metadata !731, null}
!1588 = metadata !{i32 278, i32 14, metadata !731, null}
!1589 = metadata !{i32 786689, metadata !730, metadata !"this", null, i32 16777216, metadata !1088, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1590 = metadata !{i32 0, i32 0, metadata !730, null}
!1591 = metadata !{i32 1051, i32 9, metadata !730, null}
!1592 = metadata !{i32 786689, metadata !729, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1593 = metadata !{i32 0, i32 0, metadata !729, null}
!1594 = metadata !{i32 525, i32 9, metadata !729, null}
!1595 = metadata !{i32 786689, metadata !723, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1596 = metadata !{i32 0, i32 0, metadata !723, null}
!1597 = metadata !{i32 568, i32 11, metadata !1598, null}
!1598 = metadata !{i32 786443, metadata !8, metadata !1599, i32 568, i32 11, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1599 = metadata !{i32 786443, metadata !8, metadata !723, i32 567, i32 5, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1600 = metadata !{i32 570, i32 4, metadata !1601, null}
!1601 = metadata !{i32 786443, metadata !8, metadata !1598, i32 569, i32 2, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1602 = metadata !{i32 572, i32 4, metadata !1601, null}
!1603 = metadata !{i32 573, i32 2, metadata !1601, null}
!1604 = metadata !{i32 574, i32 5, metadata !1601, null}
!1605 = metadata !{i32 574, i32 5, metadata !723, null}
!1606 = metadata !{i32 574, i32 5, metadata !1599, null}
!1607 = metadata !{i32 574, i32 5, metadata !1608, null}
!1608 = metadata !{i32 786443, metadata !8, metadata !723, i32 574, i32 5, i32 1, i32 114} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1609 = metadata !{i32 786689, metadata !728, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1610 = metadata !{i32 0, i32 0, metadata !728, null}
!1611 = metadata !{i32 786689, metadata !728, metadata !"__nstart", metadata !1091, i32 33554990, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__nstart] [line 558]
!1612 = metadata !{i32 558, i32 35, metadata !728, null}
!1613 = metadata !{i32 786689, metadata !728, metadata !"__nfinish", metadata !1091, i32 50332206, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__nfinish] [line 558]
!1614 = metadata !{i32 558, i32 51, metadata !728, null}
!1615 = metadata !{i32 786688, metadata !1616, metadata !"__n", metadata !1091, i32 646, metadata !351, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__n] [line 646]
!1616 = metadata !{i32 786443, metadata !8, metadata !728, i32 646, i32 7, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1617 = metadata !{i32 646, i32 18, metadata !1616, null}
!1618 = metadata !{i32 646, i32 12, metadata !1616, null}
!1619 = metadata !{i32 646, i32 12, metadata !1620, null}
!1620 = metadata !{i32 786443, metadata !8, metadata !1621, i32 646, i32 12, i32 2, i32 116} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1621 = metadata !{i32 786443, metadata !8, metadata !1616, i32 646, i32 12, i32 1, i32 115} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1622 = metadata !{i32 647, i32 2, metadata !1616, null}
!1623 = metadata !{i32 646, i32 51, metadata !1616, null}
!1624 = metadata !{i32 648, i32 5, metadata !728, null}
!1625 = metadata !{i32 786689, metadata !724, metadata !"this", null, i32 16777216, metadata !1626, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1626 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSNSt11_Deque_baseIdSaIdEE11_Deque_implE]
!1627 = metadata !{i32 0, i32 0, metadata !724, null}
!1628 = metadata !{i32 497, i32 14, metadata !1629, null}
!1629 = metadata !{i32 786443, metadata !8, metadata !724, i32 497, i32 14, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1630 = metadata !{i32 497, i32 14, metadata !724, null}
!1631 = metadata !{i32 786689, metadata !726, metadata !"this", null, i32 16777216, metadata !1632, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1632 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSaIdE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSaIdE]
!1633 = metadata !{i32 0, i32 0, metadata !726, null}
!1634 = metadata !{i32 121, i32 30, metadata !1635, null}
!1635 = metadata !{i32 786443, metadata !71, metadata !726, i32 121, i32 28, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/allocator.h]
!1636 = metadata !{i32 121, i32 30, metadata !726, null}
!1637 = metadata !{i32 786689, metadata !727, metadata !"this", null, i32 16777216, metadata !1159, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1638 = metadata !{i32 0, i32 0, metadata !727, null}
!1639 = metadata !{i32 86, i32 48, metadata !727, null}
!1640 = metadata !{i32 786689, metadata !738, metadata !"__first", metadata !1580, i32 16777323, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 107]
!1641 = metadata !{i32 107, i32 39, metadata !738, null}
!1642 = metadata !{i32 786689, metadata !738, metadata !"__last", metadata !1580, i32 33554539, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 107]
!1643 = metadata !{i32 107, i32 63, metadata !738, null}
!1644 = metadata !{i32 786689, metadata !738, metadata !"__result", metadata !1580, i32 50331756, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 108]
!1645 = metadata !{i32 108, i32 27, metadata !738, null}
!1646 = metadata !{i32 786688, metadata !738, metadata !"__assignable", metadata !1580, i32 115, metadata !1485, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__assignable] [line 115]
!1647 = metadata !{i32 115, i32 18, metadata !738, null}
!1648 = metadata !{i32 115, i32 7, metadata !738, null}
!1649 = metadata !{i32 122, i32 14, metadata !738, null}
!1650 = metadata !{i32 786689, metadata !742, metadata !"__first", metadata !1580, i32 16777307, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 91]
!1651 = metadata !{i32 91, i32 38, metadata !742, null}
!1652 = metadata !{i32 786689, metadata !742, metadata !"__last", metadata !1580, i32 33554523, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 91]
!1653 = metadata !{i32 91, i32 62, metadata !742, null}
!1654 = metadata !{i32 786689, metadata !742, metadata !"__result", metadata !1580, i32 50331740, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 92]
!1655 = metadata !{i32 92, i32 26, metadata !742, null}
!1656 = metadata !{i32 93, i32 18, metadata !742, null}
!1657 = metadata !{i32 786689, metadata !744, metadata !"__first", metadata !1358, i32 16777672, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 456]
!1658 = metadata !{i32 456, i32 14, metadata !744, null}
!1659 = metadata !{i32 786689, metadata !744, metadata !"__last", metadata !1358, i32 33554888, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 456]
!1660 = metadata !{i32 456, i32 27, metadata !744, null}
!1661 = metadata !{i32 786689, metadata !744, metadata !"__result", metadata !1358, i32 50332104, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 456]
!1662 = metadata !{i32 456, i32 39, metadata !744, null}
!1663 = metadata !{i32 465, i32 9, metadata !744, null}
!1664 = metadata !{i32 465, i32 37, metadata !744, null}
!1665 = metadata !{i32 464, i32 15, metadata !744, null}
!1666 = metadata !{i32 786689, metadata !750, metadata !"__first", metadata !1358, i32 16777646, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 430]
!1667 = metadata !{i32 430, i32 24, metadata !750, null}
!1668 = metadata !{i32 786689, metadata !750, metadata !"__last", metadata !1358, i32 33554862, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 430]
!1669 = metadata !{i32 430, i32 37, metadata !750, null}
!1670 = metadata !{i32 786689, metadata !750, metadata !"__result", metadata !1358, i32 50332078, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 430]
!1671 = metadata !{i32 430, i32 49, metadata !750, null}
!1672 = metadata !{i32 432, i32 46, metadata !750, null}
!1673 = metadata !{i32 433, i32 11, metadata !750, null}
!1674 = metadata !{i32 434, i32 11, metadata !750, null}
!1675 = metadata !{i32 432, i32 18, metadata !750, null}
!1676 = metadata !{i32 786689, metadata !748, metadata !"__it", metadata !1358, i32 16777505, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__it] [line 289]
!1677 = metadata !{i32 289, i32 28, metadata !748, null}
!1678 = metadata !{i32 290, i32 14, metadata !748, null}
!1679 = metadata !{i32 786689, metadata !749, metadata !"__it", metadata !1475, i32 16777428, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__it] [line 212]
!1680 = metadata !{i32 212, i32 46, metadata !749, null}
!1681 = metadata !{i32 213, i32 9, metadata !749, null}
!1682 = metadata !{i32 786689, metadata !756, metadata !"__first", metadata !1358, i32 16777601, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 385]
!1683 = metadata !{i32 385, i32 23, metadata !756, null}
!1684 = metadata !{i32 786689, metadata !756, metadata !"__last", metadata !1358, i32 33554817, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 385]
!1685 = metadata !{i32 385, i32 36, metadata !756, null}
!1686 = metadata !{i32 786689, metadata !756, metadata !"__result", metadata !1358, i32 50332033, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 385]
!1687 = metadata !{i32 385, i32 48, metadata !756, null}
!1688 = metadata !{i32 786688, metadata !756, metadata !"__simple", metadata !1358, i32 390, metadata !1485, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__simple] [line 390]
!1689 = metadata !{i32 390, i32 18, metadata !756, null}
!1690 = metadata !{i32 390, i32 7, metadata !756, null}
!1691 = metadata !{i32 395, i32 14, metadata !756, null}
!1692 = metadata !{i32 786689, metadata !755, metadata !"__it", metadata !1358, i32 16777494, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__it] [line 278]
!1693 = metadata !{i32 278, i32 28, metadata !755, null}
!1694 = metadata !{i32 279, i32 14, metadata !755, null}
!1695 = metadata !{i32 786689, metadata !752, metadata !"__it", metadata !1358, i32 16777494, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__it] [line 278]
!1696 = metadata !{i32 278, i32 28, metadata !752, null}
!1697 = metadata !{i32 279, i32 14, metadata !752, null}
!1698 = metadata !{i32 786689, metadata !754, metadata !"__it", metadata !1475, i32 16777428, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__it] [line 212]
!1699 = metadata !{i32 212, i32 46, metadata !754, null}
!1700 = metadata !{i32 213, i32 9, metadata !754, null}
!1701 = metadata !{i32 786689, metadata !757, metadata !"__first", metadata !1358, i32 16777547, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 331]
!1702 = metadata !{i32 331, i32 22, metadata !757, null}
!1703 = metadata !{i32 786689, metadata !757, metadata !"__last", metadata !1358, i32 33554763, metadata !"_ZTSSt15_Deque_iteratorIdRKdPS0_E", i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 331]
!1704 = metadata !{i32 331, i32 35, metadata !757, null}
!1705 = metadata !{i32 786689, metadata !757, metadata !"__result", metadata !1358, i32 50331979, metadata !"_ZTSSt15_Deque_iteratorIdRdPdE", i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__result] [line 331]
!1706 = metadata !{i32 331, i32 47, metadata !757, null}
!1707 = metadata !{i32 786688, metadata !1708, metadata !"__n", metadata !1358, i32 334, metadata !1709, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__n] [line 334]
!1708 = metadata !{i32 786443, metadata !580, metadata !757, i32 334, i32 4, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h]
!1709 = metadata !{i32 786454, metadata !580, metadata !757, metadata !"_Distance", i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1710} ; [ DW_TAG_typedef ] [_Distance] [line 333, size 0, align 0, offset 0] [from difference_type]
!1710 = metadata !{i32 786454, metadata !567, metadata !"_ZTSSt15iterator_traitsISt15_Deque_iteratorIdRKdPS1_EE", metadata !"difference_type", i32 167, i64 0, i64 0, i64 0, i32 0, metadata !764} ; [ DW_TAG_typedef ] [difference_type] [line 167, size 0, align 0, offset 0] [from difference_type]
!1711 = metadata !{i32 334, i32 18, metadata !1708, null}
!1712 = metadata !{i32 334, i32 24, metadata !1708, null}
!1713 = metadata !{i32 334, i32 24, metadata !1714, null}
!1714 = metadata !{i32 786443, metadata !580, metadata !1715, i32 334, i32 24, i32 2, i32 118} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h]
!1715 = metadata !{i32 786443, metadata !580, metadata !1708, i32 334, i32 24, i32 1, i32 117} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h]
!1716 = metadata !{i32 336, i32 20, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !580, metadata !1708, i32 335, i32 6, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_algobase.h]
!1718 = metadata !{i32 336, i32 8, metadata !1717, null}
!1719 = metadata !{i32 337, i32 8, metadata !1717, null}
!1720 = metadata !{i32 338, i32 8, metadata !1717, null}
!1721 = metadata !{i32 339, i32 6, metadata !1717, null}
!1722 = metadata !{i32 334, i32 51, metadata !1708, null}
!1723 = metadata !{i32 340, i32 4, metadata !757, null}
!1724 = metadata !{i32 786689, metadata !761, metadata !"__x", metadata !1091, i32 16777551, metadata !765, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__x] [line 335]
!1725 = metadata !{i32 335, i32 55, metadata !761, null}
!1726 = metadata !{i32 786689, metadata !761, metadata !"__y", metadata !1091, i32 33554768, metadata !765, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__y] [line 336]
!1727 = metadata !{i32 336, i32 48, metadata !761, null}
!1728 = metadata !{i32 339, i32 3, metadata !761, null}
!1729 = metadata !{i32 786689, metadata !760, metadata !"this", null, i32 16777216, metadata !1100, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1730 = metadata !{i32 0, i32 0, metadata !760, null}
!1731 = metadata !{i32 154, i32 2, metadata !760, null}
!1732 = metadata !{i32 155, i32 6, metadata !1733, null}
!1733 = metadata !{i32 786443, metadata !8, metadata !760, i32 155, i32 6, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1734 = metadata !{i32 157, i32 6, metadata !1735, null}
!1735 = metadata !{i32 786443, metadata !8, metadata !1733, i32 156, i32 4, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1736 = metadata !{i32 158, i32 6, metadata !1735, null}
!1737 = metadata !{i32 159, i32 4, metadata !1735, null}
!1738 = metadata !{i32 160, i32 2, metadata !760, null}
!1739 = metadata !{i32 786689, metadata !759, metadata !"this", null, i32 16777216, metadata !1182, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1740 = metadata !{i32 0, i32 0, metadata !759, null}
!1741 = metadata !{i32 154, i32 2, metadata !759, null}
!1742 = metadata !{i32 155, i32 6, metadata !1743, null}
!1743 = metadata !{i32 786443, metadata !8, metadata !759, i32 155, i32 6, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1744 = metadata !{i32 157, i32 6, metadata !1745, null}
!1745 = metadata !{i32 786443, metadata !8, metadata !1743, i32 156, i32 4, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1746 = metadata !{i32 158, i32 6, metadata !1745, null}
!1747 = metadata !{i32 159, i32 4, metadata !1745, null}
!1748 = metadata !{i32 160, i32 2, metadata !759, null}
!1749 = metadata !{i32 786689, metadata !769, metadata !"this", null, i32 16777216, metadata !1626, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1750 = metadata !{i32 0, i32 0, metadata !769, null}
!1751 = metadata !{i32 786689, metadata !769, metadata !"__a", metadata !1091, i32 33554942, metadata !335, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__a] [line 510]
!1752 = metadata !{i32 510, i32 36, metadata !769, null}
!1753 = metadata !{i32 513, i32 2, metadata !769, null}
!1754 = metadata !{i32 513, i32 2, metadata !1755, null}
!1755 = metadata !{i32 786443, metadata !8, metadata !769, i32 513, i32 2, i32 1, i32 119} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1756 = metadata !{i32 513, i32 4, metadata !1757, null}
!1757 = metadata !{i32 786443, metadata !8, metadata !769, i32 513, i32 4, i32 3, i32 121} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1758 = metadata !{i32 513, i32 4, metadata !1759, null}
!1759 = metadata !{i32 786443, metadata !8, metadata !1760, i32 513, i32 4, i32 4, i32 122} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1760 = metadata !{i32 786443, metadata !8, metadata !769, i32 513, i32 4, i32 2, i32 120} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1761 = metadata !{i32 513, i32 4, metadata !1762, null}
!1762 = metadata !{i32 786443, metadata !8, metadata !769, i32 513, i32 4, i32 5, i32 123} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1763 = metadata !{i32 786689, metadata !767, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1764 = metadata !{i32 0, i32 0, metadata !767, null}
!1765 = metadata !{i32 786689, metadata !767, metadata !"__num_elements", metadata !1091, i32 33554988, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__num_elements] [line 556]
!1766 = metadata !{i32 556, i32 36, metadata !767, null}
!1767 = metadata !{i32 786688, metadata !767, metadata !"__num_nodes", metadata !1091, i32 589, metadata !1768, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__num_nodes] [line 589]
!1768 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from size_t]
!1769 = metadata !{i32 589, i32 20, metadata !767, null}
!1770 = metadata !{i32 589, i32 7, metadata !767, null}
!1771 = metadata !{i32 589, i32 51, metadata !767, null}
!1772 = metadata !{i32 592, i32 35, metadata !767, null}
!1773 = metadata !{i32 594, i32 30, metadata !767, null}
!1774 = metadata !{i32 786688, metadata !767, metadata !"__nstart", metadata !1091, i32 601, metadata !351, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__nstart] [line 601]
!1775 = metadata !{i32 601, i32 13, metadata !767, null}
!1776 = metadata !{i32 601, i32 7, metadata !767, null}
!1777 = metadata !{i32 786688, metadata !767, metadata !"__nfinish", metadata !1091, i32 603, metadata !351, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__nfinish] [line 603]
!1778 = metadata !{i32 603, i32 13, metadata !767, null}
!1779 = metadata !{i32 603, i32 7, metadata !767, null}
!1780 = metadata !{i32 606, i32 4, metadata !1781, null}
!1781 = metadata !{i32 786443, metadata !8, metadata !767, i32 606, i32 2, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1782 = metadata !{i32 606, i32 42, metadata !1783, null}
!1783 = metadata !{i32 786443, metadata !8, metadata !1781, i32 606, i32 42, i32 1, i32 124} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1784 = metadata !{i32 621, i32 5, metadata !1781, null}
!1785 = metadata !{i32 606, i32 42, metadata !1781, null}
!1786 = metadata !{i32 609, i32 4, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !8, metadata !767, i32 608, i32 2, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1788 = metadata !{i32 610, i32 4, metadata !1787, null}
!1789 = metadata !{i32 611, i32 4, metadata !1787, null}
!1790 = metadata !{i32 612, i32 4, metadata !1787, null}
!1791 = metadata !{i32 621, i32 5, metadata !1787, null}
!1792 = metadata !{i32 621, i32 5, metadata !767, null}
!1793 = metadata !{i32 621, i32 5, metadata !1794, null}
!1794 = metadata !{i32 786443, metadata !8, metadata !767, i32 621, i32 5, i32 1, i32 125} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1795 = metadata !{i32 615, i32 7, metadata !767, null}
!1796 = metadata !{i32 616, i32 7, metadata !767, null}
!1797 = metadata !{i32 617, i32 7, metadata !767, null}
!1798 = metadata !{i32 618, i32 7, metadata !767, null}
!1799 = metadata !{i32 620, i32 8, metadata !767, null}
!1800 = metadata !{i32 621, i32 5, metadata !1801, null}
!1801 = metadata !{i32 786443, metadata !8, metadata !767, i32 621, i32 5, i32 3, i32 127} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1802 = metadata !{i32 621, i32 5, metadata !1803, null}
!1803 = metadata !{i32 786443, metadata !8, metadata !767, i32 621, i32 5, i32 2, i32 126} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1804 = metadata !{i32 786689, metadata !768, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1805 = metadata !{i32 0, i32 0, metadata !768, null}
!1806 = metadata !{i32 786689, metadata !768, metadata !"__nstart", metadata !1091, i32 33554989, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__nstart] [line 557]
!1807 = metadata !{i32 557, i32 34, metadata !768, null}
!1808 = metadata !{i32 786689, metadata !768, metadata !"__nfinish", metadata !1091, i32 50332205, metadata !351, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__nfinish] [line 557]
!1809 = metadata !{i32 557, i32 50, metadata !768, null}
!1810 = metadata !{i32 786688, metadata !768, metadata !"__cur", metadata !1091, i32 628, metadata !351, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cur] [line 628]
!1811 = metadata !{i32 628, i32 13, metadata !768, null}
!1812 = metadata !{i32 631, i32 9, metadata !1813, null}
!1813 = metadata !{i32 786443, metadata !8, metadata !1814, i32 631, i32 4, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1814 = metadata !{i32 786443, metadata !8, metadata !768, i32 630, i32 2, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1815 = metadata !{i32 631, i32 9, metadata !1816, null}
!1816 = metadata !{i32 786443, metadata !8, metadata !1817, i32 631, i32 9, i32 2, i32 130} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1817 = metadata !{i32 786443, metadata !8, metadata !1813, i32 631, i32 9, i32 1, i32 128} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1818 = metadata !{i32 632, i32 15, metadata !1813, null}
!1819 = metadata !{i32 632, i32 15, metadata !1820, null}
!1820 = metadata !{i32 786443, metadata !8, metadata !1813, i32 632, i32 15, i32 1, i32 129} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1821 = metadata !{i32 631, i32 46, metadata !1813, null}
!1822 = metadata !{i32 639, i32 5, metadata !1813, null}
!1823 = metadata !{i32 633, i32 2, metadata !1814, null}
!1824 = metadata !{i32 636, i32 4, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !8, metadata !768, i32 635, i32 2, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1826 = metadata !{i32 637, i32 4, metadata !1825, null}
!1827 = metadata !{i32 639, i32 5, metadata !1825, null}
!1828 = metadata !{i32 639, i32 5, metadata !768, null}
!1829 = metadata !{i32 639, i32 5, metadata !1830, null}
!1830 = metadata !{i32 786443, metadata !8, metadata !768, i32 639, i32 5, i32 1, i32 131} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1831 = metadata !{i32 639, i32 5, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !8, metadata !768, i32 639, i32 5, i32 3, i32 133} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1833 = metadata !{i32 639, i32 5, metadata !1834, null}
!1834 = metadata !{i32 786443, metadata !8, metadata !768, i32 639, i32 5, i32 2, i32 132} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1835 = metadata !{i32 786689, metadata !771, metadata !"this", null, i32 16777216, metadata !1632, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1836 = metadata !{i32 0, i32 0, metadata !771, null}
!1837 = metadata !{i32 786689, metadata !771, metadata !"__a", metadata !1439, i32 33554547, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__a] [line 115]
!1838 = metadata !{i32 115, i32 34, metadata !771, null}
!1839 = metadata !{i32 116, i32 36, metadata !771, null}
!1840 = metadata !{i32 116, i32 38, metadata !771, null}
!1841 = metadata !{i32 786689, metadata !770, metadata !"this", null, i32 16777216, metadata !1182, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1842 = metadata !{i32 0, i32 0, metadata !770, null}
!1843 = metadata !{i32 133, i32 56, metadata !770, null}
!1844 = metadata !{i32 133, i32 58, metadata !770, null}
!1845 = metadata !{i32 786689, metadata !772, metadata !"this", null, i32 16777216, metadata !1159, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1846 = metadata !{i32 0, i32 0, metadata !772, null}
!1847 = metadata !{i32 786689, metadata !772, metadata !"", metadata !1162, i32 33554513, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 81]
!1848 = metadata !{i32 81, i32 41, metadata !772, null}
!1849 = metadata !{i32 81, i32 67, metadata !772, null}
!1850 = metadata !{i32 786689, metadata !775, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1851 = metadata !{i32 0, i32 0, metadata !775, null}
!1852 = metadata !{i32 786689, metadata !775, metadata !"__first", metadata !1091, i32 33556347, metadata !136, i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 1915]
!1853 = metadata !{i32 1915, i32 32, metadata !775, null}
!1854 = metadata !{i32 786689, metadata !775, metadata !"__last", metadata !1091, i32 50333563, metadata !136, i32 8192, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 1915]
!1855 = metadata !{i32 1915, i32 50, metadata !775, null}
!1856 = metadata !{i32 786689, metadata !775, metadata !"", metadata !1091, i32 67110780, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 1916]
!1857 = metadata !{i32 1916, i32 35, metadata !775, null}
!1858 = metadata !{i32 1920, i32 7, metadata !775, null}
!1859 = metadata !{i32 786689, metadata !774, metadata !"this", null, i32 16777216, metadata !981, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1860 = metadata !{i32 0, i32 0, metadata !774, null}
!1861 = metadata !{i32 1060, i32 9, metadata !774, null}
!1862 = metadata !{i32 786689, metadata !777, metadata !"this", null, i32 16777216, metadata !1174, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1863 = metadata !{i32 0, i32 0, metadata !777, null}
!1864 = metadata !{i32 458, i32 7, metadata !777, null}
!1865 = metadata !{i32 458, i32 9, metadata !1866, null}
!1866 = metadata !{i32 786443, metadata !8, metadata !777, i32 458, i32 7, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1867 = metadata !{i32 458, i32 31, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !8, metadata !777, i32 458, i32 31, i32 1, i32 134} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1869 = metadata !{i32 458, i32 31, metadata !1870, null}
!1870 = metadata !{i32 786443, metadata !8, metadata !1866, i32 458, i32 31, i32 2, i32 135} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1871 = metadata !{i32 458, i32 31, metadata !777, null}
!1872 = metadata !{i32 458, i32 31, metadata !1873, null}
!1873 = metadata !{i32 786443, metadata !8, metadata !777, i32 458, i32 31, i32 3, i32 136} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1874 = metadata !{i32 786689, metadata !778, metadata !"this", null, i32 16777216, metadata !1626, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1875 = metadata !{i32 0, i32 0, metadata !778, null}
!1876 = metadata !{i32 508, i32 2, metadata !778, null}
!1877 = metadata !{i32 508, i32 2, metadata !1878, null}
!1878 = metadata !{i32 786443, metadata !8, metadata !778, i32 508, i32 2, i32 1, i32 137} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1879 = metadata !{i32 508, i32 4, metadata !1880, null}
!1880 = metadata !{i32 786443, metadata !8, metadata !778, i32 508, i32 4, i32 3, i32 139} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1881 = metadata !{i32 508, i32 4, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !8, metadata !1883, i32 508, i32 4, i32 4, i32 140} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1883 = metadata !{i32 786443, metadata !8, metadata !778, i32 508, i32 4, i32 2, i32 138} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1884 = metadata !{i32 508, i32 4, metadata !1885, null}
!1885 = metadata !{i32 786443, metadata !8, metadata !778, i32 508, i32 4, i32 5, i32 141} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_deque.h]
!1886 = metadata !{i32 786689, metadata !779, metadata !"this", null, i32 16777216, metadata !1632, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1887 = metadata !{i32 0, i32 0, metadata !779, null}
!1888 = metadata !{i32 113, i32 27, metadata !779, null}
!1889 = metadata !{i32 113, i32 29, metadata !779, null}
!1890 = metadata !{i32 786689, metadata !780, metadata !"this", null, i32 16777216, metadata !1159, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!1891 = metadata !{i32 0, i32 0, metadata !780, null}
!1892 = metadata !{i32 79, i32 47, metadata !780, null}
