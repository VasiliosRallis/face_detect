; ModuleID = '/home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%"class.std::ios_base::Init" = type { i8 }
%"class.cv::Mat" = type { i32, i32, i32, i32, i8*, i32*, i8*, i8*, i8*, %"class.cv::MatAllocator"*, %"struct.cv::Mat::MSize", %"struct.cv::Mat::MStep" }
%"class.cv::MatAllocator" = type { i32 (...)** }
%"struct.cv::Mat::MSize" = type { i32* }
%"struct.cv::Mat::MStep" = type { i32*, [2 x i32] }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32 (...)**, i32, i8*, %"class.cv::Size_" }
%"class.cv::Size_" = type { i32, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl" }
%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl" = type { %"class.cv::Rect_"*, %"class.cv::Rect_"*, %"class.cv::Rect_"* }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }
%"class.cv::CascadeClassifier" = type { i32 (...)**, %"class.cv::CascadeClassifier::Data", %"class.cv::Ptr", %"class.cv::Ptr.25", %"class.cv::Ptr.26" }
%"class.cv::CascadeClassifier::Data" = type { i8, i32, i32, i32, %"class.cv::Size_", %"class.std::vector.0", %"class.std::vector.5", %"class.std::vector.10", %"class.std::vector.15", %"class.std::vector.20" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<cv::CascadeClassifier::Data::Stage, std::allocator<cv::CascadeClassifier::Data::Stage> >::_Vector_impl" }
%"struct.std::_Vector_base<cv::CascadeClassifier::Data::Stage, std::allocator<cv::CascadeClassifier::Data::Stage> >::_Vector_impl" = type { %"struct.cv::CascadeClassifier::Data::Stage"*, %"struct.cv::CascadeClassifier::Data::Stage"*, %"struct.cv::CascadeClassifier::Data::Stage"* }
%"struct.cv::CascadeClassifier::Data::Stage" = type { i32, i32, float }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<cv::CascadeClassifier::Data::DTree, std::allocator<cv::CascadeClassifier::Data::DTree> >::_Vector_impl" }
%"struct.std::_Vector_base<cv::CascadeClassifier::Data::DTree, std::allocator<cv::CascadeClassifier::Data::DTree> >::_Vector_impl" = type { %"struct.cv::CascadeClassifier::Data::DTree"*, %"struct.cv::CascadeClassifier::Data::DTree"*, %"struct.cv::CascadeClassifier::Data::DTree"* }
%"struct.cv::CascadeClassifier::Data::DTree" = type { i32 }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<cv::CascadeClassifier::Data::DTreeNode, std::allocator<cv::CascadeClassifier::Data::DTreeNode> >::_Vector_impl" }
%"struct.std::_Vector_base<cv::CascadeClassifier::Data::DTreeNode, std::allocator<cv::CascadeClassifier::Data::DTreeNode> >::_Vector_impl" = type { %"struct.cv::CascadeClassifier::Data::DTreeNode"*, %"struct.cv::CascadeClassifier::Data::DTreeNode"*, %"struct.cv::CascadeClassifier::Data::DTreeNode"* }
%"struct.cv::CascadeClassifier::Data::DTreeNode" = type { i32, float, i32, i32 }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<float, std::allocator<float> >::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float> >::_Vector_impl" = type { float*, float*, float* }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.cv::Ptr" = type { %"class.cv::FeatureEvaluator"*, i32* }
%"class.cv::FeatureEvaluator" = type { i32 (...)** }
%"class.cv::Ptr.25" = type { %struct.CvHaarClassifierCascade*, i32* }
%struct.CvHaarClassifierCascade = type { i32, i32, %struct.CvSize, %struct.CvSize, double, %struct.CvHaarStageClassifier*, %struct.CvHidHaarClassifierCascade* }
%struct.CvSize = type { i32, i32 }
%struct.CvHaarStageClassifier = type { i32, float, %struct.CvHaarClassifier*, i32, i32, i32 }
%struct.CvHaarClassifier = type { i32, %struct.CvHaarFeature*, float*, i32*, i32*, float* }
%struct.CvHaarFeature = type { i32, [3 x %struct.anon] }
%struct.anon = type { %struct.CvRect, float }
%struct.CvRect = type { i32, i32, i32, i32 }
%struct.CvHidHaarClassifierCascade = type opaque
%"class.cv::Ptr.26" = type { %"class.cv::CascadeClassifier::MaskGenerator"*, i32* }
%"class.cv::CascadeClassifier::MaskGenerator" = type { i32 (...)** }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::allocator.27" = type { i8 }
%"class.cv::Point_" = type { i32, i32 }
%"class.cv::Scalar_" = type { %"class.cv::Vec" }
%"class.cv::Vec" = type { %"class.cv::Matx" }
%"class.cv::Matx" = type { [4 x double] }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [32 x i8] c"haarcascade_frontalface_alt.xml\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_my_ocv_sw.cpp, i8* null }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  %1 = call %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !2339
  %2 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1, !dbg !2339
  ret void, !dbg !2339
}

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* returned) #0

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* returned) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

define void @_Z16ocvSwPassthroughPN2cv3MatES1_(%"class.cv::Mat"* %src, %"class.cv::Mat"* %dst) #0 {
  %1 = alloca %"class.cv::Mat"*, align 4
  %2 = alloca %"class.cv::Mat"*, align 4
  %3 = alloca %"class.cv::_OutputArray", align 4
  store %"class.cv::Mat"* %src, %"class.cv::Mat"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %1}, metadata !2340), !dbg !2341
  store %"class.cv::Mat"* %dst, %"class.cv::Mat"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %2}, metadata !2342), !dbg !2343
  %4 = load %"class.cv::Mat"** %1, align 4, !dbg !2344
  %5 = load %"class.cv::Mat"** %2, align 4, !dbg !2344
  %6 = call %"class.cv::_OutputArray"* @_ZN2cv12_OutputArrayC1ERNS_3MatE(%"class.cv::_OutputArray"* %3, %"class.cv::Mat"* dereferenceable(56) %5), !dbg !2344
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(%"class.cv::Mat"* %4, %"class.cv::_OutputArray"* dereferenceable(20) %3), !dbg !2344
  ret void, !dbg !2345
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(%"class.cv::Mat"*, %"class.cv::_OutputArray"* dereferenceable(20)) #0

declare %"class.cv::_OutputArray"* @_ZN2cv12_OutputArrayC1ERNS_3MatE(%"class.cv::_OutputArray"* returned, %"class.cv::Mat"* dereferenceable(56)) #0

define void @_Z14ocvSwColorGreyPN2cv3MatES1_(%"class.cv::Mat"* %src, %"class.cv::Mat"* %dst) #0 {
  %1 = alloca %"class.cv::Mat"*, align 4
  %2 = alloca %"class.cv::Mat"*, align 4
  %tmpgrey = alloca %"class.cv::Mat", align 4
  %3 = alloca %"class.cv::_InputArray", align 4
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca %"class.cv::_OutputArray", align 4
  %7 = alloca %"class.cv::_InputArray", align 4
  %8 = alloca %"class.cv::_OutputArray", align 4
  store %"class.cv::Mat"* %src, %"class.cv::Mat"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %1}, metadata !2346), !dbg !2347
  store %"class.cv::Mat"* %dst, %"class.cv::Mat"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %2}, metadata !2348), !dbg !2349
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"* %tmpgrey}, metadata !2350), !dbg !2351
  %9 = call %"class.cv::Mat"* @_ZN2cv3MatC2Ev(%"class.cv::Mat"* %tmpgrey), !dbg !2352
  %10 = load %"class.cv::Mat"** %1, align 4, !dbg !2353
  %11 = invoke %"class.cv::_InputArray"* @_ZN2cv11_InputArrayC1ERKNS_3MatE(%"class.cv::_InputArray"* %3, %"class.cv::Mat"* dereferenceable(56) %10)
          to label %12 unwind label %23, !dbg !2353

; <label>:12                                      ; preds = %0
  %13 = invoke %"class.cv::_OutputArray"* @_ZN2cv12_OutputArrayC1ERNS_3MatE(%"class.cv::_OutputArray"* %6, %"class.cv::Mat"* dereferenceable(56) %tmpgrey)
          to label %14 unwind label %23, !dbg !2354

; <label>:14                                      ; preds = %12
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEii(%"class.cv::_InputArray"* dereferenceable(20) %3, %"class.cv::_OutputArray"* dereferenceable(20) %6, i32 6, i32 0)
          to label %15 unwind label %23, !dbg !2356

; <label>:15                                      ; preds = %14
  %16 = invoke %"class.cv::_InputArray"* @_ZN2cv11_InputArrayC1ERKNS_3MatE(%"class.cv::_InputArray"* %7, %"class.cv::Mat"* dereferenceable(56) %tmpgrey)
          to label %17 unwind label %23, !dbg !2358

; <label>:17                                      ; preds = %15
  %18 = load %"class.cv::Mat"** %2, align 4, !dbg !2359
  %19 = invoke %"class.cv::_OutputArray"* @_ZN2cv12_OutputArrayC1ERNS_3MatE(%"class.cv::_OutputArray"* %8, %"class.cv::Mat"* dereferenceable(56) %18)
          to label %20 unwind label %23, !dbg !2359

; <label>:20                                      ; preds = %17
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEii(%"class.cv::_InputArray"* dereferenceable(20) %7, %"class.cv::_OutputArray"* dereferenceable(20) %8, i32 8, i32 0)
          to label %21 unwind label %23, !dbg !2361

; <label>:21                                      ; preds = %20
  %22 = call %"class.cv::Mat"* @_ZN2cv3MatD2Ev(%"class.cv::Mat"* %tmpgrey), !dbg !2363
  ret void, !dbg !2363

; <label>:23                                      ; preds = %20, %17, %15, %14, %12, %0
  %24 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !2363
  %25 = extractvalue { i8*, i32 } %24, 0, !dbg !2363
  store i8* %25, i8** %4, !dbg !2363
  %26 = extractvalue { i8*, i32 } %24, 1, !dbg !2363
  store i32 %26, i32* %5, !dbg !2363
  %27 = invoke %"class.cv::Mat"* @_ZN2cv3MatD2Ev(%"class.cv::Mat"* %tmpgrey)
          to label %28 unwind label %34, !dbg !2363

; <label>:28                                      ; preds = %23
  br label %29, !dbg !2364

; <label>:29                                      ; preds = %28
  %30 = load i8** %4, !dbg !2366
  %31 = load i32* %5, !dbg !2366
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0, !dbg !2366
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1, !dbg !2366
  resume { i8*, i32 } %33, !dbg !2366

; <label>:34                                      ; preds = %23
  %35 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !2368
  %36 = extractvalue { i8*, i32 } %35, 0, !dbg !2368
  call void @__clang_call_terminate(i8* %36) #8, !dbg !2368
  unreachable, !dbg !2368
}

; Function Attrs: inlinehint
define linkonce_odr %"class.cv::Mat"* @_ZN2cv3MatC2Ev(%"class.cv::Mat"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.cv::Mat"*, align 4
  store %"class.cv::Mat"* %this, %"class.cv::Mat"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %1}, metadata !2370), !dbg !2371
  %2 = load %"class.cv::Mat"** %1
  %3 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 10, !dbg !2372
  %4 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 2, !dbg !2372
  %5 = call %"struct.cv::Mat::MSize"* @_ZN2cv3Mat5MSizeC2EPi(%"struct.cv::Mat::MSize"* %3, i32* %4), !dbg !2372
  %6 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 11, !dbg !2372
  %7 = call %"struct.cv::Mat::MStep"* @_ZN2cv3Mat5MStepC2Ev(%"struct.cv::Mat::MStep"* %6), !dbg !2372
  call void @_ZN2cv3Mat9initEmptyEv(%"class.cv::Mat"* %2), !dbg !2373
  ret %"class.cv::Mat"* %2, !dbg !2375
}

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEii(%"class.cv::_InputArray"* dereferenceable(20), %"class.cv::_OutputArray"* dereferenceable(20), i32, i32) #0

declare %"class.cv::_InputArray"* @_ZN2cv11_InputArrayC1ERKNS_3MatE(%"class.cv::_InputArray"* returned, %"class.cv::Mat"* dereferenceable(56)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint
define linkonce_odr %"class.cv::Mat"* @_ZN2cv3MatD2Ev(%"class.cv::Mat"* returned %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.cv::Mat"*, align 4
  %2 = alloca %"class.cv::Mat"*, align 4
  store %"class.cv::Mat"* %this, %"class.cv::Mat"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %2}, metadata !2376), !dbg !2377
  %3 = load %"class.cv::Mat"** %2
  store %"class.cv::Mat"* %3, %"class.cv::Mat"** %1
  call void @_ZN2cv3Mat7releaseEv(%"class.cv::Mat"* %3), !dbg !2378
  %4 = getelementptr inbounds %"class.cv::Mat"* %3, i32 0, i32 11, !dbg !2380
  %5 = getelementptr inbounds %"struct.cv::Mat::MStep"* %4, i32 0, i32 0, !dbg !2380
  %6 = load i32** %5, align 4, !dbg !2380
  %7 = getelementptr inbounds %"class.cv::Mat"* %3, i32 0, i32 11, !dbg !2380
  %8 = getelementptr inbounds %"struct.cv::Mat::MStep"* %7, i32 0, i32 1, !dbg !2380
  %9 = getelementptr inbounds [2 x i32]* %8, i32 0, i32 0, !dbg !2380
  %10 = icmp ne i32* %6, %9, !dbg !2380
  br i1 %10, label %11, label %16, !dbg !2380

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"class.cv::Mat"* %3, i32 0, i32 11, !dbg !2382
  %13 = getelementptr inbounds %"struct.cv::Mat::MStep"* %12, i32 0, i32 0, !dbg !2382
  %14 = load i32** %13, align 4, !dbg !2382
  %15 = bitcast i32* %14 to i8*, !dbg !2382
  call void @_ZN2cv8fastFreeEPv(i8* %15), !dbg !2382
  br label %16, !dbg !2382

; <label>:16                                      ; preds = %11, %0
  %17 = load %"class.cv::Mat"** %1, !dbg !2383
  ret %"class.cv::Mat"* %17, !dbg !2383
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #8
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

define i32 @_Z15ocvSwFastCornerPN2cv3MatES1_(%"class.cv::Mat"* %src, %"class.cv::Mat"* %dst) #0 {
  %1 = alloca %"class.cv::Mat"*, align 4
  %2 = alloca %"class.cv::Mat"*, align 4
  %3 = alloca %"class.cv::_OutputArray", align 4
  %faces = alloca %"class.std::vector", align 4
  %frame_gray = alloca %"class.cv::Mat", align 4
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca %"class.cv::_InputArray", align 4
  %7 = alloca %"class.cv::_OutputArray", align 4
  %8 = alloca %"class.cv::_InputArray", align 4
  %9 = alloca %"class.cv::_OutputArray", align 4
  %face_cascade = alloca %"class.cv::CascadeClassifier", align 4
  %10 = alloca %"class.std::basic_string", align 4
  %11 = alloca %"class.std::allocator.27", align 1
  %12 = alloca %"class.cv::Size_", align 4
  %13 = alloca %"class.cv::Size_", align 4
  %i = alloca i32, align 4
  %center = alloca %"class.cv::Point_", align 4
  %14 = alloca %"class.cv::Point_", align 4
  %15 = alloca %"class.cv::Size_", align 4
  %16 = alloca %"class.cv::Scalar_", align 8
  %17 = alloca i32
  store %"class.cv::Mat"* %src, %"class.cv::Mat"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %1}, metadata !2384), !dbg !2385
  store %"class.cv::Mat"* %dst, %"class.cv::Mat"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %2}, metadata !2386), !dbg !2387
  %18 = load %"class.cv::Mat"** %1, align 4, !dbg !2388
  %19 = load %"class.cv::Mat"** %2, align 4, !dbg !2388
  %20 = call %"class.cv::_OutputArray"* @_ZN2cv12_OutputArrayC1ERNS_3MatE(%"class.cv::_OutputArray"* %3, %"class.cv::Mat"* dereferenceable(56) %19), !dbg !2388
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(%"class.cv::Mat"* %18, %"class.cv::_OutputArray"* dereferenceable(20) %3), !dbg !2388
  call void @llvm.dbg.declare(metadata !{%"class.std::vector"* %faces}, metadata !2389), !dbg !2390
  %21 = call %"class.std::vector"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEC2Ev(%"class.std::vector"* %faces), !dbg !2391
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"* %frame_gray}, metadata !2392), !dbg !2393
  %22 = invoke %"class.cv::Mat"* @_ZN2cv3MatC2Ev(%"class.cv::Mat"* %frame_gray)
          to label %23 unwind label %105, !dbg !2393

; <label>:23                                      ; preds = %0
  %24 = load %"class.cv::Mat"** %1, align 4, !dbg !2394
  %25 = invoke %"class.cv::_InputArray"* @_ZN2cv11_InputArrayC1ERKNS_3MatE(%"class.cv::_InputArray"* %6, %"class.cv::Mat"* dereferenceable(56) %24)
          to label %26 unwind label %109, !dbg !2394

; <label>:26                                      ; preds = %23
  %27 = invoke %"class.cv::_OutputArray"* @_ZN2cv12_OutputArrayC1ERNS_3MatE(%"class.cv::_OutputArray"* %7, %"class.cv::Mat"* dereferenceable(56) %frame_gray)
          to label %28 unwind label %109, !dbg !2395

; <label>:28                                      ; preds = %26
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEii(%"class.cv::_InputArray"* dereferenceable(20) %6, %"class.cv::_OutputArray"* dereferenceable(20) %7, i32 6, i32 0)
          to label %29 unwind label %109, !dbg !2397

; <label>:29                                      ; preds = %28
  %30 = invoke %"class.cv::_InputArray"* @_ZN2cv11_InputArrayC1ERKNS_3MatE(%"class.cv::_InputArray"* %8, %"class.cv::Mat"* dereferenceable(56) %frame_gray)
          to label %31 unwind label %109, !dbg !2399

; <label>:31                                      ; preds = %29
  %32 = invoke %"class.cv::_OutputArray"* @_ZN2cv12_OutputArrayC1ERNS_3MatE(%"class.cv::_OutputArray"* %9, %"class.cv::Mat"* dereferenceable(56) %frame_gray)
          to label %33 unwind label %109, !dbg !2400

; <label>:33                                      ; preds = %31
  invoke void @_ZN2cv12equalizeHistERKNS_11_InputArrayERKNS_12_OutputArrayE(%"class.cv::_InputArray"* dereferenceable(20) %8, %"class.cv::_OutputArray"* dereferenceable(20) %9)
          to label %34 unwind label %109, !dbg !2402

; <label>:34                                      ; preds = %33
  call void @llvm.dbg.declare(metadata !{%"class.cv::CascadeClassifier"* %face_cascade}, metadata !2404), !dbg !2405
  %35 = invoke %"class.cv::CascadeClassifier"* @_ZN2cv17CascadeClassifierC1Ev(%"class.cv::CascadeClassifier"* %face_cascade)
          to label %36 unwind label %109, !dbg !2406

; <label>:36                                      ; preds = %34
  %37 = call %"class.std::allocator.27"* @_ZNSaIcEC1Ev(%"class.std::allocator.27"* %11) #1, !dbg !2407
  %38 = invoke %"class.std::basic_string"* @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %10, i8* getelementptr inbounds ([32 x i8]* @.str, i32 0, i32 0), %"class.std::allocator.27"* dereferenceable(1) %11)
          to label %39 unwind label %113, !dbg !2407

; <label>:39                                      ; preds = %36
  %40 = invoke zeroext i1 @_ZN2cv17CascadeClassifier4loadERKSs(%"class.cv::CascadeClassifier"* %face_cascade, %"class.std::basic_string"* dereferenceable(4) %10)
          to label %41 unwind label %117, !dbg !2408

; <label>:41                                      ; preds = %39
  %42 = invoke %"class.std::basic_string"* @_ZNSsD1Ev(%"class.std::basic_string"* %10)
          to label %43 unwind label %113, !dbg !2410

; <label>:43                                      ; preds = %41
  %44 = call %"class.std::allocator.27"* @_ZNSaIcED1Ev(%"class.std::allocator.27"* %11) #1, !dbg !2412
  %45 = invoke %"class.cv::Size_"* @_ZN2cv5Size_IiEC2Eii(%"class.cv::Size_"* %12, i32 30, i32 30)
          to label %46 unwind label %125, !dbg !2414

; <label>:46                                      ; preds = %43
  %47 = invoke %"class.cv::Size_"* @_ZN2cv5Size_IiEC2Ev(%"class.cv::Size_"* %13)
          to label %48 unwind label %125, !dbg !2415

; <label>:48                                      ; preds = %46
  invoke void @_ZN2cv17CascadeClassifier16detectMultiScaleERKNS_3MatERSt6vectorINS_5Rect_IiEESaIS6_EEdiiNS_5Size_IiEESB_(%"class.cv::CascadeClassifier"* %face_cascade, %"class.cv::Mat"* dereferenceable(56) %frame_gray, %"class.std::vector"* dereferenceable(12) %faces, double 1.100000e+00, i32 3, i32 2, %"class.cv::Size_"* %12, %"class.cv::Size_"* %13)
          to label %49 unwind label %125, !dbg !2417

; <label>:49                                      ; preds = %48
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2419), !dbg !2421
  store i32 0, i32* %i, align 4, !dbg !2422
  br label %50, !dbg !2422

; <label>:50                                      ; preds = %102, %49
  %51 = load i32* %i, align 4, !dbg !2423
  %52 = invoke i32 @_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4sizeEv(%"class.std::vector"* %faces)
          to label %53 unwind label %125, !dbg !2426

; <label>:53                                      ; preds = %50
  %54 = icmp ult i32 %51, %52, !dbg !2427
  br i1 %54, label %55, label %129, !dbg !2427

; <label>:55                                      ; preds = %53
  call void @llvm.dbg.declare(metadata !{%"class.cv::Point_"* %center}, metadata !2429), !dbg !2431
  %56 = load i32* %i, align 4, !dbg !2432
  %57 = invoke dereferenceable(16) %"class.cv::Rect_"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj(%"class.std::vector"* %faces, i32 %56)
          to label %58 unwind label %125, !dbg !2432

; <label>:58                                      ; preds = %55
  %59 = getelementptr inbounds %"class.cv::Rect_"* %57, i32 0, i32 0, !dbg !2433
  %60 = load i32* %59, align 4, !dbg !2433
  %61 = load i32* %i, align 4, !dbg !2435
  %62 = invoke dereferenceable(16) %"class.cv::Rect_"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj(%"class.std::vector"* %faces, i32 %61)
          to label %63 unwind label %125, !dbg !2435

; <label>:63                                      ; preds = %58
  %64 = getelementptr inbounds %"class.cv::Rect_"* %62, i32 0, i32 2, !dbg !2436
  %65 = load i32* %64, align 4, !dbg !2436
  %66 = sdiv i32 %65, 2, !dbg !2436
  %67 = add nsw i32 %60, %66, !dbg !2436
  %68 = load i32* %i, align 4, !dbg !2438
  %69 = invoke dereferenceable(16) %"class.cv::Rect_"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj(%"class.std::vector"* %faces, i32 %68)
          to label %70 unwind label %125, !dbg !2438

; <label>:70                                      ; preds = %63
  %71 = getelementptr inbounds %"class.cv::Rect_"* %69, i32 0, i32 1, !dbg !2439
  %72 = load i32* %71, align 4, !dbg !2439
  %73 = load i32* %i, align 4, !dbg !2441
  %74 = invoke dereferenceable(16) %"class.cv::Rect_"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj(%"class.std::vector"* %faces, i32 %73)
          to label %75 unwind label %125, !dbg !2441

; <label>:75                                      ; preds = %70
  %76 = getelementptr inbounds %"class.cv::Rect_"* %74, i32 0, i32 3, !dbg !2442
  %77 = load i32* %76, align 4, !dbg !2442
  %78 = sdiv i32 %77, 2, !dbg !2442
  %79 = add nsw i32 %72, %78, !dbg !2442
  %80 = invoke %"class.cv::Point_"* @_ZN2cv6Point_IiEC2Eii(%"class.cv::Point_"* %center, i32 %67, i32 %79)
          to label %81 unwind label %125, !dbg !2431

; <label>:81                                      ; preds = %75
  %82 = load %"class.cv::Mat"** %2, align 4, !dbg !2444
  %83 = invoke %"class.cv::Point_"* @_ZN2cv6Point_IiEC2ERKS1_(%"class.cv::Point_"* %14, %"class.cv::Point_"* dereferenceable(8) %center)
          to label %84 unwind label %125, !dbg !2444

; <label>:84                                      ; preds = %81
  %85 = load i32* %i, align 4, !dbg !2445
  %86 = invoke dereferenceable(16) %"class.cv::Rect_"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj(%"class.std::vector"* %faces, i32 %85)
          to label %87 unwind label %125, !dbg !2445

; <label>:87                                      ; preds = %84
  %88 = getelementptr inbounds %"class.cv::Rect_"* %86, i32 0, i32 2, !dbg !2447
  %89 = load i32* %88, align 4, !dbg !2447
  %90 = sdiv i32 %89, 2, !dbg !2447
  %91 = load i32* %i, align 4, !dbg !2449
  %92 = invoke dereferenceable(16) %"class.cv::Rect_"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj(%"class.std::vector"* %faces, i32 %91)
          to label %93 unwind label %125, !dbg !2449

; <label>:93                                      ; preds = %87
  %94 = getelementptr inbounds %"class.cv::Rect_"* %92, i32 0, i32 3, !dbg !2450
  %95 = load i32* %94, align 4, !dbg !2450
  %96 = sdiv i32 %95, 2, !dbg !2450
  %97 = invoke %"class.cv::Size_"* @_ZN2cv5Size_IiEC2Eii(%"class.cv::Size_"* %15, i32 %90, i32 %96)
          to label %98 unwind label %125, !dbg !2444

; <label>:98                                      ; preds = %93
  %99 = invoke %"class.cv::Scalar_"* @_ZN2cv7Scalar_IdEC2Edddd(%"class.cv::Scalar_"* %16, double 2.550000e+02, double 0.000000e+00, double 2.550000e+02, double 0.000000e+00)
          to label %100 unwind label %125, !dbg !2452

; <label>:100                                     ; preds = %98
  invoke void @_ZN2cv7ellipseERNS_3MatENS_6Point_IiEENS_5Size_IiEEdddRKNS_7Scalar_IdEEiii(%"class.cv::Mat"* dereferenceable(56) %82, %"class.cv::Point_"* %14, %"class.cv::Size_"* %15, double 0.000000e+00, double 0.000000e+00, double 3.600000e+02, %"class.cv::Scalar_"* dereferenceable(32) %16, i32 4, i32 8, i32 0)
          to label %101 unwind label %125, !dbg !2454

; <label>:101                                     ; preds = %100
  br label %102, !dbg !2456

; <label>:102                                     ; preds = %101
  %103 = load i32* %i, align 4, !dbg !2457
  %104 = add i32 %103, 1, !dbg !2457
  store i32 %104, i32* %i, align 4, !dbg !2457
  br label %50, !dbg !2457

; <label>:105                                     ; preds = %131, %0
  %106 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !2458
  %107 = extractvalue { i8*, i32 } %106, 0, !dbg !2458
  store i8* %107, i8** %4, !dbg !2458
  %108 = extractvalue { i8*, i32 } %106, 1, !dbg !2458
  store i32 %108, i32* %5, !dbg !2458
  br label %141, !dbg !2458

; <label>:109                                     ; preds = %129, %34, %33, %31, %29, %28, %26, %23
  %110 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !2458
  %111 = extractvalue { i8*, i32 } %110, 0, !dbg !2458
  store i8* %111, i8** %4, !dbg !2458
  %112 = extractvalue { i8*, i32 } %110, 1, !dbg !2458
  store i32 %112, i32* %5, !dbg !2458
  br label %138, !dbg !2458

; <label>:113                                     ; preds = %41, %36
  %114 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !2458
  %115 = extractvalue { i8*, i32 } %114, 0, !dbg !2458
  store i8* %115, i8** %4, !dbg !2458
  %116 = extractvalue { i8*, i32 } %114, 1, !dbg !2458
  store i32 %116, i32* %5, !dbg !2458
  br label %123, !dbg !2458

; <label>:117                                     ; preds = %39
  %118 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !2458
  %119 = extractvalue { i8*, i32 } %118, 0, !dbg !2458
  store i8* %119, i8** %4, !dbg !2458
  %120 = extractvalue { i8*, i32 } %118, 1, !dbg !2458
  store i32 %120, i32* %5, !dbg !2458
  %121 = invoke %"class.std::basic_string"* @_ZNSsD1Ev(%"class.std::basic_string"* %10)
          to label %122 unwind label %149, !dbg !2458

; <label>:122                                     ; preds = %117
  br label %123, !dbg !2459

; <label>:123                                     ; preds = %122, %113
  %124 = call %"class.std::allocator.27"* @_ZNSaIcED1Ev(%"class.std::allocator.27"* %11) #1, !dbg !2461
  br label %133, !dbg !2461

; <label>:125                                     ; preds = %100, %98, %93, %87, %84, %81, %75, %70, %63, %58, %55, %50, %48, %46, %43
  %126 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !2458
  %127 = extractvalue { i8*, i32 } %126, 0, !dbg !2458
  store i8* %127, i8** %4, !dbg !2458
  %128 = extractvalue { i8*, i32 } %126, 1, !dbg !2458
  store i32 %128, i32* %5, !dbg !2458
  br label %133, !dbg !2458

; <label>:129                                     ; preds = %53
  store i32 1, i32* %17
  %130 = invoke %"class.cv::CascadeClassifier"* @_ZN2cv17CascadeClassifierD1Ev(%"class.cv::CascadeClassifier"* %face_cascade)
          to label %131 unwind label %109, !dbg !2464

; <label>:131                                     ; preds = %129
  %132 = invoke %"class.cv::Mat"* @_ZN2cv3MatD2Ev(%"class.cv::Mat"* %frame_gray)
          to label %136 unwind label %105, !dbg !2465

; <label>:133                                     ; preds = %125, %123
  %134 = invoke %"class.cv::CascadeClassifier"* @_ZN2cv17CascadeClassifierD1Ev(%"class.cv::CascadeClassifier"* %face_cascade)
          to label %135 unwind label %149, !dbg !2467

; <label>:135                                     ; preds = %133
  br label %138, !dbg !2470

; <label>:136                                     ; preds = %131
  %137 = call %"class.std::vector"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev(%"class.std::vector"* %faces), !dbg !2472
  ret i32 0, !dbg !2458

; <label>:138                                     ; preds = %135, %109
  %139 = invoke %"class.cv::Mat"* @_ZN2cv3MatD2Ev(%"class.cv::Mat"* %frame_gray)
          to label %140 unwind label %149, !dbg !2474

; <label>:140                                     ; preds = %138
  br label %141, !dbg !2477

; <label>:141                                     ; preds = %140, %105
  %142 = invoke %"class.std::vector"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev(%"class.std::vector"* %faces)
          to label %143 unwind label %149, !dbg !2479

; <label>:143                                     ; preds = %141
  br label %144, !dbg !2482

; <label>:144                                     ; preds = %143
  %145 = load i8** %4, !dbg !2484
  %146 = load i32* %5, !dbg !2484
  %147 = insertvalue { i8*, i32 } undef, i8* %145, 0, !dbg !2484
  %148 = insertvalue { i8*, i32 } %147, i32 %146, 1, !dbg !2484
  resume { i8*, i32 } %148, !dbg !2484

; <label>:149                                     ; preds = %141, %138, %133, %117
  %150 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !2486
  %151 = extractvalue { i8*, i32 } %150, 0, !dbg !2486
  call void @__clang_call_terminate(i8* %151) #8, !dbg !2486
  unreachable, !dbg !2486
}

define linkonce_odr %"class.std::vector"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEC2Ev(%"class.std::vector"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::vector"*, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::vector"** %1}, metadata !2491), !dbg !2493
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !2494
  %4 = call %"struct.std::_Vector_base"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EEC2Ev(%"struct.std::_Vector_base"* %3), !dbg !2494
  ret %"class.std::vector"* %2, !dbg !2495
}

declare void @_ZN2cv12equalizeHistERKNS_11_InputArrayERKNS_12_OutputArrayE(%"class.cv::_InputArray"* dereferenceable(20), %"class.cv::_OutputArray"* dereferenceable(20)) #0

declare %"class.cv::CascadeClassifier"* @_ZN2cv17CascadeClassifierC1Ev(%"class.cv::CascadeClassifier"* returned) #0

declare zeroext i1 @_ZN2cv17CascadeClassifier4loadERKSs(%"class.cv::CascadeClassifier"*, %"class.std::basic_string"* dereferenceable(4)) #0

; Function Attrs: nounwind
declare %"class.std::allocator.27"* @_ZNSaIcEC1Ev(%"class.std::allocator.27"* returned) #5

declare %"class.std::basic_string"* @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* returned, i8*, %"class.std::allocator.27"* dereferenceable(1)) #0

declare %"class.std::basic_string"* @_ZNSsD1Ev(%"class.std::basic_string"* returned) #0

; Function Attrs: nounwind
declare %"class.std::allocator.27"* @_ZNSaIcED1Ev(%"class.std::allocator.27"* returned) #5

declare void @_ZN2cv17CascadeClassifier16detectMultiScaleERKNS_3MatERSt6vectorINS_5Rect_IiEESaIS6_EEdiiNS_5Size_IiEESB_(%"class.cv::CascadeClassifier"*, %"class.cv::Mat"* dereferenceable(56), %"class.std::vector"* dereferenceable(12), double, i32, i32, %"class.cv::Size_"*, %"class.cv::Size_"*) #0

; Function Attrs: nounwind
define linkonce_odr %"class.cv::Size_"* @_ZN2cv5Size_IiEC2Eii(%"class.cv::Size_"* returned %this, i32 %_width, i32 %_height) unnamed_addr #5 align 2 {
  %1 = alloca %"class.cv::Size_"*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %"class.cv::Size_"* %this, %"class.cv::Size_"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Size_"** %1}, metadata !2496), !dbg !2498
  store i32 %_width, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2499), !dbg !2501
  store i32 %_height, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2502), !dbg !2503
  %4 = load %"class.cv::Size_"** %1
  %5 = getelementptr inbounds %"class.cv::Size_"* %4, i32 0, i32 0, !dbg !2504
  %6 = load i32* %2, align 4, !dbg !2504
  store i32 %6, i32* %5, align 4, !dbg !2504
  %7 = getelementptr inbounds %"class.cv::Size_"* %4, i32 0, i32 1, !dbg !2504
  %8 = load i32* %3, align 4, !dbg !2504
  store i32 %8, i32* %7, align 4, !dbg !2504
  ret %"class.cv::Size_"* %4, !dbg !2505
}

; Function Attrs: nounwind
define linkonce_odr %"class.cv::Size_"* @_ZN2cv5Size_IiEC2Ev(%"class.cv::Size_"* returned %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.cv::Size_"*, align 4
  store %"class.cv::Size_"* %this, %"class.cv::Size_"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Size_"** %1}, metadata !2506), !dbg !2507
  %2 = load %"class.cv::Size_"** %1
  %3 = getelementptr inbounds %"class.cv::Size_"* %2, i32 0, i32 0, !dbg !2508
  store i32 0, i32* %3, align 4, !dbg !2508
  %4 = getelementptr inbounds %"class.cv::Size_"* %2, i32 0, i32 1, !dbg !2508
  store i32 0, i32* %4, align 4, !dbg !2508
  ret %"class.cv::Size_"* %2, !dbg !2509
}

; Function Attrs: nounwind
define linkonce_odr i32 @_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4sizeEv(%"class.std::vector"* %this) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::vector"** %1}, metadata !2510), !dbg !2512
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !2513
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0, !dbg !2513
  %5 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %4, i32 0, i32 1, !dbg !2513
  %6 = load %"class.cv::Rect_"** %5, align 4, !dbg !2513
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*, !dbg !2513
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0, !dbg !2513
  %9 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %8, i32 0, i32 0, !dbg !2513
  %10 = load %"class.cv::Rect_"** %9, align 4, !dbg !2513
  %11 = ptrtoint %"class.cv::Rect_"* %6 to i32, !dbg !2513
  %12 = ptrtoint %"class.cv::Rect_"* %10 to i32, !dbg !2513
  %13 = sub i32 %11, %12, !dbg !2513
  %14 = sdiv exact i32 %13, 16, !dbg !2513
  ret i32 %14, !dbg !2513
}

; Function Attrs: nounwind
define linkonce_odr dereferenceable(16) %"class.cv::Rect_"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj(%"class.std::vector"* %this, i32 %__n) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 4
  %2 = alloca i32, align 4
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::vector"** %1}, metadata !2514), !dbg !2515
  store i32 %__n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2516), !dbg !2518
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*, !dbg !2519
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0, !dbg !2519
  %6 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %5, i32 0, i32 0, !dbg !2519
  %7 = load %"class.cv::Rect_"** %6, align 4, !dbg !2519
  %8 = load i32* %2, align 4, !dbg !2519
  %9 = getelementptr inbounds %"class.cv::Rect_"* %7, i32 %8, !dbg !2519
  ret %"class.cv::Rect_"* %9, !dbg !2519
}

; Function Attrs: nounwind
define linkonce_odr %"class.cv::Point_"* @_ZN2cv6Point_IiEC2Eii(%"class.cv::Point_"* returned %this, i32 %_x, i32 %_y) unnamed_addr #5 align 2 {
  %1 = alloca %"class.cv::Point_"*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %"class.cv::Point_"* %this, %"class.cv::Point_"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Point_"** %1}, metadata !2520), !dbg !2522
  store i32 %_x, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2523), !dbg !2524
  store i32 %_y, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2525), !dbg !2526
  %4 = load %"class.cv::Point_"** %1
  %5 = getelementptr inbounds %"class.cv::Point_"* %4, i32 0, i32 0, !dbg !2527
  %6 = load i32* %2, align 4, !dbg !2527
  store i32 %6, i32* %5, align 4, !dbg !2527
  %7 = getelementptr inbounds %"class.cv::Point_"* %4, i32 0, i32 1, !dbg !2527
  %8 = load i32* %3, align 4, !dbg !2527
  store i32 %8, i32* %7, align 4, !dbg !2527
  ret %"class.cv::Point_"* %4, !dbg !2528
}

declare void @_ZN2cv7ellipseERNS_3MatENS_6Point_IiEENS_5Size_IiEEdddRKNS_7Scalar_IdEEiii(%"class.cv::Mat"* dereferenceable(56), %"class.cv::Point_"*, %"class.cv::Size_"*, double, double, double, %"class.cv::Scalar_"* dereferenceable(32), i32, i32, i32) #0

; Function Attrs: nounwind
define linkonce_odr %"class.cv::Point_"* @_ZN2cv6Point_IiEC2ERKS1_(%"class.cv::Point_"* returned %this, %"class.cv::Point_"* dereferenceable(8) %pt) unnamed_addr #5 align 2 {
  %1 = alloca %"class.cv::Point_"*, align 4
  %2 = alloca %"class.cv::Point_"*, align 4
  store %"class.cv::Point_"* %this, %"class.cv::Point_"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Point_"** %1}, metadata !2529), !dbg !2530
  store %"class.cv::Point_"* %pt, %"class.cv::Point_"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Point_"** %2}, metadata !2531), !dbg !2532
  %3 = load %"class.cv::Point_"** %1
  %4 = getelementptr inbounds %"class.cv::Point_"* %3, i32 0, i32 0, !dbg !2533
  %5 = load %"class.cv::Point_"** %2, align 4, !dbg !2533
  %6 = getelementptr inbounds %"class.cv::Point_"* %5, i32 0, i32 0, !dbg !2533
  %7 = load i32* %6, align 4, !dbg !2533
  store i32 %7, i32* %4, align 4, !dbg !2533
  %8 = getelementptr inbounds %"class.cv::Point_"* %3, i32 0, i32 1, !dbg !2533
  %9 = load %"class.cv::Point_"** %2, align 4, !dbg !2533
  %10 = getelementptr inbounds %"class.cv::Point_"* %9, i32 0, i32 1, !dbg !2533
  %11 = load i32* %10, align 4, !dbg !2533
  store i32 %11, i32* %8, align 4, !dbg !2533
  ret %"class.cv::Point_"* %3, !dbg !2534
}

define linkonce_odr %"class.cv::Scalar_"* @_ZN2cv7Scalar_IdEC2Edddd(%"class.cv::Scalar_"* returned %this, double %v0, double %v1, double %v2, double %v3) unnamed_addr #0 align 2 {
  %1 = alloca %"class.cv::Scalar_"*, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %"class.cv::Scalar_"* %this, %"class.cv::Scalar_"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Scalar_"** %1}, metadata !2535), !dbg !2537
  store double %v0, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !2538), !dbg !2539
  store double %v1, double* %3, align 8
  call void @llvm.dbg.declare(metadata !{double* %3}, metadata !2540), !dbg !2541
  store double %v2, double* %4, align 8
  call void @llvm.dbg.declare(metadata !{double* %4}, metadata !2542), !dbg !2543
  store double %v3, double* %5, align 8
  call void @llvm.dbg.declare(metadata !{double* %5}, metadata !2544), !dbg !2545
  %6 = load %"class.cv::Scalar_"** %1
  %7 = bitcast %"class.cv::Scalar_"* %6 to %"class.cv::Vec"*, !dbg !2546
  %8 = call %"class.cv::Vec"* @_ZN2cv3VecIdLi4EEC2Ev(%"class.cv::Vec"* %7), !dbg !2546
  %9 = load double* %2, align 8, !dbg !2547
  %10 = bitcast %"class.cv::Scalar_"* %6 to %"class.cv::Matx"*, !dbg !2547
  %11 = getelementptr inbounds %"class.cv::Matx"* %10, i32 0, i32 0, !dbg !2547
  %12 = getelementptr inbounds [4 x double]* %11, i32 0, i32 0, !dbg !2547
  store double %9, double* %12, align 8, !dbg !2547
  %13 = load double* %3, align 8, !dbg !2549
  %14 = bitcast %"class.cv::Scalar_"* %6 to %"class.cv::Matx"*, !dbg !2549
  %15 = getelementptr inbounds %"class.cv::Matx"* %14, i32 0, i32 0, !dbg !2549
  %16 = getelementptr inbounds [4 x double]* %15, i32 0, i32 1, !dbg !2549
  store double %13, double* %16, align 8, !dbg !2549
  %17 = load double* %4, align 8, !dbg !2550
  %18 = bitcast %"class.cv::Scalar_"* %6 to %"class.cv::Matx"*, !dbg !2550
  %19 = getelementptr inbounds %"class.cv::Matx"* %18, i32 0, i32 0, !dbg !2550
  %20 = getelementptr inbounds [4 x double]* %19, i32 0, i32 2, !dbg !2550
  store double %17, double* %20, align 8, !dbg !2550
  %21 = load double* %5, align 8, !dbg !2551
  %22 = bitcast %"class.cv::Scalar_"* %6 to %"class.cv::Matx"*, !dbg !2551
  %23 = getelementptr inbounds %"class.cv::Matx"* %22, i32 0, i32 0, !dbg !2551
  %24 = getelementptr inbounds [4 x double]* %23, i32 0, i32 3, !dbg !2551
  store double %21, double* %24, align 8, !dbg !2551
  ret %"class.cv::Scalar_"* %6, !dbg !2552
}

declare %"class.cv::CascadeClassifier"* @_ZN2cv17CascadeClassifierD1Ev(%"class.cv::CascadeClassifier"* returned) #0

define linkonce_odr %"class.std::vector"* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev(%"class.std::vector"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.std::vector"*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::vector"** %1}, metadata !2553), !dbg !2554
  %4 = load %"class.std::vector"** %1
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*, !dbg !2555
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0, !dbg !2555
  %7 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %6, i32 0, i32 0, !dbg !2555
  %8 = load %"class.cv::Rect_"** %7, align 4, !dbg !2555
  %9 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*, !dbg !2555
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0, !dbg !2555
  %11 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %10, i32 0, i32 1, !dbg !2555
  %12 = load %"class.cv::Rect_"** %11, align 4, !dbg !2555
  %13 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*, !dbg !2557
  %14 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %13)
          to label %15 unwind label %19, !dbg !2557

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E(%"class.cv::Rect_"* %8, %"class.cv::Rect_"* %12, %"class.std::allocator"* dereferenceable(1) %14)
          to label %16 unwind label %19, !dbg !2555

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*, !dbg !2558
  %18 = call %"struct.std::_Vector_base"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev(%"struct.std::_Vector_base"* %17), !dbg !2558
  ret %"class.std::vector"* %4, !dbg !2559

; <label>:19                                      ; preds = %15, %0
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !2560
  %21 = extractvalue { i8*, i32 } %20, 0, !dbg !2560
  store i8* %21, i8** %2, !dbg !2560
  %22 = extractvalue { i8*, i32 } %20, 1, !dbg !2560
  store i32 %22, i32* %3, !dbg !2560
  %23 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*, !dbg !2559
  %24 = invoke %"struct.std::_Vector_base"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev(%"struct.std::_Vector_base"* %23)
          to label %25 unwind label %31, !dbg !2559

; <label>:25                                      ; preds = %19
  br label %26, !dbg !2562

; <label>:26                                      ; preds = %25
  %27 = load i8** %2, !dbg !2564
  %28 = load i32* %3, !dbg !2564
  %29 = insertvalue { i8*, i32 } undef, i8* %27, 0, !dbg !2564
  %30 = insertvalue { i8*, i32 } %29, i32 %28, 1, !dbg !2564
  resume { i8*, i32 } %30, !dbg !2564

; <label>:31                                      ; preds = %19
  %32 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !2566
  %33 = extractvalue { i8*, i32 } %32, 0, !dbg !2566
  call void @__clang_call_terminate(i8* %33) #8, !dbg !2566
  unreachable, !dbg !2566
}

define i32 @_Z10ocvFbToMatPtiijPN2cv3MatE(i16* %frameBufferIn, i32 %fBHeight, i32 %fBWidth, i32 %stridePxl, %"class.cv::Mat"* %dst) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"class.cv::Mat"*, align 4
  %cn = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i16* %frameBufferIn, i16** %2, align 4
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !2568), !dbg !2569
  store i32 %fBHeight, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2570), !dbg !2571
  store i32 %fBWidth, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2572), !dbg !2573
  store i32 %stridePxl, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !2574), !dbg !2575
  store %"class.cv::Mat"* %dst, %"class.cv::Mat"** %6, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %6}, metadata !2576), !dbg !2577
  %7 = load %"class.cv::Mat"** %6, align 4, !dbg !2578
  %8 = getelementptr inbounds %"class.cv::Mat"* %7, i32 0, i32 3, !dbg !2578
  %9 = load i32* %8, align 4, !dbg !2578
  %10 = load i32* %4, align 4, !dbg !2578
  %11 = icmp sgt i32 %9, %10, !dbg !2578
  br i1 %11, label %22, label %12, !dbg !2578

; <label>:12                                      ; preds = %0
  %13 = load %"class.cv::Mat"** %6, align 4, !dbg !2580
  %14 = getelementptr inbounds %"class.cv::Mat"* %13, i32 0, i32 2, !dbg !2580
  %15 = load i32* %14, align 4, !dbg !2580
  %16 = load i32* %4, align 4, !dbg !2580
  %17 = icmp sgt i32 %15, %16, !dbg !2580
  br i1 %17, label %22, label %18, !dbg !2580

; <label>:18                                      ; preds = %12
  %19 = load %"class.cv::Mat"** %6, align 4, !dbg !2582
  %20 = call i32 @_ZNK2cv3Mat8channelsEv(%"class.cv::Mat"* %19), !dbg !2582
  %21 = icmp ne i32 %20, 3, !dbg !2582
  br i1 %21, label %22, label %23, !dbg !2582

; <label>:22                                      ; preds = %18, %12, %0
  store i32 -1, i32* %1, !dbg !2584
  br label %130, !dbg !2584

; <label>:23                                      ; preds = %18
  call void @llvm.dbg.declare(metadata !{i32* %cn}, metadata !2586), !dbg !2587
  store i32 3, i32* %cn, align 4, !dbg !2588
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2589), !dbg !2591
  store i32 0, i32* %i, align 4, !dbg !2592
  br label %24, !dbg !2592

; <label>:24                                      ; preds = %126, %23
  %25 = load i32* %i, align 4, !dbg !2593
  %26 = load %"class.cv::Mat"** %6, align 4, !dbg !2593
  %27 = getelementptr inbounds %"class.cv::Mat"* %26, i32 0, i32 2, !dbg !2593
  %28 = load i32* %27, align 4, !dbg !2593
  %29 = icmp slt i32 %25, %28, !dbg !2593
  br i1 %29, label %30, label %129, !dbg !2593

; <label>:30                                      ; preds = %24
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !2596), !dbg !2599
  store i32 0, i32* %j, align 4, !dbg !2600
  br label %31, !dbg !2600

; <label>:31                                      ; preds = %122, %30
  %32 = load i32* %j, align 4, !dbg !2601
  %33 = load %"class.cv::Mat"** %6, align 4, !dbg !2601
  %34 = getelementptr inbounds %"class.cv::Mat"* %33, i32 0, i32 3, !dbg !2601
  %35 = load i32* %34, align 4, !dbg !2601
  %36 = icmp slt i32 %32, %35, !dbg !2601
  br i1 %36, label %37, label %125, !dbg !2601

; <label>:37                                      ; preds = %31
  %38 = load i32* %i, align 4, !dbg !2604
  %39 = load i32* %5, align 4, !dbg !2604
  %40 = mul i32 %38, %39, !dbg !2604
  %41 = load i32* %j, align 4, !dbg !2604
  %42 = add i32 %40, %41, !dbg !2604
  %43 = load i16** %2, align 4, !dbg !2604
  %44 = getelementptr inbounds i16* %43, i32 %42, !dbg !2604
  %45 = load i16* %44, align 2, !dbg !2604
  %46 = zext i16 %45 to i32, !dbg !2604
  %47 = and i32 %46, 1984, !dbg !2604
  %48 = ashr i32 %47, 3, !dbg !2604
  %49 = trunc i32 %48 to i8, !dbg !2604
  %50 = load i32* %i, align 4, !dbg !2604
  %51 = load %"class.cv::Mat"** %6, align 4, !dbg !2604
  %52 = getelementptr inbounds %"class.cv::Mat"* %51, i32 0, i32 3, !dbg !2604
  %53 = load i32* %52, align 4, !dbg !2604
  %54 = mul nsw i32 %50, %53, !dbg !2604
  %55 = load i32* %cn, align 4, !dbg !2604
  %56 = mul i32 %54, %55, !dbg !2604
  %57 = load i32* %j, align 4, !dbg !2604
  %58 = load i32* %cn, align 4, !dbg !2604
  %59 = mul i32 %57, %58, !dbg !2604
  %60 = add i32 %56, %59, !dbg !2604
  %61 = add i32 %60, 0, !dbg !2604
  %62 = load %"class.cv::Mat"** %6, align 4, !dbg !2604
  %63 = getelementptr inbounds %"class.cv::Mat"* %62, i32 0, i32 4, !dbg !2604
  %64 = load i8** %63, align 4, !dbg !2604
  %65 = getelementptr inbounds i8* %64, i32 %61, !dbg !2604
  store i8 %49, i8* %65, align 1, !dbg !2604
  %66 = load i32* %i, align 4, !dbg !2606
  %67 = load i32* %5, align 4, !dbg !2606
  %68 = mul i32 %66, %67, !dbg !2606
  %69 = load i32* %j, align 4, !dbg !2606
  %70 = add i32 %68, %69, !dbg !2606
  %71 = load i16** %2, align 4, !dbg !2606
  %72 = getelementptr inbounds i16* %71, i32 %70, !dbg !2606
  %73 = load i16* %72, align 2, !dbg !2606
  %74 = zext i16 %73 to i32, !dbg !2606
  %75 = and i32 %74, 63, !dbg !2606
  %76 = shl i32 %75, 2, !dbg !2606
  %77 = trunc i32 %76 to i8, !dbg !2606
  %78 = load i32* %i, align 4, !dbg !2606
  %79 = load %"class.cv::Mat"** %6, align 4, !dbg !2606
  %80 = getelementptr inbounds %"class.cv::Mat"* %79, i32 0, i32 3, !dbg !2606
  %81 = load i32* %80, align 4, !dbg !2606
  %82 = mul nsw i32 %78, %81, !dbg !2606
  %83 = load i32* %cn, align 4, !dbg !2606
  %84 = mul i32 %82, %83, !dbg !2606
  %85 = load i32* %j, align 4, !dbg !2606
  %86 = load i32* %cn, align 4, !dbg !2606
  %87 = mul i32 %85, %86, !dbg !2606
  %88 = add i32 %84, %87, !dbg !2606
  %89 = add i32 %88, 1, !dbg !2606
  %90 = load %"class.cv::Mat"** %6, align 4, !dbg !2606
  %91 = getelementptr inbounds %"class.cv::Mat"* %90, i32 0, i32 4, !dbg !2606
  %92 = load i8** %91, align 4, !dbg !2606
  %93 = getelementptr inbounds i8* %92, i32 %89, !dbg !2606
  store i8 %77, i8* %93, align 1, !dbg !2606
  %94 = load i32* %i, align 4, !dbg !2607
  %95 = load i32* %5, align 4, !dbg !2607
  %96 = mul i32 %94, %95, !dbg !2607
  %97 = load i32* %j, align 4, !dbg !2607
  %98 = add i32 %96, %97, !dbg !2607
  %99 = load i16** %2, align 4, !dbg !2607
  %100 = getelementptr inbounds i16* %99, i32 %98, !dbg !2607
  %101 = load i16* %100, align 2, !dbg !2607
  %102 = zext i16 %101 to i32, !dbg !2607
  %103 = and i32 %102, 63488, !dbg !2607
  %104 = ashr i32 %103, 8, !dbg !2607
  %105 = trunc i32 %104 to i8, !dbg !2607
  %106 = load i32* %i, align 4, !dbg !2607
  %107 = load %"class.cv::Mat"** %6, align 4, !dbg !2607
  %108 = getelementptr inbounds %"class.cv::Mat"* %107, i32 0, i32 3, !dbg !2607
  %109 = load i32* %108, align 4, !dbg !2607
  %110 = mul nsw i32 %106, %109, !dbg !2607
  %111 = load i32* %cn, align 4, !dbg !2607
  %112 = mul i32 %110, %111, !dbg !2607
  %113 = load i32* %j, align 4, !dbg !2607
  %114 = load i32* %cn, align 4, !dbg !2607
  %115 = mul i32 %113, %114, !dbg !2607
  %116 = add i32 %112, %115, !dbg !2607
  %117 = add i32 %116, 2, !dbg !2607
  %118 = load %"class.cv::Mat"** %6, align 4, !dbg !2607
  %119 = getelementptr inbounds %"class.cv::Mat"* %118, i32 0, i32 4, !dbg !2607
  %120 = load i8** %119, align 4, !dbg !2607
  %121 = getelementptr inbounds i8* %120, i32 %117, !dbg !2607
  store i8 %105, i8* %121, align 1, !dbg !2607
  br label %122, !dbg !2608

; <label>:122                                     ; preds = %37
  %123 = load i32* %j, align 4, !dbg !2609
  %124 = add nsw i32 %123, 1, !dbg !2609
  store i32 %124, i32* %j, align 4, !dbg !2609
  br label %31, !dbg !2609

; <label>:125                                     ; preds = %31
  br label %126, !dbg !2610

; <label>:126                                     ; preds = %125
  %127 = load i32* %i, align 4, !dbg !2611
  %128 = add nsw i32 %127, 1, !dbg !2611
  store i32 %128, i32* %i, align 4, !dbg !2611
  br label %24, !dbg !2611

; <label>:129                                     ; preds = %24
  store i32 0, i32* %1, !dbg !2612
  br label %130, !dbg !2612

; <label>:130                                     ; preds = %129, %22
  %131 = load i32* %1, !dbg !2613
  ret i32 %131, !dbg !2613
}

; Function Attrs: inlinehint nounwind
define linkonce_odr i32 @_ZNK2cv3Mat8channelsEv(%"class.cv::Mat"* %this) #6 align 2 {
  %1 = alloca %"class.cv::Mat"*, align 4
  store %"class.cv::Mat"* %this, %"class.cv::Mat"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %1}, metadata !2614), !dbg !2616
  %2 = load %"class.cv::Mat"** %1
  %3 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 0, !dbg !2617
  %4 = load i32* %3, align 4, !dbg !2617
  %5 = and i32 %4, 4088, !dbg !2617
  %6 = ashr i32 %5, 3, !dbg !2617
  %7 = add nsw i32 %6, 1, !dbg !2617
  ret i32 %7, !dbg !2617
}

define i32 @_Z10ocvMatToFbPtiijPN2cv3MatE(i16* %frameBufferOut, i32 %fBHeight, i32 %fBWidth, i32 %stridePxl, %"class.cv::Mat"* %src) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"class.cv::Mat"*, align 4
  %cn = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i16* %frameBufferOut, i16** %2, align 4
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !2618), !dbg !2619
  store i32 %fBHeight, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2620), !dbg !2621
  store i32 %fBWidth, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2622), !dbg !2623
  store i32 %stridePxl, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !2624), !dbg !2625
  store %"class.cv::Mat"* %src, %"class.cv::Mat"** %6, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %6}, metadata !2626), !dbg !2627
  %7 = load %"class.cv::Mat"** %6, align 4, !dbg !2628
  %8 = getelementptr inbounds %"class.cv::Mat"* %7, i32 0, i32 3, !dbg !2628
  %9 = load i32* %8, align 4, !dbg !2628
  %10 = load i32* %4, align 4, !dbg !2628
  %11 = icmp sgt i32 %9, %10, !dbg !2628
  br i1 %11, label %22, label %12, !dbg !2628

; <label>:12                                      ; preds = %0
  %13 = load %"class.cv::Mat"** %6, align 4, !dbg !2630
  %14 = getelementptr inbounds %"class.cv::Mat"* %13, i32 0, i32 2, !dbg !2630
  %15 = load i32* %14, align 4, !dbg !2630
  %16 = load i32* %4, align 4, !dbg !2630
  %17 = icmp sgt i32 %15, %16, !dbg !2630
  br i1 %17, label %22, label %18, !dbg !2630

; <label>:18                                      ; preds = %12
  %19 = load %"class.cv::Mat"** %6, align 4, !dbg !2632
  %20 = call i32 @_ZNK2cv3Mat8channelsEv(%"class.cv::Mat"* %19), !dbg !2632
  %21 = icmp ne i32 %20, 3, !dbg !2632
  br i1 %21, label %22, label %23, !dbg !2632

; <label>:22                                      ; preds = %18, %12, %0
  store i32 -1, i32* %1, !dbg !2634
  br label %119, !dbg !2634

; <label>:23                                      ; preds = %18
  call void @llvm.dbg.declare(metadata !{i32* %cn}, metadata !2636), !dbg !2637
  store i32 3, i32* %cn, align 4, !dbg !2638
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2639), !dbg !2641
  store i32 0, i32* %i, align 4, !dbg !2642
  br label %24, !dbg !2642

; <label>:24                                      ; preds = %115, %23
  %25 = load i32* %i, align 4, !dbg !2643
  %26 = load %"class.cv::Mat"** %6, align 4, !dbg !2643
  %27 = getelementptr inbounds %"class.cv::Mat"* %26, i32 0, i32 2, !dbg !2643
  %28 = load i32* %27, align 4, !dbg !2643
  %29 = icmp slt i32 %25, %28, !dbg !2643
  br i1 %29, label %30, label %118, !dbg !2643

; <label>:30                                      ; preds = %24
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !2646), !dbg !2649
  store i32 0, i32* %j, align 4, !dbg !2650
  br label %31, !dbg !2650

; <label>:31                                      ; preds = %111, %30
  %32 = load i32* %j, align 4, !dbg !2651
  %33 = load %"class.cv::Mat"** %6, align 4, !dbg !2651
  %34 = getelementptr inbounds %"class.cv::Mat"* %33, i32 0, i32 3, !dbg !2651
  %35 = load i32* %34, align 4, !dbg !2651
  %36 = icmp slt i32 %32, %35, !dbg !2651
  br i1 %36, label %37, label %114, !dbg !2651

; <label>:37                                      ; preds = %31
  %38 = load i32* %i, align 4, !dbg !2654
  %39 = load %"class.cv::Mat"** %6, align 4, !dbg !2654
  %40 = getelementptr inbounds %"class.cv::Mat"* %39, i32 0, i32 3, !dbg !2654
  %41 = load i32* %40, align 4, !dbg !2654
  %42 = mul nsw i32 %38, %41, !dbg !2654
  %43 = load i32* %cn, align 4, !dbg !2654
  %44 = mul i32 %42, %43, !dbg !2654
  %45 = load i32* %j, align 4, !dbg !2654
  %46 = load i32* %cn, align 4, !dbg !2654
  %47 = mul i32 %45, %46, !dbg !2654
  %48 = add i32 %44, %47, !dbg !2654
  %49 = add i32 %48, 0, !dbg !2654
  %50 = load %"class.cv::Mat"** %6, align 4, !dbg !2654
  %51 = getelementptr inbounds %"class.cv::Mat"* %50, i32 0, i32 4, !dbg !2654
  %52 = load i8** %51, align 4, !dbg !2654
  %53 = getelementptr inbounds i8* %52, i32 %49, !dbg !2654
  %54 = load i8* %53, align 1, !dbg !2654
  %55 = zext i8 %54 to i16, !dbg !2654
  %56 = zext i16 %55 to i32, !dbg !2654
  %57 = shl i32 %56, 3, !dbg !2654
  %58 = and i32 %57, 1984, !dbg !2654
  %59 = load i32* %i, align 4, !dbg !2654
  %60 = load %"class.cv::Mat"** %6, align 4, !dbg !2654
  %61 = getelementptr inbounds %"class.cv::Mat"* %60, i32 0, i32 3, !dbg !2654
  %62 = load i32* %61, align 4, !dbg !2654
  %63 = mul nsw i32 %59, %62, !dbg !2654
  %64 = load i32* %cn, align 4, !dbg !2654
  %65 = mul i32 %63, %64, !dbg !2654
  %66 = load i32* %j, align 4, !dbg !2654
  %67 = load i32* %cn, align 4, !dbg !2654
  %68 = mul i32 %66, %67, !dbg !2654
  %69 = add i32 %65, %68, !dbg !2654
  %70 = add i32 %69, 1, !dbg !2654
  %71 = load %"class.cv::Mat"** %6, align 4, !dbg !2654
  %72 = getelementptr inbounds %"class.cv::Mat"* %71, i32 0, i32 4, !dbg !2654
  %73 = load i8** %72, align 4, !dbg !2654
  %74 = getelementptr inbounds i8* %73, i32 %70, !dbg !2654
  %75 = load i8* %74, align 1, !dbg !2654
  %76 = zext i8 %75 to i16, !dbg !2654
  %77 = zext i16 %76 to i32, !dbg !2654
  %78 = ashr i32 %77, 2, !dbg !2654
  %79 = and i32 %78, 63, !dbg !2654
  %80 = add nsw i32 %58, %79, !dbg !2654
  %81 = load i32* %i, align 4, !dbg !2654
  %82 = load %"class.cv::Mat"** %6, align 4, !dbg !2654
  %83 = getelementptr inbounds %"class.cv::Mat"* %82, i32 0, i32 3, !dbg !2654
  %84 = load i32* %83, align 4, !dbg !2654
  %85 = mul nsw i32 %81, %84, !dbg !2654
  %86 = load i32* %cn, align 4, !dbg !2654
  %87 = mul i32 %85, %86, !dbg !2654
  %88 = load i32* %j, align 4, !dbg !2654
  %89 = load i32* %cn, align 4, !dbg !2654
  %90 = mul i32 %88, %89, !dbg !2654
  %91 = add i32 %87, %90, !dbg !2654
  %92 = add i32 %91, 2, !dbg !2654
  %93 = load %"class.cv::Mat"** %6, align 4, !dbg !2654
  %94 = getelementptr inbounds %"class.cv::Mat"* %93, i32 0, i32 4, !dbg !2654
  %95 = load i8** %94, align 4, !dbg !2654
  %96 = getelementptr inbounds i8* %95, i32 %92, !dbg !2654
  %97 = load i8* %96, align 1, !dbg !2654
  %98 = zext i8 %97 to i16, !dbg !2654
  %99 = zext i16 %98 to i32, !dbg !2654
  %100 = shl i32 %99, 8, !dbg !2654
  %101 = and i32 %100, 63488, !dbg !2654
  %102 = add nsw i32 %80, %101, !dbg !2654
  %103 = trunc i32 %102 to i16, !dbg !2654
  %104 = load i32* %i, align 4, !dbg !2654
  %105 = load i32* %5, align 4, !dbg !2654
  %106 = mul i32 %104, %105, !dbg !2654
  %107 = load i32* %j, align 4, !dbg !2654
  %108 = add i32 %106, %107, !dbg !2654
  %109 = load i16** %2, align 4, !dbg !2654
  %110 = getelementptr inbounds i16* %109, i32 %108, !dbg !2654
  store i16 %103, i16* %110, align 2, !dbg !2654
  br label %111, !dbg !2656

; <label>:111                                     ; preds = %37
  %112 = load i32* %j, align 4, !dbg !2657
  %113 = add nsw i32 %112, 1, !dbg !2657
  store i32 %113, i32* %j, align 4, !dbg !2657
  br label %31, !dbg !2657

; <label>:114                                     ; preds = %31
  br label %115, !dbg !2658

; <label>:115                                     ; preds = %114
  %116 = load i32* %i, align 4, !dbg !2659
  %117 = add nsw i32 %116, 1, !dbg !2659
  store i32 %117, i32* %i, align 4, !dbg !2659
  br label %24, !dbg !2659

; <label>:118                                     ; preds = %24
  store i32 0, i32* %1, !dbg !2660
  br label %119, !dbg !2660

; <label>:119                                     ; preds = %118, %22
  %120 = load i32* %1, !dbg !2661
  ret i32 %120, !dbg !2661
}

define linkonce_odr %"class.cv::Vec"* @_ZN2cv3VecIdLi4EEC2Ev(%"class.cv::Vec"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.cv::Vec"*, align 4
  store %"class.cv::Vec"* %this, %"class.cv::Vec"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Vec"** %1}, metadata !2662), !dbg !2664
  %2 = load %"class.cv::Vec"** %1
  %3 = bitcast %"class.cv::Vec"* %2 to %"class.cv::Matx"*, !dbg !2665
  %4 = call %"class.cv::Matx"* @_ZN2cv4MatxIdLi4ELi1EEC2Ev(%"class.cv::Matx"* %3), !dbg !2665
  ret %"class.cv::Vec"* %2, !dbg !2666
}

; Function Attrs: nounwind
define linkonce_odr %"class.cv::Matx"* @_ZN2cv4MatxIdLi4ELi1EEC2Ev(%"class.cv::Matx"* returned %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.cv::Matx"*, align 4
  %2 = alloca %"class.cv::Matx"*, align 4
  %i = alloca i32, align 4
  store %"class.cv::Matx"* %this, %"class.cv::Matx"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Matx"** %2}, metadata !2667), !dbg !2669
  %3 = load %"class.cv::Matx"** %2
  store %"class.cv::Matx"* %3, %"class.cv::Matx"** %1
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2670), !dbg !2674
  store i32 0, i32* %i, align 4, !dbg !2675
  br label %4, !dbg !2675

; <label>:4                                       ; preds = %11, %0
  %5 = load i32* %i, align 4, !dbg !2676
  %6 = icmp slt i32 %5, 4, !dbg !2676
  br i1 %6, label %7, label %14, !dbg !2676

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !dbg !2679
  %9 = getelementptr inbounds %"class.cv::Matx"* %3, i32 0, i32 0, !dbg !2679
  %10 = getelementptr inbounds [4 x double]* %9, i32 0, i32 %8, !dbg !2679
  store double 0.000000e+00, double* %10, align 8, !dbg !2679
  br label %11, !dbg !2679

; <label>:11                                      ; preds = %7
  %12 = load i32* %i, align 4, !dbg !2681
  %13 = add nsw i32 %12, 1, !dbg !2681
  store i32 %13, i32* %i, align 4, !dbg !2681
  br label %4, !dbg !2681

; <label>:14                                      ; preds = %4
  %15 = load %"class.cv::Matx"** %1, !dbg !2683
  ret %"class.cv::Matx"* %15, !dbg !2683
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E(%"class.cv::Rect_"* %__first, %"class.cv::Rect_"* %__last, %"class.std::allocator"* dereferenceable(1)) #3 {
  %2 = alloca %"class.cv::Rect_"*, align 4
  %3 = alloca %"class.cv::Rect_"*, align 4
  %4 = alloca %"class.std::allocator"*, align 4
  store %"class.cv::Rect_"* %__first, %"class.cv::Rect_"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %2}, metadata !2684), !dbg !2686
  store %"class.cv::Rect_"* %__last, %"class.cv::Rect_"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %3}, metadata !2687), !dbg !2688
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %4}, metadata !2689), !dbg !2690
  %5 = load %"class.cv::Rect_"** %2, align 4, !dbg !2691
  %6 = load %"class.cv::Rect_"** %3, align 4, !dbg !2691
  call void @_ZSt8_DestroyIPN2cv5Rect_IiEEEvT_S4_(%"class.cv::Rect_"* %5, %"class.cv::Rect_"* %6), !dbg !2691
  ret void, !dbg !2692
}

; Function Attrs: nounwind
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Vector_base"** %1}, metadata !2693), !dbg !2695
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0, !dbg !2696
  %4 = bitcast %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %3 to %"class.std::allocator"*, !dbg !2696
  ret %"class.std::allocator"* %4, !dbg !2696
}

define linkonce_odr %"struct.std::_Vector_base"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev(%"struct.std::_Vector_base"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Vector_base"** %1}, metadata !2697), !dbg !2698
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0, !dbg !2699
  %6 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %5, i32 0, i32 0, !dbg !2699
  %7 = load %"class.cv::Rect_"** %6, align 4, !dbg !2699
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0, !dbg !2699
  %9 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %8, i32 0, i32 2, !dbg !2699
  %10 = load %"class.cv::Rect_"** %9, align 4, !dbg !2699
  %11 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0, !dbg !2699
  %12 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %11, i32 0, i32 0, !dbg !2699
  %13 = load %"class.cv::Rect_"** %12, align 4, !dbg !2699
  %14 = ptrtoint %"class.cv::Rect_"* %10 to i32, !dbg !2699
  %15 = ptrtoint %"class.cv::Rect_"* %13 to i32, !dbg !2699
  %16 = sub i32 %14, %15, !dbg !2699
  %17 = sdiv exact i32 %16, 16, !dbg !2699
  invoke void @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE13_M_deallocateEPS2_j(%"struct.std::_Vector_base"* %4, %"class.cv::Rect_"* %7, i32 %17)
          to label %18 unwind label %21, !dbg !2699

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0, !dbg !2701
  %20 = call %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %19) #1, !dbg !2701
  ret %"struct.std::_Vector_base"* %4, !dbg !2702

; <label>:21                                      ; preds = %0
  %22 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !2701
  %23 = extractvalue { i8*, i32 } %22, 0, !dbg !2701
  store i8* %23, i8** %2, !dbg !2701
  %24 = extractvalue { i8*, i32 } %22, 1, !dbg !2701
  store i32 %24, i32* %3, !dbg !2701
  %25 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0, !dbg !2702
  %26 = call %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %25) #1, !dbg !2702
  br label %27, !dbg !2702

; <label>:27                                      ; preds = %21
  %28 = load i8** %2, !dbg !2703
  %29 = load i32* %3, !dbg !2703
  %30 = insertvalue { i8*, i32 } undef, i8* %28, 0, !dbg !2703
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1, !dbg !2703
  resume { i8*, i32 } %31, !dbg !2703
}

define linkonce_odr void @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE13_M_deallocateEPS2_j(%"struct.std::_Vector_base"* %this, %"class.cv::Rect_"* %__p, i32 %__n) #0 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 4
  %2 = alloca %"class.cv::Rect_"*, align 4
  %3 = alloca i32, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Vector_base"** %1}, metadata !2705), !dbg !2706
  store %"class.cv::Rect_"* %__p, %"class.cv::Rect_"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %2}, metadata !2707), !dbg !2708
  store i32 %__n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2709), !dbg !2710
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = load %"class.cv::Rect_"** %2, align 4, !dbg !2711
  %6 = icmp ne %"class.cv::Rect_"* %5, null, !dbg !2711
  br i1 %6, label %7, label %12, !dbg !2711

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0, !dbg !2713
  %9 = bitcast %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %8 to %"class.std::allocator"*, !dbg !2713
  %10 = load %"class.cv::Rect_"** %2, align 4, !dbg !2713
  %11 = load i32* %3, align 4, !dbg !2713
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE10deallocateERS4_PS3_j(%"class.std::allocator"* dereferenceable(1) %9, %"class.cv::Rect_"* %10, i32 %11), !dbg !2713
  br label %12, !dbg !2713

; <label>:12                                      ; preds = %7, %0
  ret void, !dbg !2714
}

; Function Attrs: inlinehint nounwind
define linkonce_odr %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* returned %this) unnamed_addr #6 align 2 {
  %1 = alloca %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"*, align 4
  store %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %this, %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"** %1}, metadata !2715), !dbg !2717
  %2 = load %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %2 to %"class.std::allocator"*, !dbg !2718
  %4 = call %"class.std::allocator"* @_ZNSaIN2cv5Rect_IiEEED2Ev(%"class.std::allocator"* %3) #1, !dbg !2718
  ret %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %2, !dbg !2720
}

; Function Attrs: nounwind
define linkonce_odr %"class.std::allocator"* @_ZNSaIN2cv5Rect_IiEEED2Ev(%"class.std::allocator"* returned %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 4
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %1}, metadata !2721), !dbg !2723
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*, !dbg !2724
  %4 = call %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #1, !dbg !2724
  ret %"class.std::allocator"* %2, !dbg !2726
}

; Function Attrs: nounwind
define linkonce_odr %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEED2Ev(%"class.__gnu_cxx::new_allocator"* returned %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %1}, metadata !2727), !dbg !2729
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret %"class.__gnu_cxx::new_allocator"* %2, !dbg !2730
}

define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE10deallocateERS4_PS3_j(%"class.std::allocator"* dereferenceable(1) %__a, %"class.cv::Rect_"* %__p, i32 %__n) #0 align 2 {
  %1 = alloca %"class.std::allocator"*, align 4
  %2 = alloca %"class.cv::Rect_"*, align 4
  %3 = alloca i32, align 4
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %1}, metadata !2731), !dbg !2733
  store %"class.cv::Rect_"* %__p, %"class.cv::Rect_"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %2}, metadata !2734), !dbg !2735
  store i32 %__n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2736), !dbg !2737
  %4 = load %"class.std::allocator"** %1, align 4, !dbg !2738
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*, !dbg !2738
  %6 = load %"class.cv::Rect_"** %2, align 4, !dbg !2738
  %7 = load i32* %3, align 4, !dbg !2738
  call void @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE10deallocateEPS3_j(%"class.__gnu_cxx::new_allocator"* %5, %"class.cv::Rect_"* %6, i32 %7), !dbg !2738
  ret void, !dbg !2739
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE10deallocateEPS3_j(%"class.__gnu_cxx::new_allocator"* %this, %"class.cv::Rect_"* %__p, i32) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  %3 = alloca %"class.cv::Rect_"*, align 4
  %4 = alloca i32, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %2}, metadata !2740), !dbg !2741
  store %"class.cv::Rect_"* %__p, %"class.cv::Rect_"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %3}, metadata !2742), !dbg !2744
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2745), !dbg !2746
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load %"class.cv::Rect_"** %3, align 4, !dbg !2747
  %7 = bitcast %"class.cv::Rect_"* %6 to i8*, !dbg !2747
  call void @_ZdlPv(i8* %7) #1, !dbg !2747
  ret void, !dbg !2748
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: inlinehint
define linkonce_odr void @_ZSt8_DestroyIPN2cv5Rect_IiEEEvT_S4_(%"class.cv::Rect_"* %__first, %"class.cv::Rect_"* %__last) #3 {
  %1 = alloca %"class.cv::Rect_"*, align 4
  %2 = alloca %"class.cv::Rect_"*, align 4
  store %"class.cv::Rect_"* %__first, %"class.cv::Rect_"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %1}, metadata !2749), !dbg !2750
  store %"class.cv::Rect_"* %__last, %"class.cv::Rect_"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %2}, metadata !2751), !dbg !2752
  %3 = load %"class.cv::Rect_"** %1, align 4, !dbg !2753
  %4 = load %"class.cv::Rect_"** %2, align 4, !dbg !2753
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN2cv5Rect_IiEEEEvT_S6_(%"class.cv::Rect_"* %3, %"class.cv::Rect_"* %4), !dbg !2753
  ret void, !dbg !2754
}

; Function Attrs: nounwind
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN2cv5Rect_IiEEEEvT_S6_(%"class.cv::Rect_"*, %"class.cv::Rect_"*) #5 align 2 {
  %3 = alloca %"class.cv::Rect_"*, align 4
  %4 = alloca %"class.cv::Rect_"*, align 4
  store %"class.cv::Rect_"* %0, %"class.cv::Rect_"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %3}, metadata !2755), !dbg !2756
  store %"class.cv::Rect_"* %1, %"class.cv::Rect_"** %4, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Rect_"** %4}, metadata !2757), !dbg !2758
  ret void, !dbg !2759
}

define linkonce_odr %"struct.std::_Vector_base"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EEC2Ev(%"struct.std::_Vector_base"* returned %this) unnamed_addr #0 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 4
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Vector_base"** %1}, metadata !2760), !dbg !2761
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0, !dbg !2762
  %4 = call %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %3), !dbg !2762
  ret %"struct.std::_Vector_base"* %2, !dbg !2763
}

; Function Attrs: nounwind
define linkonce_odr %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* returned %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"*, align 4
  store %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %this, %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"** %1}, metadata !2764), !dbg !2765
  %2 = load %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %2 to %"class.std::allocator"*, !dbg !2766
  %4 = call %"class.std::allocator"* @_ZNSaIN2cv5Rect_IiEEEC2Ev(%"class.std::allocator"* %3) #1, !dbg !2766
  %5 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %2, i32 0, i32 0, !dbg !2766
  store %"class.cv::Rect_"* null, %"class.cv::Rect_"** %5, align 4, !dbg !2766
  %6 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %2, i32 0, i32 1, !dbg !2766
  store %"class.cv::Rect_"* null, %"class.cv::Rect_"** %6, align 4, !dbg !2766
  %7 = getelementptr inbounds %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %2, i32 0, i32 2, !dbg !2766
  store %"class.cv::Rect_"* null, %"class.cv::Rect_"** %7, align 4, !dbg !2766
  ret %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* %2, !dbg !2767
}

; Function Attrs: nounwind
define linkonce_odr %"class.std::allocator"* @_ZNSaIN2cv5Rect_IiEEEC2Ev(%"class.std::allocator"* returned %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 4
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.std::allocator"** %1}, metadata !2768), !dbg !2769
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*, !dbg !2770
  %4 = call %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #1, !dbg !2770
  ret %"class.std::allocator"* %2, !dbg !2771
}

; Function Attrs: nounwind
define linkonce_odr %"class.__gnu_cxx::new_allocator"* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* returned %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 4
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.__gnu_cxx::new_allocator"** %1}, metadata !2772), !dbg !2773
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret %"class.__gnu_cxx::new_allocator"* %2, !dbg !2774
}

; Function Attrs: inlinehint
define linkonce_odr void @_ZN2cv3Mat7releaseEv(%"class.cv::Mat"* %this) #3 align 2 {
  %1 = alloca %"class.cv::Mat"*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %"class.cv::Mat"* %this, %"class.cv::Mat"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %1}, metadata !2775), !dbg !2776
  %4 = load %"class.cv::Mat"** %1
  %5 = getelementptr inbounds %"class.cv::Mat"* %4, i32 0, i32 5, !dbg !2777
  %6 = load i32** %5, align 4, !dbg !2777
  %7 = icmp ne i32* %6, null, !dbg !2777
  br i1 %7, label %8, label %16, !dbg !2777

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %"class.cv::Mat"* %4, i32 0, i32 5, !dbg !2779
  %10 = load i32** %9, align 4, !dbg !2779
  store i32 -1, i32* %2, !dbg !2779
  %11 = load i32* %2, align 4, !dbg !2779
  %12 = atomicrmw add i32* %10, i32 %11 seq_cst, !dbg !2779
  store i32 %12, i32* %3, align 4, !dbg !2779
  %13 = load i32* %3, align 4, !dbg !2779
  %14 = icmp eq i32 %13, 1, !dbg !2779
  br i1 %14, label %15, label %16, !dbg !2779

; <label>:15                                      ; preds = %8
  call void @_ZN2cv3Mat10deallocateEv(%"class.cv::Mat"* %4), !dbg !2781
  br label %16, !dbg !2781

; <label>:16                                      ; preds = %15, %8, %0
  %17 = getelementptr inbounds %"class.cv::Mat"* %4, i32 0, i32 8, !dbg !2782
  store i8* null, i8** %17, align 4, !dbg !2782
  %18 = getelementptr inbounds %"class.cv::Mat"* %4, i32 0, i32 7, !dbg !2782
  store i8* null, i8** %18, align 4, !dbg !2782
  %19 = getelementptr inbounds %"class.cv::Mat"* %4, i32 0, i32 6, !dbg !2782
  store i8* null, i8** %19, align 4, !dbg !2782
  %20 = getelementptr inbounds %"class.cv::Mat"* %4, i32 0, i32 4, !dbg !2782
  store i8* null, i8** %20, align 4, !dbg !2782
  %21 = getelementptr inbounds %"class.cv::Mat"* %4, i32 0, i32 10, !dbg !2783
  %22 = getelementptr inbounds %"struct.cv::Mat::MSize"* %21, i32 0, i32 0, !dbg !2783
  %23 = load i32** %22, align 4, !dbg !2783
  %24 = getelementptr inbounds i32* %23, i32 0, !dbg !2783
  store i32 0, i32* %24, align 4, !dbg !2783
  %25 = getelementptr inbounds %"class.cv::Mat"* %4, i32 0, i32 5, !dbg !2784
  store i32* null, i32** %25, align 4, !dbg !2784
  ret void, !dbg !2785
}

declare void @_ZN2cv8fastFreeEPv(i8*) #0

declare void @_ZN2cv3Mat10deallocateEv(%"class.cv::Mat"*) #0

; Function Attrs: inlinehint nounwind
define linkonce_odr %"struct.cv::Mat::MSize"* @_ZN2cv3Mat5MSizeC2EPi(%"struct.cv::Mat::MSize"* returned %this, i32* %_p) unnamed_addr #6 align 2 {
  %1 = alloca %"struct.cv::Mat::MSize"*, align 4
  %2 = alloca i32*, align 4
  store %"struct.cv::Mat::MSize"* %this, %"struct.cv::Mat::MSize"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.cv::Mat::MSize"** %1}, metadata !2786), !dbg !2788
  store i32* %_p, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !2789), !dbg !2791
  %3 = load %"struct.cv::Mat::MSize"** %1
  %4 = getelementptr inbounds %"struct.cv::Mat::MSize"* %3, i32 0, i32 0, !dbg !2792
  %5 = load i32** %2, align 4, !dbg !2792
  store i32* %5, i32** %4, align 4, !dbg !2792
  ret %"struct.cv::Mat::MSize"* %3, !dbg !2793
}

; Function Attrs: inlinehint nounwind
define linkonce_odr %"struct.cv::Mat::MStep"* @_ZN2cv3Mat5MStepC2Ev(%"struct.cv::Mat::MStep"* returned %this) unnamed_addr #6 align 2 {
  %1 = alloca %"struct.cv::Mat::MStep"*, align 4
  store %"struct.cv::Mat::MStep"* %this, %"struct.cv::Mat::MStep"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"struct.cv::Mat::MStep"** %1}, metadata !2794), !dbg !2796
  %2 = load %"struct.cv::Mat::MStep"** %1
  %3 = getelementptr inbounds %"struct.cv::Mat::MStep"* %2, i32 0, i32 1, !dbg !2797
  %4 = getelementptr inbounds [2 x i32]* %3, i32 0, i32 0, !dbg !2797
  %5 = getelementptr inbounds %"struct.cv::Mat::MStep"* %2, i32 0, i32 0, !dbg !2797
  store i32* %4, i32** %5, align 4, !dbg !2797
  %6 = getelementptr inbounds %"struct.cv::Mat::MStep"* %2, i32 0, i32 0, !dbg !2799
  %7 = load i32** %6, align 4, !dbg !2799
  %8 = getelementptr inbounds i32* %7, i32 1, !dbg !2799
  store i32 0, i32* %8, align 4, !dbg !2799
  %9 = getelementptr inbounds %"struct.cv::Mat::MStep"* %2, i32 0, i32 0, !dbg !2799
  %10 = load i32** %9, align 4, !dbg !2799
  %11 = getelementptr inbounds i32* %10, i32 0, !dbg !2799
  store i32 0, i32* %11, align 4, !dbg !2799
  ret %"struct.cv::Mat::MStep"* %2, !dbg !2800
}

; Function Attrs: inlinehint nounwind
define linkonce_odr void @_ZN2cv3Mat9initEmptyEv(%"class.cv::Mat"* %this) #6 align 2 {
  %1 = alloca %"class.cv::Mat"*, align 4
  store %"class.cv::Mat"* %this, %"class.cv::Mat"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.cv::Mat"** %1}, metadata !2801), !dbg !2802
  %2 = load %"class.cv::Mat"** %1
  %3 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 0, !dbg !2803
  store i32 1124007936, i32* %3, align 4, !dbg !2803
  %4 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 3, !dbg !2804
  store i32 0, i32* %4, align 4, !dbg !2804
  %5 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 2, !dbg !2804
  store i32 0, i32* %5, align 4, !dbg !2804
  %6 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 1, !dbg !2804
  store i32 0, i32* %6, align 4, !dbg !2804
  %7 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 8, !dbg !2805
  store i8* null, i8** %7, align 4, !dbg !2805
  %8 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 7, !dbg !2805
  store i8* null, i8** %8, align 4, !dbg !2805
  %9 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 6, !dbg !2805
  store i8* null, i8** %9, align 4, !dbg !2805
  %10 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 4, !dbg !2805
  store i8* null, i8** %10, align 4, !dbg !2805
  %11 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 5, !dbg !2806
  store i32* null, i32** %11, align 4, !dbg !2806
  %12 = getelementptr inbounds %"class.cv::Mat"* %2, i32 0, i32 9, !dbg !2807
  store %"class.cv::MatAllocator"* null, %"class.cv::MatAllocator"** %12, align 4, !dbg !2807
  ret void, !dbg !2808
}

define internal void @_GLOBAL__sub_I_my_ocv_sw.cpp() section ".text.startup" {
  call void @__cxx_global_var_init(), !dbg !2809
  ret void, !dbg !2809
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { inlinehint "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!2239, !2240, !2241, !2240, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2243, !2249, !2240, !2250, !2251, !2252, !2253, !2254, !2240, !2255, !2256, !2257, !2240, !2258, !2259, !2260, !2240, !2261, !2262, !2263, !2240, !2264, !2265, !2266, !2240, !2267, !2240, !2268, !2269, !2270, !2271, !2272, !2240, !2273, !2274, !2275, !2276, !2277, !2271, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2240, !2285, !2240, !2286, !2287, !2288, !2289, !2290, !2287, !2282, !2283, !2291, !2240, !2292, !2240, !2277, !2271, !2285, !2240, !2293, !2294, !2295, !2296, !2297, !2240, !2298, !2299, !2300, !2240, !2300, !2240, !2301, !2240, !2302, !2240, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2310, !2257, !2240, !2312, !2240, !2313, !2240, !2313, !2240, !2314, !2240, !2315, !2240, !2272, !2240, !2270, !2271, !2280, !2281, !2254, !2240, !2316, !2240, !2317, !2308, !2318, !2240, !2249, !2240, !2319, !2320, !2321, !2240, !2322, !2240, !2321, !2240, !2319, !2320}
!xidane.function_declaration_filename = !{!2239, !2323, !2241, !2323, !2242, !2324, !2244, !2325, !2246, !2325, !2248, !2324, !2249, !2325, !2250, !2326, !2252, !2325, !2254, !2325, !2255, !2324, !2257, !2327, !2258, !2326, !2260, !2328, !2261, !2328, !2263, !2329, !2264, !2330, !2266, !2330, !2267, !2329, !2268, !2328, !2270, !2325, !2272, !2325, !2273, !2327, !2275, !2327, !2277, !2325, !2278, !2325, !2280, !2325, !2282, !2325, !2284, !2328, !2285, !2327, !2286, !2324, !2288, !2325, !2290, !2324, !2282, !2325, !2291, !2325, !2292, !2325, !2277, !2325, !2285, !2327, !2293, !2331, !2295, !2327, !2297, !2327, !2298, !2327, !2300, !2327, !2300, !2327, !2301, !2329, !2302, !2332, !2303, !2333, !2305, !2332, !2309, !2331, !2311, !2331, !2257, !2327, !2312, !2327, !2313, !2327, !2313, !2327, !2314, !2329, !2315, !2332, !2272, !2325, !2270, !2325, !2280, !2325, !2254, !2325, !2316, !2325, !2317, !2325, !2318, !2325, !2249, !2325, !2319, !2325, !2321, !2325, !2322, !2325, !2321, !2325, !2319, !2325}
!llvm.module.flags = !{!2334, !2335, !2336, !2337}
!llvm.ident = !{!2338}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !411, metadata !2125, metadata !2194, metadata !2196, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2 = metadata !{metadata !3, metadata !196, metadata !391, metadata !398, metadata !405}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 87, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 87, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/imgproc/types_c.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195}
!6 = metadata !{i32 786472, metadata !"CV_BGR2BGRA", i64 0} ; [ DW_TAG_enumerator ] [CV_BGR2BGRA :: 0]
!7 = metadata !{i32 786472, metadata !"CV_RGB2RGBA", i64 0} ; [ DW_TAG_enumerator ] [CV_RGB2RGBA :: 0]
!8 = metadata !{i32 786472, metadata !"CV_BGRA2BGR", i64 1} ; [ DW_TAG_enumerator ] [CV_BGRA2BGR :: 1]
!9 = metadata !{i32 786472, metadata !"CV_RGBA2RGB", i64 1} ; [ DW_TAG_enumerator ] [CV_RGBA2RGB :: 1]
!10 = metadata !{i32 786472, metadata !"CV_BGR2RGBA", i64 2} ; [ DW_TAG_enumerator ] [CV_BGR2RGBA :: 2]
!11 = metadata !{i32 786472, metadata !"CV_RGB2BGRA", i64 2} ; [ DW_TAG_enumerator ] [CV_RGB2BGRA :: 2]
!12 = metadata !{i32 786472, metadata !"CV_RGBA2BGR", i64 3} ; [ DW_TAG_enumerator ] [CV_RGBA2BGR :: 3]
!13 = metadata !{i32 786472, metadata !"CV_BGRA2RGB", i64 3} ; [ DW_TAG_enumerator ] [CV_BGRA2RGB :: 3]
!14 = metadata !{i32 786472, metadata !"CV_BGR2RGB", i64 4} ; [ DW_TAG_enumerator ] [CV_BGR2RGB :: 4]
!15 = metadata !{i32 786472, metadata !"CV_RGB2BGR", i64 4} ; [ DW_TAG_enumerator ] [CV_RGB2BGR :: 4]
!16 = metadata !{i32 786472, metadata !"CV_BGRA2RGBA", i64 5} ; [ DW_TAG_enumerator ] [CV_BGRA2RGBA :: 5]
!17 = metadata !{i32 786472, metadata !"CV_RGBA2BGRA", i64 5} ; [ DW_TAG_enumerator ] [CV_RGBA2BGRA :: 5]
!18 = metadata !{i32 786472, metadata !"CV_BGR2GRAY", i64 6} ; [ DW_TAG_enumerator ] [CV_BGR2GRAY :: 6]
!19 = metadata !{i32 786472, metadata !"CV_RGB2GRAY", i64 7} ; [ DW_TAG_enumerator ] [CV_RGB2GRAY :: 7]
!20 = metadata !{i32 786472, metadata !"CV_GRAY2BGR", i64 8} ; [ DW_TAG_enumerator ] [CV_GRAY2BGR :: 8]
!21 = metadata !{i32 786472, metadata !"CV_GRAY2RGB", i64 8} ; [ DW_TAG_enumerator ] [CV_GRAY2RGB :: 8]
!22 = metadata !{i32 786472, metadata !"CV_GRAY2BGRA", i64 9} ; [ DW_TAG_enumerator ] [CV_GRAY2BGRA :: 9]
!23 = metadata !{i32 786472, metadata !"CV_GRAY2RGBA", i64 9} ; [ DW_TAG_enumerator ] [CV_GRAY2RGBA :: 9]
!24 = metadata !{i32 786472, metadata !"CV_BGRA2GRAY", i64 10} ; [ DW_TAG_enumerator ] [CV_BGRA2GRAY :: 10]
!25 = metadata !{i32 786472, metadata !"CV_RGBA2GRAY", i64 11} ; [ DW_TAG_enumerator ] [CV_RGBA2GRAY :: 11]
!26 = metadata !{i32 786472, metadata !"CV_BGR2BGR565", i64 12} ; [ DW_TAG_enumerator ] [CV_BGR2BGR565 :: 12]
!27 = metadata !{i32 786472, metadata !"CV_RGB2BGR565", i64 13} ; [ DW_TAG_enumerator ] [CV_RGB2BGR565 :: 13]
!28 = metadata !{i32 786472, metadata !"CV_BGR5652BGR", i64 14} ; [ DW_TAG_enumerator ] [CV_BGR5652BGR :: 14]
!29 = metadata !{i32 786472, metadata !"CV_BGR5652RGB", i64 15} ; [ DW_TAG_enumerator ] [CV_BGR5652RGB :: 15]
!30 = metadata !{i32 786472, metadata !"CV_BGRA2BGR565", i64 16} ; [ DW_TAG_enumerator ] [CV_BGRA2BGR565 :: 16]
!31 = metadata !{i32 786472, metadata !"CV_RGBA2BGR565", i64 17} ; [ DW_TAG_enumerator ] [CV_RGBA2BGR565 :: 17]
!32 = metadata !{i32 786472, metadata !"CV_BGR5652BGRA", i64 18} ; [ DW_TAG_enumerator ] [CV_BGR5652BGRA :: 18]
!33 = metadata !{i32 786472, metadata !"CV_BGR5652RGBA", i64 19} ; [ DW_TAG_enumerator ] [CV_BGR5652RGBA :: 19]
!34 = metadata !{i32 786472, metadata !"CV_GRAY2BGR565", i64 20} ; [ DW_TAG_enumerator ] [CV_GRAY2BGR565 :: 20]
!35 = metadata !{i32 786472, metadata !"CV_BGR5652GRAY", i64 21} ; [ DW_TAG_enumerator ] [CV_BGR5652GRAY :: 21]
!36 = metadata !{i32 786472, metadata !"CV_BGR2BGR555", i64 22} ; [ DW_TAG_enumerator ] [CV_BGR2BGR555 :: 22]
!37 = metadata !{i32 786472, metadata !"CV_RGB2BGR555", i64 23} ; [ DW_TAG_enumerator ] [CV_RGB2BGR555 :: 23]
!38 = metadata !{i32 786472, metadata !"CV_BGR5552BGR", i64 24} ; [ DW_TAG_enumerator ] [CV_BGR5552BGR :: 24]
!39 = metadata !{i32 786472, metadata !"CV_BGR5552RGB", i64 25} ; [ DW_TAG_enumerator ] [CV_BGR5552RGB :: 25]
!40 = metadata !{i32 786472, metadata !"CV_BGRA2BGR555", i64 26} ; [ DW_TAG_enumerator ] [CV_BGRA2BGR555 :: 26]
!41 = metadata !{i32 786472, metadata !"CV_RGBA2BGR555", i64 27} ; [ DW_TAG_enumerator ] [CV_RGBA2BGR555 :: 27]
!42 = metadata !{i32 786472, metadata !"CV_BGR5552BGRA", i64 28} ; [ DW_TAG_enumerator ] [CV_BGR5552BGRA :: 28]
!43 = metadata !{i32 786472, metadata !"CV_BGR5552RGBA", i64 29} ; [ DW_TAG_enumerator ] [CV_BGR5552RGBA :: 29]
!44 = metadata !{i32 786472, metadata !"CV_GRAY2BGR555", i64 30} ; [ DW_TAG_enumerator ] [CV_GRAY2BGR555 :: 30]
!45 = metadata !{i32 786472, metadata !"CV_BGR5552GRAY", i64 31} ; [ DW_TAG_enumerator ] [CV_BGR5552GRAY :: 31]
!46 = metadata !{i32 786472, metadata !"CV_BGR2XYZ", i64 32} ; [ DW_TAG_enumerator ] [CV_BGR2XYZ :: 32]
!47 = metadata !{i32 786472, metadata !"CV_RGB2XYZ", i64 33} ; [ DW_TAG_enumerator ] [CV_RGB2XYZ :: 33]
!48 = metadata !{i32 786472, metadata !"CV_XYZ2BGR", i64 34} ; [ DW_TAG_enumerator ] [CV_XYZ2BGR :: 34]
!49 = metadata !{i32 786472, metadata !"CV_XYZ2RGB", i64 35} ; [ DW_TAG_enumerator ] [CV_XYZ2RGB :: 35]
!50 = metadata !{i32 786472, metadata !"CV_BGR2YCrCb", i64 36} ; [ DW_TAG_enumerator ] [CV_BGR2YCrCb :: 36]
!51 = metadata !{i32 786472, metadata !"CV_RGB2YCrCb", i64 37} ; [ DW_TAG_enumerator ] [CV_RGB2YCrCb :: 37]
!52 = metadata !{i32 786472, metadata !"CV_YCrCb2BGR", i64 38} ; [ DW_TAG_enumerator ] [CV_YCrCb2BGR :: 38]
!53 = metadata !{i32 786472, metadata !"CV_YCrCb2RGB", i64 39} ; [ DW_TAG_enumerator ] [CV_YCrCb2RGB :: 39]
!54 = metadata !{i32 786472, metadata !"CV_BGR2HSV", i64 40} ; [ DW_TAG_enumerator ] [CV_BGR2HSV :: 40]
!55 = metadata !{i32 786472, metadata !"CV_RGB2HSV", i64 41} ; [ DW_TAG_enumerator ] [CV_RGB2HSV :: 41]
!56 = metadata !{i32 786472, metadata !"CV_BGR2Lab", i64 44} ; [ DW_TAG_enumerator ] [CV_BGR2Lab :: 44]
!57 = metadata !{i32 786472, metadata !"CV_RGB2Lab", i64 45} ; [ DW_TAG_enumerator ] [CV_RGB2Lab :: 45]
!58 = metadata !{i32 786472, metadata !"CV_BayerBG2BGR", i64 46} ; [ DW_TAG_enumerator ] [CV_BayerBG2BGR :: 46]
!59 = metadata !{i32 786472, metadata !"CV_BayerGB2BGR", i64 47} ; [ DW_TAG_enumerator ] [CV_BayerGB2BGR :: 47]
!60 = metadata !{i32 786472, metadata !"CV_BayerRG2BGR", i64 48} ; [ DW_TAG_enumerator ] [CV_BayerRG2BGR :: 48]
!61 = metadata !{i32 786472, metadata !"CV_BayerGR2BGR", i64 49} ; [ DW_TAG_enumerator ] [CV_BayerGR2BGR :: 49]
!62 = metadata !{i32 786472, metadata !"CV_BayerBG2RGB", i64 48} ; [ DW_TAG_enumerator ] [CV_BayerBG2RGB :: 48]
!63 = metadata !{i32 786472, metadata !"CV_BayerGB2RGB", i64 49} ; [ DW_TAG_enumerator ] [CV_BayerGB2RGB :: 49]
!64 = metadata !{i32 786472, metadata !"CV_BayerRG2RGB", i64 46} ; [ DW_TAG_enumerator ] [CV_BayerRG2RGB :: 46]
!65 = metadata !{i32 786472, metadata !"CV_BayerGR2RGB", i64 47} ; [ DW_TAG_enumerator ] [CV_BayerGR2RGB :: 47]
!66 = metadata !{i32 786472, metadata !"CV_BGR2Luv", i64 50} ; [ DW_TAG_enumerator ] [CV_BGR2Luv :: 50]
!67 = metadata !{i32 786472, metadata !"CV_RGB2Luv", i64 51} ; [ DW_TAG_enumerator ] [CV_RGB2Luv :: 51]
!68 = metadata !{i32 786472, metadata !"CV_BGR2HLS", i64 52} ; [ DW_TAG_enumerator ] [CV_BGR2HLS :: 52]
!69 = metadata !{i32 786472, metadata !"CV_RGB2HLS", i64 53} ; [ DW_TAG_enumerator ] [CV_RGB2HLS :: 53]
!70 = metadata !{i32 786472, metadata !"CV_HSV2BGR", i64 54} ; [ DW_TAG_enumerator ] [CV_HSV2BGR :: 54]
!71 = metadata !{i32 786472, metadata !"CV_HSV2RGB", i64 55} ; [ DW_TAG_enumerator ] [CV_HSV2RGB :: 55]
!72 = metadata !{i32 786472, metadata !"CV_Lab2BGR", i64 56} ; [ DW_TAG_enumerator ] [CV_Lab2BGR :: 56]
!73 = metadata !{i32 786472, metadata !"CV_Lab2RGB", i64 57} ; [ DW_TAG_enumerator ] [CV_Lab2RGB :: 57]
!74 = metadata !{i32 786472, metadata !"CV_Luv2BGR", i64 58} ; [ DW_TAG_enumerator ] [CV_Luv2BGR :: 58]
!75 = metadata !{i32 786472, metadata !"CV_Luv2RGB", i64 59} ; [ DW_TAG_enumerator ] [CV_Luv2RGB :: 59]
!76 = metadata !{i32 786472, metadata !"CV_HLS2BGR", i64 60} ; [ DW_TAG_enumerator ] [CV_HLS2BGR :: 60]
!77 = metadata !{i32 786472, metadata !"CV_HLS2RGB", i64 61} ; [ DW_TAG_enumerator ] [CV_HLS2RGB :: 61]
!78 = metadata !{i32 786472, metadata !"CV_BayerBG2BGR_VNG", i64 62} ; [ DW_TAG_enumerator ] [CV_BayerBG2BGR_VNG :: 62]
!79 = metadata !{i32 786472, metadata !"CV_BayerGB2BGR_VNG", i64 63} ; [ DW_TAG_enumerator ] [CV_BayerGB2BGR_VNG :: 63]
!80 = metadata !{i32 786472, metadata !"CV_BayerRG2BGR_VNG", i64 64} ; [ DW_TAG_enumerator ] [CV_BayerRG2BGR_VNG :: 64]
!81 = metadata !{i32 786472, metadata !"CV_BayerGR2BGR_VNG", i64 65} ; [ DW_TAG_enumerator ] [CV_BayerGR2BGR_VNG :: 65]
!82 = metadata !{i32 786472, metadata !"CV_BayerBG2RGB_VNG", i64 64} ; [ DW_TAG_enumerator ] [CV_BayerBG2RGB_VNG :: 64]
!83 = metadata !{i32 786472, metadata !"CV_BayerGB2RGB_VNG", i64 65} ; [ DW_TAG_enumerator ] [CV_BayerGB2RGB_VNG :: 65]
!84 = metadata !{i32 786472, metadata !"CV_BayerRG2RGB_VNG", i64 62} ; [ DW_TAG_enumerator ] [CV_BayerRG2RGB_VNG :: 62]
!85 = metadata !{i32 786472, metadata !"CV_BayerGR2RGB_VNG", i64 63} ; [ DW_TAG_enumerator ] [CV_BayerGR2RGB_VNG :: 63]
!86 = metadata !{i32 786472, metadata !"CV_BGR2HSV_FULL", i64 66} ; [ DW_TAG_enumerator ] [CV_BGR2HSV_FULL :: 66]
!87 = metadata !{i32 786472, metadata !"CV_RGB2HSV_FULL", i64 67} ; [ DW_TAG_enumerator ] [CV_RGB2HSV_FULL :: 67]
!88 = metadata !{i32 786472, metadata !"CV_BGR2HLS_FULL", i64 68} ; [ DW_TAG_enumerator ] [CV_BGR2HLS_FULL :: 68]
!89 = metadata !{i32 786472, metadata !"CV_RGB2HLS_FULL", i64 69} ; [ DW_TAG_enumerator ] [CV_RGB2HLS_FULL :: 69]
!90 = metadata !{i32 786472, metadata !"CV_HSV2BGR_FULL", i64 70} ; [ DW_TAG_enumerator ] [CV_HSV2BGR_FULL :: 70]
!91 = metadata !{i32 786472, metadata !"CV_HSV2RGB_FULL", i64 71} ; [ DW_TAG_enumerator ] [CV_HSV2RGB_FULL :: 71]
!92 = metadata !{i32 786472, metadata !"CV_HLS2BGR_FULL", i64 72} ; [ DW_TAG_enumerator ] [CV_HLS2BGR_FULL :: 72]
!93 = metadata !{i32 786472, metadata !"CV_HLS2RGB_FULL", i64 73} ; [ DW_TAG_enumerator ] [CV_HLS2RGB_FULL :: 73]
!94 = metadata !{i32 786472, metadata !"CV_LBGR2Lab", i64 74} ; [ DW_TAG_enumerator ] [CV_LBGR2Lab :: 74]
!95 = metadata !{i32 786472, metadata !"CV_LRGB2Lab", i64 75} ; [ DW_TAG_enumerator ] [CV_LRGB2Lab :: 75]
!96 = metadata !{i32 786472, metadata !"CV_LBGR2Luv", i64 76} ; [ DW_TAG_enumerator ] [CV_LBGR2Luv :: 76]
!97 = metadata !{i32 786472, metadata !"CV_LRGB2Luv", i64 77} ; [ DW_TAG_enumerator ] [CV_LRGB2Luv :: 77]
!98 = metadata !{i32 786472, metadata !"CV_Lab2LBGR", i64 78} ; [ DW_TAG_enumerator ] [CV_Lab2LBGR :: 78]
!99 = metadata !{i32 786472, metadata !"CV_Lab2LRGB", i64 79} ; [ DW_TAG_enumerator ] [CV_Lab2LRGB :: 79]
!100 = metadata !{i32 786472, metadata !"CV_Luv2LBGR", i64 80} ; [ DW_TAG_enumerator ] [CV_Luv2LBGR :: 80]
!101 = metadata !{i32 786472, metadata !"CV_Luv2LRGB", i64 81} ; [ DW_TAG_enumerator ] [CV_Luv2LRGB :: 81]
!102 = metadata !{i32 786472, metadata !"CV_BGR2YUV", i64 82} ; [ DW_TAG_enumerator ] [CV_BGR2YUV :: 82]
!103 = metadata !{i32 786472, metadata !"CV_RGB2YUV", i64 83} ; [ DW_TAG_enumerator ] [CV_RGB2YUV :: 83]
!104 = metadata !{i32 786472, metadata !"CV_YUV2BGR", i64 84} ; [ DW_TAG_enumerator ] [CV_YUV2BGR :: 84]
!105 = metadata !{i32 786472, metadata !"CV_YUV2RGB", i64 85} ; [ DW_TAG_enumerator ] [CV_YUV2RGB :: 85]
!106 = metadata !{i32 786472, metadata !"CV_BayerBG2GRAY", i64 86} ; [ DW_TAG_enumerator ] [CV_BayerBG2GRAY :: 86]
!107 = metadata !{i32 786472, metadata !"CV_BayerGB2GRAY", i64 87} ; [ DW_TAG_enumerator ] [CV_BayerGB2GRAY :: 87]
!108 = metadata !{i32 786472, metadata !"CV_BayerRG2GRAY", i64 88} ; [ DW_TAG_enumerator ] [CV_BayerRG2GRAY :: 88]
!109 = metadata !{i32 786472, metadata !"CV_BayerGR2GRAY", i64 89} ; [ DW_TAG_enumerator ] [CV_BayerGR2GRAY :: 89]
!110 = metadata !{i32 786472, metadata !"CV_YUV2RGB_NV12", i64 90} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_NV12 :: 90]
!111 = metadata !{i32 786472, metadata !"CV_YUV2BGR_NV12", i64 91} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_NV12 :: 91]
!112 = metadata !{i32 786472, metadata !"CV_YUV2RGB_NV21", i64 92} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_NV21 :: 92]
!113 = metadata !{i32 786472, metadata !"CV_YUV2BGR_NV21", i64 93} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_NV21 :: 93]
!114 = metadata !{i32 786472, metadata !"CV_YUV420sp2RGB", i64 92} ; [ DW_TAG_enumerator ] [CV_YUV420sp2RGB :: 92]
!115 = metadata !{i32 786472, metadata !"CV_YUV420sp2BGR", i64 93} ; [ DW_TAG_enumerator ] [CV_YUV420sp2BGR :: 93]
!116 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_NV12", i64 94} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_NV12 :: 94]
!117 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_NV12", i64 95} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_NV12 :: 95]
!118 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_NV21", i64 96} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_NV21 :: 96]
!119 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_NV21", i64 97} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_NV21 :: 97]
!120 = metadata !{i32 786472, metadata !"CV_YUV420sp2RGBA", i64 96} ; [ DW_TAG_enumerator ] [CV_YUV420sp2RGBA :: 96]
!121 = metadata !{i32 786472, metadata !"CV_YUV420sp2BGRA", i64 97} ; [ DW_TAG_enumerator ] [CV_YUV420sp2BGRA :: 97]
!122 = metadata !{i32 786472, metadata !"CV_YUV2RGB_YV12", i64 98} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_YV12 :: 98]
!123 = metadata !{i32 786472, metadata !"CV_YUV2BGR_YV12", i64 99} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_YV12 :: 99]
!124 = metadata !{i32 786472, metadata !"CV_YUV2RGB_IYUV", i64 100} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_IYUV :: 100]
!125 = metadata !{i32 786472, metadata !"CV_YUV2BGR_IYUV", i64 101} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_IYUV :: 101]
!126 = metadata !{i32 786472, metadata !"CV_YUV2RGB_I420", i64 100} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_I420 :: 100]
!127 = metadata !{i32 786472, metadata !"CV_YUV2BGR_I420", i64 101} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_I420 :: 101]
!128 = metadata !{i32 786472, metadata !"CV_YUV420p2RGB", i64 98} ; [ DW_TAG_enumerator ] [CV_YUV420p2RGB :: 98]
!129 = metadata !{i32 786472, metadata !"CV_YUV420p2BGR", i64 99} ; [ DW_TAG_enumerator ] [CV_YUV420p2BGR :: 99]
!130 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_YV12", i64 102} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_YV12 :: 102]
!131 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_YV12", i64 103} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_YV12 :: 103]
!132 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_IYUV", i64 104} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_IYUV :: 104]
!133 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_IYUV", i64 105} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_IYUV :: 105]
!134 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_I420", i64 104} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_I420 :: 104]
!135 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_I420", i64 105} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_I420 :: 105]
!136 = metadata !{i32 786472, metadata !"CV_YUV420p2RGBA", i64 102} ; [ DW_TAG_enumerator ] [CV_YUV420p2RGBA :: 102]
!137 = metadata !{i32 786472, metadata !"CV_YUV420p2BGRA", i64 103} ; [ DW_TAG_enumerator ] [CV_YUV420p2BGRA :: 103]
!138 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_420", i64 106} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_420 :: 106]
!139 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_NV21", i64 106} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_NV21 :: 106]
!140 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_NV12", i64 106} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_NV12 :: 106]
!141 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_YV12", i64 106} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_YV12 :: 106]
!142 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_IYUV", i64 106} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_IYUV :: 106]
!143 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_I420", i64 106} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_I420 :: 106]
!144 = metadata !{i32 786472, metadata !"CV_YUV420sp2GRAY", i64 106} ; [ DW_TAG_enumerator ] [CV_YUV420sp2GRAY :: 106]
!145 = metadata !{i32 786472, metadata !"CV_YUV420p2GRAY", i64 106} ; [ DW_TAG_enumerator ] [CV_YUV420p2GRAY :: 106]
!146 = metadata !{i32 786472, metadata !"CV_YUV2RGB_UYVY", i64 107} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_UYVY :: 107]
!147 = metadata !{i32 786472, metadata !"CV_YUV2BGR_UYVY", i64 108} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_UYVY :: 108]
!148 = metadata !{i32 786472, metadata !"CV_YUV2RGB_Y422", i64 107} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_Y422 :: 107]
!149 = metadata !{i32 786472, metadata !"CV_YUV2BGR_Y422", i64 108} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_Y422 :: 108]
!150 = metadata !{i32 786472, metadata !"CV_YUV2RGB_UYNV", i64 107} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_UYNV :: 107]
!151 = metadata !{i32 786472, metadata !"CV_YUV2BGR_UYNV", i64 108} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_UYNV :: 108]
!152 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_UYVY", i64 111} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_UYVY :: 111]
!153 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_UYVY", i64 112} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_UYVY :: 112]
!154 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_Y422", i64 111} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_Y422 :: 111]
!155 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_Y422", i64 112} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_Y422 :: 112]
!156 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_UYNV", i64 111} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_UYNV :: 111]
!157 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_UYNV", i64 112} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_UYNV :: 112]
!158 = metadata !{i32 786472, metadata !"CV_YUV2RGB_YUY2", i64 115} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_YUY2 :: 115]
!159 = metadata !{i32 786472, metadata !"CV_YUV2BGR_YUY2", i64 116} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_YUY2 :: 116]
!160 = metadata !{i32 786472, metadata !"CV_YUV2RGB_YVYU", i64 117} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_YVYU :: 117]
!161 = metadata !{i32 786472, metadata !"CV_YUV2BGR_YVYU", i64 118} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_YVYU :: 118]
!162 = metadata !{i32 786472, metadata !"CV_YUV2RGB_YUYV", i64 115} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_YUYV :: 115]
!163 = metadata !{i32 786472, metadata !"CV_YUV2BGR_YUYV", i64 116} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_YUYV :: 116]
!164 = metadata !{i32 786472, metadata !"CV_YUV2RGB_YUNV", i64 115} ; [ DW_TAG_enumerator ] [CV_YUV2RGB_YUNV :: 115]
!165 = metadata !{i32 786472, metadata !"CV_YUV2BGR_YUNV", i64 116} ; [ DW_TAG_enumerator ] [CV_YUV2BGR_YUNV :: 116]
!166 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_YUY2", i64 119} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_YUY2 :: 119]
!167 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_YUY2", i64 120} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_YUY2 :: 120]
!168 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_YVYU", i64 121} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_YVYU :: 121]
!169 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_YVYU", i64 122} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_YVYU :: 122]
!170 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_YUYV", i64 119} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_YUYV :: 119]
!171 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_YUYV", i64 120} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_YUYV :: 120]
!172 = metadata !{i32 786472, metadata !"CV_YUV2RGBA_YUNV", i64 119} ; [ DW_TAG_enumerator ] [CV_YUV2RGBA_YUNV :: 119]
!173 = metadata !{i32 786472, metadata !"CV_YUV2BGRA_YUNV", i64 120} ; [ DW_TAG_enumerator ] [CV_YUV2BGRA_YUNV :: 120]
!174 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_UYVY", i64 123} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_UYVY :: 123]
!175 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_YUY2", i64 124} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_YUY2 :: 124]
!176 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_Y422", i64 123} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_Y422 :: 123]
!177 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_UYNV", i64 123} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_UYNV :: 123]
!178 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_YVYU", i64 124} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_YVYU :: 124]
!179 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_YUYV", i64 124} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_YUYV :: 124]
!180 = metadata !{i32 786472, metadata !"CV_YUV2GRAY_YUNV", i64 124} ; [ DW_TAG_enumerator ] [CV_YUV2GRAY_YUNV :: 124]
!181 = metadata !{i32 786472, metadata !"CV_RGBA2mRGBA", i64 125} ; [ DW_TAG_enumerator ] [CV_RGBA2mRGBA :: 125]
!182 = metadata !{i32 786472, metadata !"CV_mRGBA2RGBA", i64 126} ; [ DW_TAG_enumerator ] [CV_mRGBA2RGBA :: 126]
!183 = metadata !{i32 786472, metadata !"CV_RGB2YUV_I420", i64 127} ; [ DW_TAG_enumerator ] [CV_RGB2YUV_I420 :: 127]
!184 = metadata !{i32 786472, metadata !"CV_BGR2YUV_I420", i64 128} ; [ DW_TAG_enumerator ] [CV_BGR2YUV_I420 :: 128]
!185 = metadata !{i32 786472, metadata !"CV_RGB2YUV_IYUV", i64 127} ; [ DW_TAG_enumerator ] [CV_RGB2YUV_IYUV :: 127]
!186 = metadata !{i32 786472, metadata !"CV_BGR2YUV_IYUV", i64 128} ; [ DW_TAG_enumerator ] [CV_BGR2YUV_IYUV :: 128]
!187 = metadata !{i32 786472, metadata !"CV_RGBA2YUV_I420", i64 129} ; [ DW_TAG_enumerator ] [CV_RGBA2YUV_I420 :: 129]
!188 = metadata !{i32 786472, metadata !"CV_BGRA2YUV_I420", i64 130} ; [ DW_TAG_enumerator ] [CV_BGRA2YUV_I420 :: 130]
!189 = metadata !{i32 786472, metadata !"CV_RGBA2YUV_IYUV", i64 129} ; [ DW_TAG_enumerator ] [CV_RGBA2YUV_IYUV :: 129]
!190 = metadata !{i32 786472, metadata !"CV_BGRA2YUV_IYUV", i64 130} ; [ DW_TAG_enumerator ] [CV_BGRA2YUV_IYUV :: 130]
!191 = metadata !{i32 786472, metadata !"CV_RGB2YUV_YV12", i64 131} ; [ DW_TAG_enumerator ] [CV_RGB2YUV_YV12 :: 131]
!192 = metadata !{i32 786472, metadata !"CV_BGR2YUV_YV12", i64 132} ; [ DW_TAG_enumerator ] [CV_BGR2YUV_YV12 :: 132]
!193 = metadata !{i32 786472, metadata !"CV_RGBA2YUV_YV12", i64 133} ; [ DW_TAG_enumerator ] [CV_RGBA2YUV_YV12 :: 133]
!194 = metadata !{i32 786472, metadata !"CV_BGRA2YUV_YV12", i64 134} ; [ DW_TAG_enumerator ] [CV_BGRA2YUV_YV12 :: 134]
!195 = metadata !{i32 786472, metadata !"CV_COLORCVT_MAX", i64 135} ; [ DW_TAG_enumerator ] [CV_COLORCVT_MAX :: 135]
!196 = metadata !{i32 786436, metadata !197, metadata !198, metadata !"", i32 842, i64 32, i64 32, i32 0, i32 0, null, metadata !200, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 842, size 32, align 32, offset 0] [def] [from ]
!197 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/imgproc/imgproc.hpp", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!198 = metadata !{i32 786489, metadata !199, null, metadata !"cv", i32 70} ; [ DW_TAG_namespace ] [cv] [line 70]
!199 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/core.hpp", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!200 = metadata !{metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390}
!201 = metadata !{i32 786472, metadata !"COLOR_BGR2BGRA", i64 0} ; [ DW_TAG_enumerator ] [COLOR_BGR2BGRA :: 0]
!202 = metadata !{i32 786472, metadata !"COLOR_RGB2RGBA", i64 0} ; [ DW_TAG_enumerator ] [COLOR_RGB2RGBA :: 0]
!203 = metadata !{i32 786472, metadata !"COLOR_BGRA2BGR", i64 1} ; [ DW_TAG_enumerator ] [COLOR_BGRA2BGR :: 1]
!204 = metadata !{i32 786472, metadata !"COLOR_RGBA2RGB", i64 1} ; [ DW_TAG_enumerator ] [COLOR_RGBA2RGB :: 1]
!205 = metadata !{i32 786472, metadata !"COLOR_BGR2RGBA", i64 2} ; [ DW_TAG_enumerator ] [COLOR_BGR2RGBA :: 2]
!206 = metadata !{i32 786472, metadata !"COLOR_RGB2BGRA", i64 2} ; [ DW_TAG_enumerator ] [COLOR_RGB2BGRA :: 2]
!207 = metadata !{i32 786472, metadata !"COLOR_RGBA2BGR", i64 3} ; [ DW_TAG_enumerator ] [COLOR_RGBA2BGR :: 3]
!208 = metadata !{i32 786472, metadata !"COLOR_BGRA2RGB", i64 3} ; [ DW_TAG_enumerator ] [COLOR_BGRA2RGB :: 3]
!209 = metadata !{i32 786472, metadata !"COLOR_BGR2RGB", i64 4} ; [ DW_TAG_enumerator ] [COLOR_BGR2RGB :: 4]
!210 = metadata !{i32 786472, metadata !"COLOR_RGB2BGR", i64 4} ; [ DW_TAG_enumerator ] [COLOR_RGB2BGR :: 4]
!211 = metadata !{i32 786472, metadata !"COLOR_BGRA2RGBA", i64 5} ; [ DW_TAG_enumerator ] [COLOR_BGRA2RGBA :: 5]
!212 = metadata !{i32 786472, metadata !"COLOR_RGBA2BGRA", i64 5} ; [ DW_TAG_enumerator ] [COLOR_RGBA2BGRA :: 5]
!213 = metadata !{i32 786472, metadata !"COLOR_BGR2GRAY", i64 6} ; [ DW_TAG_enumerator ] [COLOR_BGR2GRAY :: 6]
!214 = metadata !{i32 786472, metadata !"COLOR_RGB2GRAY", i64 7} ; [ DW_TAG_enumerator ] [COLOR_RGB2GRAY :: 7]
!215 = metadata !{i32 786472, metadata !"COLOR_GRAY2BGR", i64 8} ; [ DW_TAG_enumerator ] [COLOR_GRAY2BGR :: 8]
!216 = metadata !{i32 786472, metadata !"COLOR_GRAY2RGB", i64 8} ; [ DW_TAG_enumerator ] [COLOR_GRAY2RGB :: 8]
!217 = metadata !{i32 786472, metadata !"COLOR_GRAY2BGRA", i64 9} ; [ DW_TAG_enumerator ] [COLOR_GRAY2BGRA :: 9]
!218 = metadata !{i32 786472, metadata !"COLOR_GRAY2RGBA", i64 9} ; [ DW_TAG_enumerator ] [COLOR_GRAY2RGBA :: 9]
!219 = metadata !{i32 786472, metadata !"COLOR_BGRA2GRAY", i64 10} ; [ DW_TAG_enumerator ] [COLOR_BGRA2GRAY :: 10]
!220 = metadata !{i32 786472, metadata !"COLOR_RGBA2GRAY", i64 11} ; [ DW_TAG_enumerator ] [COLOR_RGBA2GRAY :: 11]
!221 = metadata !{i32 786472, metadata !"COLOR_BGR2BGR565", i64 12} ; [ DW_TAG_enumerator ] [COLOR_BGR2BGR565 :: 12]
!222 = metadata !{i32 786472, metadata !"COLOR_RGB2BGR565", i64 13} ; [ DW_TAG_enumerator ] [COLOR_RGB2BGR565 :: 13]
!223 = metadata !{i32 786472, metadata !"COLOR_BGR5652BGR", i64 14} ; [ DW_TAG_enumerator ] [COLOR_BGR5652BGR :: 14]
!224 = metadata !{i32 786472, metadata !"COLOR_BGR5652RGB", i64 15} ; [ DW_TAG_enumerator ] [COLOR_BGR5652RGB :: 15]
!225 = metadata !{i32 786472, metadata !"COLOR_BGRA2BGR565", i64 16} ; [ DW_TAG_enumerator ] [COLOR_BGRA2BGR565 :: 16]
!226 = metadata !{i32 786472, metadata !"COLOR_RGBA2BGR565", i64 17} ; [ DW_TAG_enumerator ] [COLOR_RGBA2BGR565 :: 17]
!227 = metadata !{i32 786472, metadata !"COLOR_BGR5652BGRA", i64 18} ; [ DW_TAG_enumerator ] [COLOR_BGR5652BGRA :: 18]
!228 = metadata !{i32 786472, metadata !"COLOR_BGR5652RGBA", i64 19} ; [ DW_TAG_enumerator ] [COLOR_BGR5652RGBA :: 19]
!229 = metadata !{i32 786472, metadata !"COLOR_GRAY2BGR565", i64 20} ; [ DW_TAG_enumerator ] [COLOR_GRAY2BGR565 :: 20]
!230 = metadata !{i32 786472, metadata !"COLOR_BGR5652GRAY", i64 21} ; [ DW_TAG_enumerator ] [COLOR_BGR5652GRAY :: 21]
!231 = metadata !{i32 786472, metadata !"COLOR_BGR2BGR555", i64 22} ; [ DW_TAG_enumerator ] [COLOR_BGR2BGR555 :: 22]
!232 = metadata !{i32 786472, metadata !"COLOR_RGB2BGR555", i64 23} ; [ DW_TAG_enumerator ] [COLOR_RGB2BGR555 :: 23]
!233 = metadata !{i32 786472, metadata !"COLOR_BGR5552BGR", i64 24} ; [ DW_TAG_enumerator ] [COLOR_BGR5552BGR :: 24]
!234 = metadata !{i32 786472, metadata !"COLOR_BGR5552RGB", i64 25} ; [ DW_TAG_enumerator ] [COLOR_BGR5552RGB :: 25]
!235 = metadata !{i32 786472, metadata !"COLOR_BGRA2BGR555", i64 26} ; [ DW_TAG_enumerator ] [COLOR_BGRA2BGR555 :: 26]
!236 = metadata !{i32 786472, metadata !"COLOR_RGBA2BGR555", i64 27} ; [ DW_TAG_enumerator ] [COLOR_RGBA2BGR555 :: 27]
!237 = metadata !{i32 786472, metadata !"COLOR_BGR5552BGRA", i64 28} ; [ DW_TAG_enumerator ] [COLOR_BGR5552BGRA :: 28]
!238 = metadata !{i32 786472, metadata !"COLOR_BGR5552RGBA", i64 29} ; [ DW_TAG_enumerator ] [COLOR_BGR5552RGBA :: 29]
!239 = metadata !{i32 786472, metadata !"COLOR_GRAY2BGR555", i64 30} ; [ DW_TAG_enumerator ] [COLOR_GRAY2BGR555 :: 30]
!240 = metadata !{i32 786472, metadata !"COLOR_BGR5552GRAY", i64 31} ; [ DW_TAG_enumerator ] [COLOR_BGR5552GRAY :: 31]
!241 = metadata !{i32 786472, metadata !"COLOR_BGR2XYZ", i64 32} ; [ DW_TAG_enumerator ] [COLOR_BGR2XYZ :: 32]
!242 = metadata !{i32 786472, metadata !"COLOR_RGB2XYZ", i64 33} ; [ DW_TAG_enumerator ] [COLOR_RGB2XYZ :: 33]
!243 = metadata !{i32 786472, metadata !"COLOR_XYZ2BGR", i64 34} ; [ DW_TAG_enumerator ] [COLOR_XYZ2BGR :: 34]
!244 = metadata !{i32 786472, metadata !"COLOR_XYZ2RGB", i64 35} ; [ DW_TAG_enumerator ] [COLOR_XYZ2RGB :: 35]
!245 = metadata !{i32 786472, metadata !"COLOR_BGR2YCrCb", i64 36} ; [ DW_TAG_enumerator ] [COLOR_BGR2YCrCb :: 36]
!246 = metadata !{i32 786472, metadata !"COLOR_RGB2YCrCb", i64 37} ; [ DW_TAG_enumerator ] [COLOR_RGB2YCrCb :: 37]
!247 = metadata !{i32 786472, metadata !"COLOR_YCrCb2BGR", i64 38} ; [ DW_TAG_enumerator ] [COLOR_YCrCb2BGR :: 38]
!248 = metadata !{i32 786472, metadata !"COLOR_YCrCb2RGB", i64 39} ; [ DW_TAG_enumerator ] [COLOR_YCrCb2RGB :: 39]
!249 = metadata !{i32 786472, metadata !"COLOR_BGR2HSV", i64 40} ; [ DW_TAG_enumerator ] [COLOR_BGR2HSV :: 40]
!250 = metadata !{i32 786472, metadata !"COLOR_RGB2HSV", i64 41} ; [ DW_TAG_enumerator ] [COLOR_RGB2HSV :: 41]
!251 = metadata !{i32 786472, metadata !"COLOR_BGR2Lab", i64 44} ; [ DW_TAG_enumerator ] [COLOR_BGR2Lab :: 44]
!252 = metadata !{i32 786472, metadata !"COLOR_RGB2Lab", i64 45} ; [ DW_TAG_enumerator ] [COLOR_RGB2Lab :: 45]
!253 = metadata !{i32 786472, metadata !"COLOR_BayerBG2BGR", i64 46} ; [ DW_TAG_enumerator ] [COLOR_BayerBG2BGR :: 46]
!254 = metadata !{i32 786472, metadata !"COLOR_BayerGB2BGR", i64 47} ; [ DW_TAG_enumerator ] [COLOR_BayerGB2BGR :: 47]
!255 = metadata !{i32 786472, metadata !"COLOR_BayerRG2BGR", i64 48} ; [ DW_TAG_enumerator ] [COLOR_BayerRG2BGR :: 48]
!256 = metadata !{i32 786472, metadata !"COLOR_BayerGR2BGR", i64 49} ; [ DW_TAG_enumerator ] [COLOR_BayerGR2BGR :: 49]
!257 = metadata !{i32 786472, metadata !"COLOR_BayerBG2RGB", i64 48} ; [ DW_TAG_enumerator ] [COLOR_BayerBG2RGB :: 48]
!258 = metadata !{i32 786472, metadata !"COLOR_BayerGB2RGB", i64 49} ; [ DW_TAG_enumerator ] [COLOR_BayerGB2RGB :: 49]
!259 = metadata !{i32 786472, metadata !"COLOR_BayerRG2RGB", i64 46} ; [ DW_TAG_enumerator ] [COLOR_BayerRG2RGB :: 46]
!260 = metadata !{i32 786472, metadata !"COLOR_BayerGR2RGB", i64 47} ; [ DW_TAG_enumerator ] [COLOR_BayerGR2RGB :: 47]
!261 = metadata !{i32 786472, metadata !"COLOR_BGR2Luv", i64 50} ; [ DW_TAG_enumerator ] [COLOR_BGR2Luv :: 50]
!262 = metadata !{i32 786472, metadata !"COLOR_RGB2Luv", i64 51} ; [ DW_TAG_enumerator ] [COLOR_RGB2Luv :: 51]
!263 = metadata !{i32 786472, metadata !"COLOR_BGR2HLS", i64 52} ; [ DW_TAG_enumerator ] [COLOR_BGR2HLS :: 52]
!264 = metadata !{i32 786472, metadata !"COLOR_RGB2HLS", i64 53} ; [ DW_TAG_enumerator ] [COLOR_RGB2HLS :: 53]
!265 = metadata !{i32 786472, metadata !"COLOR_HSV2BGR", i64 54} ; [ DW_TAG_enumerator ] [COLOR_HSV2BGR :: 54]
!266 = metadata !{i32 786472, metadata !"COLOR_HSV2RGB", i64 55} ; [ DW_TAG_enumerator ] [COLOR_HSV2RGB :: 55]
!267 = metadata !{i32 786472, metadata !"COLOR_Lab2BGR", i64 56} ; [ DW_TAG_enumerator ] [COLOR_Lab2BGR :: 56]
!268 = metadata !{i32 786472, metadata !"COLOR_Lab2RGB", i64 57} ; [ DW_TAG_enumerator ] [COLOR_Lab2RGB :: 57]
!269 = metadata !{i32 786472, metadata !"COLOR_Luv2BGR", i64 58} ; [ DW_TAG_enumerator ] [COLOR_Luv2BGR :: 58]
!270 = metadata !{i32 786472, metadata !"COLOR_Luv2RGB", i64 59} ; [ DW_TAG_enumerator ] [COLOR_Luv2RGB :: 59]
!271 = metadata !{i32 786472, metadata !"COLOR_HLS2BGR", i64 60} ; [ DW_TAG_enumerator ] [COLOR_HLS2BGR :: 60]
!272 = metadata !{i32 786472, metadata !"COLOR_HLS2RGB", i64 61} ; [ DW_TAG_enumerator ] [COLOR_HLS2RGB :: 61]
!273 = metadata !{i32 786472, metadata !"COLOR_BayerBG2BGR_VNG", i64 62} ; [ DW_TAG_enumerator ] [COLOR_BayerBG2BGR_VNG :: 62]
!274 = metadata !{i32 786472, metadata !"COLOR_BayerGB2BGR_VNG", i64 63} ; [ DW_TAG_enumerator ] [COLOR_BayerGB2BGR_VNG :: 63]
!275 = metadata !{i32 786472, metadata !"COLOR_BayerRG2BGR_VNG", i64 64} ; [ DW_TAG_enumerator ] [COLOR_BayerRG2BGR_VNG :: 64]
!276 = metadata !{i32 786472, metadata !"COLOR_BayerGR2BGR_VNG", i64 65} ; [ DW_TAG_enumerator ] [COLOR_BayerGR2BGR_VNG :: 65]
!277 = metadata !{i32 786472, metadata !"COLOR_BayerBG2RGB_VNG", i64 64} ; [ DW_TAG_enumerator ] [COLOR_BayerBG2RGB_VNG :: 64]
!278 = metadata !{i32 786472, metadata !"COLOR_BayerGB2RGB_VNG", i64 65} ; [ DW_TAG_enumerator ] [COLOR_BayerGB2RGB_VNG :: 65]
!279 = metadata !{i32 786472, metadata !"COLOR_BayerRG2RGB_VNG", i64 62} ; [ DW_TAG_enumerator ] [COLOR_BayerRG2RGB_VNG :: 62]
!280 = metadata !{i32 786472, metadata !"COLOR_BayerGR2RGB_VNG", i64 63} ; [ DW_TAG_enumerator ] [COLOR_BayerGR2RGB_VNG :: 63]
!281 = metadata !{i32 786472, metadata !"COLOR_BGR2HSV_FULL", i64 66} ; [ DW_TAG_enumerator ] [COLOR_BGR2HSV_FULL :: 66]
!282 = metadata !{i32 786472, metadata !"COLOR_RGB2HSV_FULL", i64 67} ; [ DW_TAG_enumerator ] [COLOR_RGB2HSV_FULL :: 67]
!283 = metadata !{i32 786472, metadata !"COLOR_BGR2HLS_FULL", i64 68} ; [ DW_TAG_enumerator ] [COLOR_BGR2HLS_FULL :: 68]
!284 = metadata !{i32 786472, metadata !"COLOR_RGB2HLS_FULL", i64 69} ; [ DW_TAG_enumerator ] [COLOR_RGB2HLS_FULL :: 69]
!285 = metadata !{i32 786472, metadata !"COLOR_HSV2BGR_FULL", i64 70} ; [ DW_TAG_enumerator ] [COLOR_HSV2BGR_FULL :: 70]
!286 = metadata !{i32 786472, metadata !"COLOR_HSV2RGB_FULL", i64 71} ; [ DW_TAG_enumerator ] [COLOR_HSV2RGB_FULL :: 71]
!287 = metadata !{i32 786472, metadata !"COLOR_HLS2BGR_FULL", i64 72} ; [ DW_TAG_enumerator ] [COLOR_HLS2BGR_FULL :: 72]
!288 = metadata !{i32 786472, metadata !"COLOR_HLS2RGB_FULL", i64 73} ; [ DW_TAG_enumerator ] [COLOR_HLS2RGB_FULL :: 73]
!289 = metadata !{i32 786472, metadata !"COLOR_LBGR2Lab", i64 74} ; [ DW_TAG_enumerator ] [COLOR_LBGR2Lab :: 74]
!290 = metadata !{i32 786472, metadata !"COLOR_LRGB2Lab", i64 75} ; [ DW_TAG_enumerator ] [COLOR_LRGB2Lab :: 75]
!291 = metadata !{i32 786472, metadata !"COLOR_LBGR2Luv", i64 76} ; [ DW_TAG_enumerator ] [COLOR_LBGR2Luv :: 76]
!292 = metadata !{i32 786472, metadata !"COLOR_LRGB2Luv", i64 77} ; [ DW_TAG_enumerator ] [COLOR_LRGB2Luv :: 77]
!293 = metadata !{i32 786472, metadata !"COLOR_Lab2LBGR", i64 78} ; [ DW_TAG_enumerator ] [COLOR_Lab2LBGR :: 78]
!294 = metadata !{i32 786472, metadata !"COLOR_Lab2LRGB", i64 79} ; [ DW_TAG_enumerator ] [COLOR_Lab2LRGB :: 79]
!295 = metadata !{i32 786472, metadata !"COLOR_Luv2LBGR", i64 80} ; [ DW_TAG_enumerator ] [COLOR_Luv2LBGR :: 80]
!296 = metadata !{i32 786472, metadata !"COLOR_Luv2LRGB", i64 81} ; [ DW_TAG_enumerator ] [COLOR_Luv2LRGB :: 81]
!297 = metadata !{i32 786472, metadata !"COLOR_BGR2YUV", i64 82} ; [ DW_TAG_enumerator ] [COLOR_BGR2YUV :: 82]
!298 = metadata !{i32 786472, metadata !"COLOR_RGB2YUV", i64 83} ; [ DW_TAG_enumerator ] [COLOR_RGB2YUV :: 83]
!299 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR", i64 84} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR :: 84]
!300 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB", i64 85} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB :: 85]
!301 = metadata !{i32 786472, metadata !"COLOR_BayerBG2GRAY", i64 86} ; [ DW_TAG_enumerator ] [COLOR_BayerBG2GRAY :: 86]
!302 = metadata !{i32 786472, metadata !"COLOR_BayerGB2GRAY", i64 87} ; [ DW_TAG_enumerator ] [COLOR_BayerGB2GRAY :: 87]
!303 = metadata !{i32 786472, metadata !"COLOR_BayerRG2GRAY", i64 88} ; [ DW_TAG_enumerator ] [COLOR_BayerRG2GRAY :: 88]
!304 = metadata !{i32 786472, metadata !"COLOR_BayerGR2GRAY", i64 89} ; [ DW_TAG_enumerator ] [COLOR_BayerGR2GRAY :: 89]
!305 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_NV12", i64 90} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_NV12 :: 90]
!306 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_NV12", i64 91} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_NV12 :: 91]
!307 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_NV21", i64 92} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_NV21 :: 92]
!308 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_NV21", i64 93} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_NV21 :: 93]
!309 = metadata !{i32 786472, metadata !"COLOR_YUV420sp2RGB", i64 92} ; [ DW_TAG_enumerator ] [COLOR_YUV420sp2RGB :: 92]
!310 = metadata !{i32 786472, metadata !"COLOR_YUV420sp2BGR", i64 93} ; [ DW_TAG_enumerator ] [COLOR_YUV420sp2BGR :: 93]
!311 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_NV12", i64 94} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_NV12 :: 94]
!312 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_NV12", i64 95} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_NV12 :: 95]
!313 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_NV21", i64 96} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_NV21 :: 96]
!314 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_NV21", i64 97} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_NV21 :: 97]
!315 = metadata !{i32 786472, metadata !"COLOR_YUV420sp2RGBA", i64 96} ; [ DW_TAG_enumerator ] [COLOR_YUV420sp2RGBA :: 96]
!316 = metadata !{i32 786472, metadata !"COLOR_YUV420sp2BGRA", i64 97} ; [ DW_TAG_enumerator ] [COLOR_YUV420sp2BGRA :: 97]
!317 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_YV12", i64 98} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_YV12 :: 98]
!318 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_YV12", i64 99} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_YV12 :: 99]
!319 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_IYUV", i64 100} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_IYUV :: 100]
!320 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_IYUV", i64 101} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_IYUV :: 101]
!321 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_I420", i64 100} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_I420 :: 100]
!322 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_I420", i64 101} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_I420 :: 101]
!323 = metadata !{i32 786472, metadata !"COLOR_YUV420p2RGB", i64 98} ; [ DW_TAG_enumerator ] [COLOR_YUV420p2RGB :: 98]
!324 = metadata !{i32 786472, metadata !"COLOR_YUV420p2BGR", i64 99} ; [ DW_TAG_enumerator ] [COLOR_YUV420p2BGR :: 99]
!325 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_YV12", i64 102} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_YV12 :: 102]
!326 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_YV12", i64 103} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_YV12 :: 103]
!327 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_IYUV", i64 104} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_IYUV :: 104]
!328 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_IYUV", i64 105} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_IYUV :: 105]
!329 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_I420", i64 104} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_I420 :: 104]
!330 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_I420", i64 105} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_I420 :: 105]
!331 = metadata !{i32 786472, metadata !"COLOR_YUV420p2RGBA", i64 102} ; [ DW_TAG_enumerator ] [COLOR_YUV420p2RGBA :: 102]
!332 = metadata !{i32 786472, metadata !"COLOR_YUV420p2BGRA", i64 103} ; [ DW_TAG_enumerator ] [COLOR_YUV420p2BGRA :: 103]
!333 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_420", i64 106} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_420 :: 106]
!334 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_NV21", i64 106} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_NV21 :: 106]
!335 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_NV12", i64 106} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_NV12 :: 106]
!336 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_YV12", i64 106} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_YV12 :: 106]
!337 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_IYUV", i64 106} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_IYUV :: 106]
!338 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_I420", i64 106} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_I420 :: 106]
!339 = metadata !{i32 786472, metadata !"COLOR_YUV420sp2GRAY", i64 106} ; [ DW_TAG_enumerator ] [COLOR_YUV420sp2GRAY :: 106]
!340 = metadata !{i32 786472, metadata !"COLOR_YUV420p2GRAY", i64 106} ; [ DW_TAG_enumerator ] [COLOR_YUV420p2GRAY :: 106]
!341 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_UYVY", i64 107} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_UYVY :: 107]
!342 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_UYVY", i64 108} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_UYVY :: 108]
!343 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_Y422", i64 107} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_Y422 :: 107]
!344 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_Y422", i64 108} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_Y422 :: 108]
!345 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_UYNV", i64 107} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_UYNV :: 107]
!346 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_UYNV", i64 108} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_UYNV :: 108]
!347 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_UYVY", i64 111} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_UYVY :: 111]
!348 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_UYVY", i64 112} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_UYVY :: 112]
!349 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_Y422", i64 111} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_Y422 :: 111]
!350 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_Y422", i64 112} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_Y422 :: 112]
!351 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_UYNV", i64 111} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_UYNV :: 111]
!352 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_UYNV", i64 112} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_UYNV :: 112]
!353 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_YUY2", i64 115} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_YUY2 :: 115]
!354 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_YUY2", i64 116} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_YUY2 :: 116]
!355 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_YVYU", i64 117} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_YVYU :: 117]
!356 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_YVYU", i64 118} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_YVYU :: 118]
!357 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_YUYV", i64 115} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_YUYV :: 115]
!358 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_YUYV", i64 116} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_YUYV :: 116]
!359 = metadata !{i32 786472, metadata !"COLOR_YUV2RGB_YUNV", i64 115} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGB_YUNV :: 115]
!360 = metadata !{i32 786472, metadata !"COLOR_YUV2BGR_YUNV", i64 116} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGR_YUNV :: 116]
!361 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_YUY2", i64 119} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_YUY2 :: 119]
!362 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_YUY2", i64 120} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_YUY2 :: 120]
!363 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_YVYU", i64 121} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_YVYU :: 121]
!364 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_YVYU", i64 122} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_YVYU :: 122]
!365 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_YUYV", i64 119} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_YUYV :: 119]
!366 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_YUYV", i64 120} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_YUYV :: 120]
!367 = metadata !{i32 786472, metadata !"COLOR_YUV2RGBA_YUNV", i64 119} ; [ DW_TAG_enumerator ] [COLOR_YUV2RGBA_YUNV :: 119]
!368 = metadata !{i32 786472, metadata !"COLOR_YUV2BGRA_YUNV", i64 120} ; [ DW_TAG_enumerator ] [COLOR_YUV2BGRA_YUNV :: 120]
!369 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_UYVY", i64 123} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_UYVY :: 123]
!370 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_YUY2", i64 124} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_YUY2 :: 124]
!371 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_Y422", i64 123} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_Y422 :: 123]
!372 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_UYNV", i64 123} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_UYNV :: 123]
!373 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_YVYU", i64 124} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_YVYU :: 124]
!374 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_YUYV", i64 124} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_YUYV :: 124]
!375 = metadata !{i32 786472, metadata !"COLOR_YUV2GRAY_YUNV", i64 124} ; [ DW_TAG_enumerator ] [COLOR_YUV2GRAY_YUNV :: 124]
!376 = metadata !{i32 786472, metadata !"COLOR_RGBA2mRGBA", i64 125} ; [ DW_TAG_enumerator ] [COLOR_RGBA2mRGBA :: 125]
!377 = metadata !{i32 786472, metadata !"COLOR_mRGBA2RGBA", i64 126} ; [ DW_TAG_enumerator ] [COLOR_mRGBA2RGBA :: 126]
!378 = metadata !{i32 786472, metadata !"COLOR_RGB2YUV_I420", i64 127} ; [ DW_TAG_enumerator ] [COLOR_RGB2YUV_I420 :: 127]
!379 = metadata !{i32 786472, metadata !"COLOR_BGR2YUV_I420", i64 128} ; [ DW_TAG_enumerator ] [COLOR_BGR2YUV_I420 :: 128]
!380 = metadata !{i32 786472, metadata !"COLOR_RGB2YUV_IYUV", i64 127} ; [ DW_TAG_enumerator ] [COLOR_RGB2YUV_IYUV :: 127]
!381 = metadata !{i32 786472, metadata !"COLOR_BGR2YUV_IYUV", i64 128} ; [ DW_TAG_enumerator ] [COLOR_BGR2YUV_IYUV :: 128]
!382 = metadata !{i32 786472, metadata !"COLOR_RGBA2YUV_I420", i64 129} ; [ DW_TAG_enumerator ] [COLOR_RGBA2YUV_I420 :: 129]
!383 = metadata !{i32 786472, metadata !"COLOR_BGRA2YUV_I420", i64 130} ; [ DW_TAG_enumerator ] [COLOR_BGRA2YUV_I420 :: 130]
!384 = metadata !{i32 786472, metadata !"COLOR_RGBA2YUV_IYUV", i64 129} ; [ DW_TAG_enumerator ] [COLOR_RGBA2YUV_IYUV :: 129]
!385 = metadata !{i32 786472, metadata !"COLOR_BGRA2YUV_IYUV", i64 130} ; [ DW_TAG_enumerator ] [COLOR_BGRA2YUV_IYUV :: 130]
!386 = metadata !{i32 786472, metadata !"COLOR_RGB2YUV_YV12", i64 131} ; [ DW_TAG_enumerator ] [COLOR_RGB2YUV_YV12 :: 131]
!387 = metadata !{i32 786472, metadata !"COLOR_BGR2YUV_YV12", i64 132} ; [ DW_TAG_enumerator ] [COLOR_BGR2YUV_YV12 :: 132]
!388 = metadata !{i32 786472, metadata !"COLOR_RGBA2YUV_YV12", i64 133} ; [ DW_TAG_enumerator ] [COLOR_RGBA2YUV_YV12 :: 133]
!389 = metadata !{i32 786472, metadata !"COLOR_BGRA2YUV_YV12", i64 134} ; [ DW_TAG_enumerator ] [COLOR_BGRA2YUV_YV12 :: 134]
!390 = metadata !{i32 786472, metadata !"COLOR_COLORCVT_MAX", i64 135} ; [ DW_TAG_enumerator ] [COLOR_COLORCVT_MAX :: 135]
!391 = metadata !{i32 786436, metadata !392, metadata !198, metadata !"", i32 360, i64 32, i64 32, i32 0, i32 0, null, metadata !393, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 360, size 32, align 32, offset 0] [def] [from ]
!392 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/objdetect/objdetect.hpp", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!393 = metadata !{metadata !394, metadata !395, metadata !396, metadata !397}
!394 = metadata !{i32 786472, metadata !"CASCADE_DO_CANNY_PRUNING", i64 1} ; [ DW_TAG_enumerator ] [CASCADE_DO_CANNY_PRUNING :: 1]
!395 = metadata !{i32 786472, metadata !"CASCADE_SCALE_IMAGE", i64 2} ; [ DW_TAG_enumerator ] [CASCADE_SCALE_IMAGE :: 2]
!396 = metadata !{i32 786472, metadata !"CASCADE_FIND_BIGGEST_OBJECT", i64 4} ; [ DW_TAG_enumerator ] [CASCADE_FIND_BIGGEST_OBJECT :: 4]
!397 = metadata !{i32 786472, metadata !"CASCADE_DO_ROUGH_SEARCH", i64 8} ; [ DW_TAG_enumerator ] [CASCADE_DO_ROUGH_SEARCH :: 8]
!398 = metadata !{i32 786436, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"", i32 453, i64 32, i64 32, i32 0, i32 0, null, metadata !399, i32 0, null, null, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEUt_E"} ; [ DW_TAG_enumeration_type ] [line 453, size 32, align 32, offset 0] [def] [from ]
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !403, metadata !404}
!400 = metadata !{i32 786472, metadata !"depth", i64 6} ; [ DW_TAG_enumerator ] [depth :: 6]
!401 = metadata !{i32 786472, metadata !"rows", i64 4} ; [ DW_TAG_enumerator ] [rows :: 4]
!402 = metadata !{i32 786472, metadata !"cols", i64 1} ; [ DW_TAG_enumerator ] [cols :: 1]
!403 = metadata !{i32 786472, metadata !"channels", i64 4} ; [ DW_TAG_enumerator ] [channels :: 4]
!404 = metadata !{i32 786472, metadata !"type", i64 30} ; [ DW_TAG_enumerator ] [type :: 30]
!405 = metadata !{i32 786436, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"", i32 1942, i64 32, i64 32, i32 0, i32 0, null, metadata !406, i32 0, null, null, metadata !"_ZTSN2cv3MatUt_E"} ; [ DW_TAG_enumeration_type ] [line 1942, size 32, align 32, offset 0] [def] [from ]
!406 = metadata !{metadata !407, metadata !408, metadata !409, metadata !410}
!407 = metadata !{i32 786472, metadata !"MAGIC_VAL", i64 1124007936} ; [ DW_TAG_enumerator ] [MAGIC_VAL :: 1124007936]
!408 = metadata !{i32 786472, metadata !"AUTO_STEP", i64 0} ; [ DW_TAG_enumerator ] [AUTO_STEP :: 0]
!409 = metadata !{i32 786472, metadata !"CONTINUOUS_FLAG", i64 16384} ; [ DW_TAG_enumerator ] [CONTINUOUS_FLAG :: 16384]
!410 = metadata !{i32 786472, metadata !"SUBMATRIX_FLAG", i64 32768} ; [ DW_TAG_enumerator ] [SUBMATRIX_FLAG :: 32768]
!411 = metadata !{metadata !412, metadata !414, metadata !419, metadata !424, metadata !426, metadata !428, metadata !432, metadata !567, metadata !568, metadata !574, metadata !575, metadata !587, metadata !592, metadata !616, metadata !627, metadata !628, metadata !629, metadata !516, metadata !630, metadata !640, metadata !641, metadata !1014, metadata !1015, metadata !1043, metadata !1092, metadata !1096, metadata !1100, metadata !1239, metadata !1243, metadata !1148, metadata !1247, metadata !1324, metadata !1334, metadata !1341, metadata !1219, metadata !1224, metadata !1366, metadata !1372, metadata !1376, metadata !1382, metadata !1431, metadata !1437, metadata !1471, metadata !1509, metadata !1591, metadata !1663, metadata !1673, metadata !1680, metadata !921, metadata !1712, metadata !1716, metadata !1725, metadata !1736, metadata !1740, metadata !1744, metadata !1755, metadata !1762, metadata !1766, metadata !1795, metadata !1802, metadata !1803, metadata !801, metadata !1805, metadata !1806, metadata !1807, metadata !1808, metadata !1810, metadata !1821, metadata !1970, metadata !1984, metadata !2026, metadata !2070, metadata !2087, metadata !2090, metadata !2114, metadata !2115, metadata !2117, metadata !2118, metadata !2119, metadata !2120, metadata !398, metadata !2121, metadata !405}
!412 = metadata !{i32 786451, metadata !413, null, metadata !"", i32 97, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS5div_t"} ; [ DW_TAG_structure_type ] [line 97, size 0, align 0, offset 0] [decl] [from ]
!413 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdlib.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!414 = metadata !{i32 786451, metadata !413, null, metadata !"", i32 105, i64 64, i64 32, i32 0, i32 0, null, metadata !415, i32 0, null, null, metadata !"_ZTS6ldiv_t"} ; [ DW_TAG_structure_type ] [line 105, size 64, align 32, offset 0] [def] [from ]
!415 = metadata !{metadata !416, metadata !418}
!416 = metadata !{i32 786445, metadata !413, metadata !"_ZTS6ldiv_t", metadata !"quot", i32 107, i64 32, i64 32, i64 0, i32 0, metadata !417} ; [ DW_TAG_member ] [quot] [line 107, size 32, align 32, offset 0] [from long int]
!417 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!418 = metadata !{i32 786445, metadata !413, metadata !"_ZTS6ldiv_t", metadata !"rem", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !417} ; [ DW_TAG_member ] [rem] [line 108, size 32, align 32, offset 32] [from long int]
!419 = metadata !{i32 786451, metadata !413, null, metadata !"", i32 117, i64 128, i64 64, i32 0, i32 0, null, metadata !420, i32 0, null, null, metadata !"_ZTS7lldiv_t"} ; [ DW_TAG_structure_type ] [line 117, size 128, align 64, offset 0] [def] [from ]
!420 = metadata !{metadata !421, metadata !423}
!421 = metadata !{i32 786445, metadata !413, metadata !"_ZTS7lldiv_t", metadata !"quot", i32 119, i64 64, i64 64, i64 0, i32 0, metadata !422} ; [ DW_TAG_member ] [quot] [line 119, size 64, align 64, offset 0] [from long long int]
!422 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!423 = metadata !{i32 786445, metadata !413, metadata !"_ZTS7lldiv_t", metadata !"rem", i32 120, i64 64, i64 64, i64 64, i32 0, metadata !422} ; [ DW_TAG_member ] [rem] [line 120, size 64, align 64, offset 64] [from long long int]
!424 = metadata !{i32 786451, metadata !425, null, metadata !"", i32 82, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_structure_type ] [line 82, size 0, align 0, offset 0] [decl] [from ]
!425 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/wchar.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!426 = metadata !{i32 786451, metadata !427, null, metadata !"lconv", i32 53, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS5lconv"} ; [ DW_TAG_structure_type ] [lconv] [line 53, size 0, align 0, offset 0] [decl] [from ]
!427 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/locale.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!428 = metadata !{i32 786434, metadata !429, metadata !430, metadata !"basic_string<char, std::char_traits<char>, std::allocator<char> >", i32 1132, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSs"} ; [ DW_TAG_class_type ] [basic_string<char, std::char_traits<char>, std::allocator<char> >] [line 1132, size 0, align 0, offset 0] [decl] [from ]
!429 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/basic_string.tcc", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!430 = metadata !{i32 786489, metadata !431, null, metadata !"std", i32 186} ; [ DW_TAG_namespace ] [std] [line 186]
!431 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/arm-xilinx-linux-gnueabi/bits/c++config.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!432 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"FileNode", i32 4079, i64 64, i64 32, i32 0, i32 0, null, metadata !433, i32 0, null, null, metadata !"_ZTSN2cv8FileNodeE"} ; [ DW_TAG_class_type ] [FileNode] [line 4079, size 64, align 32, offset 0] [def] [from ]
!433 = metadata !{metadata !434, metadata !439, metadata !443, metadata !447, metadata !450, metadata !455, metadata !463, metadata !469, metadata !473, metadata !476, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !490, metadata !496, metadata !497, metadata !501, metadata !505, metadata !506, metadata !510, metadata !513, metadata !559, metadata !560, metadata !563}
!434 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"fs", i32 4160, i64 32, i64 32, i64 0, i32 0, metadata !435} ; [ DW_TAG_member ] [fs] [line 4160, size 32, align 32, offset 0] [from ]
!435 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !436} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!436 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvFileStorage]
!437 = metadata !{i32 786454, metadata !438, null, metadata !"CvFileStorage", i32 1737, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS13CvFileStorage"} ; [ DW_TAG_typedef ] [CvFileStorage] [line 1737, size 0, align 0, offset 0] [from _ZTS13CvFileStorage]
!438 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/types_c.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!439 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"node", i32 4161, i64 32, i64 32, i64 32, i32 0, metadata !440} ; [ DW_TAG_member ] [node] [line 4161, size 32, align 32, offset 32] [from ]
!440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !441} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!441 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !442} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvFileNode]
!442 = metadata !{i32 786454, metadata !438, null, metadata !"CvFileNode", i32 1839, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS10CvFileNode"} ; [ DW_TAG_typedef ] [CvFileNode] [line 1839, size 0, align 0, offset 0] [from _ZTS10CvFileNode]
!443 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"FileNode", metadata !"FileNode", metadata !"", i32 4101, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4101} ; [ DW_TAG_subprogram ] [line 4101] [FileNode]
!444 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !445, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!445 = metadata !{null, metadata !446}
!446 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv8FileNodeE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv8FileNodeE]
!447 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"FileNode", metadata !"FileNode", metadata !"", i32 4103, metadata !448, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4103} ; [ DW_TAG_subprogram ] [line 4103] [FileNode]
!448 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !449, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!449 = metadata !{null, metadata !446, metadata !435, metadata !440}
!450 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"FileNode", metadata !"FileNode", metadata !"", i32 4105, metadata !451, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4105} ; [ DW_TAG_subprogram ] [line 4105] [FileNode]
!451 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !452, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!452 = metadata !{null, metadata !446, metadata !453}
!453 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !454} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!454 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv8FileNodeE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv8FileNodeE]
!455 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK2cv8FileNodeixERKSs", i32 4107, metadata !456, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4107} ; [ DW_TAG_subprogram ] [line 4107] [operator[]]
!456 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!457 = metadata !{metadata !432, metadata !458, metadata !459}
!458 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !454} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!459 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !460} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!460 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !461} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from string]
!461 = metadata !{i32 786454, metadata !462, metadata !430, metadata !"string", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSs"} ; [ DW_TAG_typedef ] [string] [line 62, size 0, align 0, offset 0] [from _ZTSSs]
!462 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stringfwd.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!463 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK2cv8FileNodeixEPKc", i32 4109, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4109} ; [ DW_TAG_subprogram ] [line 4109] [operator[]]
!464 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!465 = metadata !{metadata !432, metadata !458, metadata !466}
!466 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !467} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!467 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !468} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!468 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!469 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK2cv8FileNodeixEi", i32 4111, metadata !470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4111} ; [ DW_TAG_subprogram ] [line 4111] [operator[]]
!470 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!471 = metadata !{metadata !432, metadata !458, metadata !472}
!472 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!473 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"type", metadata !"type", metadata !"_ZNK2cv8FileNode4typeEv", i32 4113, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4113} ; [ DW_TAG_subprogram ] [line 4113] [type]
!474 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !475, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!475 = metadata !{metadata !472, metadata !458}
!476 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"empty", metadata !"empty", metadata !"_ZNK2cv8FileNode5emptyEv", i32 4116, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4116} ; [ DW_TAG_subprogram ] [line 4116] [empty]
!477 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!478 = metadata !{metadata !479, metadata !458}
!479 = metadata !{i32 786468, null, null, metadata !"bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!480 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"isNone", metadata !"isNone", metadata !"_ZNK2cv8FileNode6isNoneEv", i32 4118, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4118} ; [ DW_TAG_subprogram ] [line 4118] [isNone]
!481 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"isSeq", metadata !"isSeq", metadata !"_ZNK2cv8FileNode5isSeqEv", i32 4120, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4120} ; [ DW_TAG_subprogram ] [line 4120] [isSeq]
!482 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"isMap", metadata !"isMap", metadata !"_ZNK2cv8FileNode5isMapEv", i32 4122, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4122} ; [ DW_TAG_subprogram ] [line 4122] [isMap]
!483 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"isInt", metadata !"isInt", metadata !"_ZNK2cv8FileNode5isIntEv", i32 4124, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4124} ; [ DW_TAG_subprogram ] [line 4124] [isInt]
!484 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"isReal", metadata !"isReal", metadata !"_ZNK2cv8FileNode6isRealEv", i32 4126, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4126} ; [ DW_TAG_subprogram ] [line 4126] [isReal]
!485 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"isString", metadata !"isString", metadata !"_ZNK2cv8FileNode8isStringEv", i32 4128, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4128} ; [ DW_TAG_subprogram ] [line 4128] [isString]
!486 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"isNamed", metadata !"isNamed", metadata !"_ZNK2cv8FileNode7isNamedEv", i32 4130, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4130} ; [ DW_TAG_subprogram ] [line 4130] [isNamed]
!487 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"name", metadata !"name", metadata !"_ZNK2cv8FileNode4nameEv", i32 4132, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4132} ; [ DW_TAG_subprogram ] [line 4132] [name]
!488 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!489 = metadata !{metadata !461, metadata !458}
!490 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"size", metadata !"size", metadata !"_ZNK2cv8FileNode4sizeEv", i32 4134, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4134} ; [ DW_TAG_subprogram ] [line 4134] [size]
!491 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!492 = metadata !{metadata !493, metadata !458}
!493 = metadata !{i32 786454, metadata !494, null, metadata !"size_t", i32 212, i64 0, i64 0, i64 0, i32 0, metadata !495} ; [ DW_TAG_typedef ] [size_t] [line 212, size 0, align 0, offset 0] [from unsigned int]
!494 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/lib/gcc/arm-xilinx-linux-gnueabi/4.9.2/include/stddef.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!495 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!496 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator int", metadata !"operator int", metadata !"_ZNK2cv8FileNodecviEv", i32 4136, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4136} ; [ DW_TAG_subprogram ] [line 4136] [operator int]
!497 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator float", metadata !"operator float", metadata !"_ZNK2cv8FileNodecvfEv", i32 4138, metadata !498, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4138} ; [ DW_TAG_subprogram ] [line 4138] [operator float]
!498 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !499, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!499 = metadata !{metadata !500, metadata !458}
!500 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!501 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator double", metadata !"operator double", metadata !"_ZNK2cv8FileNodecvdEv", i32 4140, metadata !502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4140} ; [ DW_TAG_subprogram ] [line 4140] [operator double]
!502 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !503, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!503 = metadata !{metadata !504, metadata !458}
!504 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!505 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator basic_string", metadata !"operator basic_string", metadata !"_ZNK2cv8FileNodecvSsEv", i32 4142, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4142} ; [ DW_TAG_subprogram ] [line 4142] [operator basic_string]
!506 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator*", metadata !"operator*", metadata !"_ZN2cv8FileNodedeEv", i32 4145, metadata !507, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4145} ; [ DW_TAG_subprogram ] [line 4145] [operator*]
!507 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !508, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!508 = metadata !{metadata !509, metadata !446}
!509 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !442} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CvFileNode]
!510 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"operator*", metadata !"operator*", metadata !"_ZNK2cv8FileNodedeEv", i32 4147, metadata !511, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4147} ; [ DW_TAG_subprogram ] [line 4147] [operator*]
!511 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!512 = metadata !{metadata !440, metadata !458}
!513 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"begin", metadata !"begin", metadata !"_ZNK2cv8FileNode5beginEv", i32 4150, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4150} ; [ DW_TAG_subprogram ] [line 4150] [begin]
!514 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!515 = metadata !{metadata !516, metadata !458}
!516 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"FileNodeIterator", i32 4170, i64 352, i64 32, i32 0, i32 0, null, metadata !517, i32 0, null, null, metadata !"_ZTSN2cv16FileNodeIteratorE"} ; [ DW_TAG_class_type ] [FileNodeIterator] [line 4170, size 352, align 32, offset 0] [def] [from ]
!517 = metadata !{metadata !518, metadata !519, metadata !520, metadata !522, metadata !523, metadata !527, metadata !530, metadata !535, metadata !539, metadata !540, metadata !544, metadata !547, metadata !548, metadata !549, metadata !552, metadata !553}
!518 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"fs", i32 4201, i64 32, i64 32, i64 0, i32 0, metadata !435} ; [ DW_TAG_member ] [fs] [line 4201, size 32, align 32, offset 0] [from ]
!519 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"container", i32 4202, i64 32, i64 32, i64 32, i32 0, metadata !440} ; [ DW_TAG_member ] [container] [line 4202, size 32, align 32, offset 32] [from ]
!520 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"reader", i32 4203, i64 256, i64 32, i64 64, i32 0, metadata !521} ; [ DW_TAG_member ] [reader] [line 4203, size 256, align 32, offset 64] [from CvSeqReader]
!521 = metadata !{i32 786454, metadata !438, null, metadata !"CvSeqReader", i32 1621, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS11CvSeqReader"} ; [ DW_TAG_typedef ] [CvSeqReader] [line 1621, size 0, align 0, offset 0] [from _ZTS11CvSeqReader]
!522 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"remaining", i32 4204, i64 32, i64 32, i64 320, i32 0, metadata !493} ; [ DW_TAG_member ] [remaining] [line 4204, size 32, align 32, offset 320] [from size_t]
!523 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"FileNodeIterator", metadata !"FileNodeIterator", metadata !"", i32 4174, metadata !524, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4174} ; [ DW_TAG_subprogram ] [line 4174] [FileNodeIterator]
!524 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !525, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!525 = metadata !{null, metadata !526}
!526 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv16FileNodeIteratorE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv16FileNodeIteratorE]
!527 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"FileNodeIterator", metadata !"FileNodeIterator", metadata !"", i32 4176, metadata !528, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4176} ; [ DW_TAG_subprogram ] [line 4176] [FileNodeIterator]
!528 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !529, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!529 = metadata !{null, metadata !526, metadata !435, metadata !440, metadata !493}
!530 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"FileNodeIterator", metadata !"FileNodeIterator", metadata !"", i32 4178, metadata !531, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4178} ; [ DW_TAG_subprogram ] [line 4178] [FileNodeIterator]
!531 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !532, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!532 = metadata !{null, metadata !526, metadata !533}
!533 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !534} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!534 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv16FileNodeIteratorE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv16FileNodeIteratorE]
!535 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"operator*", metadata !"operator*", metadata !"_ZNK2cv16FileNodeIteratordeEv", i32 4180, metadata !536, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4180} ; [ DW_TAG_subprogram ] [line 4180] [operator*]
!536 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !537, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!537 = metadata !{metadata !432, metadata !538}
!538 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !534} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!539 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"operator->", metadata !"operator->", metadata !"_ZNK2cv16FileNodeIteratorptEv", i32 4182, metadata !536, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4182} ; [ DW_TAG_subprogram ] [line 4182] [operator->]
!540 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"operator++", metadata !"operator++", metadata !"_ZN2cv16FileNodeIteratorppEv", i32 4185, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4185} ; [ DW_TAG_subprogram ] [line 4185] [operator++]
!541 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!542 = metadata !{metadata !543, metadata !526}
!543 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv16FileNodeIteratorE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv16FileNodeIteratorE]
!544 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"operator++", metadata !"operator++", metadata !"_ZN2cv16FileNodeIteratorppEi", i32 4187, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4187} ; [ DW_TAG_subprogram ] [line 4187] [operator++]
!545 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !546, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!546 = metadata !{metadata !516, metadata !526, metadata !472}
!547 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"operator--", metadata !"operator--", metadata !"_ZN2cv16FileNodeIteratormmEv", i32 4189, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4189} ; [ DW_TAG_subprogram ] [line 4189] [operator--]
!548 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"operator--", metadata !"operator--", metadata !"_ZN2cv16FileNodeIteratormmEi", i32 4191, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4191} ; [ DW_TAG_subprogram ] [line 4191] [operator--]
!549 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"operator+=", metadata !"operator+=", metadata !"_ZN2cv16FileNodeIteratorpLEi", i32 4193, metadata !550, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4193} ; [ DW_TAG_subprogram ] [line 4193] [operator+=]
!550 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !551, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!551 = metadata !{metadata !543, metadata !526, metadata !472}
!552 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"operator-=", metadata !"operator-=", metadata !"_ZN2cv16FileNodeIteratormIEi", i32 4195, metadata !550, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4195} ; [ DW_TAG_subprogram ] [line 4195] [operator-=]
!553 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv16FileNodeIteratorE", metadata !"readRaw", metadata !"readRaw", metadata !"_ZN2cv16FileNodeIterator7readRawERKSsPhj", i32 4198, metadata !554, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4198} ; [ DW_TAG_subprogram ] [line 4198] [readRaw]
!554 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !555, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!555 = metadata !{metadata !543, metadata !526, metadata !459, metadata !556, metadata !493}
!556 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !557} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uchar]
!557 = metadata !{i32 786454, metadata !438, null, metadata !"uchar", i32 170, i64 0, i64 0, i64 0, i32 0, metadata !558} ; [ DW_TAG_typedef ] [uchar] [line 170, size 0, align 0, offset 0] [from unsigned char]
!558 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!559 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"end", metadata !"end", metadata !"_ZNK2cv8FileNode3endEv", i32 4152, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4152} ; [ DW_TAG_subprogram ] [line 4152] [end]
!560 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"readRaw", metadata !"readRaw", metadata !"_ZNK2cv8FileNode7readRawERKSsPhj", i32 4155, metadata !561, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4155} ; [ DW_TAG_subprogram ] [line 4155] [readRaw]
!561 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!562 = metadata !{null, metadata !458, metadata !459, metadata !556, metadata !493}
!563 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv8FileNodeE", metadata !"readObj", metadata !"readObj", metadata !"_ZNK2cv8FileNode7readObjEv", i32 4157, metadata !564, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 4157} ; [ DW_TAG_subprogram ] [line 4157] [readObj]
!564 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !565, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!565 = metadata !{metadata !566, metadata !458}
!566 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!567 = metadata !{i32 786451, metadata !438, null, metadata !"CvFileStorage", i32 1737, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS13CvFileStorage"} ; [ DW_TAG_structure_type ] [CvFileStorage] [line 1737, size 0, align 0, offset 0] [decl] [from ]
!568 = metadata !{i32 786451, metadata !438, null, metadata !"CvFileNode", i32 1825, i64 128, i64 64, i32 0, i32 0, null, metadata !569, i32 0, null, null, metadata !"_ZTS10CvFileNode"} ; [ DW_TAG_structure_type ] [CvFileNode] [line 1825, size 128, align 64, offset 0] [def] [from ]
!569 = metadata !{metadata !570, metadata !571, metadata !573}
!570 = metadata !{i32 786445, metadata !438, metadata !"_ZTS10CvFileNode", metadata !"tag", i32 1827, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [tag] [line 1827, size 32, align 32, offset 0] [from int]
!571 = metadata !{i32 786445, metadata !438, metadata !"_ZTS10CvFileNode", metadata !"info", i32 1828, i64 32, i64 32, i64 32, i32 0, metadata !572} ; [ DW_TAG_member ] [info] [line 1828, size 32, align 32, offset 32] [from ]
!572 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS10CvTypeInfo"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS10CvTypeInfo]
!573 = metadata !{i32 786445, metadata !438, metadata !"_ZTS10CvFileNode", metadata !"data", i32 1837, i64 64, i64 64, i64 64, i32 0, metadata !"_ZTSN10CvFileNodeUt_E"} ; [ DW_TAG_member ] [data] [line 1837, size 64, align 64, offset 64] [from _ZTSN10CvFileNodeUt_E]
!574 = metadata !{i32 786451, metadata !438, null, metadata !"CvTypeInfo", i32 1854, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS10CvTypeInfo"} ; [ DW_TAG_structure_type ] [CvTypeInfo] [line 1854, size 0, align 0, offset 0] [decl] [from ]
!575 = metadata !{i32 786455, metadata !438, metadata !"_ZTS10CvFileNode", metadata !"", i32 1830, i64 64, i64 64, i64 0, i32 0, null, metadata !576, i32 0, null, null, metadata !"_ZTSN10CvFileNodeUt_E"} ; [ DW_TAG_union_type ] [line 1830, size 64, align 64, offset 0] [def] [from ]
!576 = metadata !{metadata !577, metadata !578, metadata !579, metadata !581, metadata !584}
!577 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN10CvFileNodeUt_E", metadata !"f", i32 1832, i64 64, i64 64, i64 0, i32 0, metadata !504} ; [ DW_TAG_member ] [f] [line 1832, size 64, align 64, offset 0] [from double]
!578 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN10CvFileNodeUt_E", metadata !"i", i32 1833, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [i] [line 1833, size 32, align 32, offset 0] [from int]
!579 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN10CvFileNodeUt_E", metadata !"str", i32 1834, i64 64, i64 32, i64 0, i32 0, metadata !580} ; [ DW_TAG_member ] [str] [line 1834, size 64, align 32, offset 0] [from CvString]
!580 = metadata !{i32 786454, metadata !438, null, metadata !"CvString", i32 1810, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS8CvString"} ; [ DW_TAG_typedef ] [CvString] [line 1810, size 0, align 0, offset 0] [from _ZTS8CvString]
!581 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN10CvFileNodeUt_E", metadata !"seq", i32 1835, i64 32, i64 32, i64 0, i32 0, metadata !582} ; [ DW_TAG_member ] [seq] [line 1835, size 32, align 32, offset 0] [from ]
!582 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !583} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CvSeq]
!583 = metadata !{i32 786454, metadata !438, null, metadata !"CvSeq", i32 1334, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS5CvSeq"} ; [ DW_TAG_typedef ] [CvSeq] [line 1334, size 0, align 0, offset 0] [from _ZTS5CvSeq]
!584 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN10CvFileNodeUt_E", metadata !"map", i32 1836, i64 32, i64 32, i64 0, i32 0, metadata !585} ; [ DW_TAG_member ] [map] [line 1836, size 32, align 32, offset 0] [from ]
!585 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !586} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CvFileNodeHash]
!586 = metadata !{i32 786454, metadata !438, null, metadata !"CvFileNodeHash", i32 1822, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS13CvGenericHash"} ; [ DW_TAG_typedef ] [CvFileNodeHash] [line 1822, size 0, align 0, offset 0] [from _ZTS13CvGenericHash]
!587 = metadata !{i32 786451, metadata !438, null, metadata !"CvString", i32 1805, i64 64, i64 32, i32 0, i32 0, null, metadata !588, i32 0, null, null, metadata !"_ZTS8CvString"} ; [ DW_TAG_structure_type ] [CvString] [line 1805, size 64, align 32, offset 0] [def] [from ]
!588 = metadata !{metadata !589, metadata !590}
!589 = metadata !{i32 786445, metadata !438, metadata !"_ZTS8CvString", metadata !"len", i32 1807, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [len] [line 1807, size 32, align 32, offset 0] [from int]
!590 = metadata !{i32 786445, metadata !438, metadata !"_ZTS8CvString", metadata !"ptr", i32 1808, i64 32, i64 32, i64 32, i32 0, metadata !591} ; [ DW_TAG_member ] [ptr] [line 1808, size 32, align 32, offset 32] [from ]
!591 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !468} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!592 = metadata !{i32 786451, metadata !438, null, metadata !"CvSeq", i32 1330, i64 448, i64 32, i32 0, i32 0, null, metadata !593, i32 0, null, null, metadata !"_ZTS5CvSeq"} ; [ DW_TAG_structure_type ] [CvSeq] [line 1330, size 448, align 32, offset 0] [def] [from ]
!593 = metadata !{metadata !594, metadata !595, metadata !596, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !607, metadata !608, metadata !609, metadata !612, metadata !615}
!594 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"flags", i32 1332, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [flags] [line 1332, size 32, align 32, offset 0] [from int]
!595 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"header_size", i32 1332, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [header_size] [line 1332, size 32, align 32, offset 32] [from int]
!596 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"h_prev", i32 1332, i64 32, i64 32, i64 64, i32 0, metadata !597} ; [ DW_TAG_member ] [h_prev] [line 1332, size 32, align 32, offset 64] [from ]
!597 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS5CvSeq"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS5CvSeq]
!598 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"h_next", i32 1332, i64 32, i64 32, i64 96, i32 0, metadata !597} ; [ DW_TAG_member ] [h_next] [line 1332, size 32, align 32, offset 96] [from ]
!599 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"v_prev", i32 1332, i64 32, i64 32, i64 128, i32 0, metadata !597} ; [ DW_TAG_member ] [v_prev] [line 1332, size 32, align 32, offset 128] [from ]
!600 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"v_next", i32 1332, i64 32, i64 32, i64 160, i32 0, metadata !597} ; [ DW_TAG_member ] [v_next] [line 1332, size 32, align 32, offset 160] [from ]
!601 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"total", i32 1332, i64 32, i64 32, i64 192, i32 0, metadata !472} ; [ DW_TAG_member ] [total] [line 1332, size 32, align 32, offset 192] [from int]
!602 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"elem_size", i32 1332, i64 32, i64 32, i64 224, i32 0, metadata !472} ; [ DW_TAG_member ] [elem_size] [line 1332, size 32, align 32, offset 224] [from int]
!603 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"block_max", i32 1332, i64 32, i64 32, i64 256, i32 0, metadata !604} ; [ DW_TAG_member ] [block_max] [line 1332, size 32, align 32, offset 256] [from ]
!604 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !605} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from schar]
!605 = metadata !{i32 786454, metadata !438, null, metadata !"schar", i32 174, i64 0, i64 0, i64 0, i32 0, metadata !606} ; [ DW_TAG_typedef ] [schar] [line 174, size 0, align 0, offset 0] [from signed char]
!606 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!607 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"ptr", i32 1332, i64 32, i64 32, i64 288, i32 0, metadata !604} ; [ DW_TAG_member ] [ptr] [line 1332, size 32, align 32, offset 288] [from ]
!608 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"delta_elems", i32 1332, i64 32, i64 32, i64 320, i32 0, metadata !472} ; [ DW_TAG_member ] [delta_elems] [line 1332, size 32, align 32, offset 320] [from int]
!609 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"storage", i32 1332, i64 32, i64 32, i64 352, i32 0, metadata !610} ; [ DW_TAG_member ] [storage] [line 1332, size 32, align 32, offset 352] [from ]
!610 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !611} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CvMemStorage]
!611 = metadata !{i32 786454, metadata !438, null, metadata !"CvMemStorage", i32 1278, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS12CvMemStorage"} ; [ DW_TAG_typedef ] [CvMemStorage] [line 1278, size 0, align 0, offset 0] [from _ZTS12CvMemStorage]
!612 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"free_blocks", i32 1332, i64 32, i64 32, i64 384, i32 0, metadata !613} ; [ DW_TAG_member ] [free_blocks] [line 1332, size 32, align 32, offset 384] [from ]
!613 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !614} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CvSeqBlock]
!614 = metadata !{i32 786454, metadata !438, null, metadata !"CvSeqBlock", i32 1304, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS10CvSeqBlock"} ; [ DW_TAG_typedef ] [CvSeqBlock] [line 1304, size 0, align 0, offset 0] [from _ZTS10CvSeqBlock]
!615 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvSeq", metadata !"first", i32 1332, i64 32, i64 32, i64 416, i32 0, metadata !613} ; [ DW_TAG_member ] [first] [line 1332, size 32, align 32, offset 416] [from ]
!616 = metadata !{i32 786451, metadata !438, null, metadata !"CvMemStorage", i32 1269, i64 192, i64 32, i32 0, i32 0, null, metadata !617, i32 0, null, null, metadata !"_ZTS12CvMemStorage"} ; [ DW_TAG_structure_type ] [CvMemStorage] [line 1269, size 192, align 32, offset 0] [def] [from ]
!617 = metadata !{metadata !618, metadata !619, metadata !622, metadata !623, metadata !625, metadata !626}
!618 = metadata !{i32 786445, metadata !438, metadata !"_ZTS12CvMemStorage", metadata !"signature", i32 1271, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [signature] [line 1271, size 32, align 32, offset 0] [from int]
!619 = metadata !{i32 786445, metadata !438, metadata !"_ZTS12CvMemStorage", metadata !"bottom", i32 1272, i64 32, i64 32, i64 32, i32 0, metadata !620} ; [ DW_TAG_member ] [bottom] [line 1272, size 32, align 32, offset 32] [from ]
!620 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !621} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CvMemBlock]
!621 = metadata !{i32 786454, metadata !438, null, metadata !"CvMemBlock", i32 1265, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS10CvMemBlock"} ; [ DW_TAG_typedef ] [CvMemBlock] [line 1265, size 0, align 0, offset 0] [from _ZTS10CvMemBlock]
!622 = metadata !{i32 786445, metadata !438, metadata !"_ZTS12CvMemStorage", metadata !"top", i32 1273, i64 32, i64 32, i64 64, i32 0, metadata !620} ; [ DW_TAG_member ] [top] [line 1273, size 32, align 32, offset 64] [from ]
!623 = metadata !{i32 786445, metadata !438, metadata !"_ZTS12CvMemStorage", metadata !"parent", i32 1274, i64 32, i64 32, i64 96, i32 0, metadata !624} ; [ DW_TAG_member ] [parent] [line 1274, size 32, align 32, offset 96] [from ]
!624 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS12CvMemStorage"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS12CvMemStorage]
!625 = metadata !{i32 786445, metadata !438, metadata !"_ZTS12CvMemStorage", metadata !"block_size", i32 1275, i64 32, i64 32, i64 128, i32 0, metadata !472} ; [ DW_TAG_member ] [block_size] [line 1275, size 32, align 32, offset 128] [from int]
!626 = metadata !{i32 786445, metadata !438, metadata !"_ZTS12CvMemStorage", metadata !"free_space", i32 1276, i64 32, i64 32, i64 160, i32 0, metadata !472} ; [ DW_TAG_member ] [free_space] [line 1276, size 32, align 32, offset 160] [from int]
!627 = metadata !{i32 786451, metadata !438, null, metadata !"CvMemBlock", i32 1260, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS10CvMemBlock"} ; [ DW_TAG_structure_type ] [CvMemBlock] [line 1260, size 0, align 0, offset 0] [decl] [from ]
!628 = metadata !{i32 786451, metadata !438, null, metadata !"CvSeqBlock", i32 1295, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS10CvSeqBlock"} ; [ DW_TAG_structure_type ] [CvSeqBlock] [line 1295, size 0, align 0, offset 0] [decl] [from ]
!629 = metadata !{i32 786451, metadata !438, null, metadata !"CvGenericHash", i32 1822, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS13CvGenericHash"} ; [ DW_TAG_structure_type ] [CvGenericHash] [line 1822, size 0, align 0, offset 0] [decl] [from ]
!630 = metadata !{i32 786451, metadata !438, null, metadata !"CvSeqReader", i32 1617, i64 256, i64 32, i32 0, i32 0, null, metadata !631, i32 0, null, null, metadata !"_ZTS11CvSeqReader"} ; [ DW_TAG_structure_type ] [CvSeqReader] [line 1617, size 256, align 32, offset 0] [def] [from ]
!631 = metadata !{metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639}
!632 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSeqReader", metadata !"header_size", i32 1619, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [header_size] [line 1619, size 32, align 32, offset 0] [from int]
!633 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSeqReader", metadata !"seq", i32 1619, i64 32, i64 32, i64 32, i32 0, metadata !582} ; [ DW_TAG_member ] [seq] [line 1619, size 32, align 32, offset 32] [from ]
!634 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSeqReader", metadata !"block", i32 1619, i64 32, i64 32, i64 64, i32 0, metadata !613} ; [ DW_TAG_member ] [block] [line 1619, size 32, align 32, offset 64] [from ]
!635 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSeqReader", metadata !"ptr", i32 1619, i64 32, i64 32, i64 96, i32 0, metadata !604} ; [ DW_TAG_member ] [ptr] [line 1619, size 32, align 32, offset 96] [from ]
!636 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSeqReader", metadata !"block_min", i32 1619, i64 32, i64 32, i64 128, i32 0, metadata !604} ; [ DW_TAG_member ] [block_min] [line 1619, size 32, align 32, offset 128] [from ]
!637 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSeqReader", metadata !"block_max", i32 1619, i64 32, i64 32, i64 160, i32 0, metadata !604} ; [ DW_TAG_member ] [block_max] [line 1619, size 32, align 32, offset 160] [from ]
!638 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSeqReader", metadata !"delta_index", i32 1619, i64 32, i64 32, i64 192, i32 0, metadata !472} ; [ DW_TAG_member ] [delta_index] [line 1619, size 32, align 32, offset 192] [from int]
!639 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSeqReader", metadata !"prev_elem", i32 1619, i64 32, i64 32, i64 224, i32 0, metadata !604} ; [ DW_TAG_member ] [prev_elem] [line 1619, size 32, align 32, offset 224] [from ]
!640 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"FileStorage", i32 4000, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv11FileStorageE"} ; [ DW_TAG_class_type ] [FileStorage] [line 4000, size 0, align 0, offset 0] [decl] [from ]
!641 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Mat", i32 1680, i64 448, i64 32, i32 0, i32 0, null, metadata !642, i32 0, null, null, metadata !"_ZTSN2cv3MatE"} ; [ DW_TAG_class_type ] [Mat] [line 1680, size 448, align 32, offset 0] [def] [from ]
!642 = metadata !{metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !650, metadata !651, metadata !652, metadata !653, metadata !655, metadata !656, metadata !657, metadata !661, metadata !664, metadata !669, metadata !675, metadata !678, metadata !683, metadata !686, metadata !691, metadata !694, metadata !697, metadata !702, metadata !707, metadata !713, metadata !717, metadata !723, metadata !729, metadata !735, metadata !740, metadata !741, metadata !745, metadata !750, metadata !754, metadata !755, metadata !758, metadata !761, metadata !762, metadata !763, metadata !764, metadata !767, metadata !770, metadata !776, metadata !782, metadata !785, metadata !788, metadata !791, metadata !794, metadata !795, metadata !798, metadata !861, metadata !864, metadata !867, metadata !870, metadata !873, metadata !876, metadata !879, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !897, metadata !898, metadata !901, metadata !906, metadata !907, metadata !908, metadata !915, metadata !918, metadata !951, metadata !954, metadata !957, metadata !960, metadata !963, metadata !966, metadata !969, metadata !970, metadata !973, metadata !974, metadata !977, metadata !978, metadata !979, metadata !982, metadata !983, metadata !984, metadata !987, metadata !990, metadata !995, metadata !998, metadata !1001, metadata !1004, metadata !1007, metadata !1010, metadata !1013}
!643 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"flags", i32 1950, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [flags] [line 1950, size 32, align 32, offset 0] [from int]
!644 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"dims", i32 1952, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [dims] [line 1952, size 32, align 32, offset 32] [from int]
!645 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"rows", i32 1954, i64 32, i64 32, i64 64, i32 0, metadata !472} ; [ DW_TAG_member ] [rows] [line 1954, size 32, align 32, offset 64] [from int]
!646 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"cols", i32 1954, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [cols] [line 1954, size 32, align 32, offset 96] [from int]
!647 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"data", i32 1956, i64 32, i64 32, i64 128, i32 0, metadata !556} ; [ DW_TAG_member ] [data] [line 1956, size 32, align 32, offset 128] [from ]
!648 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"refcount", i32 1960, i64 32, i64 32, i64 160, i32 0, metadata !649} ; [ DW_TAG_member ] [refcount] [line 1960, size 32, align 32, offset 160] [from ]
!649 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!650 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"datastart", i32 1963, i64 32, i64 32, i64 192, i32 0, metadata !556} ; [ DW_TAG_member ] [datastart] [line 1963, size 32, align 32, offset 192] [from ]
!651 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"dataend", i32 1964, i64 32, i64 32, i64 224, i32 0, metadata !556} ; [ DW_TAG_member ] [dataend] [line 1964, size 32, align 32, offset 224] [from ]
!652 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"datalimit", i32 1965, i64 32, i64 32, i64 256, i32 0, metadata !556} ; [ DW_TAG_member ] [datalimit] [line 1965, size 32, align 32, offset 256] [from ]
!653 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"allocator", i32 1968, i64 32, i64 32, i64 288, i32 0, metadata !654} ; [ DW_TAG_member ] [allocator] [line 1968, size 32, align 32, offset 288] [from ]
!654 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv12MatAllocatorE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv12MatAllocatorE]
!655 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"size", i32 1998, i64 32, i64 32, i64 320, i32 0, metadata !"_ZTSN2cv3Mat5MSizeE"} ; [ DW_TAG_member ] [size] [line 1998, size 32, align 32, offset 320] [from _ZTSN2cv3Mat5MSizeE]
!656 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"step", i32 1999, i64 96, i64 32, i64 352, i32 0, metadata !"_ZTSN2cv3Mat5MStepE"} ; [ DW_TAG_member ] [step] [line 1999, size 96, align 32, offset 352] [from _ZTSN2cv3Mat5MStepE]
!657 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1684, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1684} ; [ DW_TAG_subprogram ] [line 1684] [Mat]
!658 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!659 = metadata !{null, metadata !660}
!660 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv3MatE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv3MatE]
!661 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1687, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1687} ; [ DW_TAG_subprogram ] [line 1687] [Mat]
!662 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!663 = metadata !{null, metadata !660, metadata !472, metadata !472, metadata !472}
!664 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1688, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1688} ; [ DW_TAG_subprogram ] [line 1688] [Mat]
!665 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!666 = metadata !{null, metadata !660, metadata !667, metadata !472}
!667 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"Size", i32 889, i64 0, i64 0, i64 0, i32 0, metadata !668} ; [ DW_TAG_typedef ] [Size] [line 889, size 0, align 0, offset 0] [from Size2i]
!668 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"Size2i", i32 888, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5Size_IiEE"} ; [ DW_TAG_typedef ] [Size2i] [line 888, size 0, align 0, offset 0] [from _ZTSN2cv5Size_IiEE]
!669 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1690, metadata !670, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1690} ; [ DW_TAG_subprogram ] [line 1690] [Mat]
!670 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !671, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!671 = metadata !{null, metadata !660, metadata !472, metadata !472, metadata !472, metadata !672}
!672 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !673} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!673 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !674} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Scalar]
!674 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"Scalar", i32 961, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv7Scalar_IdEE"} ; [ DW_TAG_typedef ] [Scalar] [line 961, size 0, align 0, offset 0] [from _ZTSN2cv7Scalar_IdEE]
!675 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1691, metadata !676, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1691} ; [ DW_TAG_subprogram ] [line 1691] [Mat]
!676 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !677, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!677 = metadata !{null, metadata !660, metadata !667, metadata !472, metadata !672}
!678 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1694, metadata !679, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1694} ; [ DW_TAG_subprogram ] [line 1694] [Mat]
!679 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !680, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!680 = metadata !{null, metadata !660, metadata !472, metadata !681, metadata !472}
!681 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !682} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!682 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!683 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1695, metadata !684, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1695} ; [ DW_TAG_subprogram ] [line 1695] [Mat]
!684 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !685, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!685 = metadata !{null, metadata !660, metadata !472, metadata !681, metadata !472, metadata !672}
!686 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1698, metadata !687, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1698} ; [ DW_TAG_subprogram ] [line 1698] [Mat]
!687 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !688, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!688 = metadata !{null, metadata !660, metadata !689}
!689 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !690} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!690 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3MatE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3MatE]
!691 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1700, metadata !692, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1700} ; [ DW_TAG_subprogram ] [line 1700] [Mat]
!692 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !693, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!693 = metadata !{null, metadata !660, metadata !472, metadata !472, metadata !472, metadata !566, metadata !493}
!694 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1701, metadata !695, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1701} ; [ DW_TAG_subprogram ] [line 1701] [Mat]
!695 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !696, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!696 = metadata !{null, metadata !660, metadata !667, metadata !472, metadata !566, metadata !493}
!697 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1702, metadata !698, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1702} ; [ DW_TAG_subprogram ] [line 1702] [Mat]
!698 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !699, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!699 = metadata !{null, metadata !660, metadata !472, metadata !681, metadata !472, metadata !566, metadata !700}
!700 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !701} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!701 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from size_t]
!702 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1705, metadata !703, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1705} ; [ DW_TAG_subprogram ] [line 1705] [Mat]
!703 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !704, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!704 = metadata !{null, metadata !660, metadata !689, metadata !705, metadata !705}
!705 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !706} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!706 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5RangeE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv5RangeE]
!707 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1706, metadata !708, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1706} ; [ DW_TAG_subprogram ] [line 1706] [Mat]
!708 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !709, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!709 = metadata !{null, metadata !660, metadata !689, metadata !710}
!710 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !711} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!711 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !712} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Rect]
!712 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"Rect", i32 890, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5Rect_IiEE"} ; [ DW_TAG_typedef ] [Rect] [line 890, size 0, align 0, offset 0] [from _ZTSN2cv5Rect_IiEE]
!713 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1707, metadata !714, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1707} ; [ DW_TAG_subprogram ] [line 1707] [Mat]
!714 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !715, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!715 = metadata !{null, metadata !660, metadata !689, metadata !716}
!716 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !706} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!717 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1709, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1709} ; [ DW_TAG_subprogram ] [line 1709] [Mat]
!718 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !719, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!719 = metadata !{null, metadata !660, metadata !720, metadata !479}
!720 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !721} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!721 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !722} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvMat]
!722 = metadata !{i32 786454, metadata !438, null, metadata !"CvMat", i32 678, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS5CvMat"} ; [ DW_TAG_typedef ] [CvMat] [line 678, size 0, align 0, offset 0] [from _ZTS5CvMat]
!723 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1711, metadata !724, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1711} ; [ DW_TAG_subprogram ] [line 1711] [Mat]
!724 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !725, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!725 = metadata !{null, metadata !660, metadata !726, metadata !479}
!726 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !727} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!727 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !728} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvMatND]
!728 = metadata !{i32 786454, metadata !438, null, metadata !"CvMatND", i32 837, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS7CvMatND"} ; [ DW_TAG_typedef ] [CvMatND] [line 837, size 0, align 0, offset 0] [from _ZTS7CvMatND]
!729 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1713, metadata !730, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1713} ; [ DW_TAG_subprogram ] [line 1713] [Mat]
!730 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!731 = metadata !{null, metadata !660, metadata !732, metadata !479}
!732 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !733} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!733 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !734} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from IplImage]
!734 = metadata !{i32 786454, metadata !438, null, metadata !"IplImage", i32 495, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS9_IplImage"} ; [ DW_TAG_typedef ] [IplImage] [line 495, size 0, align 0, offset 0] [from _ZTS9_IplImage]
!735 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"", i32 1728, metadata !736, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 1728} ; [ DW_TAG_subprogram ] [line 1728] [Mat]
!736 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!737 = metadata !{null, metadata !660, metadata !738}
!738 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !739} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!739 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3gpu6GpuMatE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3gpu6GpuMatE]
!740 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"~Mat", metadata !"~Mat", metadata !"", i32 1731, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1731} ; [ DW_TAG_subprogram ] [line 1731] [~Mat]
!741 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator=", metadata !"operator=", metadata !"_ZN2cv3MataSERKS0_", i32 1733, metadata !742, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1733} ; [ DW_TAG_subprogram ] [line 1733] [operator=]
!742 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !743, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!743 = metadata !{metadata !744, metadata !660, metadata !689}
!744 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3MatE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3MatE]
!745 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator=", metadata !"operator=", metadata !"_ZN2cv3MataSERKNS_7MatExprE", i32 1734, metadata !746, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1734} ; [ DW_TAG_subprogram ] [line 1734] [operator=]
!746 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !747, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!747 = metadata !{metadata !744, metadata !660, metadata !748}
!748 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !749} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!749 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv7MatExprE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv7MatExprE]
!750 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"row", metadata !"row", metadata !"_ZNK2cv3Mat3rowEi", i32 1737, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1737} ; [ DW_TAG_subprogram ] [line 1737] [row]
!751 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !752, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!752 = metadata !{metadata !641, metadata !753, metadata !472}
!753 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !690} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!754 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"col", metadata !"col", metadata !"_ZNK2cv3Mat3colEi", i32 1739, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1739} ; [ DW_TAG_subprogram ] [line 1739] [col]
!755 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"rowRange", metadata !"rowRange", metadata !"_ZNK2cv3Mat8rowRangeEii", i32 1741, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1741} ; [ DW_TAG_subprogram ] [line 1741] [rowRange]
!756 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !757, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!757 = metadata !{metadata !641, metadata !753, metadata !472, metadata !472}
!758 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"rowRange", metadata !"rowRange", metadata !"_ZNK2cv3Mat8rowRangeERKNS_5RangeE", i32 1742, metadata !759, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1742} ; [ DW_TAG_subprogram ] [line 1742] [rowRange]
!759 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !760, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!760 = metadata !{metadata !641, metadata !753, metadata !705}
!761 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"colRange", metadata !"colRange", metadata !"_ZNK2cv3Mat8colRangeEii", i32 1744, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1744} ; [ DW_TAG_subprogram ] [line 1744] [colRange]
!762 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"colRange", metadata !"colRange", metadata !"_ZNK2cv3Mat8colRangeERKNS_5RangeE", i32 1745, metadata !759, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1745} ; [ DW_TAG_subprogram ] [line 1745] [colRange]
!763 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"diag", metadata !"diag", metadata !"_ZNK2cv3Mat4diagEi", i32 1750, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1750} ; [ DW_TAG_subprogram ] [line 1750] [diag]
!764 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"diag", metadata !"diag", metadata !"_ZN2cv3Mat4diagERKS0_", i32 1752, metadata !765, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1752} ; [ DW_TAG_subprogram ] [line 1752] [diag]
!765 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !766, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!766 = metadata !{metadata !641, metadata !689}
!767 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"clone", metadata !"clone", metadata !"_ZNK2cv3Mat5cloneEv", i32 1755, metadata !768, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1755} ; [ DW_TAG_subprogram ] [line 1755] [clone]
!768 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !769, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!769 = metadata !{metadata !641, metadata !753}
!770 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"copyTo", metadata !"copyTo", metadata !"_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE", i32 1758, metadata !771, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1758} ; [ DW_TAG_subprogram ] [line 1758] [copyTo]
!771 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !772, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!772 = metadata !{null, metadata !753, metadata !773}
!773 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"OutputArray", i32 1441, i64 0, i64 0, i64 0, i32 0, metadata !774} ; [ DW_TAG_typedef ] [OutputArray] [line 1441, size 0, align 0, offset 0] [from ]
!774 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !775} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!775 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv12_OutputArrayE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv12_OutputArrayE]
!776 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"copyTo", metadata !"copyTo", metadata !"_ZNK2cv3Mat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayE", i32 1760, metadata !777, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1760} ; [ DW_TAG_subprogram ] [line 1760] [copyTo]
!777 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !778, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!778 = metadata !{null, metadata !753, metadata !773, metadata !779}
!779 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"InputArray", i32 1439, i64 0, i64 0, i64 0, i32 0, metadata !780} ; [ DW_TAG_typedef ] [InputArray] [line 1439, size 0, align 0, offset 0] [from ]
!780 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !781} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!781 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv11_InputArrayE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv11_InputArrayE]
!782 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"convertTo", metadata !"convertTo", metadata !"_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd", i32 1762, metadata !783, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1762} ; [ DW_TAG_subprogram ] [line 1762] [convertTo]
!783 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !784, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!784 = metadata !{null, metadata !753, metadata !773, metadata !472, metadata !504, metadata !504}
!785 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"assignTo", metadata !"assignTo", metadata !"_ZNK2cv3Mat8assignToERS0_i", i32 1764, metadata !786, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1764} ; [ DW_TAG_subprogram ] [line 1764] [assignTo]
!786 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !787, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!787 = metadata !{null, metadata !753, metadata !744, metadata !472}
!788 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator=", metadata !"operator=", metadata !"_ZN2cv3MataSERKNS_7Scalar_IdEE", i32 1767, metadata !789, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1767} ; [ DW_TAG_subprogram ] [line 1767] [operator=]
!789 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !790, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!790 = metadata !{metadata !744, metadata !660, metadata !672}
!791 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"setTo", metadata !"setTo", metadata !"_ZN2cv3Mat5setToERKNS_11_InputArrayES3_", i32 1769, metadata !792, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1769} ; [ DW_TAG_subprogram ] [line 1769] [setTo]
!792 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !793, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!793 = metadata !{metadata !744, metadata !660, metadata !779, metadata !779}
!794 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"reshape", metadata !"reshape", metadata !"_ZNK2cv3Mat7reshapeEii", i32 1772, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1772} ; [ DW_TAG_subprogram ] [line 1772] [reshape]
!795 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"reshape", metadata !"reshape", metadata !"_ZNK2cv3Mat7reshapeEiiPKi", i32 1773, metadata !796, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1773} ; [ DW_TAG_subprogram ] [line 1773] [reshape]
!796 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !797, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!797 = metadata !{metadata !641, metadata !753, metadata !472, metadata !472, metadata !681}
!798 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"t", metadata !"t", metadata !"_ZNK2cv3Mat1tEv", i32 1776, metadata !799, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1776} ; [ DW_TAG_subprogram ] [line 1776] [t]
!799 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !800, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!800 = metadata !{metadata !801, metadata !753}
!801 = metadata !{i32 786434, metadata !802, metadata !198, metadata !"MatExpr", i32 1211, i64 1792, i64 64, i32 0, i32 0, null, metadata !803, i32 0, null, null, metadata !"_ZTSN2cv7MatExprE"} ; [ DW_TAG_class_type ] [MatExpr] [line 1211, size 1792, align 64, offset 0] [def] [from ]
!802 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!803 = metadata !{metadata !804, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !818, metadata !821, metadata !824, metadata !828, metadata !831, metadata !832, metadata !833, metadata !836, metadata !839, metadata !842, metadata !845, metadata !848, metadata !849, metadata !852, metadata !855, metadata !858}
!804 = metadata !{i32 786445, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"op", i32 1250, i64 32, i64 32, i64 0, i32 0, metadata !805} ; [ DW_TAG_member ] [op] [line 1250, size 32, align 32, offset 0] [from ]
!805 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !806} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!806 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5MatOpE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv5MatOpE]
!807 = metadata !{i32 786445, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"flags", i32 1251, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [flags] [line 1251, size 32, align 32, offset 32] [from int]
!808 = metadata !{i32 786445, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"a", i32 1253, i64 448, i64 32, i64 64, i32 0, metadata !"_ZTSN2cv3MatE"} ; [ DW_TAG_member ] [a] [line 1253, size 448, align 32, offset 64] [from _ZTSN2cv3MatE]
!809 = metadata !{i32 786445, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"b", i32 1253, i64 448, i64 32, i64 512, i32 0, metadata !"_ZTSN2cv3MatE"} ; [ DW_TAG_member ] [b] [line 1253, size 448, align 32, offset 512] [from _ZTSN2cv3MatE]
!810 = metadata !{i32 786445, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"c", i32 1253, i64 448, i64 32, i64 960, i32 0, metadata !"_ZTSN2cv3MatE"} ; [ DW_TAG_member ] [c] [line 1253, size 448, align 32, offset 960] [from _ZTSN2cv3MatE]
!811 = metadata !{i32 786445, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"alpha", i32 1254, i64 64, i64 64, i64 1408, i32 0, metadata !504} ; [ DW_TAG_member ] [alpha] [line 1254, size 64, align 64, offset 1408] [from double]
!812 = metadata !{i32 786445, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"beta", i32 1254, i64 64, i64 64, i64 1472, i32 0, metadata !504} ; [ DW_TAG_member ] [beta] [line 1254, size 64, align 64, offset 1472] [from double]
!813 = metadata !{i32 786445, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"s", i32 1255, i64 256, i64 64, i64 1536, i32 0, metadata !674} ; [ DW_TAG_member ] [s] [line 1255, size 256, align 64, offset 1536] [from Scalar]
!814 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"MatExpr", metadata !"MatExpr", metadata !"", i32 1214, metadata !815, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1214} ; [ DW_TAG_subprogram ] [line 1214] [MatExpr]
!815 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !816, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!816 = metadata !{null, metadata !817}
!817 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv7MatExprE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv7MatExprE]
!818 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"MatExpr", metadata !"MatExpr", metadata !"", i32 1215, metadata !819, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1215} ; [ DW_TAG_subprogram ] [line 1215] [MatExpr]
!819 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !820, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!820 = metadata !{null, metadata !817, metadata !805, metadata !472, metadata !689, metadata !689, metadata !689, metadata !504, metadata !504, metadata !672}
!821 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"MatExpr", metadata !"MatExpr", metadata !"", i32 1218, metadata !822, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 1218} ; [ DW_TAG_subprogram ] [line 1218] [MatExpr]
!822 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !823, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!823 = metadata !{null, metadata !817, metadata !689}
!824 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"operator Mat", metadata !"operator Mat", metadata !"_ZNK2cv7MatExprcvNS_3MatEEv", i32 1219, metadata !825, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1219} ; [ DW_TAG_subprogram ] [line 1219] [operator Mat]
!825 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !826, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!826 = metadata !{metadata !641, metadata !827}
!827 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !749} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!828 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"row", metadata !"row", metadata !"_ZNK2cv7MatExpr3rowEi", i32 1233, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1233} ; [ DW_TAG_subprogram ] [line 1233] [row]
!829 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !830, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!830 = metadata !{metadata !801, metadata !827, metadata !472}
!831 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"col", metadata !"col", metadata !"_ZNK2cv7MatExpr3colEi", i32 1234, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1234} ; [ DW_TAG_subprogram ] [line 1234] [col]
!832 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"diag", metadata !"diag", metadata !"_ZNK2cv7MatExpr4diagEi", i32 1235, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1235} ; [ DW_TAG_subprogram ] [line 1235] [diag]
!833 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv7MatExprclERKNS_5RangeES3_", i32 1236, metadata !834, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1236} ; [ DW_TAG_subprogram ] [line 1236] [operator()]
!834 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !835, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!835 = metadata !{metadata !801, metadata !827, metadata !705, metadata !705}
!836 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv7MatExprclERKNS_5Rect_IiEE", i32 1237, metadata !837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1237} ; [ DW_TAG_subprogram ] [line 1237] [operator()]
!837 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !838, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!838 = metadata !{metadata !801, metadata !827, metadata !710}
!839 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"cross", metadata !"cross", metadata !"_ZNK2cv7MatExpr5crossERKNS_3MatE", i32 1239, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1239} ; [ DW_TAG_subprogram ] [line 1239] [cross]
!840 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !841, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!841 = metadata !{metadata !641, metadata !827, metadata !689}
!842 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"dot", metadata !"dot", metadata !"_ZNK2cv7MatExpr3dotERKNS_3MatE", i32 1240, metadata !843, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1240} ; [ DW_TAG_subprogram ] [line 1240] [dot]
!843 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !844, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!844 = metadata !{metadata !504, metadata !827, metadata !689}
!845 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"t", metadata !"t", metadata !"_ZNK2cv7MatExpr1tEv", i32 1242, metadata !846, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1242} ; [ DW_TAG_subprogram ] [line 1242] [t]
!846 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !847, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!847 = metadata !{metadata !801, metadata !827}
!848 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"inv", metadata !"inv", metadata !"_ZNK2cv7MatExpr3invEi", i32 1243, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1243} ; [ DW_TAG_subprogram ] [line 1243] [inv]
!849 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"mul", metadata !"mul", metadata !"_ZNK2cv7MatExpr3mulERKS0_d", i32 1244, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1244} ; [ DW_TAG_subprogram ] [line 1244] [mul]
!850 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !851, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!851 = metadata !{metadata !801, metadata !827, metadata !748, metadata !504}
!852 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"mul", metadata !"mul", metadata !"_ZNK2cv7MatExpr3mulERKNS_3MatEd", i32 1245, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1245} ; [ DW_TAG_subprogram ] [line 1245] [mul]
!853 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !854, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!854 = metadata !{metadata !801, metadata !827, metadata !689, metadata !504}
!855 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"size", metadata !"size", metadata !"_ZNK2cv7MatExpr4sizeEv", i32 1247, metadata !856, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1247} ; [ DW_TAG_subprogram ] [line 1247] [size]
!856 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !857, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!857 = metadata !{metadata !667, metadata !827}
!858 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv7MatExprE", metadata !"type", metadata !"type", metadata !"_ZNK2cv7MatExpr4typeEv", i32 1248, metadata !859, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1248} ; [ DW_TAG_subprogram ] [line 1248] [type]
!859 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !860, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!860 = metadata !{metadata !472, metadata !827}
!861 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"inv", metadata !"inv", metadata !"_ZNK2cv3Mat3invEi", i32 1778, metadata !862, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1778} ; [ DW_TAG_subprogram ] [line 1778] [inv]
!862 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !863, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!863 = metadata !{metadata !801, metadata !753, metadata !472}
!864 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"mul", metadata !"mul", metadata !"_ZNK2cv3Mat3mulERKNS_11_InputArrayEd", i32 1780, metadata !865, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1780} ; [ DW_TAG_subprogram ] [line 1780] [mul]
!865 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !866, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!866 = metadata !{metadata !801, metadata !753, metadata !779, metadata !504}
!867 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"cross", metadata !"cross", metadata !"_ZNK2cv3Mat5crossERKNS_11_InputArrayE", i32 1783, metadata !868, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1783} ; [ DW_TAG_subprogram ] [line 1783] [cross]
!868 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !869, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!869 = metadata !{metadata !641, metadata !753, metadata !779}
!870 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"dot", metadata !"dot", metadata !"_ZNK2cv3Mat3dotERKNS_11_InputArrayE", i32 1785, metadata !871, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1785} ; [ DW_TAG_subprogram ] [line 1785] [dot]
!871 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !872, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!872 = metadata !{metadata !504, metadata !753, metadata !779}
!873 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"zeros", metadata !"zeros", metadata !"_ZN2cv3Mat5zerosEiii", i32 1788, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1788} ; [ DW_TAG_subprogram ] [line 1788] [zeros]
!874 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !875, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!875 = metadata !{metadata !801, metadata !472, metadata !472, metadata !472}
!876 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"zeros", metadata !"zeros", metadata !"_ZN2cv3Mat5zerosENS_5Size_IiEEi", i32 1789, metadata !877, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1789} ; [ DW_TAG_subprogram ] [line 1789] [zeros]
!877 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !878, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!878 = metadata !{metadata !801, metadata !667, metadata !472}
!879 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"zeros", metadata !"zeros", metadata !"_ZN2cv3Mat5zerosEiPKii", i32 1790, metadata !880, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1790} ; [ DW_TAG_subprogram ] [line 1790] [zeros]
!880 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !881, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!881 = metadata !{metadata !801, metadata !472, metadata !681, metadata !472}
!882 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ones", metadata !"ones", metadata !"_ZN2cv3Mat4onesEiii", i32 1791, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1791} ; [ DW_TAG_subprogram ] [line 1791] [ones]
!883 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ones", metadata !"ones", metadata !"_ZN2cv3Mat4onesENS_5Size_IiEEi", i32 1792, metadata !877, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1792} ; [ DW_TAG_subprogram ] [line 1792] [ones]
!884 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ones", metadata !"ones", metadata !"_ZN2cv3Mat4onesEiPKii", i32 1793, metadata !880, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1793} ; [ DW_TAG_subprogram ] [line 1793] [ones]
!885 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"eye", metadata !"eye", metadata !"_ZN2cv3Mat3eyeEiii", i32 1794, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1794} ; [ DW_TAG_subprogram ] [line 1794] [eye]
!886 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"eye", metadata !"eye", metadata !"_ZN2cv3Mat3eyeENS_5Size_IiEEi", i32 1795, metadata !877, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1795} ; [ DW_TAG_subprogram ] [line 1795] [eye]
!887 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"create", metadata !"create", metadata !"_ZN2cv3Mat6createEiii", i32 1799, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1799} ; [ DW_TAG_subprogram ] [line 1799] [create]
!888 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"create", metadata !"create", metadata !"_ZN2cv3Mat6createENS_5Size_IiEEi", i32 1800, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1800} ; [ DW_TAG_subprogram ] [line 1800] [create]
!889 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"create", metadata !"create", metadata !"_ZN2cv3Mat6createEiPKii", i32 1801, metadata !679, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1801} ; [ DW_TAG_subprogram ] [line 1801] [create]
!890 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"addref", metadata !"addref", metadata !"_ZN2cv3Mat6addrefEv", i32 1804, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1804} ; [ DW_TAG_subprogram ] [line 1804] [addref]
!891 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"release", metadata !"release", metadata !"_ZN2cv3Mat7releaseEv", i32 1807, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1807} ; [ DW_TAG_subprogram ] [line 1807] [release]
!892 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN2cv3Mat10deallocateEv", i32 1810, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1810} ; [ DW_TAG_subprogram ] [line 1810] [deallocate]
!893 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"copySize", metadata !"copySize", metadata !"_ZN2cv3Mat8copySizeERKS0_", i32 1812, metadata !687, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1812} ; [ DW_TAG_subprogram ] [line 1812] [copySize]
!894 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"reserve", metadata !"reserve", metadata !"_ZN2cv3Mat7reserveEj", i32 1815, metadata !895, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1815} ; [ DW_TAG_subprogram ] [line 1815] [reserve]
!895 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !896, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!896 = metadata !{null, metadata !660, metadata !493}
!897 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"resize", metadata !"resize", metadata !"_ZN2cv3Mat6resizeEj", i32 1817, metadata !895, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1817} ; [ DW_TAG_subprogram ] [line 1817] [resize]
!898 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"resize", metadata !"resize", metadata !"_ZN2cv3Mat6resizeEjRKNS_7Scalar_IdEE", i32 1819, metadata !899, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1819} ; [ DW_TAG_subprogram ] [line 1819] [resize]
!899 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !900, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!900 = metadata !{null, metadata !660, metadata !493, metadata !672}
!901 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"push_back_", metadata !"push_back_", metadata !"_ZN2cv3Mat10push_back_EPKv", i32 1821, metadata !902, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1821} ; [ DW_TAG_subprogram ] [line 1821] [push_back_]
!902 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !903, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!903 = metadata !{null, metadata !660, metadata !904}
!904 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !905} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!905 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!906 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"push_back", metadata !"push_back", metadata !"_ZN2cv3Mat9push_backERKS0_", i32 1825, metadata !687, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1825} ; [ DW_TAG_subprogram ] [line 1825] [push_back]
!907 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"pop_back", metadata !"pop_back", metadata !"_ZN2cv3Mat8pop_backEj", i32 1827, metadata !895, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1827} ; [ DW_TAG_subprogram ] [line 1827] [pop_back]
!908 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"locateROI", metadata !"locateROI", metadata !"_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE", i32 1830, metadata !909, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1830} ; [ DW_TAG_subprogram ] [line 1830] [locateROI]
!909 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !910, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!910 = metadata !{null, metadata !753, metadata !911, metadata !912}
!911 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !667} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from Size]
!912 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !913} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from Point]
!913 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"Point", i32 887, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_typedef ] [Point] [line 887, size 0, align 0, offset 0] [from Point2i]
!914 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"Point2i", i32 886, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv6Point_IiEE"} ; [ DW_TAG_typedef ] [Point2i] [line 886, size 0, align 0, offset 0] [from _ZTSN2cv6Point_IiEE]
!915 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"adjustROI", metadata !"adjustROI", metadata !"_ZN2cv3Mat9adjustROIEiiii", i32 1832, metadata !916, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1832} ; [ DW_TAG_subprogram ] [line 1832] [adjustROI]
!916 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !917, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!917 = metadata !{metadata !744, metadata !660, metadata !472, metadata !472, metadata !472, metadata !472}
!918 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv3MatclENS_5RangeES1_", i32 1835, metadata !919, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1835} ; [ DW_TAG_subprogram ] [line 1835] [operator()]
!919 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !920, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!920 = metadata !{metadata !641, metadata !753, metadata !921, metadata !921}
!921 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Range", i32 972, i64 64, i64 32, i32 0, i32 0, null, metadata !922, i32 0, null, null, metadata !"_ZTSN2cv5RangeE"} ; [ DW_TAG_class_type ] [Range] [line 972, size 64, align 32, offset 0] [def] [from ]
!922 = metadata !{metadata !923, metadata !924, metadata !925, metadata !929, metadata !932, metadata !938, metadata !942, metadata !945, metadata !948}
!923 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"start", i32 983, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [start] [line 983, size 32, align 32, offset 0] [from int]
!924 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"end", i32 983, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [end] [line 983, size 32, align 32, offset 32] [from int]
!925 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"Range", metadata !"Range", metadata !"", i32 975, metadata !926, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 975} ; [ DW_TAG_subprogram ] [line 975] [Range]
!926 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !927, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!927 = metadata !{null, metadata !928}
!928 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv5RangeE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv5RangeE]
!929 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"Range", metadata !"Range", metadata !"", i32 976, metadata !930, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 976} ; [ DW_TAG_subprogram ] [line 976] [Range]
!930 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !931, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!931 = metadata !{null, metadata !928, metadata !472, metadata !472}
!932 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"Range", metadata !"Range", metadata !"", i32 977, metadata !933, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 977} ; [ DW_TAG_subprogram ] [line 977] [Range]
!933 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !934, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!934 = metadata !{null, metadata !928, metadata !935}
!935 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !936} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!936 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !937} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvSlice]
!937 = metadata !{i32 786454, metadata !438, null, metadata !"CvSlice", i32 1203, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS7CvSlice"} ; [ DW_TAG_typedef ] [CvSlice] [line 1203, size 0, align 0, offset 0] [from _ZTS7CvSlice]
!938 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"size", metadata !"size", metadata !"_ZNK2cv5Range4sizeEv", i32 978, metadata !939, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 978} ; [ DW_TAG_subprogram ] [line 978] [size]
!939 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !940, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!940 = metadata !{metadata !472, metadata !941}
!941 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !706} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!942 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"empty", metadata !"empty", metadata !"_ZNK2cv5Range5emptyEv", i32 979, metadata !943, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 979} ; [ DW_TAG_subprogram ] [line 979] [empty]
!943 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !944, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!944 = metadata !{metadata !479, metadata !941}
!945 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"all", metadata !"all", metadata !"_ZN2cv5Range3allEv", i32 980, metadata !946, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 980} ; [ DW_TAG_subprogram ] [line 980] [all]
!946 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !947, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!947 = metadata !{metadata !921}
!948 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5RangeE", metadata !"operator CvSlice", metadata !"operator CvSlice", metadata !"_ZNK2cv5Rangecv7CvSliceEv", i32 981, metadata !949, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 981} ; [ DW_TAG_subprogram ] [line 981] [operator CvSlice]
!949 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !950, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!950 = metadata !{metadata !937, metadata !941}
!951 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv3MatclERKNS_5Rect_IiEE", i32 1836, metadata !952, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1836} ; [ DW_TAG_subprogram ] [line 1836] [operator()]
!952 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !953, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!953 = metadata !{metadata !641, metadata !753, metadata !710}
!954 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv3MatclEPKNS_5RangeE", i32 1837, metadata !955, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1837} ; [ DW_TAG_subprogram ] [line 1837] [operator()]
!955 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !956, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!956 = metadata !{metadata !641, metadata !753, metadata !716}
!957 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator CvMat", metadata !"operator CvMat", metadata !"_ZNK2cv3Matcv5CvMatEv", i32 1840, metadata !958, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1840} ; [ DW_TAG_subprogram ] [line 1840] [operator CvMat]
!958 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !959, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!959 = metadata !{metadata !722, metadata !753}
!960 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator CvMatND", metadata !"operator CvMatND", metadata !"_ZNK2cv3Matcv7CvMatNDEv", i32 1842, metadata !961, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1842} ; [ DW_TAG_subprogram ] [line 1842] [operator CvMatND]
!961 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !962, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!962 = metadata !{metadata !728, metadata !753}
!963 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"operator _IplImage", metadata !"operator _IplImage", metadata !"_ZNK2cv3Matcv9_IplImageEv", i32 1844, metadata !964, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1844} ; [ DW_TAG_subprogram ] [line 1844] [operator _IplImage]
!964 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !965, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!965 = metadata !{metadata !734, metadata !753}
!966 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"isContinuous", metadata !"isContinuous", metadata !"_ZNK2cv3Mat12isContinuousEv", i32 1853, metadata !967, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1853} ; [ DW_TAG_subprogram ] [line 1853] [isContinuous]
!967 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !968, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!968 = metadata !{metadata !479, metadata !753}
!969 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"isSubmatrix", metadata !"isSubmatrix", metadata !"_ZNK2cv3Mat11isSubmatrixEv", i32 1856, metadata !967, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1856} ; [ DW_TAG_subprogram ] [line 1856] [isSubmatrix]
!970 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"elemSize", metadata !"elemSize", metadata !"_ZNK2cv3Mat8elemSizeEv", i32 1860, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1860} ; [ DW_TAG_subprogram ] [line 1860] [elemSize]
!971 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !972, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!972 = metadata !{metadata !493, metadata !753}
!973 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"elemSize1", metadata !"elemSize1", metadata !"_ZNK2cv3Mat9elemSize1Ev", i32 1862, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1862} ; [ DW_TAG_subprogram ] [line 1862] [elemSize1]
!974 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"type", metadata !"type", metadata !"_ZNK2cv3Mat4typeEv", i32 1864, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1864} ; [ DW_TAG_subprogram ] [line 1864] [type]
!975 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !976, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!976 = metadata !{metadata !472, metadata !753}
!977 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"depth", metadata !"depth", metadata !"_ZNK2cv3Mat5depthEv", i32 1866, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1866} ; [ DW_TAG_subprogram ] [line 1866] [depth]
!978 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"channels", metadata !"channels", metadata !"_ZNK2cv3Mat8channelsEv", i32 1868, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1868} ; [ DW_TAG_subprogram ] [line 1868] [channels]
!979 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"step1", metadata !"step1", metadata !"_ZNK2cv3Mat5step1Ei", i32 1870, metadata !980, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1870} ; [ DW_TAG_subprogram ] [line 1870] [step1]
!980 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !981, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!981 = metadata !{metadata !493, metadata !753, metadata !472}
!982 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"empty", metadata !"empty", metadata !"_ZNK2cv3Mat5emptyEv", i32 1872, metadata !967, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1872} ; [ DW_TAG_subprogram ] [line 1872] [empty]
!983 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"total", metadata !"total", metadata !"_ZNK2cv3Mat5totalEv", i32 1874, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1874} ; [ DW_TAG_subprogram ] [line 1874] [total]
!984 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"checkVector", metadata !"checkVector", metadata !"_ZNK2cv3Mat11checkVectorEiib", i32 1877, metadata !985, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1877} ; [ DW_TAG_subprogram ] [line 1877] [checkVector]
!985 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !986, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!986 = metadata !{metadata !472, metadata !753, metadata !472, metadata !472, metadata !479}
!987 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ptr", metadata !"ptr", metadata !"_ZN2cv3Mat3ptrEi", i32 1880, metadata !988, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1880} ; [ DW_TAG_subprogram ] [line 1880] [ptr]
!988 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !989, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!989 = metadata !{metadata !556, metadata !660, metadata !472}
!990 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ptr", metadata !"ptr", metadata !"_ZNK2cv3Mat3ptrEi", i32 1881, metadata !991, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1881} ; [ DW_TAG_subprogram ] [line 1881] [ptr]
!991 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !992, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!992 = metadata !{metadata !993, metadata !753, metadata !472}
!993 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !994} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!994 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uchar]
!995 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ptr", metadata !"ptr", metadata !"_ZN2cv3Mat3ptrEii", i32 1884, metadata !996, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1884} ; [ DW_TAG_subprogram ] [line 1884] [ptr]
!996 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !997, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!997 = metadata !{metadata !556, metadata !660, metadata !472, metadata !472}
!998 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ptr", metadata !"ptr", metadata !"_ZNK2cv3Mat3ptrEii", i32 1885, metadata !999, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1885} ; [ DW_TAG_subprogram ] [line 1885] [ptr]
!999 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1000, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1000 = metadata !{metadata !993, metadata !753, metadata !472, metadata !472}
!1001 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ptr", metadata !"ptr", metadata !"_ZN2cv3Mat3ptrEiii", i32 1888, metadata !1002, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1888} ; [ DW_TAG_subprogram ] [line 1888] [ptr]
!1002 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1003, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1003 = metadata !{metadata !556, metadata !660, metadata !472, metadata !472, metadata !472}
!1004 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ptr", metadata !"ptr", metadata !"_ZNK2cv3Mat3ptrEiii", i32 1889, metadata !1005, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1889} ; [ DW_TAG_subprogram ] [line 1889] [ptr]
!1005 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1006, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1006 = metadata !{metadata !993, metadata !753, metadata !472, metadata !472, metadata !472}
!1007 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ptr", metadata !"ptr", metadata !"_ZN2cv3Mat3ptrEPKi", i32 1892, metadata !1008, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1892} ; [ DW_TAG_subprogram ] [line 1892] [ptr]
!1008 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1009, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1009 = metadata !{metadata !556, metadata !660, metadata !681}
!1010 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"ptr", metadata !"ptr", metadata !"_ZNK2cv3Mat3ptrEPKi", i32 1894, metadata !1011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1894} ; [ DW_TAG_subprogram ] [line 1894] [ptr]
!1011 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1012, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1012 = metadata !{metadata !993, metadata !753, metadata !681}
!1013 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"initEmpty", metadata !"initEmpty", metadata !"_ZN2cv3Mat9initEmptyEv", i32 2002, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 2002} ; [ DW_TAG_subprogram ] [line 2002] [protected] [initEmpty]
!1014 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"MatAllocator", i32 1458, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv12MatAllocatorE"} ; [ DW_TAG_class_type ] [MatAllocator] [line 1458, size 0, align 0, offset 0] [decl] [from ]
!1015 = metadata !{i32 786451, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"MSize", i32 1970, i64 32, i64 32, i32 0, i32 0, null, metadata !1016, i32 0, null, null, metadata !"_ZTSN2cv3Mat5MSizeE"} ; [ DW_TAG_structure_type ] [MSize] [line 1970, size 32, align 32, offset 0] [def] [from ]
!1016 = metadata !{metadata !1017, metadata !1018, metadata !1022, metadata !1027, metadata !1031, metadata !1035, metadata !1038, metadata !1042}
!1017 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"p", i32 1980, i64 32, i64 32, i64 0, i32 0, metadata !649} ; [ DW_TAG_member ] [p] [line 1980, size 32, align 32, offset 0] [from ]
!1018 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"MSize", metadata !"MSize", metadata !"", i32 1972, metadata !1019, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1972} ; [ DW_TAG_subprogram ] [line 1972] [MSize]
!1019 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1020, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1020 = metadata !{null, metadata !1021, metadata !649}
!1021 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv3Mat5MSizeE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv3Mat5MSizeE]
!1022 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv3Mat5MSizeclEv", i32 1973, metadata !1023, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1973} ; [ DW_TAG_subprogram ] [line 1973] [operator()]
!1023 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1024, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1024 = metadata !{metadata !667, metadata !1025}
!1025 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1026} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1026 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3Mat5MSizeE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3Mat5MSizeE]
!1027 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK2cv3Mat5MSizeixEi", i32 1974, metadata !1028, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1974} ; [ DW_TAG_subprogram ] [line 1974] [operator[]]
!1028 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1029, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1029 = metadata !{metadata !1030, metadata !1025, metadata !472}
!1030 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !682} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1031 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZN2cv3Mat5MSizeixEi", i32 1975, metadata !1032, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1975} ; [ DW_TAG_subprogram ] [line 1975] [operator[]]
!1032 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1033, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1033 = metadata !{metadata !1034, metadata !1021, metadata !472}
!1034 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from int]
!1035 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"operator const int *", metadata !"operator const int *", metadata !"_ZNK2cv3Mat5MSizecvPKiEv", i32 1976, metadata !1036, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1976} ; [ DW_TAG_subprogram ] [line 1976] [operator const int *]
!1036 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1037, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1037 = metadata !{metadata !681, metadata !1025}
!1038 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"operator==", metadata !"operator==", metadata !"_ZNK2cv3Mat5MSizeeqERKS1_", i32 1977, metadata !1039, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1977} ; [ DW_TAG_subprogram ] [line 1977] [operator==]
!1039 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1040, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1040 = metadata !{metadata !479, metadata !1025, metadata !1041}
!1041 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1026} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1042 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK2cv3Mat5MSizeneERKS1_", i32 1978, metadata !1039, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1978} ; [ DW_TAG_subprogram ] [line 1978] [operator!=]
!1043 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Size_<int>", i32 810, i64 64, i64 32, i32 0, i32 0, null, metadata !1044, i32 0, null, metadata !1090, metadata !"_ZTSN2cv5Size_IiEE"} ; [ DW_TAG_class_type ] [Size_<int>] [line 810, size 64, align 32, offset 0] [def] [from ]
!1044 = metadata !{metadata !1045, metadata !1046, metadata !1047, metadata !1051, metadata !1054, metadata !1059, metadata !1065, metadata !1071, metadata !1076, metadata !1080, metadata !1084, metadata !1087}
!1045 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"width", i32 834, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [width] [line 834, size 32, align 32, offset 0] [from int]
!1046 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"height", i32 834, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [height] [line 834, size 32, align 32, offset 32] [from int]
!1047 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"Size_", metadata !"Size_", metadata !"", i32 816, metadata !1048, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 816} ; [ DW_TAG_subprogram ] [line 816] [Size_]
!1048 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1049, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1049 = metadata !{null, metadata !1050}
!1050 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv5Size_IiEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv5Size_IiEE]
!1051 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"Size_", metadata !"Size_", metadata !"", i32 817, metadata !1052, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 817} ; [ DW_TAG_subprogram ] [line 817] [Size_]
!1052 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1053, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1053 = metadata !{null, metadata !1050, metadata !472, metadata !472}
!1054 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"Size_", metadata !"Size_", metadata !"", i32 818, metadata !1055, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 818} ; [ DW_TAG_subprogram ] [line 818] [Size_]
!1055 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1056, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1056 = metadata !{null, metadata !1050, metadata !1057}
!1057 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1058} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1058 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5Size_IiEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv5Size_IiEE]
!1059 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"Size_", metadata !"Size_", metadata !"", i32 819, metadata !1060, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 819} ; [ DW_TAG_subprogram ] [line 819] [Size_]
!1060 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1061, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1061 = metadata !{null, metadata !1050, metadata !1062}
!1062 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1063} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1063 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1064} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvSize]
!1064 = metadata !{i32 786454, metadata !438, null, metadata !"CvSize", i32 1140, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS6CvSize"} ; [ DW_TAG_typedef ] [CvSize] [line 1140, size 0, align 0, offset 0] [from _ZTS6CvSize]
!1065 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"Size_", metadata !"Size_", metadata !"", i32 820, metadata !1066, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 820} ; [ DW_TAG_subprogram ] [line 820] [Size_]
!1066 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1067, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1067 = metadata !{null, metadata !1050, metadata !1068}
!1068 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1069} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1069 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1070} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvSize2D32f]
!1070 = metadata !{i32 786454, metadata !438, null, metadata !"CvSize2D32f", i32 1157, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS11CvSize2D32f"} ; [ DW_TAG_typedef ] [CvSize2D32f] [line 1157, size 0, align 0, offset 0] [from _ZTS11CvSize2D32f]
!1071 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"Size_", metadata !"Size_", metadata !"", i32 821, metadata !1072, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 821} ; [ DW_TAG_subprogram ] [line 821] [Size_]
!1072 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1073, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1073 = metadata !{null, metadata !1050, metadata !1074}
!1074 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1075} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1075 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv6Point_IiEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv6Point_IiEE]
!1076 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"operator=", metadata !"operator=", metadata !"_ZN2cv5Size_IiEaSERKS1_", i32 823, metadata !1077, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 823} ; [ DW_TAG_subprogram ] [line 823] [operator=]
!1077 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1078, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1078 = metadata !{metadata !1079, metadata !1050, metadata !1057}
!1079 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5Size_IiEE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv5Size_IiEE]
!1080 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"area", metadata !"area", metadata !"_ZNK2cv5Size_IiE4areaEv", i32 825, metadata !1081, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 825} ; [ DW_TAG_subprogram ] [line 825] [area]
!1081 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1082, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1082 = metadata !{metadata !472, metadata !1083}
!1083 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1058} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1084 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"operator CvSize", metadata !"operator CvSize", metadata !"_ZNK2cv5Size_IiEcv6CvSizeEv", i32 831, metadata !1085, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 831} ; [ DW_TAG_subprogram ] [line 831] [operator CvSize]
!1085 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1086, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1086 = metadata !{metadata !1064, metadata !1083}
!1087 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Size_IiEE", metadata !"operator CvSize2D32f", metadata !"operator CvSize2D32f", metadata !"_ZNK2cv5Size_IiEcv11CvSize2D32fEv", i32 832, metadata !1088, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 832} ; [ DW_TAG_subprogram ] [line 832] [operator CvSize2D32f]
!1088 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1089, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1089 = metadata !{metadata !1070, metadata !1083}
!1090 = metadata !{metadata !1091}
!1091 = metadata !{i32 786479, null, metadata !"_Tp", metadata !472, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1092 = metadata !{i32 786451, metadata !438, null, metadata !"CvSize", i32 1135, i64 64, i64 32, i32 0, i32 0, null, metadata !1093, i32 0, null, null, metadata !"_ZTS6CvSize"} ; [ DW_TAG_structure_type ] [CvSize] [line 1135, size 64, align 32, offset 0] [def] [from ]
!1093 = metadata !{metadata !1094, metadata !1095}
!1094 = metadata !{i32 786445, metadata !438, metadata !"_ZTS6CvSize", metadata !"width", i32 1137, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [width] [line 1137, size 32, align 32, offset 0] [from int]
!1095 = metadata !{i32 786445, metadata !438, metadata !"_ZTS6CvSize", metadata !"height", i32 1138, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [height] [line 1138, size 32, align 32, offset 32] [from int]
!1096 = metadata !{i32 786451, metadata !438, null, metadata !"CvSize2D32f", i32 1152, i64 64, i64 32, i32 0, i32 0, null, metadata !1097, i32 0, null, null, metadata !"_ZTS11CvSize2D32f"} ; [ DW_TAG_structure_type ] [CvSize2D32f] [line 1152, size 64, align 32, offset 0] [def] [from ]
!1097 = metadata !{metadata !1098, metadata !1099}
!1098 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSize2D32f", metadata !"width", i32 1154, i64 32, i64 32, i64 0, i32 0, metadata !500} ; [ DW_TAG_member ] [width] [line 1154, size 32, align 32, offset 0] [from float]
!1099 = metadata !{i32 786445, metadata !438, metadata !"_ZTS11CvSize2D32f", metadata !"height", i32 1155, i64 32, i64 32, i64 32, i32 0, metadata !500} ; [ DW_TAG_member ] [height] [line 1155, size 32, align 32, offset 32] [from float]
!1100 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Point_<int>", i32 728, i64 64, i64 32, i32 0, i32 0, null, metadata !1101, i32 0, null, metadata !1090, metadata !"_ZTSN2cv6Point_IiEE"} ; [ DW_TAG_class_type ] [Point_<int>] [line 728, size 64, align 32, offset 0] [def] [from ]
!1101 = metadata !{metadata !1102, metadata !1103, metadata !1104, metadata !1108, metadata !1111, metadata !1114, metadata !1120, metadata !1126, metadata !1129, metadata !1134, metadata !1138, metadata !1142, metadata !1145, metadata !1227, metadata !1230, metadata !1233, metadata !1234}
!1102 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"x", i32 760, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [x] [line 760, size 32, align 32, offset 0] [from int]
!1103 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"y", i32 760, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [y] [line 760, size 32, align 32, offset 32] [from int]
!1104 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"", i32 734, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 734} ; [ DW_TAG_subprogram ] [line 734] [Point_]
!1105 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1106, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1106 = metadata !{null, metadata !1107}
!1107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv6Point_IiEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv6Point_IiEE]
!1108 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"", i32 735, metadata !1109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 735} ; [ DW_TAG_subprogram ] [line 735] [Point_]
!1109 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1110, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1110 = metadata !{null, metadata !1107, metadata !472, metadata !472}
!1111 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"", i32 736, metadata !1112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 736} ; [ DW_TAG_subprogram ] [line 736] [Point_]
!1112 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1113, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1113 = metadata !{null, metadata !1107, metadata !1074}
!1114 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"", i32 737, metadata !1115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 737} ; [ DW_TAG_subprogram ] [line 737] [Point_]
!1115 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1116, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1116 = metadata !{null, metadata !1107, metadata !1117}
!1117 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1118} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1118 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1119} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvPoint]
!1119 = metadata !{i32 786454, metadata !438, null, metadata !"CvPoint", i32 1023, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS7CvPoint"} ; [ DW_TAG_typedef ] [CvPoint] [line 1023, size 0, align 0, offset 0] [from _ZTS7CvPoint]
!1120 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"", i32 738, metadata !1121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 738} ; [ DW_TAG_subprogram ] [line 738] [Point_]
!1121 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1122, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1122 = metadata !{null, metadata !1107, metadata !1123}
!1123 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1124} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1124 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1125} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvPoint2D32f]
!1125 = metadata !{i32 786454, metadata !438, null, metadata !"CvPoint2D32f", i32 1042, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS12CvPoint2D32f"} ; [ DW_TAG_typedef ] [CvPoint2D32f] [line 1042, size 0, align 0, offset 0] [from _ZTS12CvPoint2D32f]
!1126 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"", i32 739, metadata !1127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 739} ; [ DW_TAG_subprogram ] [line 739] [Point_]
!1127 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1128, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1128 = metadata !{null, metadata !1107, metadata !1057}
!1129 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"", i32 740, metadata !1130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 740} ; [ DW_TAG_subprogram ] [line 740] [Point_]
!1130 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1131, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1131 = metadata !{null, metadata !1107, metadata !1132}
!1132 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1133} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1133 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3VecIiLi2EEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3VecIiLi2EEE]
!1134 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"operator=", metadata !"operator=", metadata !"_ZN2cv6Point_IiEaSERKS1_", i32 742, metadata !1135, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 742} ; [ DW_TAG_subprogram ] [line 742] [operator=]
!1135 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1136, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1136 = metadata !{metadata !1137, metadata !1107, metadata !1074}
!1137 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv6Point_IiEE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv6Point_IiEE]
!1138 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"operator CvPoint", metadata !"operator CvPoint", metadata !"_ZNK2cv6Point_IiEcv7CvPointEv", i32 747, metadata !1139, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 747} ; [ DW_TAG_subprogram ] [line 747] [operator CvPoint]
!1139 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1140, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1140 = metadata !{metadata !1119, metadata !1141}
!1141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1075} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1142 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"operator CvPoint2D32f", metadata !"operator CvPoint2D32f", metadata !"_ZNK2cv6Point_IiEcv12CvPoint2D32fEv", i32 748, metadata !1143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 748} ; [ DW_TAG_subprogram ] [line 748] [operator CvPoint2D32f]
!1143 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1144, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1144 = metadata !{metadata !1125, metadata !1141}
!1145 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"operator Vec", metadata !"operator Vec", metadata !"_ZNK2cv6Point_IiEcvNS_3VecIiLi2EEEEv", i32 749, metadata !1146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 749} ; [ DW_TAG_subprogram ] [line 749] [operator Vec]
!1146 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1147, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1147 = metadata !{metadata !1148, metadata !1141}
!1148 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Vec<int, 2>", i32 596, i64 64, i64 32, i32 0, i32 0, null, metadata !1149, i32 0, null, metadata !1225, metadata !"_ZTSN2cv3VecIiLi2EEE"} ; [ DW_TAG_class_type ] [Vec<int, 2>] [line 596, size 64, align 32, offset 0] [def] [from ]
!1149 = metadata !{metadata !1150, metadata !1151, metadata !1155, metadata !1158, metadata !1161, metadata !1164, metadata !1167, metadata !1170, metadata !1173, metadata !1176, metadata !1179, metadata !1182, metadata !1185, metadata !1188, metadata !1191, metadata !1194, metadata !1198, metadata !1201, metadata !1202, metadata !1206, metadata !1209, metadata !1212, metadata !1213, metadata !1214, metadata !1221}
!1150 = metadata !{i32 786460, null, metadata !"_ZTSN2cv3VecIiLi2EEE", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv4MatxIiLi2ELi1EEE]
!1151 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 603, metadata !1152, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 603} ; [ DW_TAG_subprogram ] [line 603] [Vec]
!1152 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1153, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1153 = metadata !{null, metadata !1154}
!1154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv3VecIiLi2EEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv3VecIiLi2EEE]
!1155 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 605, metadata !1156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 605} ; [ DW_TAG_subprogram ] [line 605] [Vec]
!1156 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1157, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1157 = metadata !{null, metadata !1154, metadata !472}
!1158 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 606, metadata !1159, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 606} ; [ DW_TAG_subprogram ] [line 606] [Vec]
!1159 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1160, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1160 = metadata !{null, metadata !1154, metadata !472, metadata !472}
!1161 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 607, metadata !1162, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 607} ; [ DW_TAG_subprogram ] [line 607] [Vec]
!1162 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1163, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1163 = metadata !{null, metadata !1154, metadata !472, metadata !472, metadata !472}
!1164 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 608, metadata !1165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 608} ; [ DW_TAG_subprogram ] [line 608] [Vec]
!1165 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1166, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1166 = metadata !{null, metadata !1154, metadata !472, metadata !472, metadata !472, metadata !472}
!1167 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 609, metadata !1168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 609} ; [ DW_TAG_subprogram ] [line 609] [Vec]
!1168 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1169, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1169 = metadata !{null, metadata !1154, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1170 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 610, metadata !1171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 610} ; [ DW_TAG_subprogram ] [line 610] [Vec]
!1171 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1172, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1172 = metadata !{null, metadata !1154, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1173 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 611, metadata !1174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 611} ; [ DW_TAG_subprogram ] [line 611] [Vec]
!1174 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1175, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1175 = metadata !{null, metadata !1154, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1176 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 612, metadata !1177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 612} ; [ DW_TAG_subprogram ] [line 612] [Vec]
!1177 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1178, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1178 = metadata !{null, metadata !1154, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1179 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 613, metadata !1180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 613} ; [ DW_TAG_subprogram ] [line 613] [Vec]
!1180 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1181, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1181 = metadata !{null, metadata !1154, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1182 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 614, metadata !1183, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 614} ; [ DW_TAG_subprogram ] [line 614] [Vec]
!1183 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1184, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1184 = metadata !{null, metadata !1154, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1185 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 615, metadata !1186, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 615} ; [ DW_TAG_subprogram ] [line 615] [Vec]
!1186 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1187, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1187 = metadata !{null, metadata !1154, metadata !681}
!1188 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 617, metadata !1189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 617} ; [ DW_TAG_subprogram ] [line 617] [Vec]
!1189 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1190, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1190 = metadata !{null, metadata !1154, metadata !1132}
!1191 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"all", metadata !"all", metadata !"_ZN2cv3VecIiLi2EE3allEi", i32 619, metadata !1192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 619} ; [ DW_TAG_subprogram ] [line 619] [all]
!1192 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1193, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1193 = metadata !{metadata !1148, metadata !472}
!1194 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"mul", metadata !"mul", metadata !"_ZNK2cv3VecIiLi2EE3mulERKS1_", i32 622, metadata !1195, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 622} ; [ DW_TAG_subprogram ] [line 622] [mul]
!1195 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1196, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1196 = metadata !{metadata !1148, metadata !1197, metadata !1132}
!1197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1133} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1198 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"conj", metadata !"conj", metadata !"_ZNK2cv3VecIiLi2EE4conjEv", i32 625, metadata !1199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 625} ; [ DW_TAG_subprogram ] [line 625] [conj]
!1199 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1200, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1200 = metadata !{metadata !1148, metadata !1197}
!1201 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"cross", metadata !"cross", metadata !"_ZNK2cv3VecIiLi2EE5crossERKS1_", i32 632, metadata !1195, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 632} ; [ DW_TAG_subprogram ] [line 632] [cross]
!1202 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"operator CvScalar", metadata !"operator CvScalar", metadata !"_ZNK2cv3VecIiLi2EEcv8CvScalarEv", i32 636, metadata !1203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 636} ; [ DW_TAG_subprogram ] [line 636] [operator CvScalar]
!1203 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1204, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1204 = metadata !{metadata !1205, metadata !1197}
!1205 = metadata !{i32 786454, metadata !438, null, metadata !"CvScalar", i32 1224, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS8CvScalar"} ; [ DW_TAG_typedef ] [CvScalar] [line 1224, size 0, align 0, offset 0] [from _ZTS8CvScalar]
!1206 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK2cv3VecIiLi2EEixEi", i32 639, metadata !1207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 639} ; [ DW_TAG_subprogram ] [line 639] [operator[]]
!1207 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1208, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1208 = metadata !{metadata !1030, metadata !1197, metadata !472}
!1209 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZN2cv3VecIiLi2EEixEi", i32 640, metadata !1210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 640} ; [ DW_TAG_subprogram ] [line 640] [operator[]]
!1210 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1211, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1211 = metadata !{metadata !1034, metadata !1154, metadata !472}
!1212 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv3VecIiLi2EEclEi", i32 641, metadata !1207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 641} ; [ DW_TAG_subprogram ] [line 641] [operator()]
!1213 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZN2cv3VecIiLi2EEclEi", i32 642, metadata !1210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 642} ; [ DW_TAG_subprogram ] [line 642] [operator()]
!1214 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 644, metadata !1215, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 644} ; [ DW_TAG_subprogram ] [line 644] [Vec]
!1215 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1216, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1216 = metadata !{null, metadata !1154, metadata !1217, metadata !1217, metadata !1219}
!1217 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1218} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1218 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv4MatxIiLi2ELi1EEE]
!1219 = metadata !{i32 786451, metadata !199, metadata !198, metadata !"Matx_AddOp", i32 440, i64 8, i64 8, i32 0, i32 0, null, metadata !1220, i32 0, null, null, metadata !"_ZTSN2cv10Matx_AddOpE"} ; [ DW_TAG_structure_type ] [Matx_AddOp] [line 440, size 8, align 8, offset 0] [def] [from ]
!1220 = metadata !{}
!1221 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIiLi2EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 645, metadata !1222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 645} ; [ DW_TAG_subprogram ] [line 645] [Vec]
!1222 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1223, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1223 = metadata !{null, metadata !1154, metadata !1217, metadata !1217, metadata !1224}
!1224 = metadata !{i32 786451, metadata !199, metadata !198, metadata !"Matx_SubOp", i32 441, i64 8, i64 8, i32 0, i32 0, null, metadata !1220, i32 0, null, null, metadata !"_ZTSN2cv10Matx_SubOpE"} ; [ DW_TAG_structure_type ] [Matx_SubOp] [line 441, size 8, align 8, offset 0] [def] [from ]
!1225 = metadata !{metadata !1091, metadata !1226}
!1226 = metadata !{i32 786480, null, metadata !"cn", metadata !472, i32 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1227 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"dot", metadata !"dot", metadata !"_ZNK2cv6Point_IiE3dotERKS1_", i32 752, metadata !1228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 752} ; [ DW_TAG_subprogram ] [line 752] [dot]
!1228 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1229, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1229 = metadata !{metadata !472, metadata !1141, metadata !1074}
!1230 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"ddot", metadata !"ddot", metadata !"_ZNK2cv6Point_IiE4ddotERKS1_", i32 754, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 754} ; [ DW_TAG_subprogram ] [line 754] [ddot]
!1231 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1232, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1232 = metadata !{metadata !504, metadata !1141, metadata !1074}
!1233 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"cross", metadata !"cross", metadata !"_ZNK2cv6Point_IiE5crossERKS1_", i32 756, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 756} ; [ DW_TAG_subprogram ] [line 756] [cross]
!1234 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv6Point_IiEE", metadata !"inside", metadata !"inside", metadata !"_ZNK2cv6Point_IiE6insideERKNS_5Rect_IiEE", i32 758, metadata !1235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 758} ; [ DW_TAG_subprogram ] [line 758] [inside]
!1235 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1236, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1236 = metadata !{metadata !479, metadata !1141, metadata !1237}
!1237 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1238} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1238 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5Rect_IiEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv5Rect_IiEE]
!1239 = metadata !{i32 786451, metadata !438, null, metadata !"CvPoint", i32 1018, i64 64, i64 32, i32 0, i32 0, null, metadata !1240, i32 0, null, null, metadata !"_ZTS7CvPoint"} ; [ DW_TAG_structure_type ] [CvPoint] [line 1018, size 64, align 32, offset 0] [def] [from ]
!1240 = metadata !{metadata !1241, metadata !1242}
!1241 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvPoint", metadata !"x", i32 1020, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [x] [line 1020, size 32, align 32, offset 0] [from int]
!1242 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvPoint", metadata !"y", i32 1021, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [y] [line 1021, size 32, align 32, offset 32] [from int]
!1243 = metadata !{i32 786451, metadata !438, null, metadata !"CvPoint2D32f", i32 1037, i64 64, i64 32, i32 0, i32 0, null, metadata !1244, i32 0, null, null, metadata !"_ZTS12CvPoint2D32f"} ; [ DW_TAG_structure_type ] [CvPoint2D32f] [line 1037, size 64, align 32, offset 0] [def] [from ]
!1244 = metadata !{metadata !1245, metadata !1246}
!1245 = metadata !{i32 786445, metadata !438, metadata !"_ZTS12CvPoint2D32f", metadata !"x", i32 1039, i64 32, i64 32, i64 0, i32 0, metadata !500} ; [ DW_TAG_member ] [x] [line 1039, size 32, align 32, offset 0] [from float]
!1246 = metadata !{i32 786445, metadata !438, metadata !"_ZTS12CvPoint2D32f", metadata !"y", i32 1040, i64 32, i64 32, i64 32, i32 0, metadata !500} ; [ DW_TAG_member ] [y] [line 1040, size 32, align 32, offset 32] [from float]
!1247 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Matx<int, 2, 1>", i32 447, i64 64, i64 32, i32 0, i32 0, null, metadata !1248, i32 0, null, metadata !1373, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE"} ; [ DW_TAG_class_type ] [Matx<int, 2, 1>] [line 447, size 64, align 32, offset 0] [def] [from ]
!1248 = metadata !{metadata !1249, metadata !1253, metadata !1257, metadata !1260, metadata !1263, metadata !1266, metadata !1269, metadata !1272, metadata !1275, metadata !1278, metadata !1281, metadata !1284, metadata !1287, metadata !1290, metadata !1293, metadata !1296, metadata !1299, metadata !1302, metadata !1303, metadata !1304, metadata !1310, metadata !1313, metadata !1314, metadata !1318, metadata !1321, metadata !1325, metadata !1328, metadata !1331, metadata !1335, metadata !1338, metadata !1342, metadata !1345, metadata !1348, metadata !1351, metadata !1354, metadata !1357, metadata !1360, metadata !1363, metadata !1367}
!1249 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"val", i32 538, i64 64, i64 32, i64 0, i32 0, metadata !1250} ; [ DW_TAG_member ] [val] [line 538, size 64, align 32, offset 0] [from ]
!1250 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !472, metadata !1251, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!1251 = metadata !{metadata !1252}
!1252 = metadata !{i32 786465, i64 0, i64 2}      ; [ DW_TAG_subrange_type ] [0, 1]
!1253 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 457, metadata !1254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 457} ; [ DW_TAG_subprogram ] [line 457] [Matx]
!1254 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1255, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1255 = metadata !{null, metadata !1256}
!1256 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv4MatxIiLi2ELi1EEE]
!1257 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 459, metadata !1258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 459} ; [ DW_TAG_subprogram ] [line 459] [Matx]
!1258 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1259, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1259 = metadata !{null, metadata !1256, metadata !472}
!1260 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 460, metadata !1261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 460} ; [ DW_TAG_subprogram ] [line 460] [Matx]
!1261 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1262, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1262 = metadata !{null, metadata !1256, metadata !472, metadata !472}
!1263 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 461, metadata !1264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 461} ; [ DW_TAG_subprogram ] [line 461] [Matx]
!1264 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1265, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1265 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472}
!1266 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 462, metadata !1267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 462} ; [ DW_TAG_subprogram ] [line 462] [Matx]
!1267 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1268, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1268 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472}
!1269 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 463, metadata !1270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 463} ; [ DW_TAG_subprogram ] [line 463] [Matx]
!1270 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1271, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1271 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1272 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 464, metadata !1273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 464} ; [ DW_TAG_subprogram ] [line 464] [Matx]
!1273 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1274, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1274 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1275 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 465, metadata !1276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 465} ; [ DW_TAG_subprogram ] [line 465] [Matx]
!1276 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1277, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1277 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1278 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 466, metadata !1279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 466} ; [ DW_TAG_subprogram ] [line 466] [Matx]
!1279 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1280, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1280 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1281 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 467, metadata !1282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 467} ; [ DW_TAG_subprogram ] [line 467] [Matx]
!1282 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1283, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1283 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1284 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 468, metadata !1285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 468} ; [ DW_TAG_subprogram ] [line 468] [Matx]
!1285 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1286, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1286 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1287 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 469, metadata !1288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 469} ; [ DW_TAG_subprogram ] [line 469] [Matx]
!1288 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1289, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1289 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1290 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 472, metadata !1291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 472} ; [ DW_TAG_subprogram ] [line 472] [Matx]
!1291 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1292, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1292 = metadata !{null, metadata !1256, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472, metadata !472}
!1293 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 476, metadata !1294, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 476} ; [ DW_TAG_subprogram ] [line 476] [Matx]
!1294 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1295, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1295 = metadata !{null, metadata !1256, metadata !681}
!1296 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"all", metadata !"all", metadata !"_ZN2cv4MatxIiLi2ELi1EE3allEi", i32 478, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 478} ; [ DW_TAG_subprogram ] [line 478] [all]
!1297 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1298, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1298 = metadata !{metadata !1247, metadata !472}
!1299 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"zeros", metadata !"zeros", metadata !"_ZN2cv4MatxIiLi2ELi1EE5zerosEv", i32 479, metadata !1300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 479} ; [ DW_TAG_subprogram ] [line 479] [zeros]
!1300 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1301, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1301 = metadata !{metadata !1247}
!1302 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"ones", metadata !"ones", metadata !"_ZN2cv4MatxIiLi2ELi1EE4onesEv", i32 480, metadata !1300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 480} ; [ DW_TAG_subprogram ] [line 480] [ones]
!1303 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"eye", metadata !"eye", metadata !"_ZN2cv4MatxIiLi2ELi1EE3eyeEv", i32 481, metadata !1300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 481} ; [ DW_TAG_subprogram ] [line 481] [eye]
!1304 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"diag", metadata !"diag", metadata !"_ZN2cv4MatxIiLi2ELi1EE4diagERKNS0_IiLi1ELi1EEE", i32 482, metadata !1305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 482} ; [ DW_TAG_subprogram ] [line 482] [diag]
!1305 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1306, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1306 = metadata !{metadata !1247, metadata !1307}
!1307 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1308} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1308 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1309} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from diag_type]
!1309 = metadata !{i32 786454, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"diag_type", i32 451, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIiLi1ELi1EEE"} ; [ DW_TAG_typedef ] [diag_type] [line 451, size 0, align 0, offset 0] [from _ZTSN2cv4MatxIiLi1ELi1EEE]
!1310 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"randu", metadata !"randu", metadata !"_ZN2cv4MatxIiLi2ELi1EE5randuEii", i32 483, metadata !1311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 483} ; [ DW_TAG_subprogram ] [line 483] [randu]
!1311 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1312, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1312 = metadata !{metadata !1247, metadata !472, metadata !472}
!1313 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"randn", metadata !"randn", metadata !"_ZN2cv4MatxIiLi2ELi1EE5randnEii", i32 484, metadata !1311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 484} ; [ DW_TAG_subprogram ] [line 484] [randn]
!1314 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"dot", metadata !"dot", metadata !"_ZNK2cv4MatxIiLi2ELi1EE3dotERKS1_", i32 487, metadata !1315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 487} ; [ DW_TAG_subprogram ] [line 487] [dot]
!1315 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1316, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1316 = metadata !{metadata !472, metadata !1317, metadata !1217}
!1317 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1218} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1318 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"ddot", metadata !"ddot", metadata !"_ZNK2cv4MatxIiLi2ELi1EE4ddotERKS1_", i32 490, metadata !1319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 490} ; [ DW_TAG_subprogram ] [line 490] [ddot]
!1319 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1320, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1320 = metadata !{metadata !504, metadata !1317, metadata !1217}
!1321 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"row", metadata !"row", metadata !"_ZNK2cv4MatxIiLi2ELi1EE3rowEi", i32 502, metadata !1322, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 502} ; [ DW_TAG_subprogram ] [line 502] [row]
!1322 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1323, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1323 = metadata !{metadata !1324, metadata !1317, metadata !472}
!1324 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Matx<int, 1, 1>", i32 447, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv4MatxIiLi1ELi1EEE"} ; [ DW_TAG_class_type ] [Matx<int, 1, 1>] [line 447, size 0, align 0, offset 0] [decl] [from ]
!1325 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"col", metadata !"col", metadata !"_ZNK2cv4MatxIiLi2ELi1EE3colEi", i32 505, metadata !1326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 505} ; [ DW_TAG_subprogram ] [line 505] [col]
!1326 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1327, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1327 = metadata !{metadata !1247, metadata !1317, metadata !472}
!1328 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"diag", metadata !"diag", metadata !"_ZNK2cv4MatxIiLi2ELi1EE4diagEv", i32 508, metadata !1329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 508} ; [ DW_TAG_subprogram ] [line 508] [diag]
!1329 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1330, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1330 = metadata !{metadata !1309, metadata !1317}
!1331 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"t", metadata !"t", metadata !"_ZNK2cv4MatxIiLi2ELi1EE1tEv", i32 511, metadata !1332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 511} ; [ DW_TAG_subprogram ] [line 511] [t]
!1332 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1333, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1333 = metadata !{metadata !1334, metadata !1317}
!1334 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Matx<int, 1, 2>", i32 447, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv4MatxIiLi1ELi2EEE"} ; [ DW_TAG_class_type ] [Matx<int, 1, 2>] [line 447, size 0, align 0, offset 0] [decl] [from ]
!1335 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"inv", metadata !"inv", metadata !"_ZNK2cv4MatxIiLi2ELi1EE3invEi", i32 514, metadata !1336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 514} ; [ DW_TAG_subprogram ] [line 514] [inv]
!1336 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1337, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1337 = metadata !{metadata !1334, metadata !1317, metadata !472}
!1338 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"solve", metadata !"solve", metadata !"_ZNK2cv4MatxIiLi2ELi1EE5solveERKNS_3VecIiLi2EEEi", i32 518, metadata !1339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 518} ; [ DW_TAG_subprogram ] [line 518] [solve]
!1339 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1340, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1340 = metadata !{metadata !1341, metadata !1317, metadata !1132, metadata !472}
!1341 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Vec<int, 1>", i32 84, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv3VecIiLi1EEE"} ; [ DW_TAG_class_type ] [Vec<int, 1>] [line 84, size 0, align 0, offset 0] [decl] [from ]
!1342 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"mul", metadata !"mul", metadata !"_ZNK2cv4MatxIiLi2ELi1EE3mulERKS1_", i32 521, metadata !1343, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 521} ; [ DW_TAG_subprogram ] [line 521] [mul]
!1343 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1344, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1344 = metadata !{metadata !1247, metadata !1317, metadata !1217}
!1345 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv4MatxIiLi2ELi1EEclEii", i32 524, metadata !1346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 524} ; [ DW_TAG_subprogram ] [line 524] [operator()]
!1346 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1347, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1347 = metadata !{metadata !1030, metadata !1317, metadata !472, metadata !472}
!1348 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZN2cv4MatxIiLi2ELi1EEclEii", i32 525, metadata !1349, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 525} ; [ DW_TAG_subprogram ] [line 525] [operator()]
!1349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1350 = metadata !{metadata !1034, metadata !1256, metadata !472, metadata !472}
!1351 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv4MatxIiLi2ELi1EEclEi", i32 528, metadata !1352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 528} ; [ DW_TAG_subprogram ] [line 528] [operator()]
!1352 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1353, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1353 = metadata !{metadata !1030, metadata !1317, metadata !472}
!1354 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZN2cv4MatxIiLi2ELi1EEclEi", i32 529, metadata !1355, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 529} ; [ DW_TAG_subprogram ] [line 529] [operator()]
!1355 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1356, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1356 = metadata !{metadata !1034, metadata !1256, metadata !472}
!1357 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 531, metadata !1358, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 531} ; [ DW_TAG_subprogram ] [line 531] [Matx]
!1358 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1359, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1359 = metadata !{null, metadata !1256, metadata !1217, metadata !1217, metadata !1219}
!1360 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 532, metadata !1361, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 532} ; [ DW_TAG_subprogram ] [line 532] [Matx]
!1361 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1362, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1362 = metadata !{null, metadata !1256, metadata !1217, metadata !1217, metadata !1224}
!1363 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 534, metadata !1364, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 534} ; [ DW_TAG_subprogram ] [line 534] [Matx]
!1364 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1365, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1365 = metadata !{null, metadata !1256, metadata !1217, metadata !1217, metadata !1366}
!1366 = metadata !{i32 786451, metadata !199, metadata !198, metadata !"Matx_MulOp", i32 443, i64 8, i64 8, i32 0, i32 0, null, metadata !1220, i32 0, null, null, metadata !"_ZTSN2cv10Matx_MulOpE"} ; [ DW_TAG_structure_type ] [Matx_MulOp] [line 443, size 8, align 8, offset 0] [def] [from ]
!1367 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIiLi2ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 536, metadata !1368, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 536} ; [ DW_TAG_subprogram ] [line 536] [Matx]
!1368 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1369, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1369 = metadata !{null, metadata !1256, metadata !1370, metadata !1372}
!1370 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1371} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1371 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIiLi1ELi2EEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv4MatxIiLi1ELi2EEE]
!1372 = metadata !{i32 786451, metadata !199, metadata !198, metadata !"Matx_TOp", i32 445, i64 8, i64 8, i32 0, i32 0, null, metadata !1220, i32 0, null, null, metadata !"_ZTSN2cv8Matx_TOpE"} ; [ DW_TAG_structure_type ] [Matx_TOp] [line 445, size 8, align 8, offset 0] [def] [from ]
!1373 = metadata !{metadata !1091, metadata !1374, metadata !1375}
!1374 = metadata !{i32 786480, null, metadata !"m", metadata !472, i32 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1375 = metadata !{i32 786480, null, metadata !"n", metadata !472, i32 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1376 = metadata !{i32 786451, metadata !438, null, metadata !"CvScalar", i32 1220, i64 256, i64 64, i32 0, i32 0, null, metadata !1377, i32 0, null, null, metadata !"_ZTS8CvScalar"} ; [ DW_TAG_structure_type ] [CvScalar] [line 1220, size 256, align 64, offset 0] [def] [from ]
!1377 = metadata !{metadata !1378}
!1378 = metadata !{i32 786445, metadata !438, metadata !"_ZTS8CvScalar", metadata !"val", i32 1222, i64 256, i64 64, i64 0, i32 0, metadata !1379} ; [ DW_TAG_member ] [val] [line 1222, size 256, align 64, offset 0] [from ]
!1379 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !504, metadata !1380, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from double]
!1380 = metadata !{metadata !1381}
!1381 = metadata !{i32 786465, i64 0, i64 4}      ; [ DW_TAG_subrange_type ] [0, 3]
!1382 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Rect_<int>", i32 845, i64 128, i64 32, i32 0, i32 0, null, metadata !1383, i32 0, null, metadata !1090, metadata !"_ZTSN2cv5Rect_IiEE"} ; [ DW_TAG_class_type ] [Rect_<int>] [line 845, size 128, align 32, offset 0] [def] [from ]
!1383 = metadata !{metadata !1384, metadata !1385, metadata !1386, metadata !1387, metadata !1388, metadata !1392, metadata !1395, metadata !1398, metadata !1404, metadata !1407, metadata !1410, metadata !1414, metadata !1418, metadata !1419, metadata !1422, metadata !1425, metadata !1428}
!1384 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"x", i32 877, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [x] [line 877, size 32, align 32, offset 0] [from int]
!1385 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"y", i32 877, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [y] [line 877, size 32, align 32, offset 32] [from int]
!1386 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"width", i32 877, i64 32, i64 32, i64 64, i32 0, metadata !472} ; [ DW_TAG_member ] [width] [line 877, size 32, align 32, offset 64] [from int]
!1387 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"height", i32 877, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [height] [line 877, size 32, align 32, offset 96] [from int]
!1388 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"Rect_", metadata !"Rect_", metadata !"", i32 851, metadata !1389, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 851} ; [ DW_TAG_subprogram ] [line 851] [Rect_]
!1389 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1390, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1390 = metadata !{null, metadata !1391}
!1391 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv5Rect_IiEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv5Rect_IiEE]
!1392 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"Rect_", metadata !"Rect_", metadata !"", i32 852, metadata !1393, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 852} ; [ DW_TAG_subprogram ] [line 852] [Rect_]
!1393 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1394, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1394 = metadata !{null, metadata !1391, metadata !472, metadata !472, metadata !472, metadata !472}
!1395 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"Rect_", metadata !"Rect_", metadata !"", i32 853, metadata !1396, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 853} ; [ DW_TAG_subprogram ] [line 853] [Rect_]
!1396 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1397, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1397 = metadata !{null, metadata !1391, metadata !1237}
!1398 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"Rect_", metadata !"Rect_", metadata !"", i32 854, metadata !1399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 854} ; [ DW_TAG_subprogram ] [line 854] [Rect_]
!1399 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1400, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1400 = metadata !{null, metadata !1391, metadata !1401}
!1401 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1402} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1402 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1403} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvRect]
!1403 = metadata !{i32 786454, metadata !438, null, metadata !"CvRect", i32 955, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS6CvRect"} ; [ DW_TAG_typedef ] [CvRect] [line 955, size 0, align 0, offset 0] [from _ZTS6CvRect]
!1404 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"Rect_", metadata !"Rect_", metadata !"", i32 855, metadata !1405, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 855} ; [ DW_TAG_subprogram ] [line 855] [Rect_]
!1405 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1406, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1406 = metadata !{null, metadata !1391, metadata !1074, metadata !1057}
!1407 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"Rect_", metadata !"Rect_", metadata !"", i32 856, metadata !1408, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 856} ; [ DW_TAG_subprogram ] [line 856] [Rect_]
!1408 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1409, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1409 = metadata !{null, metadata !1391, metadata !1074, metadata !1074}
!1410 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"operator=", metadata !"operator=", metadata !"_ZN2cv5Rect_IiEaSERKS1_", i32 858, metadata !1411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 858} ; [ DW_TAG_subprogram ] [line 858] [operator=]
!1411 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1412, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1412 = metadata !{metadata !1413, metadata !1391, metadata !1237}
!1413 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5Rect_IiEE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv5Rect_IiEE]
!1414 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"tl", metadata !"tl", metadata !"_ZNK2cv5Rect_IiE2tlEv", i32 860, metadata !1415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 860} ; [ DW_TAG_subprogram ] [line 860] [tl]
!1415 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1416, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1416 = metadata !{metadata !1100, metadata !1417}
!1417 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1238} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1418 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"br", metadata !"br", metadata !"_ZNK2cv5Rect_IiE2brEv", i32 862, metadata !1415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 862} ; [ DW_TAG_subprogram ] [line 862] [br]
!1419 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"size", metadata !"size", metadata !"_ZNK2cv5Rect_IiE4sizeEv", i32 865, metadata !1420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 865} ; [ DW_TAG_subprogram ] [line 865] [size]
!1420 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1421, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1421 = metadata !{metadata !1043, metadata !1417}
!1422 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"area", metadata !"area", metadata !"_ZNK2cv5Rect_IiE4areaEv", i32 867, metadata !1423, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 867} ; [ DW_TAG_subprogram ] [line 867] [area]
!1423 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1424, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1424 = metadata !{metadata !472, metadata !1417}
!1425 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"operator CvRect", metadata !"operator CvRect", metadata !"_ZNK2cv5Rect_IiEcv6CvRectEv", i32 872, metadata !1426, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 872} ; [ DW_TAG_subprogram ] [line 872] [operator CvRect]
!1426 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1427, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1427 = metadata !{metadata !1403, metadata !1417}
!1428 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv5Rect_IiEE", metadata !"contains", metadata !"contains", metadata !"_ZNK2cv5Rect_IiE8containsERKNS_6Point_IiEE", i32 875, metadata !1429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 875} ; [ DW_TAG_subprogram ] [line 875] [contains]
!1429 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1430, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1430 = metadata !{metadata !479, metadata !1417, metadata !1074}
!1431 = metadata !{i32 786451, metadata !438, null, metadata !"CvRect", i32 948, i64 128, i64 32, i32 0, i32 0, null, metadata !1432, i32 0, null, null, metadata !"_ZTS6CvRect"} ; [ DW_TAG_structure_type ] [CvRect] [line 948, size 128, align 32, offset 0] [def] [from ]
!1432 = metadata !{metadata !1433, metadata !1434, metadata !1435, metadata !1436}
!1433 = metadata !{i32 786445, metadata !438, metadata !"_ZTS6CvRect", metadata !"x", i32 950, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [x] [line 950, size 32, align 32, offset 0] [from int]
!1434 = metadata !{i32 786445, metadata !438, metadata !"_ZTS6CvRect", metadata !"y", i32 951, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [y] [line 951, size 32, align 32, offset 32] [from int]
!1435 = metadata !{i32 786445, metadata !438, metadata !"_ZTS6CvRect", metadata !"width", i32 952, i64 32, i64 32, i64 64, i32 0, metadata !472} ; [ DW_TAG_member ] [width] [line 952, size 32, align 32, offset 64] [from int]
!1436 = metadata !{i32 786445, metadata !438, metadata !"_ZTS6CvRect", metadata !"height", i32 953, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [height] [line 953, size 32, align 32, offset 96] [from int]
!1437 = metadata !{i32 786451, metadata !199, metadata !"_ZTSN2cv3MatE", metadata !"MStep", i32 1983, i64 96, i64 32, i32 0, i32 0, null, metadata !1438, i32 0, null, null, metadata !"_ZTSN2cv3Mat5MStepE"} ; [ DW_TAG_structure_type ] [MStep] [line 1983, size 96, align 32, offset 0] [def] [from ]
!1438 = metadata !{metadata !1439, metadata !1441, metadata !1443, metadata !1447, metadata !1450, metadata !1456, metadata !1460, metadata !1463, metadata !1467}
!1439 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"p", i32 1992, i64 32, i64 32, i64 0, i32 0, metadata !1440} ; [ DW_TAG_member ] [p] [line 1992, size 32, align 32, offset 0] [from ]
!1440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !493} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!1441 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"buf", i32 1993, i64 64, i64 32, i64 32, i32 0, metadata !1442} ; [ DW_TAG_member ] [buf] [line 1993, size 64, align 32, offset 32] [from ]
!1442 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !493, metadata !1251, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from size_t]
!1443 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"MStep", metadata !"MStep", metadata !"", i32 1985, metadata !1444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1985} ; [ DW_TAG_subprogram ] [line 1985] [MStep]
!1444 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1445, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1445 = metadata !{null, metadata !1446}
!1446 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv3Mat5MStepE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv3Mat5MStepE]
!1447 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"MStep", metadata !"MStep", metadata !"", i32 1986, metadata !1448, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1986} ; [ DW_TAG_subprogram ] [line 1986] [MStep]
!1448 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1449, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1449 = metadata !{null, metadata !1446, metadata !493}
!1450 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK2cv3Mat5MStepixEi", i32 1987, metadata !1451, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1987} ; [ DW_TAG_subprogram ] [line 1987] [operator[]]
!1451 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1452, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1452 = metadata !{metadata !1453, metadata !1454, metadata !472}
!1453 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !701} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1454 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1455} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1455 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3Mat5MStepE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3Mat5MStepE]
!1456 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZN2cv3Mat5MStepixEi", i32 1988, metadata !1457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1988} ; [ DW_TAG_subprogram ] [line 1988] [operator[]]
!1457 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1458, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1458 = metadata !{metadata !1459, metadata !1446, metadata !472}
!1459 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from size_t]
!1460 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK2cv3Mat5MStepcvjEv", i32 1989, metadata !1461, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1989} ; [ DW_TAG_subprogram ] [line 1989] [operator unsigned int]
!1461 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1462, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1462 = metadata !{metadata !493, metadata !1454}
!1463 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"operator=", metadata !"operator=", metadata !"_ZN2cv3Mat5MStepaSEj", i32 1990, metadata !1464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1990} ; [ DW_TAG_subprogram ] [line 1990] [operator=]
!1464 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1465, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1465 = metadata !{metadata !1466, metadata !1446, metadata !493}
!1466 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3Mat5MStepE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3Mat5MStepE]
!1467 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"operator=", metadata !"operator=", metadata !"_ZN2cv3Mat5MStepaSERKS1_", i32 1995, metadata !1468, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1995} ; [ DW_TAG_subprogram ] [line 1995] [protected] [operator=]
!1468 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1469, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1469 = metadata !{metadata !1466, metadata !1446, metadata !1470}
!1470 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1455} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1471 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Scalar_<double>", i32 934, i64 256, i64 64, i32 0, i32 0, null, metadata !1472, i32 0, null, metadata !1507, metadata !"_ZTSN2cv7Scalar_IdEE"} ; [ DW_TAG_class_type ] [Scalar_<double>] [line 934, size 256, align 64, offset 0] [def] [from ]
!1472 = metadata !{metadata !1473, metadata !1474, metadata !1478, metadata !1481, metadata !1486, metadata !1489, metadata !1492, metadata !1497, metadata !1501, metadata !1504}
!1473 = metadata !{i32 786460, null, metadata !"_ZTSN2cv7Scalar_IdEE", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3VecIdLi4EEE"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3VecIdLi4EEE]
!1474 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"Scalar_", metadata !"Scalar_", metadata !"", i32 938, metadata !1475, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 938} ; [ DW_TAG_subprogram ] [line 938] [Scalar_]
!1475 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1476, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1476 = metadata !{null, metadata !1477}
!1477 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv7Scalar_IdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv7Scalar_IdEE]
!1478 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"Scalar_", metadata !"Scalar_", metadata !"", i32 939, metadata !1479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 939} ; [ DW_TAG_subprogram ] [line 939] [Scalar_]
!1479 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1480, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1480 = metadata !{null, metadata !1477, metadata !504, metadata !504, metadata !504, metadata !504}
!1481 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"Scalar_", metadata !"Scalar_", metadata !"", i32 940, metadata !1482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 940} ; [ DW_TAG_subprogram ] [line 940] [Scalar_]
!1482 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1483, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1483 = metadata !{null, metadata !1477, metadata !1484}
!1484 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1485} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1485 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1205} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CvScalar]
!1486 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"Scalar_", metadata !"Scalar_", metadata !"", i32 941, metadata !1487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 941} ; [ DW_TAG_subprogram ] [line 941] [Scalar_]
!1487 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1488, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1488 = metadata !{null, metadata !1477, metadata !504}
!1489 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"all", metadata !"all", metadata !"_ZN2cv7Scalar_IdE3allEd", i32 944, metadata !1490, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 944} ; [ DW_TAG_subprogram ] [line 944] [all]
!1490 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1491, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1491 = metadata !{metadata !1471, metadata !504}
!1492 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"operator CvScalar", metadata !"operator CvScalar", metadata !"_ZNK2cv7Scalar_IdEcv8CvScalarEv", i32 946, metadata !1493, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 946} ; [ DW_TAG_subprogram ] [line 946] [operator CvScalar]
!1493 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1494, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1494 = metadata !{metadata !1205, metadata !1495}
!1495 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1496} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1496 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv7Scalar_IdEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv7Scalar_IdEE]
!1497 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"mul", metadata !"mul", metadata !"_ZNK2cv7Scalar_IdE3mulERKS1_d", i32 952, metadata !1498, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 952} ; [ DW_TAG_subprogram ] [line 952] [mul]
!1498 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1499, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1499 = metadata !{metadata !1471, metadata !1495, metadata !1500, metadata !504}
!1500 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1496} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1501 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"conj", metadata !"conj", metadata !"_ZNK2cv7Scalar_IdE4conjEv", i32 955, metadata !1502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 955} ; [ DW_TAG_subprogram ] [line 955] [conj]
!1502 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1503, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1503 = metadata !{metadata !1471, metadata !1495}
!1504 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"isReal", metadata !"isReal", metadata !"_ZNK2cv7Scalar_IdE6isRealEv", i32 958, metadata !1505, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 958} ; [ DW_TAG_subprogram ] [line 958] [isReal]
!1505 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1506, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1506 = metadata !{metadata !479, metadata !1495}
!1507 = metadata !{metadata !1508}
!1508 = metadata !{i32 786479, null, metadata !"_Tp", metadata !504, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1509 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Vec<double, 4>", i32 596, i64 256, i64 64, i32 0, i32 0, null, metadata !1510, i32 0, null, metadata !1589, metadata !"_ZTSN2cv3VecIdLi4EEE"} ; [ DW_TAG_class_type ] [Vec<double, 4>] [line 596, size 256, align 64, offset 0] [def] [from ]
!1510 = metadata !{metadata !1511, metadata !1512, metadata !1516, metadata !1519, metadata !1522, metadata !1525, metadata !1528, metadata !1531, metadata !1534, metadata !1537, metadata !1540, metadata !1543, metadata !1546, metadata !1551, metadata !1556, metadata !1559, metadata !1563, metadata !1567, metadata !1568, metadata !1571, metadata !1575, metadata !1579, metadata !1580, metadata !1581, metadata !1586}
!1511 = metadata !{i32 786460, null, metadata !"_ZTSN2cv3VecIdLi4EEE", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv4MatxIdLi4ELi1EEE]
!1512 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 603, metadata !1513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 603} ; [ DW_TAG_subprogram ] [line 603] [Vec]
!1513 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1514, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1514 = metadata !{null, metadata !1515}
!1515 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv3VecIdLi4EEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv3VecIdLi4EEE]
!1516 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 605, metadata !1517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 605} ; [ DW_TAG_subprogram ] [line 605] [Vec]
!1517 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1518, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1518 = metadata !{null, metadata !1515, metadata !504}
!1519 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 606, metadata !1520, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 606} ; [ DW_TAG_subprogram ] [line 606] [Vec]
!1520 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1521, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1521 = metadata !{null, metadata !1515, metadata !504, metadata !504}
!1522 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 607, metadata !1523, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 607} ; [ DW_TAG_subprogram ] [line 607] [Vec]
!1523 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1524, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1524 = metadata !{null, metadata !1515, metadata !504, metadata !504, metadata !504}
!1525 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 608, metadata !1526, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 608} ; [ DW_TAG_subprogram ] [line 608] [Vec]
!1526 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1527, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1527 = metadata !{null, metadata !1515, metadata !504, metadata !504, metadata !504, metadata !504}
!1528 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 609, metadata !1529, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 609} ; [ DW_TAG_subprogram ] [line 609] [Vec]
!1529 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1530, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1530 = metadata !{null, metadata !1515, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1531 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 610, metadata !1532, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 610} ; [ DW_TAG_subprogram ] [line 610] [Vec]
!1532 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1533, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1533 = metadata !{null, metadata !1515, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1534 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 611, metadata !1535, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 611} ; [ DW_TAG_subprogram ] [line 611] [Vec]
!1535 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1536, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1536 = metadata !{null, metadata !1515, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1537 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 612, metadata !1538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 612} ; [ DW_TAG_subprogram ] [line 612] [Vec]
!1538 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1539, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1539 = metadata !{null, metadata !1515, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1540 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 613, metadata !1541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 613} ; [ DW_TAG_subprogram ] [line 613] [Vec]
!1541 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1542, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1542 = metadata !{null, metadata !1515, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1543 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 614, metadata !1544, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 614} ; [ DW_TAG_subprogram ] [line 614] [Vec]
!1544 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1545, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1545 = metadata !{null, metadata !1515, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1546 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 615, metadata !1547, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 615} ; [ DW_TAG_subprogram ] [line 615] [Vec]
!1547 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1548, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1548 = metadata !{null, metadata !1515, metadata !1549}
!1549 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1550} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1550 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !504} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!1551 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 617, metadata !1552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 617} ; [ DW_TAG_subprogram ] [line 617] [Vec]
!1552 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1553, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1553 = metadata !{null, metadata !1515, metadata !1554}
!1554 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1555} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1555 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv3VecIdLi4EEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv3VecIdLi4EEE]
!1556 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"all", metadata !"all", metadata !"_ZN2cv3VecIdLi4EE3allEd", i32 619, metadata !1557, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 619} ; [ DW_TAG_subprogram ] [line 619] [all]
!1557 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1558, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1558 = metadata !{metadata !1509, metadata !504}
!1559 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"mul", metadata !"mul", metadata !"_ZNK2cv3VecIdLi4EE3mulERKS1_", i32 622, metadata !1560, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 622} ; [ DW_TAG_subprogram ] [line 622] [mul]
!1560 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1561, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1561 = metadata !{metadata !1509, metadata !1562, metadata !1554}
!1562 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1555} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1563 = metadata !{i32 786478, metadata !1564, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"conj", metadata !"conj", metadata !"_ZNK2cv3VecIdLi4EE4conjEv", i32 1247, metadata !1565, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1247} ; [ DW_TAG_subprogram ] [line 1247] [conj]
!1564 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!1565 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1566, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1566 = metadata !{metadata !1509, metadata !1562}
!1567 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"cross", metadata !"cross", metadata !"_ZNK2cv3VecIdLi4EE5crossERKS1_", i32 632, metadata !1560, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 632} ; [ DW_TAG_subprogram ] [line 632] [cross]
!1568 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"operator CvScalar", metadata !"operator CvScalar", metadata !"_ZNK2cv3VecIdLi4EEcv8CvScalarEv", i32 636, metadata !1569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 636} ; [ DW_TAG_subprogram ] [line 636] [operator CvScalar]
!1569 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1570, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1570 = metadata !{metadata !1205, metadata !1562}
!1571 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK2cv3VecIdLi4EEixEi", i32 639, metadata !1572, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 639} ; [ DW_TAG_subprogram ] [line 639] [operator[]]
!1572 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1573, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1573 = metadata !{metadata !1574, metadata !1562, metadata !472}
!1574 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1550} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1575 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZN2cv3VecIdLi4EEixEi", i32 640, metadata !1576, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 640} ; [ DW_TAG_subprogram ] [line 640] [operator[]]
!1576 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1577, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1577 = metadata !{metadata !1578, metadata !1515, metadata !472}
!1578 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !504} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from double]
!1579 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv3VecIdLi4EEclEi", i32 641, metadata !1572, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 641} ; [ DW_TAG_subprogram ] [line 641] [operator()]
!1580 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZN2cv3VecIdLi4EEclEi", i32 642, metadata !1576, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 642} ; [ DW_TAG_subprogram ] [line 642] [operator()]
!1581 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 644, metadata !1582, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 644} ; [ DW_TAG_subprogram ] [line 644] [Vec]
!1582 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1583, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1583 = metadata !{null, metadata !1515, metadata !1584, metadata !1584, metadata !1219}
!1584 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1585} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1585 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv4MatxIdLi4ELi1EEE]
!1586 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"", i32 645, metadata !1587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 645} ; [ DW_TAG_subprogram ] [line 645] [Vec]
!1587 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1588, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1588 = metadata !{null, metadata !1515, metadata !1584, metadata !1584, metadata !1224}
!1589 = metadata !{metadata !1508, metadata !1590}
!1590 = metadata !{i32 786480, null, metadata !"cn", metadata !472, i32 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1591 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Matx<double, 4, 1>", i32 447, i64 256, i64 64, i32 0, i32 0, null, metadata !1592, i32 0, null, metadata !1710, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE"} ; [ DW_TAG_class_type ] [Matx<double, 4, 1>] [line 447, size 256, align 64, offset 0] [def] [from ]
!1592 = metadata !{metadata !1593, metadata !1594, metadata !1598, metadata !1601, metadata !1604, metadata !1607, metadata !1610, metadata !1613, metadata !1616, metadata !1619, metadata !1622, metadata !1625, metadata !1628, metadata !1631, metadata !1634, metadata !1637, metadata !1640, metadata !1643, metadata !1644, metadata !1645, metadata !1651, metadata !1654, metadata !1655, metadata !1659, metadata !1660, metadata !1664, metadata !1667, metadata !1670, metadata !1674, metadata !1677, metadata !1681, metadata !1684, metadata !1687, metadata !1690, metadata !1693, metadata !1696, metadata !1699, metadata !1702, metadata !1705}
!1593 = metadata !{i32 786445, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"val", i32 538, i64 256, i64 64, i64 0, i32 0, metadata !1379} ; [ DW_TAG_member ] [val] [line 538, size 256, align 64, offset 0] [from ]
!1594 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 457, metadata !1595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 457} ; [ DW_TAG_subprogram ] [line 457] [Matx]
!1595 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1596, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1596 = metadata !{null, metadata !1597}
!1597 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN2cv4MatxIdLi4ELi1EEE]
!1598 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 459, metadata !1599, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 459} ; [ DW_TAG_subprogram ] [line 459] [Matx]
!1599 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1600, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1600 = metadata !{null, metadata !1597, metadata !504}
!1601 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 460, metadata !1602, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 460} ; [ DW_TAG_subprogram ] [line 460] [Matx]
!1602 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1603, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1603 = metadata !{null, metadata !1597, metadata !504, metadata !504}
!1604 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 461, metadata !1605, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 461} ; [ DW_TAG_subprogram ] [line 461] [Matx]
!1605 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1606, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1606 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504}
!1607 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 462, metadata !1608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 462} ; [ DW_TAG_subprogram ] [line 462] [Matx]
!1608 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1609, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1609 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504}
!1610 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 463, metadata !1611, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 463} ; [ DW_TAG_subprogram ] [line 463] [Matx]
!1611 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1612, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1612 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1613 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 464, metadata !1614, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 464} ; [ DW_TAG_subprogram ] [line 464] [Matx]
!1614 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1615, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1615 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1616 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 465, metadata !1617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 465} ; [ DW_TAG_subprogram ] [line 465] [Matx]
!1617 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1618, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1618 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1619 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 466, metadata !1620, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 466} ; [ DW_TAG_subprogram ] [line 466] [Matx]
!1620 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1621, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1621 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1622 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 467, metadata !1623, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 467} ; [ DW_TAG_subprogram ] [line 467] [Matx]
!1623 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1624, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1624 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1625 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 468, metadata !1626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 468} ; [ DW_TAG_subprogram ] [line 468] [Matx]
!1626 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1627, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1627 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1628 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 469, metadata !1629, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 469} ; [ DW_TAG_subprogram ] [line 469] [Matx]
!1629 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1630, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1630 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1631 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 472, metadata !1632, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 472} ; [ DW_TAG_subprogram ] [line 472] [Matx]
!1632 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1633, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1633 = metadata !{null, metadata !1597, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504, metadata !504}
!1634 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 476, metadata !1635, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 476} ; [ DW_TAG_subprogram ] [line 476] [Matx]
!1635 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1636, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1636 = metadata !{null, metadata !1597, metadata !1549}
!1637 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"all", metadata !"all", metadata !"_ZN2cv4MatxIdLi4ELi1EE3allEd", i32 478, metadata !1638, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 478} ; [ DW_TAG_subprogram ] [line 478] [all]
!1638 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1639, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1639 = metadata !{metadata !1591, metadata !504}
!1640 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"zeros", metadata !"zeros", metadata !"_ZN2cv4MatxIdLi4ELi1EE5zerosEv", i32 479, metadata !1641, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 479} ; [ DW_TAG_subprogram ] [line 479] [zeros]
!1641 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1642, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1642 = metadata !{metadata !1591}
!1643 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"ones", metadata !"ones", metadata !"_ZN2cv4MatxIdLi4ELi1EE4onesEv", i32 480, metadata !1641, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 480} ; [ DW_TAG_subprogram ] [line 480] [ones]
!1644 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"eye", metadata !"eye", metadata !"_ZN2cv4MatxIdLi4ELi1EE3eyeEv", i32 481, metadata !1641, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 481} ; [ DW_TAG_subprogram ] [line 481] [eye]
!1645 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"diag", metadata !"diag", metadata !"_ZN2cv4MatxIdLi4ELi1EE4diagERKNS0_IdLi1ELi1EEE", i32 482, metadata !1646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 482} ; [ DW_TAG_subprogram ] [line 482] [diag]
!1646 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1647, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1647 = metadata !{metadata !1591, metadata !1648}
!1648 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1649} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1649 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1650} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from diag_type]
!1650 = metadata !{i32 786454, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"diag_type", i32 451, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIdLi1ELi1EEE"} ; [ DW_TAG_typedef ] [diag_type] [line 451, size 0, align 0, offset 0] [from _ZTSN2cv4MatxIdLi1ELi1EEE]
!1651 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"randu", metadata !"randu", metadata !"_ZN2cv4MatxIdLi4ELi1EE5randuEdd", i32 483, metadata !1652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 483} ; [ DW_TAG_subprogram ] [line 483] [randu]
!1652 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1653, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1653 = metadata !{metadata !1591, metadata !504, metadata !504}
!1654 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"randn", metadata !"randn", metadata !"_ZN2cv4MatxIdLi4ELi1EE5randnEdd", i32 484, metadata !1652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 484} ; [ DW_TAG_subprogram ] [line 484] [randn]
!1655 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"dot", metadata !"dot", metadata !"_ZNK2cv4MatxIdLi4ELi1EE3dotERKS1_", i32 487, metadata !1656, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 487} ; [ DW_TAG_subprogram ] [line 487] [dot]
!1656 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1657, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1657 = metadata !{metadata !504, metadata !1658, metadata !1584}
!1658 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1585} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1659 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"ddot", metadata !"ddot", metadata !"_ZNK2cv4MatxIdLi4ELi1EE4ddotERKS1_", i32 490, metadata !1656, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 490} ; [ DW_TAG_subprogram ] [line 490] [ddot]
!1660 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"row", metadata !"row", metadata !"_ZNK2cv4MatxIdLi4ELi1EE3rowEi", i32 502, metadata !1661, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 502} ; [ DW_TAG_subprogram ] [line 502] [row]
!1661 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1662, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1662 = metadata !{metadata !1663, metadata !1658, metadata !472}
!1663 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Matx<double, 1, 1>", i32 447, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv4MatxIdLi1ELi1EEE"} ; [ DW_TAG_class_type ] [Matx<double, 1, 1>] [line 447, size 0, align 0, offset 0] [decl] [from ]
!1664 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"col", metadata !"col", metadata !"_ZNK2cv4MatxIdLi4ELi1EE3colEi", i32 505, metadata !1665, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 505} ; [ DW_TAG_subprogram ] [line 505] [col]
!1665 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1666, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1666 = metadata !{metadata !1591, metadata !1658, metadata !472}
!1667 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"diag", metadata !"diag", metadata !"_ZNK2cv4MatxIdLi4ELi1EE4diagEv", i32 508, metadata !1668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 508} ; [ DW_TAG_subprogram ] [line 508] [diag]
!1668 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1669, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1669 = metadata !{metadata !1650, metadata !1658}
!1670 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"t", metadata !"t", metadata !"_ZNK2cv4MatxIdLi4ELi1EE1tEv", i32 511, metadata !1671, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 511} ; [ DW_TAG_subprogram ] [line 511] [t]
!1671 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1672, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1672 = metadata !{metadata !1673, metadata !1658}
!1673 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Matx<double, 1, 4>", i32 447, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv4MatxIdLi1ELi4EEE"} ; [ DW_TAG_class_type ] [Matx<double, 1, 4>] [line 447, size 0, align 0, offset 0] [decl] [from ]
!1674 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"inv", metadata !"inv", metadata !"_ZNK2cv4MatxIdLi4ELi1EE3invEi", i32 514, metadata !1675, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 514} ; [ DW_TAG_subprogram ] [line 514] [inv]
!1675 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1676, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1676 = metadata !{metadata !1673, metadata !1658, metadata !472}
!1677 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"solve", metadata !"solve", metadata !"_ZNK2cv4MatxIdLi4ELi1EE5solveERKNS_3VecIdLi4EEEi", i32 518, metadata !1678, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 518} ; [ DW_TAG_subprogram ] [line 518] [solve]
!1678 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1679, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1679 = metadata !{metadata !1680, metadata !1658, metadata !1554, metadata !472}
!1680 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"Vec<double, 1>", i32 84, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv3VecIdLi1EEE"} ; [ DW_TAG_class_type ] [Vec<double, 1>] [line 84, size 0, align 0, offset 0] [decl] [from ]
!1681 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"mul", metadata !"mul", metadata !"_ZNK2cv4MatxIdLi4ELi1EE3mulERKS1_", i32 521, metadata !1682, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 521} ; [ DW_TAG_subprogram ] [line 521] [mul]
!1682 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1683, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1683 = metadata !{metadata !1591, metadata !1658, metadata !1584}
!1684 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv4MatxIdLi4ELi1EEclEii", i32 524, metadata !1685, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 524} ; [ DW_TAG_subprogram ] [line 524] [operator()]
!1685 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1686, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1686 = metadata !{metadata !1574, metadata !1658, metadata !472, metadata !472}
!1687 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZN2cv4MatxIdLi4ELi1EEclEii", i32 525, metadata !1688, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 525} ; [ DW_TAG_subprogram ] [line 525] [operator()]
!1688 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1689, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1689 = metadata !{metadata !1578, metadata !1597, metadata !472, metadata !472}
!1690 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZNK2cv4MatxIdLi4ELi1EEclEi", i32 528, metadata !1691, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 528} ; [ DW_TAG_subprogram ] [line 528] [operator()]
!1691 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1692, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1692 = metadata !{metadata !1574, metadata !1658, metadata !472}
!1693 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"operator()", metadata !"operator()", metadata !"_ZN2cv4MatxIdLi4ELi1EEclEi", i32 529, metadata !1694, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 529} ; [ DW_TAG_subprogram ] [line 529] [operator()]
!1694 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1695, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1695 = metadata !{metadata !1578, metadata !1597, metadata !472}
!1696 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 531, metadata !1697, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 531} ; [ DW_TAG_subprogram ] [line 531] [Matx]
!1697 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1698, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1698 = metadata !{null, metadata !1597, metadata !1584, metadata !1584, metadata !1219}
!1699 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 532, metadata !1700, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 532} ; [ DW_TAG_subprogram ] [line 532] [Matx]
!1700 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1701, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1701 = metadata !{null, metadata !1597, metadata !1584, metadata !1584, metadata !1224}
!1702 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 534, metadata !1703, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 534} ; [ DW_TAG_subprogram ] [line 534] [Matx]
!1703 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1704, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1704 = metadata !{null, metadata !1597, metadata !1584, metadata !1584, metadata !1366}
!1705 = metadata !{i32 786478, metadata !199, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"", i32 536, metadata !1706, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 536} ; [ DW_TAG_subprogram ] [line 536] [Matx]
!1706 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1707, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1707 = metadata !{null, metadata !1597, metadata !1708, metadata !1372}
!1708 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1709} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1709 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIdLi1ELi4EEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN2cv4MatxIdLi1ELi4EEE]
!1710 = metadata !{metadata !1508, metadata !1711, metadata !1375}
!1711 = metadata !{i32 786480, null, metadata !"m", metadata !472, i32 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1712 = metadata !{i32 786451, metadata !438, null, metadata !"CvSlice", i32 1199, i64 64, i64 32, i32 0, i32 0, null, metadata !1713, i32 0, null, null, metadata !"_ZTS7CvSlice"} ; [ DW_TAG_structure_type ] [CvSlice] [line 1199, size 64, align 32, offset 0] [def] [from ]
!1713 = metadata !{metadata !1714, metadata !1715}
!1714 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvSlice", metadata !"start_index", i32 1201, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [start_index] [line 1201, size 32, align 32, offset 0] [from int]
!1715 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvSlice", metadata !"end_index", i32 1201, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [end_index] [line 1201, size 32, align 32, offset 32] [from int]
!1716 = metadata !{i32 786451, metadata !438, null, metadata !"CvMat", i32 642, i64 224, i64 32, i32 0, i32 0, null, metadata !1717, i32 0, null, null, metadata !"_ZTS5CvMat"} ; [ DW_TAG_structure_type ] [CvMat] [line 642, size 224, align 32, offset 0] [def] [from ]
!1717 = metadata !{metadata !1718, metadata !1719, metadata !1720, metadata !1721, metadata !1722, metadata !1723, metadata !1724}
!1718 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvMat", metadata !"type", i32 644, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [type] [line 644, size 32, align 32, offset 0] [from int]
!1719 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvMat", metadata !"step", i32 645, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [step] [line 645, size 32, align 32, offset 32] [from int]
!1720 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvMat", metadata !"refcount", i32 648, i64 32, i64 32, i64 64, i32 0, metadata !649} ; [ DW_TAG_member ] [refcount] [line 648, size 32, align 32, offset 64] [from ]
!1721 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvMat", metadata !"hdr_refcount", i32 649, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [hdr_refcount] [line 649, size 32, align 32, offset 96] [from int]
!1722 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvMat", metadata !"data", i32 658, i64 32, i64 32, i64 128, i32 0, metadata !"_ZTSN5CvMatUt_E"} ; [ DW_TAG_member ] [data] [line 658, size 32, align 32, offset 128] [from _ZTSN5CvMatUt_E]
!1723 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvMat", metadata !"", i32 661, i64 32, i64 32, i64 160, i32 0, metadata !"_ZTSN5CvMatUt0_E"} ; [ DW_TAG_member ] [line 661, size 32, align 32, offset 160] [from _ZTSN5CvMatUt0_E]
!1724 = metadata !{i32 786445, metadata !438, metadata !"_ZTS5CvMat", metadata !"", i32 667, i64 32, i64 32, i64 192, i32 0, metadata !"_ZTSN5CvMatUt1_E"} ; [ DW_TAG_member ] [line 667, size 32, align 32, offset 192] [from _ZTSN5CvMatUt1_E]
!1725 = metadata !{i32 786455, metadata !438, metadata !"_ZTS5CvMat", metadata !"", i32 651, i64 32, i64 32, i64 0, i32 0, null, metadata !1726, i32 0, null, null, metadata !"_ZTSN5CvMatUt_E"} ; [ DW_TAG_union_type ] [line 651, size 32, align 32, offset 0] [def] [from ]
!1726 = metadata !{metadata !1727, metadata !1728, metadata !1731, metadata !1732, metadata !1734}
!1727 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt_E", metadata !"ptr", i32 653, i64 32, i64 32, i64 0, i32 0, metadata !556} ; [ DW_TAG_member ] [ptr] [line 653, size 32, align 32, offset 0] [from ]
!1728 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt_E", metadata !"s", i32 654, i64 32, i64 32, i64 0, i32 0, metadata !1729} ; [ DW_TAG_member ] [s] [line 654, size 32, align 32, offset 0] [from ]
!1729 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1730} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from short]
!1730 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!1731 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt_E", metadata !"i", i32 655, i64 32, i64 32, i64 0, i32 0, metadata !649} ; [ DW_TAG_member ] [i] [line 655, size 32, align 32, offset 0] [from ]
!1732 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt_E", metadata !"fl", i32 656, i64 32, i64 32, i64 0, i32 0, metadata !1733} ; [ DW_TAG_member ] [fl] [line 656, size 32, align 32, offset 0] [from ]
!1733 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !500} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!1734 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt_E", metadata !"db", i32 657, i64 32, i64 32, i64 0, i32 0, metadata !1735} ; [ DW_TAG_member ] [db] [line 657, size 32, align 32, offset 0] [from ]
!1735 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !504} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from double]
!1736 = metadata !{i32 786455, metadata !438, metadata !"_ZTS5CvMat", metadata !"", i32 661, i64 32, i64 32, i64 0, i32 0, null, metadata !1737, i32 0, null, null, metadata !"_ZTSN5CvMatUt0_E"} ; [ DW_TAG_union_type ] [line 661, size 32, align 32, offset 0] [def] [from ]
!1737 = metadata !{metadata !1738, metadata !1739}
!1738 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt0_E", metadata !"rows", i32 663, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [rows] [line 663, size 32, align 32, offset 0] [from int]
!1739 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt0_E", metadata !"height", i32 664, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [height] [line 664, size 32, align 32, offset 0] [from int]
!1740 = metadata !{i32 786455, metadata !438, metadata !"_ZTS5CvMat", metadata !"", i32 667, i64 32, i64 32, i64 0, i32 0, null, metadata !1741, i32 0, null, null, metadata !"_ZTSN5CvMatUt1_E"} ; [ DW_TAG_union_type ] [line 667, size 32, align 32, offset 0] [def] [from ]
!1741 = metadata !{metadata !1742, metadata !1743}
!1742 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt1_E", metadata !"cols", i32 669, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [cols] [line 669, size 32, align 32, offset 0] [from int]
!1743 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN5CvMatUt1_E", metadata !"width", i32 670, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [width] [line 670, size 32, align 32, offset 0] [from int]
!1744 = metadata !{i32 786451, metadata !438, null, metadata !"CvMatND", i32 813, i64 2208, i64 32, i32 0, i32 0, null, metadata !1745, i32 0, null, null, metadata !"_ZTS7CvMatND"} ; [ DW_TAG_structure_type ] [CvMatND] [line 813, size 2208, align 32, offset 0] [def] [from ]
!1745 = metadata !{metadata !1746, metadata !1747, metadata !1748, metadata !1749, metadata !1750, metadata !1751}
!1746 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvMatND", metadata !"type", i32 815, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [type] [line 815, size 32, align 32, offset 0] [from int]
!1747 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvMatND", metadata !"dims", i32 816, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [dims] [line 816, size 32, align 32, offset 32] [from int]
!1748 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvMatND", metadata !"refcount", i32 818, i64 32, i64 32, i64 64, i32 0, metadata !649} ; [ DW_TAG_member ] [refcount] [line 818, size 32, align 32, offset 64] [from ]
!1749 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvMatND", metadata !"hdr_refcount", i32 819, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [hdr_refcount] [line 819, size 32, align 32, offset 96] [from int]
!1750 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvMatND", metadata !"data", i32 828, i64 32, i64 32, i64 128, i32 0, metadata !"_ZTSN7CvMatNDUt_E"} ; [ DW_TAG_member ] [data] [line 828, size 32, align 32, offset 128] [from _ZTSN7CvMatNDUt_E]
!1751 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7CvMatND", metadata !"dim", i32 835, i64 2048, i64 32, i64 160, i32 0, metadata !1752} ; [ DW_TAG_member ] [dim] [line 835, size 2048, align 32, offset 160] [from ]
!1752 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !"_ZTSN7CvMatNDUt0_E", metadata !1753, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from _ZTSN7CvMatNDUt0_E]
!1753 = metadata !{metadata !1754}
!1754 = metadata !{i32 786465, i64 0, i64 32}     ; [ DW_TAG_subrange_type ] [0, 31]
!1755 = metadata !{i32 786455, metadata !438, metadata !"_ZTS7CvMatND", metadata !"", i32 821, i64 32, i64 32, i64 0, i32 0, null, metadata !1756, i32 0, null, null, metadata !"_ZTSN7CvMatNDUt_E"} ; [ DW_TAG_union_type ] [line 821, size 32, align 32, offset 0] [def] [from ]
!1756 = metadata !{metadata !1757, metadata !1758, metadata !1759, metadata !1760, metadata !1761}
!1757 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN7CvMatNDUt_E", metadata !"ptr", i32 823, i64 32, i64 32, i64 0, i32 0, metadata !556} ; [ DW_TAG_member ] [ptr] [line 823, size 32, align 32, offset 0] [from ]
!1758 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN7CvMatNDUt_E", metadata !"fl", i32 824, i64 32, i64 32, i64 0, i32 0, metadata !1733} ; [ DW_TAG_member ] [fl] [line 824, size 32, align 32, offset 0] [from ]
!1759 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN7CvMatNDUt_E", metadata !"db", i32 825, i64 32, i64 32, i64 0, i32 0, metadata !1735} ; [ DW_TAG_member ] [db] [line 825, size 32, align 32, offset 0] [from ]
!1760 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN7CvMatNDUt_E", metadata !"i", i32 826, i64 32, i64 32, i64 0, i32 0, metadata !649} ; [ DW_TAG_member ] [i] [line 826, size 32, align 32, offset 0] [from ]
!1761 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN7CvMatNDUt_E", metadata !"s", i32 827, i64 32, i64 32, i64 0, i32 0, metadata !1729} ; [ DW_TAG_member ] [s] [line 827, size 32, align 32, offset 0] [from ]
!1762 = metadata !{i32 786451, metadata !438, metadata !"_ZTS7CvMatND", metadata !"", i32 830, i64 64, i64 32, i32 0, i32 0, null, metadata !1763, i32 0, null, null, metadata !"_ZTSN7CvMatNDUt0_E"} ; [ DW_TAG_structure_type ] [line 830, size 64, align 32, offset 0] [def] [from ]
!1763 = metadata !{metadata !1764, metadata !1765}
!1764 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN7CvMatNDUt0_E", metadata !"size", i32 832, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [size] [line 832, size 32, align 32, offset 0] [from int]
!1765 = metadata !{i32 786445, metadata !438, metadata !"_ZTSN7CvMatNDUt0_E", metadata !"step", i32 833, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [step] [line 833, size 32, align 32, offset 32] [from int]
!1766 = metadata !{i32 786451, metadata !438, null, metadata !"_IplImage", i32 462, i64 896, i64 32, i32 0, i32 0, null, metadata !1767, i32 0, null, null, metadata !"_ZTS9_IplImage"} ; [ DW_TAG_structure_type ] [_IplImage] [line 462, size 896, align 32, offset 0] [def] [from ]
!1767 = metadata !{metadata !1768, metadata !1769, metadata !1770, metadata !1771, metadata !1772, metadata !1773, metadata !1775, metadata !1776, metadata !1777, metadata !1778, metadata !1779, metadata !1780, metadata !1781, metadata !1783, metadata !1785, metadata !1786, metadata !1788, metadata !1789, metadata !1790, metadata !1791, metadata !1793, metadata !1794}
!1768 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"nSize", i32 464, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [nSize] [line 464, size 32, align 32, offset 0] [from int]
!1769 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"ID", i32 465, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [ID] [line 465, size 32, align 32, offset 32] [from int]
!1770 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"nChannels", i32 466, i64 32, i64 32, i64 64, i32 0, metadata !472} ; [ DW_TAG_member ] [nChannels] [line 466, size 32, align 32, offset 64] [from int]
!1771 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"alphaChannel", i32 467, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [alphaChannel] [line 467, size 32, align 32, offset 96] [from int]
!1772 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"depth", i32 468, i64 32, i64 32, i64 128, i32 0, metadata !472} ; [ DW_TAG_member ] [depth] [line 468, size 32, align 32, offset 128] [from int]
!1773 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"colorModel", i32 470, i64 32, i64 8, i64 160, i32 0, metadata !1774} ; [ DW_TAG_member ] [colorModel] [line 470, size 32, align 8, offset 160] [from ]
!1774 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !468, metadata !1380, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!1775 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"channelSeq", i32 471, i64 32, i64 8, i64 192, i32 0, metadata !1774} ; [ DW_TAG_member ] [channelSeq] [line 471, size 32, align 8, offset 192] [from ]
!1776 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"dataOrder", i32 472, i64 32, i64 32, i64 224, i32 0, metadata !472} ; [ DW_TAG_member ] [dataOrder] [line 472, size 32, align 32, offset 224] [from int]
!1777 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"origin", i32 474, i64 32, i64 32, i64 256, i32 0, metadata !472} ; [ DW_TAG_member ] [origin] [line 474, size 32, align 32, offset 256] [from int]
!1778 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"align", i32 476, i64 32, i64 32, i64 288, i32 0, metadata !472} ; [ DW_TAG_member ] [align] [line 476, size 32, align 32, offset 288] [from int]
!1779 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"width", i32 478, i64 32, i64 32, i64 320, i32 0, metadata !472} ; [ DW_TAG_member ] [width] [line 478, size 32, align 32, offset 320] [from int]
!1780 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"height", i32 479, i64 32, i64 32, i64 352, i32 0, metadata !472} ; [ DW_TAG_member ] [height] [line 479, size 32, align 32, offset 352] [from int]
!1781 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"roi", i32 480, i64 32, i64 32, i64 384, i32 0, metadata !1782} ; [ DW_TAG_member ] [roi] [line 480, size 32, align 32, offset 384] [from ]
!1782 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS7_IplROI"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS7_IplROI]
!1783 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"maskROI", i32 481, i64 32, i64 32, i64 416, i32 0, metadata !1784} ; [ DW_TAG_member ] [maskROI] [line 481, size 32, align 32, offset 416] [from ]
!1784 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS9_IplImage"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS9_IplImage]
!1785 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"imageId", i32 482, i64 32, i64 32, i64 448, i32 0, metadata !566} ; [ DW_TAG_member ] [imageId] [line 482, size 32, align 32, offset 448] [from ]
!1786 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"tileInfo", i32 483, i64 32, i64 32, i64 480, i32 0, metadata !1787} ; [ DW_TAG_member ] [tileInfo] [line 483, size 32, align 32, offset 480] [from ]
!1787 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS12_IplTileInfo"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS12_IplTileInfo]
!1788 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"imageSize", i32 484, i64 32, i64 32, i64 512, i32 0, metadata !472} ; [ DW_TAG_member ] [imageSize] [line 484, size 32, align 32, offset 512] [from int]
!1789 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"imageData", i32 487, i64 32, i64 32, i64 544, i32 0, metadata !591} ; [ DW_TAG_member ] [imageData] [line 487, size 32, align 32, offset 544] [from ]
!1790 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"widthStep", i32 488, i64 32, i64 32, i64 576, i32 0, metadata !472} ; [ DW_TAG_member ] [widthStep] [line 488, size 32, align 32, offset 576] [from int]
!1791 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"BorderMode", i32 489, i64 128, i64 32, i64 608, i32 0, metadata !1792} ; [ DW_TAG_member ] [BorderMode] [line 489, size 128, align 32, offset 608] [from ]
!1792 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !472, metadata !1380, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!1793 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"BorderConst", i32 490, i64 128, i64 32, i64 736, i32 0, metadata !1792} ; [ DW_TAG_member ] [BorderConst] [line 490, size 128, align 32, offset 736] [from ]
!1794 = metadata !{i32 786445, metadata !438, metadata !"_ZTS9_IplImage", metadata !"imageDataOrigin", i32 491, i64 32, i64 32, i64 864, i32 0, metadata !591} ; [ DW_TAG_member ] [imageDataOrigin] [line 491, size 32, align 32, offset 864] [from ]
!1795 = metadata !{i32 786451, metadata !438, null, metadata !"_IplROI", i32 499, i64 160, i64 32, i32 0, i32 0, null, metadata !1796, i32 0, null, null, metadata !"_ZTS7_IplROI"} ; [ DW_TAG_structure_type ] [_IplROI] [line 499, size 160, align 32, offset 0] [def] [from ]
!1796 = metadata !{metadata !1797, metadata !1798, metadata !1799, metadata !1800, metadata !1801}
!1797 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7_IplROI", metadata !"coi", i32 501, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [coi] [line 501, size 32, align 32, offset 0] [from int]
!1798 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7_IplROI", metadata !"xOffset", i32 502, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [xOffset] [line 502, size 32, align 32, offset 32] [from int]
!1799 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7_IplROI", metadata !"yOffset", i32 503, i64 32, i64 32, i64 64, i32 0, metadata !472} ; [ DW_TAG_member ] [yOffset] [line 503, size 32, align 32, offset 64] [from int]
!1800 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7_IplROI", metadata !"width", i32 504, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [width] [line 504, size 32, align 32, offset 96] [from int]
!1801 = metadata !{i32 786445, metadata !438, metadata !"_ZTS7_IplROI", metadata !"height", i32 505, i64 32, i64 32, i64 128, i32 0, metadata !472} ; [ DW_TAG_member ] [height] [line 505, size 32, align 32, offset 128] [from int]
!1802 = metadata !{i32 786451, metadata !438, null, metadata !"_IplTileInfo", i32 483, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS12_IplTileInfo"} ; [ DW_TAG_structure_type ] [_IplTileInfo] [line 483, size 0, align 0, offset 0] [decl] [from ]
!1803 = metadata !{i32 786434, metadata !199, metadata !1804, metadata !"GpuMat", i32 107, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv3gpu6GpuMatE"} ; [ DW_TAG_class_type ] [GpuMat] [line 107, size 0, align 0, offset 0] [decl] [from ]
!1804 = metadata !{i32 786489, metadata !199, metadata !198, metadata !"gpu", i32 106} ; [ DW_TAG_namespace ] [gpu] [line 106]
!1805 = metadata !{i32 786434, metadata !802, metadata !198, metadata !"MatOp", i32 1169, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv5MatOpE"} ; [ DW_TAG_class_type ] [MatOp] [line 1169, size 0, align 0, offset 0] [decl] [from ]
!1806 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"_OutputArray", i32 1392, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv12_OutputArrayE"} ; [ DW_TAG_class_type ] [_OutputArray] [line 1392, size 0, align 0, offset 0] [decl] [from ]
!1807 = metadata !{i32 786434, metadata !199, metadata !198, metadata !"_InputArray", i32 1305, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv11_InputArrayE"} ; [ DW_TAG_class_type ] [_InputArray] [line 1305, size 0, align 0, offset 0] [decl] [from ]
!1808 = metadata !{i32 786434, metadata !1809, metadata !430, metadata !"ios_base", i32 199, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt8ios_base"} ; [ DW_TAG_class_type ] [ios_base] [line 199, size 0, align 0, offset 0] [decl] [from ]
!1809 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/ios_base.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!1810 = metadata !{i32 786434, metadata !1809, metadata !"_ZTSSt8ios_base", metadata !"Init", i32 533, i64 8, i64 8, i32 0, i32 0, null, metadata !1811, i32 0, null, null, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_class_type ] [Init] [line 533, size 8, align 8, offset 0] [def] [from ]
!1811 = metadata !{metadata !1812, metadata !1815, metadata !1816, metadata !1820}
!1812 = metadata !{i32 786445, metadata !1809, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_refcount", i32 541, i64 0, i64 0, i64 0, i32 4097, metadata !1813, null} ; [ DW_TAG_member ] [_S_refcount] [line 541, size 0, align 0, offset 0] [private] [static] [from _Atomic_word]
!1813 = metadata !{i32 786454, metadata !1814, null, metadata !"_Atomic_word", i32 32, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [_Atomic_word] [line 32, size 0, align 0, offset 0] [from int]
!1814 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/arm-xilinx-linux-gnueabi/bits/atomic_word.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!1815 = metadata !{i32 786445, metadata !1809, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_synced_with_stdio", i32 542, i64 0, i64 0, i64 0, i32 4097, metadata !479, null} ; [ DW_TAG_member ] [_S_synced_with_stdio] [line 542, size 0, align 0, offset 0] [private] [static] [from bool]
!1816 = metadata !{i32 786478, metadata !1809, metadata !"_ZTSNSt8ios_base4InitE", metadata !"Init", metadata !"Init", metadata !"", i32 537, metadata !1817, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 537} ; [ DW_TAG_subprogram ] [line 537] [Init]
!1817 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1818, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1818 = metadata !{null, metadata !1819}
!1819 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSNSt8ios_base4InitE]
!1820 = metadata !{i32 786478, metadata !1809, metadata !"_ZTSNSt8ios_base4InitE", metadata !"~Init", metadata !"~Init", metadata !"", i32 538, metadata !1817, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 538} ; [ DW_TAG_subprogram ] [line 538] [~Init]
!1821 = metadata !{i32 786434, metadata !1822, metadata !430, metadata !"vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >", i32 214, i64 96, i64 32, i32 0, i32 0, null, metadata !1823, i32 0, null, metadata !1967, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_class_type ] [vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >] [line 214, size 96, align 32, offset 0] [def] [from ]
!1822 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!1823 = metadata !{metadata !1824, metadata !1825, metadata !1829, metadata !1835, metadata !1843, metadata !1848, metadata !1849, metadata !1853, metadata !1856, metadata !1860, metadata !1865, metadata !1866, metadata !1867, metadata !1871, metadata !1875, metadata !1876, metadata !1877, metadata !1880, metadata !1881, metadata !1884, metadata !1885, metadata !1888, metadata !1891, metadata !1899, metadata !1905, metadata !1908, metadata !1909, metadata !1910, metadata !1913, metadata !1916, metadata !1917, metadata !1918, metadata !1926, metadata !1933, metadata !1936, metadata !1937, metadata !1940, metadata !1943, metadata !1946, metadata !1949, metadata !1952, metadata !1953, metadata !1954, metadata !1955, metadata !1956, metadata !1959, metadata !1962, metadata !1965, metadata !1966}
!1824 = metadata !{i32 786460, null, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", null, i32 0, i64 0, i64 0, i64 0, i32 2, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [protected] [from _ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE]
!1825 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"vector", metadata !"vector", metadata !"", i32 253, metadata !1826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 253} ; [ DW_TAG_subprogram ] [line 253] [vector]
!1826 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1827, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1827 = metadata !{null, metadata !1828}
!1828 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE]
!1829 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"vector", metadata !"vector", metadata !"", i32 264, metadata !1830, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 264} ; [ DW_TAG_subprogram ] [line 264] [vector]
!1830 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1831, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1831 = metadata !{null, metadata !1828, metadata !1832}
!1832 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1833} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1833 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1834} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from allocator_type]
!1834 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"allocator_type", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIN2cv5Rect_IiEEE"} ; [ DW_TAG_typedef ] [allocator_type] [line 238, size 0, align 0, offset 0] [from _ZTSSaIN2cv5Rect_IiEEE]
!1835 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"vector", metadata !"vector", metadata !"", i32 303, metadata !1836, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, null, i32 303} ; [ DW_TAG_subprogram ] [line 303] [vector]
!1836 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1837, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1837 = metadata !{null, metadata !1828, metadata !1838, metadata !1840, metadata !1832}
!1838 = metadata !{i32 786454, metadata !1822, null, metadata !"size_type", i32 236, i64 0, i64 0, i64 0, i32 0, metadata !1839} ; [ DW_TAG_typedef ] [size_type] [line 236, size 0, align 0, offset 0] [from size_t]
!1839 = metadata !{i32 786454, metadata !431, metadata !430, metadata !"size_t", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !495} ; [ DW_TAG_typedef ] [size_t] [line 188, size 0, align 0, offset 0] [from unsigned int]
!1840 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1841} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1841 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1842} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from value_type]
!1842 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"value_type", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN2cv5Rect_IiEE"} ; [ DW_TAG_typedef ] [value_type] [line 226, size 0, align 0, offset 0] [from _ZTSN2cv5Rect_IiEE]
!1843 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"vector", metadata !"vector", metadata !"", i32 318, metadata !1844, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 318} ; [ DW_TAG_subprogram ] [line 318] [vector]
!1844 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1845, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1845 = metadata !{null, metadata !1828, metadata !1846}
!1846 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1847} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1847 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE]
!1848 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"~vector", metadata !"~vector", metadata !"", i32 423, metadata !1826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 423} ; [ DW_TAG_subprogram ] [line 423] [~vector]
!1849 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"operator=", metadata !"operator=", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEaSERKS4_", i32 436, metadata !1850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 436} ; [ DW_TAG_subprogram ] [line 436] [operator=]
!1850 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1851, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1851 = metadata !{metadata !1852, metadata !1828, metadata !1846}
!1852 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE]
!1853 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"assign", metadata !"assign", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6assignEjRKS2_", i32 488, metadata !1854, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 488} ; [ DW_TAG_subprogram ] [line 488] [assign]
!1854 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1855, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1855 = metadata !{null, metadata !1828, metadata !1838, metadata !1840}
!1856 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"begin", metadata !"begin", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5beginEv", i32 547, metadata !1857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 547} ; [ DW_TAG_subprogram ] [line 547] [begin]
!1857 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1858, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1858 = metadata !{metadata !1859, metadata !1828}
!1859 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"iterator", i32 231, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS3_SaIS3_EEEE"} ; [ DW_TAG_typedef ] [iterator] [line 231, size 0, align 0, offset 0] [from _ZTSN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS3_SaIS3_EEEE]
!1860 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"begin", metadata !"begin", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE5beginEv", i32 556, metadata !1861, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 556} ; [ DW_TAG_subprogram ] [line 556] [begin]
!1861 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1862, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1862 = metadata !{metadata !1863, metadata !1864}
!1863 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"const_iterator", i32 233, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx17__normal_iteratorIPKN2cv5Rect_IiEESt6vectorIS3_SaIS3_EEEE"} ; [ DW_TAG_typedef ] [const_iterator] [line 233, size 0, align 0, offset 0] [from _ZTSN9__gnu_cxx17__normal_iteratorIPKN2cv5Rect_IiEESt6vectorIS3_SaIS3_EEEE]
!1864 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1847} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!1865 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"end", metadata !"end", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE3endEv", i32 565, metadata !1857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 565} ; [ DW_TAG_subprogram ] [line 565] [end]
!1866 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"end", metadata !"end", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE3endEv", i32 574, metadata !1861, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 574} ; [ DW_TAG_subprogram ] [line 574] [end]
!1867 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"rbegin", metadata !"rbegin", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6rbeginEv", i32 583, metadata !1868, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 583} ; [ DW_TAG_subprogram ] [line 583] [rbegin]
!1868 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1869, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1869 = metadata !{metadata !1870, metadata !1828}
!1870 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"reverse_iterator", i32 235, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEE"} ; [ DW_TAG_typedef ] [reverse_iterator] [line 235, size 0, align 0, offset 0] [from _ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEE]
!1871 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"rbegin", metadata !"rbegin", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE6rbeginEv", i32 592, metadata !1872, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 592} ; [ DW_TAG_subprogram ] [line 592] [rbegin]
!1872 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1873, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1873 = metadata !{metadata !1874, metadata !1864}
!1874 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"const_reverse_iterator", i32 234, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEE"} ; [ DW_TAG_typedef ] [const_reverse_iterator] [line 234, size 0, align 0, offset 0] [from _ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEE]
!1875 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"rend", metadata !"rend", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE4rendEv", i32 601, metadata !1868, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 601} ; [ DW_TAG_subprogram ] [line 601] [rend]
!1876 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"rend", metadata !"rend", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4rendEv", i32 610, metadata !1872, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 610} ; [ DW_TAG_subprogram ] [line 610] [rend]
!1877 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"size", metadata !"size", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4sizeEv", i32 654, metadata !1878, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 654} ; [ DW_TAG_subprogram ] [line 654] [size]
!1878 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1879, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1879 = metadata !{metadata !1838, metadata !1864}
!1880 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"max_size", metadata !"max_size", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE8max_sizeEv", i32 659, metadata !1878, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 659} ; [ DW_TAG_subprogram ] [line 659] [max_size]
!1881 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"resize", metadata !"resize", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEjS2_", i32 713, metadata !1882, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 713} ; [ DW_TAG_subprogram ] [line 713] [resize]
!1882 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1883, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1883 = metadata !{null, metadata !1828, metadata !1838, metadata !1842}
!1884 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"capacity", metadata !"capacity", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE8capacityEv", i32 734, metadata !1878, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 734} ; [ DW_TAG_subprogram ] [line 734] [capacity]
!1885 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"empty", metadata !"empty", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE5emptyEv", i32 743, metadata !1886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 743} ; [ DW_TAG_subprogram ] [line 743] [empty]
!1886 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1887, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1887 = metadata !{metadata !479, metadata !1864}
!1888 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"reserve", metadata !"reserve", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE7reserveEj", i32 764, metadata !1889, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 764} ; [ DW_TAG_subprogram ] [line 764] [reserve]
!1889 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1890, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1890 = metadata !{null, metadata !1828, metadata !1838}
!1891 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj", i32 779, metadata !1892, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 779} ; [ DW_TAG_subprogram ] [line 779] [operator[]]
!1892 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1893, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1893 = metadata !{metadata !1894, metadata !1828, metadata !1838}
!1894 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"reference", i32 229, i64 0, i64 0, i64 0, i32 0, metadata !1895} ; [ DW_TAG_typedef ] [reference] [line 229, size 0, align 0, offset 0] [from reference]
!1895 = metadata !{i32 786454, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"reference", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !1897} ; [ DW_TAG_typedef ] [reference] [line 175, size 0, align 0, offset 0] [from reference]
!1896 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/alloc_traits.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!1897 = metadata !{i32 786454, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"reference", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1413} ; [ DW_TAG_typedef ] [reference] [line 99, size 0, align 0, offset 0] [from ]
!1898 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/allocator.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!1899 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj", i32 794, metadata !1900, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 794} ; [ DW_TAG_subprogram ] [line 794] [operator[]]
!1900 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1901, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1901 = metadata !{metadata !1902, metadata !1864, metadata !1838}
!1902 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"const_reference", i32 230, i64 0, i64 0, i64 0, i32 0, metadata !1903} ; [ DW_TAG_typedef ] [const_reference] [line 230, size 0, align 0, offset 0] [from const_reference]
!1903 = metadata !{i32 786454, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"const_reference", i32 176, i64 0, i64 0, i64 0, i32 0, metadata !1904} ; [ DW_TAG_typedef ] [const_reference] [line 176, size 0, align 0, offset 0] [from const_reference]
!1904 = metadata !{i32 786454, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"const_reference", i32 100, i64 0, i64 0, i64 0, i32 0, metadata !1237} ; [ DW_TAG_typedef ] [const_reference] [line 100, size 0, align 0, offset 0] [from ]
!1905 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_range_check", metadata !"_M_range_check", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE14_M_range_checkEj", i32 800, metadata !1906, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 800} ; [ DW_TAG_subprogram ] [line 800] [protected] [_M_range_check]
!1906 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1907, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1907 = metadata !{null, metadata !1864, metadata !1838}
!1908 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"at", metadata !"at", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE2atEj", i32 822, metadata !1892, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 822} ; [ DW_TAG_subprogram ] [line 822] [at]
!1909 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"at", metadata !"at", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE2atEj", i32 840, metadata !1900, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 840} ; [ DW_TAG_subprogram ] [line 840] [at]
!1910 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"front", metadata !"front", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5frontEv", i32 851, metadata !1911, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 851} ; [ DW_TAG_subprogram ] [line 851] [front]
!1911 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1912, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1912 = metadata !{metadata !1894, metadata !1828}
!1913 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"front", metadata !"front", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE5frontEv", i32 859, metadata !1914, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 859} ; [ DW_TAG_subprogram ] [line 859] [front]
!1914 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1915, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1915 = metadata !{metadata !1902, metadata !1864}
!1916 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"back", metadata !"back", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE4backEv", i32 867, metadata !1911, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 867} ; [ DW_TAG_subprogram ] [line 867] [back]
!1917 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"back", metadata !"back", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4backEv", i32 875, metadata !1914, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 875} ; [ DW_TAG_subprogram ] [line 875] [back]
!1918 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"data", metadata !"data", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE4dataEv", i32 890, metadata !1919, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 890} ; [ DW_TAG_subprogram ] [line 890] [data]
!1919 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1920, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1920 = metadata !{metadata !1921, metadata !1828}
!1921 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"pointer", i32 227, i64 0, i64 0, i64 0, i32 0, metadata !1922} ; [ DW_TAG_typedef ] [pointer] [line 227, size 0, align 0, offset 0] [from pointer]
!1922 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"pointer", i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1923} ; [ DW_TAG_typedef ] [pointer] [line 77, size 0, align 0, offset 0] [from pointer]
!1923 = metadata !{i32 786454, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"pointer", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !1924} ; [ DW_TAG_typedef ] [pointer] [line 172, size 0, align 0, offset 0] [from pointer]
!1924 = metadata !{i32 786454, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"pointer", i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1925} ; [ DW_TAG_typedef ] [pointer] [line 97, size 0, align 0, offset 0] [from ]
!1925 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv5Rect_IiEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv5Rect_IiEE]
!1926 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"data", metadata !"data", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4dataEv", i32 898, metadata !1927, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 898} ; [ DW_TAG_subprogram ] [line 898] [data]
!1927 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1928, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1928 = metadata !{metadata !1929, metadata !1864}
!1929 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"const_pointer", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !1930} ; [ DW_TAG_typedef ] [const_pointer] [line 228, size 0, align 0, offset 0] [from const_pointer]
!1930 = metadata !{i32 786454, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"const_pointer", i32 173, i64 0, i64 0, i64 0, i32 0, metadata !1931} ; [ DW_TAG_typedef ] [const_pointer] [line 173, size 0, align 0, offset 0] [from const_pointer]
!1931 = metadata !{i32 786454, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"const_pointer", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !1932} ; [ DW_TAG_typedef ] [const_pointer] [line 98, size 0, align 0, offset 0] [from ]
!1932 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1238} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1933 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"push_back", metadata !"push_back", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backERKS2_", i32 913, metadata !1934, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 913} ; [ DW_TAG_subprogram ] [line 913] [push_back]
!1934 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1935, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1935 = metadata !{null, metadata !1828, metadata !1840}
!1936 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"pop_back", metadata !"pop_back", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE8pop_backEv", i32 949, metadata !1826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 949} ; [ DW_TAG_subprogram ] [line 949] [pop_back]
!1937 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"insert", metadata !"insert", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_", i32 998, metadata !1938, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 998} ; [ DW_TAG_subprogram ] [line 998] [insert]
!1938 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1939, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1939 = metadata !{metadata !1859, metadata !1828, metadata !1859, metadata !1840}
!1940 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"insert", metadata !"insert", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEjRKS2_", i32 1072, metadata !1941, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1072} ; [ DW_TAG_subprogram ] [line 1072] [insert]
!1941 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1942, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1942 = metadata !{null, metadata !1828, metadata !1859, metadata !1838, metadata !1840}
!1943 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"erase", metadata !"erase", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE", i32 1149, metadata !1944, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1149} ; [ DW_TAG_subprogram ] [line 1149] [erase]
!1944 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1945, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1945 = metadata !{metadata !1859, metadata !1828, metadata !1859}
!1946 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"erase", metadata !"erase", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EES8_", i32 1180, metadata !1947, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1180} ; [ DW_TAG_subprogram ] [line 1180] [erase]
!1947 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1948, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1948 = metadata !{metadata !1859, metadata !1828, metadata !1859, metadata !1859}
!1949 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"swap", metadata !"swap", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE4swapERS4_", i32 1194, metadata !1950, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1194} ; [ DW_TAG_subprogram ] [line 1194] [swap]
!1950 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1951, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1951 = metadata !{null, metadata !1828, metadata !1852}
!1952 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"clear", metadata !"clear", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv", i32 1211, metadata !1826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 1211} ; [ DW_TAG_subprogram ] [line 1211] [clear]
!1953 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_fill_initialize", metadata !"_M_fill_initialize", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE18_M_fill_initializeEjRKS2_", i32 1298, metadata !1854, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1298} ; [ DW_TAG_subprogram ] [line 1298] [protected] [_M_fill_initialize]
!1954 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_fill_assign", metadata !"_M_fill_assign", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE14_M_fill_assignEjRKS2_", i32 1354, metadata !1854, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1354} ; [ DW_TAG_subprogram ] [line 1354] [protected] [_M_fill_assign]
!1955 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_fill_insert", metadata !"_M_fill_insert", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEjRKS2_", i32 1395, metadata !1941, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1395} ; [ DW_TAG_subprogram ] [line 1395] [protected] [_M_fill_insert]
!1956 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_insert_aux", metadata !"_M_insert_aux", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_", i32 1409, metadata !1957, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1409} ; [ DW_TAG_subprogram ] [line 1409] [protected] [_M_insert_aux]
!1957 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1958, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1958 = metadata !{null, metadata !1828, metadata !1859, metadata !1840}
!1959 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_check_len", metadata !"_M_check_len", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEjPKc", i32 1422, metadata !1960, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1422} ; [ DW_TAG_subprogram ] [line 1422] [protected] [_M_check_len]
!1960 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1961, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1961 = metadata !{metadata !1838, metadata !1864, metadata !1838, metadata !466}
!1962 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_erase_at_end", metadata !"_M_erase_at_end", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE15_M_erase_at_endEPS2_", i32 1436, metadata !1963, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1436} ; [ DW_TAG_subprogram ] [line 1436] [protected] [_M_erase_at_end]
!1963 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1964, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1964 = metadata !{null, metadata !1828, metadata !1921}
!1965 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_erase", metadata !"_M_erase", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE", i32 1443, metadata !1944, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1443} ; [ DW_TAG_subprogram ] [line 1443] [protected] [_M_erase]
!1966 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_erase", metadata !"_M_erase", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EES8_", i32 1446, metadata !1947, i1 false, i1 false, i32 0, i32 0, null, i32 258, i1 false, null, null, i32 0, null, i32 1446} ; [ DW_TAG_subprogram ] [line 1446] [protected] [_M_erase]
!1967 = metadata !{metadata !1968, metadata !1969}
!1968 = metadata !{i32 786479, null, metadata !"_Tp", metadata !"_ZTSN2cv5Rect_IiEE", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1969 = metadata !{i32 786479, null, metadata !"_Alloc", metadata !"_ZTSSaIN2cv5Rect_IiEEE", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1970 = metadata !{i32 786434, metadata !1898, metadata !430, metadata !"allocator<cv::Rect_<int> >", i32 92, i64 8, i64 8, i32 0, i32 0, null, metadata !1971, i32 0, null, metadata !1983, metadata !"_ZTSSaIN2cv5Rect_IiEEE"} ; [ DW_TAG_class_type ] [allocator<cv::Rect_<int> >] [line 92, size 8, align 8, offset 0] [def] [from ]
!1971 = metadata !{metadata !1972, metadata !1973, metadata !1977, metadata !1982}
!1972 = metadata !{i32 786460, null, metadata !"_ZTSSaIN2cv5Rect_IiEEE", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE"} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE]
!1973 = metadata !{i32 786478, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"allocator", metadata !"allocator", metadata !"", i32 113, metadata !1974, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 113} ; [ DW_TAG_subprogram ] [line 113] [allocator]
!1974 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1975, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1975 = metadata !{null, metadata !1976}
!1976 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSaIN2cv5Rect_IiEEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSaIN2cv5Rect_IiEEE]
!1977 = metadata !{i32 786478, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"allocator", metadata !"allocator", metadata !"", i32 115, metadata !1978, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 115} ; [ DW_TAG_subprogram ] [line 115] [allocator]
!1978 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1979, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1979 = metadata !{null, metadata !1976, metadata !1980}
!1980 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1981} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1981 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIN2cv5Rect_IiEEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSaIN2cv5Rect_IiEEE]
!1982 = metadata !{i32 786478, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"~allocator", metadata !"~allocator", metadata !"", i32 121, metadata !1974, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 121} ; [ DW_TAG_subprogram ] [line 121] [~allocator]
!1983 = metadata !{metadata !1968}
!1984 = metadata !{i32 786434, metadata !1985, metadata !1986, metadata !"new_allocator<cv::Rect_<int> >", i32 58, i64 8, i64 8, i32 0, i32 0, null, metadata !1988, i32 0, null, metadata !1983, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE"} ; [ DW_TAG_class_type ] [new_allocator<cv::Rect_<int> >] [line 58, size 8, align 8, offset 0] [def] [from ]
!1985 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!1986 = metadata !{i32 786489, metadata !1987, null, metadata !"__gnu_cxx", i32 68} ; [ DW_TAG_namespace ] [__gnu_cxx] [line 68]
!1987 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/cpp_type_traits.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!1988 = metadata !{metadata !1989, metadata !1993, metadata !1998, metadata !1999, metadata !2005, metadata !2010, metadata !2014, metadata !2017, metadata !2020, metadata !2023}
!1989 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"", i32 79, metadata !1990, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 79} ; [ DW_TAG_subprogram ] [line 79] [new_allocator]
!1990 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1991, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1991 = metadata !{null, metadata !1992}
!1992 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE]
!1993 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"", i32 81, metadata !1994, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 81} ; [ DW_TAG_subprogram ] [line 81] [new_allocator]
!1994 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1995, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1995 = metadata !{null, metadata !1992, metadata !1996}
!1996 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1997} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!1997 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE]
!1998 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"~new_allocator", metadata !"~new_allocator", metadata !"", i32 86, metadata !1990, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 86} ; [ DW_TAG_subprogram ] [line 86] [~new_allocator]
!1999 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"address", metadata !"address", metadata !"_ZNK9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE7addressERS3_", i32 89, metadata !2000, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 89} ; [ DW_TAG_subprogram ] [line 89] [address]
!2000 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2001, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2001 = metadata !{metadata !2002, metadata !2003, metadata !2004}
!2002 = metadata !{i32 786454, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"pointer", i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1925} ; [ DW_TAG_typedef ] [pointer] [line 63, size 0, align 0, offset 0] [from ]
!2003 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !1997} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!2004 = metadata !{i32 786454, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"reference", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !1413} ; [ DW_TAG_typedef ] [reference] [line 65, size 0, align 0, offset 0] [from ]
!2005 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"address", metadata !"address", metadata !"_ZNK9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE7addressERKS3_", i32 93, metadata !2006, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 93} ; [ DW_TAG_subprogram ] [line 93] [address]
!2006 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2007, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2007 = metadata !{metadata !2008, metadata !2003, metadata !2009}
!2008 = metadata !{i32 786454, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"const_pointer", i32 64, i64 0, i64 0, i64 0, i32 0, metadata !1932} ; [ DW_TAG_typedef ] [const_pointer] [line 64, size 0, align 0, offset 0] [from ]
!2009 = metadata !{i32 786454, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"const_reference", i32 66, i64 0, i64 0, i64 0, i32 0, metadata !1237} ; [ DW_TAG_typedef ] [const_reference] [line 66, size 0, align 0, offset 0] [from ]
!2010 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"allocate", metadata !"allocate", metadata !"_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE8allocateEjPKv", i32 99, metadata !2011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 99} ; [ DW_TAG_subprogram ] [line 99] [allocate]
!2011 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2012, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2012 = metadata !{metadata !2002, metadata !1992, metadata !2013, metadata !904}
!2013 = metadata !{i32 786454, metadata !1985, null, metadata !"size_type", i32 61, i64 0, i64 0, i64 0, i32 0, metadata !1839} ; [ DW_TAG_typedef ] [size_type] [line 61, size 0, align 0, offset 0] [from size_t]
!2014 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE10deallocateEPS3_j", i32 109, metadata !2015, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 109} ; [ DW_TAG_subprogram ] [line 109] [deallocate]
!2015 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2016, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2016 = metadata !{null, metadata !1992, metadata !2002, metadata !2013}
!2017 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"max_size", metadata !"max_size", metadata !"_ZNK9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE8max_sizeEv", i32 113, metadata !2018, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 113} ; [ DW_TAG_subprogram ] [line 113] [max_size]
!2018 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2019, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2019 = metadata !{metadata !2013, metadata !2003}
!2020 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"construct", metadata !"construct", metadata !"_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE9constructEPS3_RKS3_", i32 129, metadata !2021, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 129} ; [ DW_TAG_subprogram ] [line 129] [construct]
!2021 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2022, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2022 = metadata !{null, metadata !1992, metadata !2002, metadata !1237}
!2023 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"destroy", metadata !"destroy", metadata !"_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE7destroyEPS3_", i32 133, metadata !2024, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 133} ; [ DW_TAG_subprogram ] [line 133] [destroy]
!2024 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2025, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2025 = metadata !{null, metadata !1992, metadata !2002}
!2026 = metadata !{i32 786451, metadata !1822, metadata !430, metadata !"_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >", i32 72, i64 96, i64 32, i32 0, i32 0, null, metadata !2027, i32 0, null, metadata !1967, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_structure_type ] [_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >] [line 72, size 96, align 32, offset 0] [def] [from ]
!2027 = metadata !{metadata !2028, metadata !2029, metadata !2037, metadata !2044, metadata !2048, metadata !2051, metadata !2056, metadata !2059, metadata !2062, metadata !2063, metadata !2066, metadata !2069}
!2028 = metadata !{i32 786445, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_impl", i32 164, i64 96, i64 32, i64 0, i32 0, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE"} ; [ DW_TAG_member ] [_M_impl] [line 164, size 96, align 32, offset 0] [from _ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE]
!2029 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_get_Tp_allocator", metadata !"_M_get_Tp_allocator", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE19_M_get_Tp_allocatorEv", i32 113, metadata !2030, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 113} ; [ DW_TAG_subprogram ] [line 113] [_M_get_Tp_allocator]
!2030 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2031, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2031 = metadata !{metadata !2032, metadata !2036}
!2032 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2033} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _Tp_alloc_type]
!2033 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_Tp_alloc_type", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !2034} ; [ DW_TAG_typedef ] [_Tp_alloc_type] [line 75, size 0, align 0, offset 0] [from other]
!2034 = metadata !{i32 786454, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE6rebindIS3_EE", metadata !"other", i32 208, i64 0, i64 0, i64 0, i32 0, metadata !2035} ; [ DW_TAG_typedef ] [other] [line 208, size 0, align 0, offset 0] [from other]
!2035 = metadata !{i32 786454, metadata !1898, metadata !"_ZTSNSaIN2cv5Rect_IiEEE6rebindIS1_EE", metadata !"other", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIN2cv5Rect_IiEEE"} ; [ DW_TAG_typedef ] [other] [line 105, size 0, align 0, offset 0] [from _ZTSSaIN2cv5Rect_IiEEE]
!2036 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE]
!2037 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_get_Tp_allocator", metadata !"_M_get_Tp_allocator", metadata !"_ZNKSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE19_M_get_Tp_allocatorEv", i32 117, metadata !2038, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 117} ; [ DW_TAG_subprogram ] [line 117] [_M_get_Tp_allocator]
!2038 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2039, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2039 = metadata !{metadata !2040, metadata !2042}
!2040 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2041} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!2041 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2033} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _Tp_alloc_type]
!2042 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !2043} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from ]
!2043 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE]
!2044 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"get_allocator", metadata !"get_allocator", metadata !"_ZNKSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE13get_allocatorEv", i32 121, metadata !2045, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 121} ; [ DW_TAG_subprogram ] [line 121] [get_allocator]
!2045 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2046, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2046 = metadata !{metadata !2047, metadata !2042}
!2047 = metadata !{i32 786454, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"allocator_type", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIN2cv5Rect_IiEEE"} ; [ DW_TAG_typedef ] [allocator_type] [line 110, size 0, align 0, offset 0] [from _ZTSSaIN2cv5Rect_IiEEE]
!2048 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_Vector_base", metadata !"_Vector_base", metadata !"", i32 124, metadata !2049, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 124} ; [ DW_TAG_subprogram ] [line 124] [_Vector_base]
!2049 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2050, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2050 = metadata !{null, metadata !2036}
!2051 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_Vector_base", metadata !"_Vector_base", metadata !"", i32 127, metadata !2052, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 127} ; [ DW_TAG_subprogram ] [line 127] [_Vector_base]
!2052 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2053, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2053 = metadata !{null, metadata !2036, metadata !2054}
!2054 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2055} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from ]
!2055 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2047} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from allocator_type]
!2056 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_Vector_base", metadata !"_Vector_base", metadata !"", i32 130, metadata !2057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 130} ; [ DW_TAG_subprogram ] [line 130] [_Vector_base]
!2057 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2058, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2058 = metadata !{null, metadata !2036, metadata !1839}
!2059 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_Vector_base", metadata !"_Vector_base", metadata !"", i32 134, metadata !2060, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 134} ; [ DW_TAG_subprogram ] [line 134] [_Vector_base]
!2060 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2061, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2061 = metadata !{null, metadata !2036, metadata !1839, metadata !2054}
!2062 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"~_Vector_base", metadata !"~_Vector_base", metadata !"", i32 159, metadata !2049, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 159} ; [ DW_TAG_subprogram ] [line 159] [~_Vector_base]
!2063 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_allocate", metadata !"_M_allocate", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE11_M_allocateEj", i32 167, metadata !2064, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 167} ; [ DW_TAG_subprogram ] [line 167] [_M_allocate]
!2064 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2065, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2065 = metadata !{metadata !1922, metadata !2036, metadata !1839}
!2066 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_deallocate", metadata !"_M_deallocate", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE13_M_deallocateEPS2_j", i32 174, metadata !2067, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 174} ; [ DW_TAG_subprogram ] [line 174] [_M_deallocate]
!2067 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2068, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2068 = metadata !{null, metadata !2036, metadata !1922, metadata !1839}
!2069 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_create_storage", metadata !"_M_create_storage", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE17_M_create_storageEj", i32 183, metadata !2057, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, null, i32 183} ; [ DW_TAG_subprogram ] [line 183] [private] [_M_create_storage]
!2070 = metadata !{i32 786451, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_Vector_impl", i32 79, i64 96, i64 32, i32 0, i32 0, null, metadata !2071, i32 0, null, null, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE"} ; [ DW_TAG_structure_type ] [_Vector_impl] [line 79, size 96, align 32, offset 0] [def] [from ]
!2071 = metadata !{metadata !2072, metadata !2073, metadata !2074, metadata !2075, metadata !2076, metadata !2080, metadata !2083}
!2072 = metadata !{i32 786460, null, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2033} ; [ DW_TAG_inheritance ] [line 0, size 0, align 0, offset 0] [from _Tp_alloc_type]
!2073 = metadata !{i32 786445, metadata !1822, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"_M_start", i32 82, i64 32, i64 32, i64 0, i32 0, metadata !1922} ; [ DW_TAG_member ] [_M_start] [line 82, size 32, align 32, offset 0] [from pointer]
!2074 = metadata !{i32 786445, metadata !1822, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"_M_finish", i32 83, i64 32, i64 32, i64 32, i32 0, metadata !1922} ; [ DW_TAG_member ] [_M_finish] [line 83, size 32, align 32, offset 32] [from pointer]
!2075 = metadata !{i32 786445, metadata !1822, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"_M_end_of_storage", i32 84, i64 32, i64 32, i64 64, i32 0, metadata !1922} ; [ DW_TAG_member ] [_M_end_of_storage] [line 84, size 32, align 32, offset 64] [from pointer]
!2076 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"_Vector_impl", metadata !"_Vector_impl", metadata !"", i32 86, metadata !2077, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 86} ; [ DW_TAG_subprogram ] [line 86] [_Vector_impl]
!2077 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2078, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2078 = metadata !{null, metadata !2079}
!2079 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE]
!2080 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"_Vector_impl", metadata !"_Vector_impl", metadata !"", i32 90, metadata !2081, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 90} ; [ DW_TAG_subprogram ] [line 90] [_Vector_impl]
!2081 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2082, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2082 = metadata !{null, metadata !2079, metadata !2040}
!2083 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"_M_swap_data", metadata !"_M_swap_data", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_impl12_M_swap_dataERS5_", i32 101, metadata !2084, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 101} ; [ DW_TAG_subprogram ] [line 101] [_M_swap_data]
!2084 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2085, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2085 = metadata !{null, metadata !2079, metadata !2086}
!2086 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE]
!2087 = metadata !{i32 786451, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"rebind<cv::Rect_<int> >", i32 104, i64 8, i64 8, i32 0, i32 0, null, metadata !1220, i32 0, null, metadata !2088, metadata !"_ZTSNSaIN2cv5Rect_IiEEE6rebindIS1_EE"} ; [ DW_TAG_structure_type ] [rebind<cv::Rect_<int> >] [line 104, size 8, align 8, offset 0] [def] [from ]
!2088 = metadata !{metadata !2089}
!2089 = metadata !{i32 786479, null, metadata !"_Tp1", metadata !"_ZTSN2cv5Rect_IiEE", null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!2090 = metadata !{i32 786451, metadata !1896, metadata !1986, metadata !"__alloc_traits<std::allocator<cv::Rect_<int> > >", i32 95, i64 8, i64 8, i32 0, i32 0, null, metadata !2091, i32 0, null, metadata !2113, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE"} ; [ DW_TAG_structure_type ] [__alloc_traits<std::allocator<cv::Rect_<int> > >] [line 95, size 8, align 8, offset 0] [def] [from ]
!2091 = metadata !{metadata !2092, metadata !2098, metadata !2101, metadata !2104, metadata !2107, metadata !2110}
!2092 = metadata !{i32 786478, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"allocate", metadata !"allocate", metadata !"_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE8allocateERS4_j", i32 181, metadata !2093, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 181} ; [ DW_TAG_subprogram ] [line 181] [allocate]
!2093 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2094, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2094 = metadata !{metadata !1923, metadata !2095, metadata !2096}
!2095 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTSSaIN2cv5Rect_IiEEE"} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from _ZTSSaIN2cv5Rect_IiEEE]
!2096 = metadata !{i32 786454, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"size_type", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !2097} ; [ DW_TAG_typedef ] [size_type] [line 177, size 0, align 0, offset 0] [from size_type]
!2097 = metadata !{i32 786454, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"size_type", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !1839} ; [ DW_TAG_typedef ] [size_type] [line 95, size 0, align 0, offset 0] [from size_t]
!2098 = metadata !{i32 786478, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE10deallocateERS4_PS3_j", i32 184, metadata !2099, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 184} ; [ DW_TAG_subprogram ] [line 184] [deallocate]
!2099 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2100, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2100 = metadata !{null, metadata !2095, metadata !1923, metadata !2096}
!2101 = metadata !{i32 786478, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"destroy", metadata !"destroy", metadata !"_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE7destroyERS4_PS3_", i32 191, metadata !2102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 191} ; [ DW_TAG_subprogram ] [line 191] [destroy]
!2102 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2103, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2103 = metadata !{null, metadata !2095, metadata !1923}
!2104 = metadata !{i32 786478, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"max_size", metadata !"max_size", metadata !"_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE8max_sizeERKS4_", i32 194, metadata !2105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 194} ; [ DW_TAG_subprogram ] [line 194] [max_size]
!2105 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2106, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2106 = metadata !{metadata !2096, metadata !1980}
!2107 = metadata !{i32 786478, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"_S_select_on_copy", metadata !"_S_select_on_copy", metadata !"_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE17_S_select_on_copyERKS4_", i32 197, metadata !2108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 197} ; [ DW_TAG_subprogram ] [line 197] [_S_select_on_copy]
!2108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2109 = metadata !{metadata !1980, metadata !1980}
!2110 = metadata !{i32 786478, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"_S_on_swap", metadata !"_S_on_swap", metadata !"_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE10_S_on_swapERS4_S6_", i32 199, metadata !2111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 199} ; [ DW_TAG_subprogram ] [line 199] [_S_on_swap]
!2111 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2112, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2112 = metadata !{null, metadata !2095, metadata !2095}
!2113 = metadata !{metadata !1969}
!2114 = metadata !{i32 786451, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"rebind<cv::Rect_<int> >", i32 207, i64 8, i64 8, i32 0, i32 0, null, metadata !1220, i32 0, null, metadata !1983, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE6rebindIS3_EE"} ; [ DW_TAG_structure_type ] [rebind<cv::Rect_<int> >] [line 207, size 8, align 8, offset 0] [def] [from ]
!2115 = metadata !{i32 786434, metadata !2116, metadata !1986, metadata !"__normal_iterator<cv::Rect_<int> *, std::vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > > >", i32 709, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS3_SaIS3_EEEE"} ; [ DW_TAG_class_type ] [__normal_iterator<cv::Rect_<int> *, std::vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > > >] [line 709, size 0, align 0, offset 0] [decl] [from ]
!2116 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_iterator.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2117 = metadata !{i32 786434, metadata !2116, metadata !1986, metadata !"__normal_iterator<const cv::Rect_<int> *, std::vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > > >", i32 709, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN9__gnu_cxx17__normal_iteratorIPKN2cv5Rect_IiEESt6vectorIS3_SaIS3_EEEE"} ; [ DW_TAG_class_type ] [__normal_iterator<const cv::Rect_<int> *, std::vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > > >] [line 709, size 0, align 0, offset 0] [decl] [from ]
!2118 = metadata !{i32 786434, metadata !2116, metadata !430, metadata !"reverse_iterator<__gnu_cxx::__normal_iterator<cv::Rect_<int> *, std::vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > > > >", i32 97, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEE"} ; [ DW_TAG_class_type ] [reverse_iterator<__gnu_cxx::__normal_iterator<cv::Rect_<int> *, std::vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > > > >] [line 97, size 0, align 0, offset 0] [decl] [from ]
!2119 = metadata !{i32 786434, metadata !2116, metadata !430, metadata !"reverse_iterator<__gnu_cxx::__normal_iterator<const cv::Rect_<int> *, std::vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > > > >", i32 97, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEE"} ; [ DW_TAG_class_type ] [reverse_iterator<__gnu_cxx::__normal_iterator<const cv::Rect_<int> *, std::vector<cv::Rect_<int>, std::allocator<cv::Rect_<int> > > > >] [line 97, size 0, align 0, offset 0] [decl] [from ]
!2120 = metadata !{i32 786434, metadata !392, metadata !198, metadata !"CascadeClassifier", i32 368, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSN2cv17CascadeClassifierE"} ; [ DW_TAG_class_type ] [CascadeClassifier] [line 368, size 0, align 0, offset 0] [decl] [from ]
!2121 = metadata !{i32 786451, metadata !2122, metadata !430, metadata !"_Destroy_aux<true>", i32 108, i64 8, i64 8, i32 0, i32 0, null, metadata !1220, i32 0, null, metadata !2123, metadata !"_ZTSSt12_Destroy_auxILb1EE"} ; [ DW_TAG_structure_type ] [_Destroy_aux<true>] [line 108, size 8, align 8, offset 0] [def] [from ]
!2122 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_construct.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2123 = metadata !{metadata !2124}
!2124 = metadata !{i32 786480, null, metadata !"", metadata !479, i8 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!2125 = metadata !{metadata !2126, metadata !2131, metadata !2136, metadata !2137, metadata !2142, metadata !2149, metadata !2150, metadata !2151, metadata !2152, metadata !2153, metadata !2154, metadata !2155, metadata !2156, metadata !2157, metadata !2158, metadata !2160, metadata !2161, metadata !2162, metadata !2163, metadata !2164, metadata !2165, metadata !2166, metadata !2171, metadata !2175, metadata !2177, metadata !2178, metadata !2179, metadata !2180, metadata !2181, metadata !2182, metadata !2183, metadata !2184, metadata !2185, metadata !2186, metadata !2187, metadata !2188, metadata !2189, metadata !2190, metadata !2191, metadata !2192}
!2126 = metadata !{i32 786478, metadata !2127, metadata !2128, metadata !"__cxx_global_var_init", metadata !"__cxx_global_var_init", metadata !"", i32 74, metadata !2129, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__cxx_global_var_init, null, null, metadata !1220, i32 74} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [__cxx_global_var_init]
!2127 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/iostream", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2128 = metadata !{i32 786473, metadata !2127}    ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/iostream]
!2129 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2130, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2130 = metadata !{null}
!2131 = metadata !{i32 786478, metadata !1, metadata !2132, metadata !"ocvSwPassthrough", metadata !"ocvSwPassthrough", metadata !"_Z16ocvSwPassthroughPN2cv3MatES1_", i32 24, metadata !2133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.cv::Mat"*, %"class.cv::Mat"*)* @_Z16ocvSwPassthroughPN2cv3MatES1_, null, null, metadata !1220, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [ocvSwPassthrough]
!2132 = metadata !{i32 786473, metadata !1}       ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2133 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2134, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2134 = metadata !{null, metadata !2135, metadata !2135}
!2135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv3MatE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv3MatE]
!2136 = metadata !{i32 786478, metadata !1, metadata !2132, metadata !"ocvSwColorGrey", metadata !"ocvSwColorGrey", metadata !"_Z14ocvSwColorGreyPN2cv3MatES1_", i32 29, metadata !2133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.cv::Mat"*, %"class.cv::Mat"*)* @_Z14ocvSwColorGreyPN2cv3MatES1_, null, null, metadata !1220, i32 30} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 30] [ocvSwColorGrey]
!2137 = metadata !{i32 786478, metadata !1, metadata !2132, metadata !"ocvSwFastCorner", metadata !"ocvSwFastCorner", metadata !"_Z15ocvSwFastCornerPN2cv3MatES1_", i32 36, metadata !2138, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.cv::Mat"*, %"class.cv::Mat"*)* @_Z15ocvSwFastCornerPN2cv3MatES1_, null, null, metadata !1220, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [ocvSwFastCorner]
!2138 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2139, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2139 = metadata !{metadata !2140, metadata !2135, metadata !2135}
!2140 = metadata !{i32 786454, metadata !2141, null, metadata !"u_int32_t", i32 202, i64 0, i64 0, i64 0, i32 0, metadata !495} ; [ DW_TAG_typedef ] [u_int32_t] [line 202, size 0, align 0, offset 0] [from unsigned int]
!2141 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/sys/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2142 = metadata !{i32 786478, metadata !1, metadata !2132, metadata !"ocvFbToMat", metadata !"ocvFbToMat", metadata !"_Z10ocvFbToMatPtiijPN2cv3MatE", i32 95, metadata !2143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i16*, i32, i32, i32, %"class.cv::Mat"*)* @_Z10ocvFbToMatPtiijPN2cv3MatE, null, null, metadata !1220, i32 96} ; [ DW_TAG_subprogram ] [line 95] [def] [scope 96] [ocvFbToMat]
!2143 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2144, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2144 = metadata !{metadata !2145, metadata !2146, metadata !2145, metadata !2145, metadata !2140, metadata !2135}
!2145 = metadata !{i32 786454, metadata !2141, null, metadata !"int32_t", i32 196, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [int32_t] [line 196, size 0, align 0, offset 0] [from int]
!2146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2147} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_int16_t]
!2147 = metadata !{i32 786454, metadata !2141, null, metadata !"u_int16_t", i32 201, i64 0, i64 0, i64 0, i32 0, metadata !2148} ; [ DW_TAG_typedef ] [u_int16_t] [line 201, size 0, align 0, offset 0] [from unsigned short]
!2148 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!2149 = metadata !{i32 786478, metadata !1, metadata !2132, metadata !"ocvMatToFb", metadata !"ocvMatToFb", metadata !"_Z10ocvMatToFbPtiijPN2cv3MatE", i32 118, metadata !2143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i16*, i32, i32, i32, %"class.cv::Mat"*)* @_Z10ocvMatToFbPtiijPN2cv3MatE, null, null, metadata !1220, i32 119} ; [ DW_TAG_subprogram ] [line 118] [def] [scope 119] [ocvMatToFb]
!2150 = metadata !{i32 786478, metadata !1564, metadata !"_ZTSN2cv7Scalar_IdEE", metadata !"Scalar_", metadata !"Scalar_", metadata !"_ZN2cv7Scalar_IdEC2Edddd", i32 2016, metadata !1479, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Scalar_"* (%"class.cv::Scalar_"*, double, double, double, double)* @_ZN2cv7Scalar_IdEC2Edddd, null, metadata !1478, metadata !1220, i32 2017} ; [ DW_TAG_subprogram ] [line 2016] [def] [scope 2017] [Scalar_]
!2151 = metadata !{i32 786478, metadata !1564, metadata !"_ZTSN2cv3VecIdLi4EEE", metadata !"Vec", metadata !"Vec", metadata !"_ZN2cv3VecIdLi4EEC2Ev", i32 1135, metadata !1513, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Vec"* (%"class.cv::Vec"*)* @_ZN2cv3VecIdLi4EEC2Ev, null, metadata !1512, metadata !1220, i32 1136} ; [ DW_TAG_subprogram ] [line 1135] [def] [scope 1136] [Vec]
!2152 = metadata !{i32 786478, metadata !1564, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE", metadata !"Matx", metadata !"Matx", metadata !"_ZN2cv4MatxIdLi4ELi1EEC2Ev", i32 204, metadata !1595, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Matx"* (%"class.cv::Matx"*)* @_ZN2cv4MatxIdLi4ELi1EEC2Ev, null, metadata !1594, metadata !1220, i32 205} ; [ DW_TAG_subprogram ] [line 204] [def] [scope 205] [Matx]
!2153 = metadata !{i32 786478, metadata !1564, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"_ZN2cv6Point_IiEC2Eii", i32 1619, metadata !1109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Point_"* (%"class.cv::Point_"*, i32, i32)* @_ZN2cv6Point_IiEC2Eii, null, metadata !1108, metadata !1220, i32 1619} ; [ DW_TAG_subprogram ] [line 1619] [def] [Point_]
!2154 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"operator[]", metadata !"operator[]", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj", i32 779, metadata !1892, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Rect_"* (%"class.std::vector"*, i32)* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj, null, metadata !1891, metadata !1220, i32 780} ; [ DW_TAG_subprogram ] [line 779] [def] [scope 780] [operator[]]
!2155 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"size", metadata !"size", metadata !"_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4sizeEv", i32 654, metadata !1878, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.std::vector"*)* @_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4sizeEv, null, metadata !1877, metadata !1220, i32 655} ; [ DW_TAG_subprogram ] [line 654] [def] [scope 655] [size]
!2156 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"~vector", metadata !"~vector", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev", i32 423, metadata !1826, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::vector"* (%"class.std::vector"*)* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev, null, metadata !1848, metadata !1220, i32 424} ; [ DW_TAG_subprogram ] [line 423] [def] [scope 424] [~vector]
!2157 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"~_Vector_base", metadata !"~_Vector_base", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev", i32 159, metadata !2049, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Vector_base"* (%"struct.std::_Vector_base"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev, null, metadata !2062, metadata !1220, i32 160} ; [ DW_TAG_subprogram ] [line 159] [def] [scope 160] [~_Vector_base]
!2158 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"~_Vector_impl", metadata !"~_Vector_impl", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implD2Ev", i32 79, metadata !2077, i1 false, i1 true, i32 0, i32 0, null, i32 320, i1 false, %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* (%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implD2Ev, null, metadata !2159, metadata !1220, i32 79} ; [ DW_TAG_subprogram ] [line 79] [def] [~_Vector_impl]
!2159 = metadata !{i32 786478, null, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"~_Vector_impl", metadata !"~_Vector_impl", metadata !"", i32 0, metadata !2077, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, null, i32 0} ; [ DW_TAG_subprogram ] [line 0] [~_Vector_impl]
!2160 = metadata !{i32 786478, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"~allocator", metadata !"~allocator", metadata !"_ZNSaIN2cv5Rect_IiEEED2Ev", i32 121, metadata !1974, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator"* (%"class.std::allocator"*)* @_ZNSaIN2cv5Rect_IiEEED2Ev, null, metadata !1982, metadata !1220, i32 121} ; [ DW_TAG_subprogram ] [line 121] [def] [~allocator]
!2161 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"~new_allocator", metadata !"~new_allocator", metadata !"_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEED2Ev", i32 86, metadata !1990, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEED2Ev, null, metadata !1998, metadata !1220, i32 86} ; [ DW_TAG_subprogram ] [line 86] [def] [~new_allocator]
!2162 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_deallocate", metadata !"_M_deallocate", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE13_M_deallocateEPS2_j", i32 174, metadata !2067, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"struct.std::_Vector_base"*, %"class.cv::Rect_"*, i32)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE13_M_deallocateEPS2_j, null, metadata !2066, metadata !1220, i32 175} ; [ DW_TAG_subprogram ] [line 174] [def] [scope 175] [_M_deallocate]
!2163 = metadata !{i32 786478, metadata !1896, metadata !"_ZTSN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEEE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE10deallocateERS4_PS3_j", i32 184, metadata !2099, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.std::allocator"*, %"class.cv::Rect_"*, i32)* @_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE10deallocateERS4_PS3_j, null, metadata !2098, metadata !1220, i32 185} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 185] [deallocate]
!2164 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"deallocate", metadata !"deallocate", metadata !"_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE10deallocateEPS3_j", i32 109, metadata !2015, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.__gnu_cxx::new_allocator"*, %"class.cv::Rect_"*, i32)* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE10deallocateEPS3_j, null, metadata !2014, metadata !1220, i32 110} ; [ DW_TAG_subprogram ] [line 109] [def] [scope 110] [deallocate]
!2165 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_M_get_Tp_allocator", metadata !"_M_get_Tp_allocator", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE19_M_get_Tp_allocatorEv", i32 113, metadata !2030, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator"* (%"struct.std::_Vector_base"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE19_M_get_Tp_allocatorEv, null, metadata !2029, metadata !1220, i32 114} ; [ DW_TAG_subprogram ] [line 113] [def] [scope 114] [_M_get_Tp_allocator]
!2166 = metadata !{i32 786478, metadata !2122, metadata !430, metadata !"_Destroy<cv::Rect_<int> *, cv::Rect_<int> >", metadata !"_Destroy<cv::Rect_<int> *, cv::Rect_<int> >", metadata !"_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E", i32 148, metadata !2167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.cv::Rect_"*, %"class.cv::Rect_"*, %"class.std::allocator"*)* @_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E, metadata !2169, null, metadata !1220, i32 150} ; [ DW_TAG_subprogram ] [line 148] [def] [scope 150] [_Destroy<cv::Rect_<int> *, cv::Rect_<int> >]
!2167 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2168, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2168 = metadata !{null, metadata !1925, metadata !1925, metadata !2095}
!2169 = metadata !{metadata !2170, metadata !1968}
!2170 = metadata !{i32 786479, null, metadata !"_ForwardIterator", metadata !1925, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!2171 = metadata !{i32 786478, metadata !2122, metadata !430, metadata !"_Destroy<cv::Rect_<int> *>", metadata !"_Destroy<cv::Rect_<int> *>", metadata !"_ZSt8_DestroyIPN2cv5Rect_IiEEEvT_S4_", i32 122, metadata !2172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.cv::Rect_"*, %"class.cv::Rect_"*)* @_ZSt8_DestroyIPN2cv5Rect_IiEEEvT_S4_, metadata !2174, null, metadata !1220, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [_Destroy<cv::Rect_<int> *>]
!2172 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2173, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2173 = metadata !{null, metadata !1925, metadata !1925}
!2174 = metadata !{metadata !2170}
!2175 = metadata !{i32 786478, metadata !2122, metadata !"_ZTSSt12_Destroy_auxILb1EE", metadata !"__destroy<cv::Rect_<int> *>", metadata !"__destroy<cv::Rect_<int> *>", metadata !"_ZNSt12_Destroy_auxILb1EE9__destroyIPN2cv5Rect_IiEEEEvT_S6_", i32 112, metadata !2172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.cv::Rect_"*, %"class.cv::Rect_"*)* @_ZNSt12_Destroy_auxILb1EE9__destroyIPN2cv5Rect_IiEEEEvT_S6_, metadata !2174, metadata !2176, metadata !1220, i32 112} ; [ DW_TAG_subprogram ] [line 112] [def] [__destroy<cv::Rect_<int> *>]
!2176 = metadata !{i32 786478, metadata !2122, metadata !"_ZTSSt12_Destroy_auxILb1EE", metadata !"__destroy<cv::Rect_<int> *>", metadata !"__destroy<cv::Rect_<int> *>", metadata !"_ZNSt12_Destroy_auxILb1EE9__destroyIPN2cv5Rect_IiEEEEvT_S6_", i32 112, metadata !2172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !2174, i32 0, null, i32 112} ; [ DW_TAG_subprogram ] [line 112] [__destroy<cv::Rect_<int> *>]
!2177 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", metadata !"vector", metadata !"vector", metadata !"_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEC2Ev", i32 253, metadata !1826, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::vector"* (%"class.std::vector"*)* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEC2Ev, null, metadata !1825, metadata !1220, i32 257} ; [ DW_TAG_subprogram ] [line 253] [def] [scope 257] [vector]
!2178 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE", metadata !"_Vector_base", metadata !"_Vector_base", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EEC2Ev", i32 124, metadata !2049, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Vector_base"* (%"struct.std::_Vector_base"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EEC2Ev, null, metadata !2048, metadata !1220, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [_Vector_base]
!2179 = metadata !{i32 786478, metadata !1822, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE", metadata !"_Vector_impl", metadata !"_Vector_impl", metadata !"_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implC2Ev", i32 86, metadata !2077, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* (%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implC2Ev, null, metadata !2076, metadata !1220, i32 88} ; [ DW_TAG_subprogram ] [line 86] [def] [scope 88] [_Vector_impl]
!2180 = metadata !{i32 786478, metadata !1898, metadata !"_ZTSSaIN2cv5Rect_IiEEE", metadata !"allocator", metadata !"allocator", metadata !"_ZNSaIN2cv5Rect_IiEEEC2Ev", i32 113, metadata !1974, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.std::allocator"* (%"class.std::allocator"*)* @_ZNSaIN2cv5Rect_IiEEEC2Ev, null, metadata !1973, metadata !1220, i32 113} ; [ DW_TAG_subprogram ] [line 113] [def] [allocator]
!2181 = metadata !{i32 786478, metadata !1985, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE", metadata !"new_allocator", metadata !"new_allocator", metadata !"_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEC2Ev", i32 79, metadata !1990, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEC2Ev, null, metadata !1989, metadata !1220, i32 79} ; [ DW_TAG_subprogram ] [line 79] [def] [new_allocator]
!2182 = metadata !{i32 786478, metadata !1564, metadata !"_ZTSN2cv5Size_IiEE", metadata !"Size_", metadata !"Size_", metadata !"_ZN2cv5Size_IiEC2Ev", i32 1855, metadata !1048, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Size_"* (%"class.cv::Size_"*)* @_ZN2cv5Size_IiEC2Ev, null, metadata !1047, metadata !1220, i32 1856} ; [ DW_TAG_subprogram ] [line 1855] [def] [scope 1856] [Size_]
!2183 = metadata !{i32 786478, metadata !1564, metadata !"_ZTSN2cv5Size_IiEE", metadata !"Size_", metadata !"Size_", metadata !"_ZN2cv5Size_IiEC2Eii", i32 1857, metadata !1052, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Size_"* (%"class.cv::Size_"*, i32, i32)* @_ZN2cv5Size_IiEC2Eii, null, metadata !1051, metadata !1220, i32 1858} ; [ DW_TAG_subprogram ] [line 1857] [def] [scope 1858] [Size_]
!2184 = metadata !{i32 786478, metadata !1564, metadata !"_ZTSN2cv6Point_IiEE", metadata !"Point_", metadata !"Point_", metadata !"_ZN2cv6Point_IiEC2ERKS1_", i32 1620, metadata !1112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Point_"* (%"class.cv::Point_"*, %"class.cv::Point_"*)* @_ZN2cv6Point_IiEC2ERKS1_, null, metadata !1111, metadata !1220, i32 1620} ; [ DW_TAG_subprogram ] [line 1620] [def] [Point_]
!2185 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv3MatE", metadata !"channels", metadata !"channels", metadata !"_ZNK2cv3Mat8channelsEv", i32 401, metadata !975, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.cv::Mat"*)* @_ZNK2cv3Mat8channelsEv, null, metadata !978, metadata !1220, i32 401} ; [ DW_TAG_subprogram ] [line 401] [def] [channels]
!2186 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv3MatE", metadata !"~Mat", metadata !"~Mat", metadata !"_ZN2cv3MatD2Ev", i32 274, metadata !658, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Mat"* (%"class.cv::Mat"*)* @_ZN2cv3MatD2Ev, null, metadata !740, metadata !1220, i32 275} ; [ DW_TAG_subprogram ] [line 274] [def] [scope 275] [~Mat]
!2187 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv3MatE", metadata !"release", metadata !"release", metadata !"_ZN2cv3Mat7releaseEv", i32 364, metadata !658, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.cv::Mat"*)* @_ZN2cv3Mat7releaseEv, null, metadata !891, metadata !1220, i32 365} ; [ DW_TAG_subprogram ] [line 364] [def] [scope 365] [release]
!2188 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv3MatE", metadata !"Mat", metadata !"Mat", metadata !"_ZN2cv3MatC2Ev", i32 67, metadata !658, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"class.cv::Mat"* (%"class.cv::Mat"*)* @_ZN2cv3MatC2Ev, null, metadata !657, metadata !1220, i32 68} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 68] [Mat]
!2189 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv3MatE", metadata !"initEmpty", metadata !"initEmpty", metadata !"_ZN2cv3Mat9initEmptyEv", i32 58, metadata !658, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.cv::Mat"*)* @_ZN2cv3Mat9initEmptyEv, null, metadata !1013, metadata !1220, i32 59} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 59] [initEmpty]
!2190 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv3Mat5MStepE", metadata !"MStep", metadata !"MStep", metadata !"_ZN2cv3Mat5MStepC2Ev", i32 735, metadata !1444, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.cv::Mat::MStep"* (%"struct.cv::Mat::MStep"*)* @_ZN2cv3Mat5MStepC2Ev, null, metadata !1443, metadata !1220, i32 735} ; [ DW_TAG_subprogram ] [line 735] [def] [MStep]
!2191 = metadata !{i32 786478, metadata !802, metadata !"_ZTSN2cv3Mat5MSizeE", metadata !"MSize", metadata !"MSize", metadata !"_ZN2cv3Mat5MSizeC2EPi", i32 706, metadata !1019, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %"struct.cv::Mat::MSize"* (%"struct.cv::Mat::MSize"*, i32*)* @_ZN2cv3Mat5MSizeC2EPi, null, metadata !1018, metadata !1220, i32 706} ; [ DW_TAG_subprogram ] [line 706] [def] [MSize]
!2192 = metadata !{i32 786478, metadata !1, metadata !2132, metadata !"", metadata !"", metadata !"_GLOBAL__sub_I_my_ocv_sw.cpp", i32 0, metadata !2193, i1 true, i1 true, i32 0, i32 0, null, i32 64, i1 false, void ()* @_GLOBAL__sub_I_my_ocv_sw.cpp, null, null, metadata !1220, i32 0} ; [ DW_TAG_subprogram ] [line 0] [local] [def]
!2193 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1220, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2194 = metadata !{metadata !2195}
!2195 = metadata !{i32 786484, i32 0, metadata !430, metadata !"__ioinit", metadata !"__ioinit", metadata !"_ZStL8__ioinit", metadata !2128, i32 74, metadata !"_ZTSNSt8ios_base4InitE", i32 1, i32 1, %"class.std::ios_base::Init"* @_ZStL8__ioinit, null} ; [ DW_TAG_variable ] [__ioinit] [line 74] [local] [def]
!2196 = metadata !{metadata !2197, metadata !2201, metadata !2203, metadata !2205, metadata !2207, metadata !2208, metadata !2209, metadata !2211, metadata !2214, metadata !2216, metadata !2217, metadata !2224, metadata !2227, metadata !2228, metadata !2229, metadata !2230, metadata !2232, metadata !2233, metadata !2234, metadata !2236, metadata !2237, metadata !2238}
!2197 = metadata !{i32 786490, metadata !2198, metadata !2200, i32 56} ; [ DW_TAG_imported_module ]
!2198 = metadata !{i32 786489, metadata !2199, null, metadata !"__gnu_debug", i32 54} ; [ DW_TAG_namespace ] [__gnu_debug] [line 54]
!2199 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/debug/debug.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2200 = metadata !{i32 786489, metadata !2199, metadata !430, metadata !"__debug", i32 48} ; [ DW_TAG_namespace ] [__debug] [line 48]
!2201 = metadata !{i32 786440, metadata !430, metadata !2202, i32 118} ; [ DW_TAG_imported_declaration ]
!2202 = metadata !{i32 786454, metadata !413, null, metadata !"div_t", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS5div_t"} ; [ DW_TAG_typedef ] [div_t] [line 101, size 0, align 0, offset 0] [from _ZTS5div_t]
!2203 = metadata !{i32 786440, metadata !430, metadata !2204, i32 119} ; [ DW_TAG_imported_declaration ]
!2204 = metadata !{i32 786454, metadata !413, null, metadata !"ldiv_t", i32 109, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS6ldiv_t"} ; [ DW_TAG_typedef ] [ldiv_t] [line 109, size 0, align 0, offset 0] [from _ZTS6ldiv_t]
!2205 = metadata !{i32 786440, metadata !1986, metadata !2206, i32 201} ; [ DW_TAG_imported_declaration ]
!2206 = metadata !{i32 786454, metadata !413, null, metadata !"lldiv_t", i32 121, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS7lldiv_t"} ; [ DW_TAG_typedef ] [lldiv_t] [line 121, size 0, align 0, offset 0] [from _ZTS7lldiv_t]
!2207 = metadata !{i32 786440, metadata !430, metadata !2206, i32 241} ; [ DW_TAG_imported_declaration ]
!2208 = metadata !{i32 786440, metadata !1986, metadata !1839, i32 44} ; [ DW_TAG_imported_declaration ]
!2209 = metadata !{i32 786440, metadata !1986, metadata !2210, i32 45} ; [ DW_TAG_imported_declaration ]
!2210 = metadata !{i32 786454, metadata !431, metadata !430, metadata !"ptrdiff_t", i32 189, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 189, size 0, align 0, offset 0] [from int]
!2211 = metadata !{i32 786440, metadata !430, metadata !2212, i32 64} ; [ DW_TAG_imported_declaration ]
!2212 = metadata !{i32 786454, metadata !425, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !2213} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!2213 = metadata !{i32 786454, metadata !425, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from _ZTS11__mbstate_t]
!2214 = metadata !{i32 786440, metadata !430, metadata !2215, i32 139} ; [ DW_TAG_imported_declaration ]
!2215 = metadata !{i32 786454, metadata !494, null, metadata !"wint_t", i32 353, i64 0, i64 0, i64 0, i32 0, metadata !495} ; [ DW_TAG_typedef ] [wint_t] [line 353, size 0, align 0, offset 0] [from unsigned int]
!2216 = metadata !{i32 786440, metadata !430, metadata !"_ZTS5lconv", i32 53} ; [ DW_TAG_imported_declaration ]
!2217 = metadata !{i32 786440, metadata !430, metadata !2218, i32 82} ; [ DW_TAG_imported_declaration ]
!2218 = metadata !{i32 786454, metadata !2219, null, metadata !"wctrans_t", i32 186, i64 0, i64 0, i64 0, i32 0, metadata !2220} ; [ DW_TAG_typedef ] [wctrans_t] [line 186, size 0, align 0, offset 0] [from ]
!2219 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/wctype.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2220 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2221} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2221 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2222} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from __int32_t]
!2222 = metadata !{i32 786454, metadata !2223, null, metadata !"__int32_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [__int32_t] [line 40, size 0, align 0, offset 0] [from int]
!2223 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/types.h", metadata !"/home/vgr16/nfshome/face_with_corner/SDRelease"}
!2224 = metadata !{i32 786440, metadata !430, metadata !2225, i32 83} ; [ DW_TAG_imported_declaration ]
!2225 = metadata !{i32 786454, metadata !2219, null, metadata !"wctype_t", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !2226} ; [ DW_TAG_typedef ] [wctype_t] [line 52, size 0, align 0, offset 0] [from long unsigned int]
!2226 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!2227 = metadata !{i32 786440, metadata !430, metadata !2215, i32 84} ; [ DW_TAG_imported_declaration ]
!2228 = metadata !{i32 786440, metadata !198, metadata !461, i32 78} ; [ DW_TAG_imported_declaration ]
!2229 = metadata !{i32 786440, metadata !198, metadata !2210, i32 79} ; [ DW_TAG_imported_declaration ]
!2230 = metadata !{i32 786440, metadata !2231, metadata !"_ZTSN2cv8FileNodeE", i32 645} ; [ DW_TAG_imported_declaration ]
!2231 = metadata !{i32 786489, metadata !392, metadata !198, metadata !"linemod", i32 643} ; [ DW_TAG_namespace ] [linemod] [line 643]
!2232 = metadata !{i32 786440, metadata !2231, metadata !"_ZTSN2cv11FileStorageE", i32 646} ; [ DW_TAG_imported_declaration ]
!2233 = metadata !{i32 786440, metadata !2231, metadata !"_ZTSN2cv3MatE", i32 647} ; [ DW_TAG_imported_declaration ]
!2234 = metadata !{i32 786440, metadata !2231, metadata !2235, i32 649} ; [ DW_TAG_imported_declaration ]
!2235 = metadata !{i32 786454, metadata !199, metadata !198, metadata !"OutputArrayOfArrays", i32 1442, i64 0, i64 0, i64 0, i32 0, metadata !773} ; [ DW_TAG_typedef ] [OutputArrayOfArrays] [line 1442, size 0, align 0, offset 0] [from OutputArray]
!2236 = metadata !{i32 786440, metadata !2231, metadata !913, i32 650} ; [ DW_TAG_imported_declaration ]
!2237 = metadata !{i32 786440, metadata !2231, metadata !712, i32 652} ; [ DW_TAG_imported_declaration ]
!2238 = metadata !{i32 786440, metadata !2231, metadata !667, i32 653} ; [ DW_TAG_imported_declaration ]
!2239 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitC1Ev}
!2240 = metadata !{metadata !"void."}
!2241 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev}
!2242 = metadata !{void (%"class.cv::Mat"*, %"class.cv::Mat"*)* @_Z16ocvSwPassthroughPN2cv3MatES1_}
!2243 = metadata !{metadata !"void.cv::Mat *.1.cv::Mat *.1"}
!2244 = metadata !{void (%"class.cv::Mat"*, %"class.cv::_OutputArray"*)* @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE}
!2245 = metadata !{metadata !"void.OutputArray.0"}
!2246 = metadata !{%"class.cv::_OutputArray"* (%"class.cv::_OutputArray"*, %"class.cv::Mat"*)* @_ZN2cv12_OutputArrayC1ERNS_3MatE}
!2247 = metadata !{metadata !"void.class cv::Mat &.0"}
!2248 = metadata !{void (%"class.cv::Mat"*, %"class.cv::Mat"*)* @_Z14ocvSwColorGreyPN2cv3MatES1_}
!2249 = metadata !{%"class.cv::Mat"* (%"class.cv::Mat"*)* @_ZN2cv3MatC2Ev}
!2250 = metadata !{void (%"class.cv::_InputArray"*, %"class.cv::_OutputArray"*, i32, i32)* @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEii}
!2251 = metadata !{metadata !"void.InputArray.0.OutputArray.0.int.0.int.0"}
!2252 = metadata !{%"class.cv::_InputArray"* (%"class.cv::_InputArray"*, %"class.cv::Mat"*)* @_ZN2cv11_InputArrayC1ERKNS_3MatE}
!2253 = metadata !{metadata !"void.const class cv::Mat &.0"}
!2254 = metadata !{%"class.cv::Mat"* (%"class.cv::Mat"*)* @_ZN2cv3MatD2Ev}
!2255 = metadata !{i32 (%"class.cv::Mat"*, %"class.cv::Mat"*)* @_Z15ocvSwFastCornerPN2cv3MatES1_}
!2256 = metadata !{metadata !"u_int32_t.cv::Mat *.1.cv::Mat *.1"}
!2257 = metadata !{%"class.std::vector"* (%"class.std::vector"*)* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEC2Ev}
!2258 = metadata !{void (%"class.cv::_InputArray"*, %"class.cv::_OutputArray"*)* @_ZN2cv12equalizeHistERKNS_11_InputArrayERKNS_12_OutputArrayE}
!2259 = metadata !{metadata !"void.InputArray.0.OutputArray.0"}
!2260 = metadata !{%"class.cv::CascadeClassifier"* (%"class.cv::CascadeClassifier"*)* @_ZN2cv17CascadeClassifierC1Ev}
!2261 = metadata !{i1 (%"class.cv::CascadeClassifier"*, %"class.std::basic_string"*)* @_ZN2cv17CascadeClassifier4loadERKSs}
!2262 = metadata !{metadata !"_Bool.const string &.0"}
!2263 = metadata !{%"class.std::allocator.27"* (%"class.std::allocator.27"*)* @_ZNSaIcEC1Ev}
!2264 = metadata !{%"class.std::basic_string"* (%"class.std::basic_string"*, i8*, %"class.std::allocator.27"*)* @_ZNSsC1EPKcRKSaIcE}
!2265 = metadata !{metadata !"void.const char *.1.const class std::allocator<char> &.0"}
!2266 = metadata !{%"class.std::basic_string"* (%"class.std::basic_string"*)* @_ZNSsD1Ev}
!2267 = metadata !{%"class.std::allocator.27"* (%"class.std::allocator.27"*)* @_ZNSaIcED1Ev}
!2268 = metadata !{void (%"class.cv::CascadeClassifier"*, %"class.cv::Mat"*, %"class.std::vector"*, double, i32, i32, %"class.cv::Size_"*, %"class.cv::Size_"*)* @_ZN2cv17CascadeClassifier16detectMultiScaleERKNS_3MatERSt6vectorINS_5Rect_IiEESaIS6_EEdiiNS_5Size_IiEESB_}
!2269 = metadata !{metadata !"void.const class cv::Mat &.0.vector<Rect> &.0.double.0.int.0.int.0.Size.0.Size.0"}
!2270 = metadata !{%"class.cv::Size_"* (%"class.cv::Size_"*, i32, i32)* @_ZN2cv5Size_IiEC2Eii}
!2271 = metadata !{metadata !"void.int.0.int.0"}
!2272 = metadata !{%"class.cv::Size_"* (%"class.cv::Size_"*)* @_ZN2cv5Size_IiEC2Ev}
!2273 = metadata !{i32 (%"class.std::vector"*)* @_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE4sizeEv}
!2274 = metadata !{metadata !"size_type."}
!2275 = metadata !{%"class.cv::Rect_"* (%"class.std::vector"*, i32)* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EEixEj}
!2276 = metadata !{metadata !"reference.size_type.0"}
!2277 = metadata !{%"class.cv::Point_"* (%"class.cv::Point_"*, i32, i32)* @_ZN2cv6Point_IiEC2Eii}
!2278 = metadata !{void (%"class.cv::Mat"*, %"class.cv::Point_"*, %"class.cv::Size_"*, double, double, double, %"class.cv::Scalar_"*, i32, i32, i32)* @_ZN2cv7ellipseERNS_3MatENS_6Point_IiEENS_5Size_IiEEdddRKNS_7Scalar_IdEEiii}
!2279 = metadata !{metadata !"void.class cv::Mat &.0.Point.0.Size.0.double.0.double.0.double.0.const Scalar &.0.int.0.int.0.int.0"}
!2280 = metadata !{%"class.cv::Point_"* (%"class.cv::Point_"*, %"class.cv::Point_"*)* @_ZN2cv6Point_IiEC2ERKS1_}
!2281 = metadata !{metadata !"void.const class cv::Point_<int> &.0"}
!2282 = metadata !{%"class.cv::Scalar_"* (%"class.cv::Scalar_"*, double, double, double, double)* @_ZN2cv7Scalar_IdEC2Edddd}
!2283 = metadata !{metadata !"void.double.0.double.0.double.0.double.0"}
!2284 = metadata !{%"class.cv::CascadeClassifier"* (%"class.cv::CascadeClassifier"*)* @_ZN2cv17CascadeClassifierD1Ev}
!2285 = metadata !{%"class.std::vector"* (%"class.std::vector"*)* @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev}
!2286 = metadata !{i32 (i16*, i32, i32, i32, %"class.cv::Mat"*)* @_Z10ocvFbToMatPtiijPN2cv3MatE}
!2287 = metadata !{metadata !"int32_t.u_int16_t *.1.int32_t.0.int32_t.0.u_int32_t.0.cv::Mat *.1"}
!2288 = metadata !{i32 (%"class.cv::Mat"*)* @_ZNK2cv3Mat8channelsEv}
!2289 = metadata !{metadata !"int."}
!2290 = metadata !{i32 (i16*, i32, i32, i32, %"class.cv::Mat"*)* @_Z10ocvMatToFbPtiijPN2cv3MatE}
!2291 = metadata !{%"class.cv::Vec"* (%"class.cv::Vec"*)* @_ZN2cv3VecIdLi4EEC2Ev}
!2292 = metadata !{%"class.cv::Matx"* (%"class.cv::Matx"*)* @_ZN2cv4MatxIdLi4ELi1EEC2Ev}
!2293 = metadata !{void (%"class.cv::Rect_"*, %"class.cv::Rect_"*, %"class.std::allocator"*)* @_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E}
!2294 = metadata !{metadata !"void.class cv::Rect_<int> *.1.class cv::Rect_<int> *.1.allocator<class cv::Rect_<int> > &.0"}
!2295 = metadata !{%"class.std::allocator"* (%"struct.std::_Vector_base"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE19_M_get_Tp_allocatorEv}
!2296 = metadata !{metadata !"_Tp_alloc_type ."}
!2297 = metadata !{%"struct.std::_Vector_base"* (%"struct.std::_Vector_base"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EED2Ev}
!2298 = metadata !{void (%"struct.std::_Vector_base"*, %"class.cv::Rect_"*, i32)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE13_M_deallocateEPS2_j}
!2299 = metadata !{metadata !"void.pointer.1.size_t.0"}
!2300 = metadata !{%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* (%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implD2Ev}
!2301 = metadata !{%"class.std::allocator"* (%"class.std::allocator"*)* @_ZNSaIN2cv5Rect_IiEEED2Ev}
!2302 = metadata !{%"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEED2Ev}
!2303 = metadata !{void (%"class.std::allocator"*, %"class.cv::Rect_"*, i32)* @_ZN9__gnu_cxx14__alloc_traitsISaIN2cv5Rect_IiEEEE10deallocateERS4_PS3_j}
!2304 = metadata !{metadata !"void.class std::allocator<class cv::Rect_<int> > &.0.pointer.1.size_type.0"}
!2305 = metadata !{void (%"class.__gnu_cxx::new_allocator"*, %"class.cv::Rect_"*, i32)* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEE10deallocateEPS3_j}
!2306 = metadata !{metadata !"void.pointer.1.size_type.0"}
!2307 = metadata !{void (i8*)* @_ZdlPv}
!2308 = metadata !{metadata !"void.void *.1"}
!2309 = metadata !{void (%"class.cv::Rect_"*, %"class.cv::Rect_"*)* @_ZSt8_DestroyIPN2cv5Rect_IiEEEvT_S4_}
!2310 = metadata !{metadata !"void.class cv::Rect_<int> *.1.class cv::Rect_<int> *.1"}
!2311 = metadata !{void (%"class.cv::Rect_"*, %"class.cv::Rect_"*)* @_ZNSt12_Destroy_auxILb1EE9__destroyIPN2cv5Rect_IiEEEEvT_S6_}
!2312 = metadata !{%"struct.std::_Vector_base"* (%"struct.std::_Vector_base"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EEC2Ev}
!2313 = metadata !{%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"* (%"struct.std::_Vector_base<cv::Rect_<int>, std::allocator<cv::Rect_<int> > >::_Vector_impl"*)* @_ZNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implC2Ev}
!2314 = metadata !{%"class.std::allocator"* (%"class.std::allocator"*)* @_ZNSaIN2cv5Rect_IiEEEC2Ev}
!2315 = metadata !{%"class.__gnu_cxx::new_allocator"* (%"class.__gnu_cxx::new_allocator"*)* @_ZN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEC2Ev}
!2316 = metadata !{void (%"class.cv::Mat"*)* @_ZN2cv3Mat7releaseEv}
!2317 = metadata !{void (i8*)* @_ZN2cv8fastFreeEPv}
!2318 = metadata !{void (%"class.cv::Mat"*)* @_ZN2cv3Mat10deallocateEv}
!2319 = metadata !{%"struct.cv::Mat::MSize"* (%"struct.cv::Mat::MSize"*, i32*)* @_ZN2cv3Mat5MSizeC2EPi}
!2320 = metadata !{metadata !"void.int *.1"}
!2321 = metadata !{%"struct.cv::Mat::MStep"* (%"struct.cv::Mat::MStep"*)* @_ZN2cv3Mat5MStepC2Ev}
!2322 = metadata !{void (%"class.cv::Mat"*)* @_ZN2cv3Mat9initEmptyEv}
!2323 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/ios_base.h"}
!2324 = metadata !{metadata !"/home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.h"}
!2325 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/core.hpp"}
!2326 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/imgproc/imgproc.hpp"}
!2327 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h"}
!2328 = metadata !{metadata !"/home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/objdetect/objdetect.hpp"}
!2329 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/allocator.h"}
!2330 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/basic_string.h"}
!2331 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_construct.h"}
!2332 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h"}
!2333 = metadata !{metadata !"/usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/alloc_traits.h"}
!2334 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!2335 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!2336 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!2337 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!2338 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!2339 = metadata !{i32 74, i32 25, metadata !2126, null}
!2340 = metadata !{i32 786689, metadata !2131, metadata !"src", metadata !2132, i32 16777240, metadata !2135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 24]
!2341 = metadata !{i32 24, i32 32, metadata !2131, null}
!2342 = metadata !{i32 786689, metadata !2131, metadata !"dst", metadata !2132, i32 33554456, metadata !2135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 24]
!2343 = metadata !{i32 24, i32 46, metadata !2131, null}
!2344 = metadata !{i32 26, i32 2, metadata !2131, null}
!2345 = metadata !{i32 27, i32 1, metadata !2131, null}
!2346 = metadata !{i32 786689, metadata !2136, metadata !"src", metadata !2132, i32 16777245, metadata !2135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 29]
!2347 = metadata !{i32 29, i32 30, metadata !2136, null}
!2348 = metadata !{i32 786689, metadata !2136, metadata !"dst", metadata !2132, i32 33554461, metadata !2135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 29]
!2349 = metadata !{i32 29, i32 44, metadata !2136, null}
!2350 = metadata !{i32 786688, metadata !2136, metadata !"tmpgrey", metadata !2132, i32 31, metadata !"_ZTSN2cv3MatE", i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmpgrey] [line 31]
!2351 = metadata !{i32 31, i32 10, metadata !2136, null}
!2352 = metadata !{i32 31, i32 2, metadata !2136, null}
!2353 = metadata !{i32 32, i32 2, metadata !2136, null}
!2354 = metadata !{i32 32, i32 2, metadata !2355, null}
!2355 = metadata !{i32 786443, metadata !1, metadata !2136, i32 32, i32 2, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2356 = metadata !{i32 32, i32 2, metadata !2357, null}
!2357 = metadata !{i32 786443, metadata !1, metadata !2136, i32 32, i32 2, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2358 = metadata !{i32 33, i32 2, metadata !2136, null}
!2359 = metadata !{i32 33, i32 2, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !1, metadata !2136, i32 33, i32 2, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2361 = metadata !{i32 33, i32 2, metadata !2362, null}
!2362 = metadata !{i32 786443, metadata !1, metadata !2136, i32 33, i32 2, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2363 = metadata !{i32 34, i32 1, metadata !2136, null}
!2364 = metadata !{i32 34, i32 1, metadata !2365, null}
!2365 = metadata !{i32 786443, metadata !1, metadata !2136, i32 34, i32 1, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2366 = metadata !{i32 34, i32 1, metadata !2367, null}
!2367 = metadata !{i32 786443, metadata !1, metadata !2136, i32 34, i32 1, i32 3, i32 45} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2368 = metadata !{i32 34, i32 1, metadata !2369, null}
!2369 = metadata !{i32 786443, metadata !1, metadata !2136, i32 34, i32 1, i32 2, i32 44} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2370 = metadata !{i32 786689, metadata !2188, metadata !"this", null, i32 16777216, metadata !2135, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2371 = metadata !{i32 0, i32 0, metadata !2188, null}
!2372 = metadata !{i32 68, i32 1, metadata !2188, null}
!2373 = metadata !{i32 69, i32 5, metadata !2374, null}
!2374 = metadata !{i32 786443, metadata !802, metadata !2188, i32 68, i32 1, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp]
!2375 = metadata !{i32 70, i32 1, metadata !2188, null}
!2376 = metadata !{i32 786689, metadata !2186, metadata !"this", null, i32 16777216, metadata !2135, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2377 = metadata !{i32 0, i32 0, metadata !2186, null}
!2378 = metadata !{i32 276, i32 5, metadata !2379, null}
!2379 = metadata !{i32 786443, metadata !802, metadata !2186, i32 275, i32 1, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp]
!2380 = metadata !{i32 277, i32 9, metadata !2381, null}
!2381 = metadata !{i32 786443, metadata !802, metadata !2379, i32 277, i32 9, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp]
!2382 = metadata !{i32 278, i32 9, metadata !2381, null}
!2383 = metadata !{i32 279, i32 1, metadata !2186, null}
!2384 = metadata !{i32 786689, metadata !2137, metadata !"src", metadata !2132, i32 16777252, metadata !2135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 36]
!2385 = metadata !{i32 36, i32 36, metadata !2137, null}
!2386 = metadata !{i32 786689, metadata !2137, metadata !"dst", metadata !2132, i32 33554468, metadata !2135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 36]
!2387 = metadata !{i32 36, i32 50, metadata !2137, null}
!2388 = metadata !{i32 40, i32 3, metadata !2137, null}
!2389 = metadata !{i32 786688, metadata !2137, metadata !"faces", metadata !2132, i32 41, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE", i32 0, i32 0} ; [ DW_TAG_auto_variable ] [faces] [line 41]
!2390 = metadata !{i32 41, i32 24, metadata !2137, null}
!2391 = metadata !{i32 41, i32 2, metadata !2137, null}
!2392 = metadata !{i32 786688, metadata !2137, metadata !"frame_gray", metadata !2132, i32 43, metadata !"_ZTSN2cv3MatE", i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frame_gray] [line 43]
!2393 = metadata !{i32 43, i32 10, metadata !2137, null}
!2394 = metadata !{i32 46, i32 2, metadata !2137, null}
!2395 = metadata !{i32 46, i32 2, metadata !2396, null}
!2396 = metadata !{i32 786443, metadata !1, metadata !2137, i32 46, i32 2, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2397 = metadata !{i32 46, i32 2, metadata !2398, null}
!2398 = metadata !{i32 786443, metadata !1, metadata !2137, i32 46, i32 2, i32 2, i32 47} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2399 = metadata !{i32 49, i32 2, metadata !2137, null}
!2400 = metadata !{i32 49, i32 2, metadata !2401, null}
!2401 = metadata !{i32 786443, metadata !1, metadata !2137, i32 49, i32 2, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2402 = metadata !{i32 49, i32 2, metadata !2403, null}
!2403 = metadata !{i32 786443, metadata !1, metadata !2137, i32 49, i32 2, i32 2, i32 49} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2404 = metadata !{i32 786688, metadata !2137, metadata !"face_cascade", metadata !2132, i32 50, metadata !"_ZTSN2cv17CascadeClassifierE", i32 0, i32 0} ; [ DW_TAG_auto_variable ] [face_cascade] [line 50]
!2405 = metadata !{i32 50, i32 24, metadata !2137, null}
!2406 = metadata !{i32 50, i32 2, metadata !2137, null}
!2407 = metadata !{i32 53, i32 2, metadata !2137, null}
!2408 = metadata !{i32 53, i32 2, metadata !2409, null}
!2409 = metadata !{i32 786443, metadata !1, metadata !2137, i32 53, i32 2, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2410 = metadata !{i32 53, i32 2, metadata !2411, null}
!2411 = metadata !{i32 786443, metadata !1, metadata !2137, i32 53, i32 2, i32 2, i32 51} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2412 = metadata !{i32 53, i32 2, metadata !2413, null}
!2413 = metadata !{i32 786443, metadata !1, metadata !2137, i32 53, i32 2, i32 3, i32 52} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2414 = metadata !{i32 54, i32 2, metadata !2137, null}
!2415 = metadata !{i32 54, i32 2, metadata !2416, null}
!2416 = metadata !{i32 786443, metadata !1, metadata !2137, i32 54, i32 2, i32 1, i32 53} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2417 = metadata !{i32 54, i32 2, metadata !2418, null}
!2418 = metadata !{i32 786443, metadata !1, metadata !2137, i32 54, i32 2, i32 2, i32 54} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2419 = metadata !{i32 786688, metadata !2420, metadata !"i", metadata !2132, i32 58, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 58]
!2420 = metadata !{i32 786443, metadata !1, metadata !2137, i32 58, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2421 = metadata !{i32 58, i32 14, metadata !2420, null} ; [ DW_TAG_imported_module ]
!2422 = metadata !{i32 58, i32 7, metadata !2420, null} ; [ DW_TAG_imported_module ]
!2423 = metadata !{i32 58, i32 7, metadata !2424, null} ; [ DW_TAG_imported_module ]
!2424 = metadata !{i32 786443, metadata !1, metadata !2425, i32 58, i32 7, i32 3, i32 66} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2425 = metadata !{i32 786443, metadata !1, metadata !2420, i32 58, i32 7, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2426 = metadata !{i32 58, i32 25, metadata !2420, null} ; [ DW_TAG_imported_module ]
!2427 = metadata !{i32 58, i32 25, metadata !2428, null} ; [ DW_TAG_imported_module ]
!2428 = metadata !{i32 786443, metadata !1, metadata !2420, i32 58, i32 25, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2429 = metadata !{i32 786688, metadata !2430, metadata !"center", metadata !2132, i32 61, metadata !913, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [center] [line 61]
!2430 = metadata !{i32 786443, metadata !1, metadata !2420, i32 58, i32 44, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2431 = metadata !{i32 61, i32 13, metadata !2430, null}
!2432 = metadata !{i32 61, i32 20, metadata !2430, null}
!2433 = metadata !{i32 61, i32 20, metadata !2434, null}
!2434 = metadata !{i32 786443, metadata !1, metadata !2430, i32 61, i32 20, i32 1, i32 57} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2435 = metadata !{i32 61, i32 33, metadata !2430, null}
!2436 = metadata !{i32 61, i32 33, metadata !2437, null}
!2437 = metadata !{i32 786443, metadata !1, metadata !2430, i32 61, i32 33, i32 2, i32 58} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2438 = metadata !{i32 61, i32 53, metadata !2430, null}
!2439 = metadata !{i32 61, i32 53, metadata !2440, null}
!2440 = metadata !{i32 786443, metadata !1, metadata !2430, i32 61, i32 53, i32 3, i32 59} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2441 = metadata !{i32 61, i32 66, metadata !2430, null}
!2442 = metadata !{i32 61, i32 66, metadata !2443, null}
!2443 = metadata !{i32 786443, metadata !1, metadata !2430, i32 61, i32 66, i32 4, i32 60} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2444 = metadata !{i32 64, i32 3, metadata !2430, null}
!2445 = metadata !{i32 64, i32 38, metadata !2446, null}
!2446 = metadata !{i32 786443, metadata !1, metadata !2430, i32 64, i32 38, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2447 = metadata !{i32 64, i32 38, metadata !2448, null}
!2448 = metadata !{i32 786443, metadata !1, metadata !2430, i32 64, i32 38, i32 2, i32 62} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2449 = metadata !{i32 64, i32 58, metadata !2430, null}
!2450 = metadata !{i32 64, i32 58, metadata !2451, null}
!2451 = metadata !{i32 786443, metadata !1, metadata !2430, i32 64, i32 58, i32 3, i32 63} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2452 = metadata !{i32 64, i32 3, metadata !2453, null}
!2453 = metadata !{i32 786443, metadata !1, metadata !2430, i32 64, i32 3, i32 4, i32 64} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2454 = metadata !{i32 64, i32 3, metadata !2455, null}
!2455 = metadata !{i32 786443, metadata !1, metadata !2430, i32 64, i32 3, i32 5, i32 65} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2456 = metadata !{i32 66, i32 2, metadata !2430, null}
!2457 = metadata !{i32 58, i32 39, metadata !2420, null} ; [ DW_TAG_imported_module ]
!2458 = metadata !{i32 93, i32 1, metadata !2137, null}
!2459 = metadata !{i32 93, i32 1, metadata !2460, null}
!2460 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 4, i32 70} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2461 = metadata !{i32 93, i32 1, metadata !2462, null}
!2462 = metadata !{i32 786443, metadata !1, metadata !2463, i32 93, i32 1, i32 6, i32 72} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2463 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 3, i32 69} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2464 = metadata !{i32 92, i32 2, metadata !2137, null}
!2465 = metadata !{i32 92, i32 2, metadata !2466, null}
!2466 = metadata !{i32 786443, metadata !1, metadata !2137, i32 92, i32 2, i32 1, i32 75} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2467 = metadata !{i32 93, i32 1, metadata !2468, null}
!2468 = metadata !{i32 786443, metadata !1, metadata !2469, i32 93, i32 1, i32 8, i32 74} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2469 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 7, i32 73} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2470 = metadata !{i32 93, i32 1, metadata !2471, null}
!2471 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 9, i32 77} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2472 = metadata !{i32 92, i32 2, metadata !2473, null}
!2473 = metadata !{i32 786443, metadata !1, metadata !2137, i32 92, i32 2, i32 2, i32 76} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2474 = metadata !{i32 93, i32 1, metadata !2475, null}
!2475 = metadata !{i32 786443, metadata !1, metadata !2476, i32 93, i32 1, i32 11, i32 79} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2476 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 2, i32 68} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2477 = metadata !{i32 93, i32 1, metadata !2478, null}
!2478 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 12, i32 80} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2479 = metadata !{i32 93, i32 1, metadata !2480, null}
!2480 = metadata !{i32 786443, metadata !1, metadata !2481, i32 93, i32 1, i32 14, i32 82} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2481 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 1, i32 67} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2482 = metadata !{i32 93, i32 1, metadata !2483, null}
!2483 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 15, i32 83} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2484 = metadata !{i32 93, i32 1, metadata !2485, null}
!2485 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 17, i32 85} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2486 = metadata !{i32 93, i32 1, metadata !2487, null}
!2487 = metadata !{i32 786443, metadata !1, metadata !2488, i32 93, i32 1, i32 16, i32 84} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2488 = metadata !{i32 786443, metadata !1, metadata !2489, i32 93, i32 1, i32 13, i32 81} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2489 = metadata !{i32 786443, metadata !1, metadata !2490, i32 93, i32 1, i32 10, i32 78} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2490 = metadata !{i32 786443, metadata !1, metadata !2137, i32 93, i32 1, i32 5, i32 71} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2491 = metadata !{i32 786689, metadata !2177, metadata !"this", null, i32 16777216, metadata !2492, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2492 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSt6vectorIN2cv5Rect_IiEESaIS2_EE]
!2493 = metadata !{i32 0, i32 0, metadata !2177, null}
!2494 = metadata !{i32 257, i32 17, metadata !2177, null}
!2495 = metadata !{i32 257, i32 19, metadata !2177, null}
!2496 = metadata !{i32 786689, metadata !2183, metadata !"this", null, i32 16777216, metadata !2497, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2497 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv5Size_IiEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv5Size_IiEE]
!2498 = metadata !{i32 0, i32 0, metadata !2183, null}
!2499 = metadata !{i32 786689, metadata !2183, metadata !"_width", metadata !2500, i32 33555249, metadata !472, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_width] [line 817]
!2500 = metadata !{i32 786473, metadata !199}     ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/core.hpp]
!2501 = metadata !{i32 817, i32 15, metadata !2183, null}
!2502 = metadata !{i32 786689, metadata !2183, metadata !"_height", metadata !2500, i32 50332465, metadata !472, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_height] [line 817]
!2503 = metadata !{i32 817, i32 27, metadata !2183, null}
!2504 = metadata !{i32 1858, i32 38, metadata !2183, null}
!2505 = metadata !{i32 1858, i32 39, metadata !2183, null}
!2506 = metadata !{i32 786689, metadata !2182, metadata !"this", null, i32 16777216, metadata !2497, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2507 = metadata !{i32 0, i32 0, metadata !2182, null}
!2508 = metadata !{i32 1856, i32 27, metadata !2182, null}
!2509 = metadata !{i32 1856, i32 28, metadata !2182, null}
!2510 = metadata !{i32 786689, metadata !2155, metadata !"this", null, i32 16777216, metadata !2511, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2511 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1847} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2512 = metadata !{i32 0, i32 0, metadata !2155, null}
!2513 = metadata !{i32 655, i32 9, metadata !2155, null}
!2514 = metadata !{i32 786689, metadata !2154, metadata !"this", null, i32 16777216, metadata !2492, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2515 = metadata !{i32 0, i32 0, metadata !2154, null}
!2516 = metadata !{i32 786689, metadata !2154, metadata !"__n", metadata !2517, i32 33555211, metadata !1838, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__n] [line 779]
!2517 = metadata !{i32 786473, metadata !1822}    ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2518 = metadata !{i32 779, i32 28, metadata !2154, null}
!2519 = metadata !{i32 780, i32 9, metadata !2154, null}
!2520 = metadata !{i32 786689, metadata !2153, metadata !"this", null, i32 16777216, metadata !2521, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2521 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv6Point_IiEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv6Point_IiEE]
!2522 = metadata !{i32 0, i32 0, metadata !2153, null}
!2523 = metadata !{i32 786689, metadata !2153, metadata !"_x", metadata !2500, i32 33555167, metadata !472, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_x] [line 735]
!2524 = metadata !{i32 735, i32 16, metadata !2153, null}
!2525 = metadata !{i32 786689, metadata !2153, metadata !"_y", metadata !2500, i32 50332383, metadata !472, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_y] [line 735]
!2526 = metadata !{i32 735, i32 24, metadata !2153, null}
!2527 = metadata !{i32 1619, i32 82, metadata !2153, null}
!2528 = metadata !{i32 1619, i32 83, metadata !2153, null}
!2529 = metadata !{i32 786689, metadata !2184, metadata !"this", null, i32 16777216, metadata !2521, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2530 = metadata !{i32 0, i32 0, metadata !2184, null}
!2531 = metadata !{i32 786689, metadata !2184, metadata !"pt", metadata !2500, i32 33555168, metadata !1074, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pt] [line 736]
!2532 = metadata !{i32 736, i32 26, metadata !2184, null}
!2533 = metadata !{i32 1620, i32 88, metadata !2184, null}
!2534 = metadata !{i32 1620, i32 89, metadata !2184, null}
!2535 = metadata !{i32 786689, metadata !2150, metadata !"this", null, i32 16777216, metadata !2536, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2536 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv7Scalar_IdEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv7Scalar_IdEE]
!2537 = metadata !{i32 0, i32 0, metadata !2150, null}
!2538 = metadata !{i32 786689, metadata !2150, metadata !"v0", metadata !2500, i32 33555371, metadata !504, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v0] [line 939]
!2539 = metadata !{i32 939, i32 17, metadata !2150, null}
!2540 = metadata !{i32 786689, metadata !2150, metadata !"v1", metadata !2500, i32 50332587, metadata !504, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 939]
!2541 = metadata !{i32 939, i32 25, metadata !2150, null}
!2542 = metadata !{i32 786689, metadata !2150, metadata !"v2", metadata !2500, i32 67109803, metadata !504, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 939]
!2543 = metadata !{i32 939, i32 33, metadata !2150, null}
!2544 = metadata !{i32 786689, metadata !2150, metadata !"v3", metadata !2500, i32 83887019, metadata !504, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v3] [line 939]
!2545 = metadata !{i32 939, i32 43, metadata !2150, null}
!2546 = metadata !{i32 2017, i32 1, metadata !2150, null}
!2547 = metadata !{i32 2017, i32 3, metadata !2548, null}
!2548 = metadata !{i32 786443, metadata !1564, metadata !2150, i32 2017, i32 1, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp]
!2549 = metadata !{i32 2017, i32 22, metadata !2548, null}
!2550 = metadata !{i32 2017, i32 41, metadata !2548, null}
!2551 = metadata !{i32 2017, i32 60, metadata !2548, null}
!2552 = metadata !{i32 2017, i32 79, metadata !2150, null}
!2553 = metadata !{i32 786689, metadata !2156, metadata !"this", null, i32 16777216, metadata !2492, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2554 = metadata !{i32 0, i32 0, metadata !2156, null}
!2555 = metadata !{i32 424, i32 9, metadata !2556, null}
!2556 = metadata !{i32 786443, metadata !1822, metadata !2156, i32 424, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2557 = metadata !{i32 425, i32 9, metadata !2556, null}
!2558 = metadata !{i32 425, i32 33, metadata !2556, null}
!2559 = metadata !{i32 425, i32 33, metadata !2156, null}
!2560 = metadata !{i32 425, i32 33, metadata !2561, null}
!2561 = metadata !{i32 786443, metadata !1822, metadata !2556, i32 425, i32 33, i32 1, i32 86} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2562 = metadata !{i32 425, i32 33, metadata !2563, null}
!2563 = metadata !{i32 786443, metadata !1822, metadata !2156, i32 425, i32 33, i32 2, i32 87} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2564 = metadata !{i32 425, i32 33, metadata !2565, null}
!2565 = metadata !{i32 786443, metadata !1822, metadata !2156, i32 425, i32 33, i32 4, i32 89} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2566 = metadata !{i32 425, i32 33, metadata !2567, null}
!2567 = metadata !{i32 786443, metadata !1822, metadata !2156, i32 425, i32 33, i32 3, i32 88} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2568 = metadata !{i32 786689, metadata !2142, metadata !"frameBufferIn", metadata !2132, i32 16777311, metadata !2146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frameBufferIn] [line 95]
!2569 = metadata !{i32 95, i32 31, metadata !2142, null}
!2570 = metadata !{i32 786689, metadata !2142, metadata !"fBHeight", metadata !2132, i32 33554527, metadata !2145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fBHeight] [line 95]
!2571 = metadata !{i32 95, i32 54, metadata !2142, null}
!2572 = metadata !{i32 786689, metadata !2142, metadata !"fBWidth", metadata !2132, i32 50331743, metadata !2145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fBWidth] [line 95]
!2573 = metadata !{i32 95, i32 72, metadata !2142, null}
!2574 = metadata !{i32 786689, metadata !2142, metadata !"stridePxl", metadata !2132, i32 67108959, metadata !2140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stridePxl] [line 95]
!2575 = metadata !{i32 95, i32 90, metadata !2142, null}
!2576 = metadata !{i32 786689, metadata !2142, metadata !"dst", metadata !2132, i32 83886175, metadata !2135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 95]
!2577 = metadata !{i32 95, i32 110, metadata !2142, null}
!2578 = metadata !{i32 98, i32 5, metadata !2579, null}
!2579 = metadata !{i32 786443, metadata !1, metadata !2142, i32 98, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2580 = metadata !{i32 98, i32 5, metadata !2581, null}
!2581 = metadata !{i32 786443, metadata !1, metadata !2579, i32 98, i32 5, i32 1, i32 90} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2582 = metadata !{i32 98, i32 55, metadata !2583, null}
!2583 = metadata !{i32 786443, metadata !1, metadata !2579, i32 98, i32 55, i32 2, i32 91} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2584 = metadata !{i32 100, i32 3, metadata !2585, null}
!2585 = metadata !{i32 786443, metadata !1, metadata !2579, i32 99, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2586 = metadata !{i32 786688, metadata !2142, metadata !"cn", metadata !2132, i32 102, metadata !2140, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cn] [line 102]
!2587 = metadata !{i32 102, i32 12, metadata !2142, null}
!2588 = metadata !{i32 102, i32 2, metadata !2142, null}
!2589 = metadata !{i32 786688, metadata !2590, metadata !"i", metadata !2132, i32 103, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 103]
!2590 = metadata !{i32 786443, metadata !1, metadata !2142, i32 103, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2591 = metadata !{i32 103, i32 10, metadata !2590, null}
!2592 = metadata !{i32 103, i32 6, metadata !2590, null}
!2593 = metadata !{i32 103, i32 6, metadata !2594, null}
!2594 = metadata !{i32 786443, metadata !1, metadata !2595, i32 103, i32 6, i32 2, i32 95} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2595 = metadata !{i32 786443, metadata !1, metadata !2590, i32 103, i32 6, i32 1, i32 92} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2596 = metadata !{i32 786688, metadata !2597, metadata !"j", metadata !2132, i32 105, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 105]
!2597 = metadata !{i32 786443, metadata !1, metadata !2598, i32 105, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2598 = metadata !{i32 786443, metadata !1, metadata !2590, i32 104, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2599 = metadata !{i32 105, i32 11, metadata !2597, null}
!2600 = metadata !{i32 105, i32 7, metadata !2597, null}
!2601 = metadata !{i32 105, i32 7, metadata !2602, null}
!2602 = metadata !{i32 786443, metadata !1, metadata !2603, i32 105, i32 7, i32 2, i32 94} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2603 = metadata !{i32 786443, metadata !1, metadata !2597, i32 105, i32 7, i32 1, i32 93} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2604 = metadata !{i32 107, i32 4, metadata !2605, null}
!2605 = metadata !{i32 786443, metadata !1, metadata !2597, i32 106, i32 3, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2606 = metadata !{i32 109, i32 4, metadata !2605, null}
!2607 = metadata !{i32 111, i32 4, metadata !2605, null}
!2608 = metadata !{i32 113, i32 3, metadata !2605, null}
!2609 = metadata !{i32 105, i32 34, metadata !2597, null}
!2610 = metadata !{i32 114, i32 2, metadata !2598, null}
!2611 = metadata !{i32 103, i32 33, metadata !2590, null}
!2612 = metadata !{i32 115, i32 2, metadata !2142, null}
!2613 = metadata !{i32 116, i32 1, metadata !2142, null}
!2614 = metadata !{i32 786689, metadata !2185, metadata !"this", null, i32 16777216, metadata !2615, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2615 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !690} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2616 = metadata !{i32 0, i32 0, metadata !2185, null}
!2617 = metadata !{i32 401, i32 36, metadata !2185, null}
!2618 = metadata !{i32 786689, metadata !2149, metadata !"frameBufferOut", metadata !2132, i32 16777334, metadata !2146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frameBufferOut] [line 118]
!2619 = metadata !{i32 118, i32 31, metadata !2149, null}
!2620 = metadata !{i32 786689, metadata !2149, metadata !"fBHeight", metadata !2132, i32 33554550, metadata !2145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fBHeight] [line 118]
!2621 = metadata !{i32 118, i32 55, metadata !2149, null}
!2622 = metadata !{i32 786689, metadata !2149, metadata !"fBWidth", metadata !2132, i32 50331766, metadata !2145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fBWidth] [line 118]
!2623 = metadata !{i32 118, i32 73, metadata !2149, null}
!2624 = metadata !{i32 786689, metadata !2149, metadata !"stridePxl", metadata !2132, i32 67108982, metadata !2140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stridePxl] [line 118]
!2625 = metadata !{i32 118, i32 92, metadata !2149, null}
!2626 = metadata !{i32 786689, metadata !2149, metadata !"src", metadata !2132, i32 83886198, metadata !2135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 118]
!2627 = metadata !{i32 118, i32 112, metadata !2149, null}
!2628 = metadata !{i32 121, i32 5, metadata !2629, null}
!2629 = metadata !{i32 786443, metadata !1, metadata !2149, i32 121, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2630 = metadata !{i32 121, i32 5, metadata !2631, null}
!2631 = metadata !{i32 786443, metadata !1, metadata !2629, i32 121, i32 5, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2632 = metadata !{i32 121, i32 55, metadata !2633, null}
!2633 = metadata !{i32 786443, metadata !1, metadata !2629, i32 121, i32 55, i32 2, i32 97} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2634 = metadata !{i32 123, i32 3, metadata !2635, null}
!2635 = metadata !{i32 786443, metadata !1, metadata !2629, i32 122, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2636 = metadata !{i32 786688, metadata !2149, metadata !"cn", metadata !2132, i32 125, metadata !2140, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cn] [line 125]
!2637 = metadata !{i32 125, i32 12, metadata !2149, null}
!2638 = metadata !{i32 125, i32 2, metadata !2149, null}
!2639 = metadata !{i32 786688, metadata !2640, metadata !"i", metadata !2132, i32 126, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 126]
!2640 = metadata !{i32 786443, metadata !1, metadata !2149, i32 126, i32 2, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2641 = metadata !{i32 126, i32 10, metadata !2640, null}
!2642 = metadata !{i32 126, i32 6, metadata !2640, null}
!2643 = metadata !{i32 126, i32 6, metadata !2644, null}
!2644 = metadata !{i32 786443, metadata !1, metadata !2645, i32 126, i32 6, i32 2, i32 101} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2645 = metadata !{i32 786443, metadata !1, metadata !2640, i32 126, i32 6, i32 1, i32 98} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2646 = metadata !{i32 786688, metadata !2647, metadata !"j", metadata !2132, i32 128, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 128]
!2647 = metadata !{i32 786443, metadata !1, metadata !2648, i32 128, i32 3, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2648 = metadata !{i32 786443, metadata !1, metadata !2640, i32 127, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2649 = metadata !{i32 128, i32 11, metadata !2647, null}
!2650 = metadata !{i32 128, i32 7, metadata !2647, null}
!2651 = metadata !{i32 128, i32 7, metadata !2652, null}
!2652 = metadata !{i32 786443, metadata !1, metadata !2653, i32 128, i32 7, i32 2, i32 100} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2653 = metadata !{i32 786443, metadata !1, metadata !2647, i32 128, i32 7, i32 1, i32 99} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2654 = metadata !{i32 130, i32 4, metadata !2655, null}
!2655 = metadata !{i32 786443, metadata !1, metadata !2647, i32 129, i32 3, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/nfshome/face_with_corner/src/cv/my_ocv_sw.cpp]
!2656 = metadata !{i32 134, i32 3, metadata !2655, null}
!2657 = metadata !{i32 128, i32 34, metadata !2647, null}
!2658 = metadata !{i32 135, i32 2, metadata !2648, null}
!2659 = metadata !{i32 126, i32 33, metadata !2640, null}
!2660 = metadata !{i32 136, i32 2, metadata !2149, null}
!2661 = metadata !{i32 137, i32 1, metadata !2149, null}
!2662 = metadata !{i32 786689, metadata !2151, metadata !"this", null, i32 16777216, metadata !2663, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2663 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv3VecIdLi4EEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv3VecIdLi4EEE]
!2664 = metadata !{i32 0, i32 0, metadata !2151, null}
!2665 = metadata !{i32 1136, i32 1, metadata !2151, null}
!2666 = metadata !{i32 1136, i32 2, metadata !2151, null}
!2667 = metadata !{i32 786689, metadata !2152, metadata !"this", null, i32 16777216, metadata !2668, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2668 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv4MatxIdLi4ELi1EEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv4MatxIdLi4ELi1EEE]
!2669 = metadata !{i32 0, i32 0, metadata !2152, null}
!2670 = metadata !{i32 786688, metadata !2671, metadata !"i", metadata !2673, i32 206, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 206]
!2671 = metadata !{i32 786443, metadata !1564, metadata !2672, i32 206, i32 5, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp]
!2672 = metadata !{i32 786443, metadata !1564, metadata !2152, i32 205, i32 1, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp]
!2673 = metadata !{i32 786473, metadata !1564}    ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp]
!2674 = metadata !{i32 206, i32 13, metadata !2671, null}
!2675 = metadata !{i32 206, i32 9, metadata !2671, null}
!2676 = metadata !{i32 206, i32 9, metadata !2677, null}
!2677 = metadata !{i32 786443, metadata !1564, metadata !2678, i32 206, i32 9, i32 4, i32 105} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp]
!2678 = metadata !{i32 786443, metadata !1564, metadata !2671, i32 206, i32 9, i32 1, i32 102} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp]
!2679 = metadata !{i32 206, i32 39, metadata !2680, null}
!2680 = metadata !{i32 786443, metadata !1564, metadata !2671, i32 206, i32 39, i32 2, i32 103} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp]
!2681 = metadata !{i32 206, i32 34, metadata !2682, null}
!2682 = metadata !{i32 786443, metadata !1564, metadata !2671, i32 206, i32 34, i32 3, i32 104} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/operations.hpp]
!2683 = metadata !{i32 207, i32 1, metadata !2152, null}
!2684 = metadata !{i32 786689, metadata !2166, metadata !"__first", metadata !2685, i32 16777364, metadata !1925, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 148]
!2685 = metadata !{i32 786473, metadata !2122}    ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_construct.h]
!2686 = metadata !{i32 148, i32 31, metadata !2166, null}
!2687 = metadata !{i32 786689, metadata !2166, metadata !"__last", metadata !2685, i32 33554580, metadata !1925, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 148]
!2688 = metadata !{i32 148, i32 57, metadata !2166, null}
!2689 = metadata !{i32 786689, metadata !2166, metadata !"", metadata !2685, i32 50331797, metadata !2095, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 149]
!2690 = metadata !{i32 149, i32 22, metadata !2166, null}
!2691 = metadata !{i32 151, i32 7, metadata !2166, null}
!2692 = metadata !{i32 152, i32 5, metadata !2166, null}
!2693 = metadata !{i32 786689, metadata !2165, metadata !"this", null, i32 16777216, metadata !2694, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2694 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE]
!2695 = metadata !{i32 0, i32 0, metadata !2165, null}
!2696 = metadata !{i32 114, i32 9, metadata !2165, null}
!2697 = metadata !{i32 786689, metadata !2157, metadata !"this", null, i32 16777216, metadata !2694, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2698 = metadata !{i32 0, i32 0, metadata !2157, null}
!2699 = metadata !{i32 160, i32 9, metadata !2700, null}
!2700 = metadata !{i32 786443, metadata !1822, metadata !2157, i32 160, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2701 = metadata !{i32 161, i32 36, metadata !2700, null}
!2702 = metadata !{i32 161, i32 36, metadata !2157, null}
!2703 = metadata !{i32 161, i32 36, metadata !2704, null}
!2704 = metadata !{i32 786443, metadata !1822, metadata !2157, i32 161, i32 36, i32 1, i32 106} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2705 = metadata !{i32 786689, metadata !2162, metadata !"this", null, i32 16777216, metadata !2694, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2706 = metadata !{i32 0, i32 0, metadata !2162, null}
!2707 = metadata !{i32 786689, metadata !2162, metadata !"__p", metadata !2517, i32 33554606, metadata !1922, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 174]
!2708 = metadata !{i32 174, i32 29, metadata !2162, null}
!2709 = metadata !{i32 786689, metadata !2162, metadata !"__n", metadata !2517, i32 50331822, metadata !1839, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__n] [line 174]
!2710 = metadata !{i32 174, i32 41, metadata !2162, null}
!2711 = metadata !{i32 177, i32 6, metadata !2712, null}
!2712 = metadata !{i32 786443, metadata !1822, metadata !2162, i32 177, i32 6, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2713 = metadata !{i32 178, i32 4, metadata !2712, null}
!2714 = metadata !{i32 179, i32 7, metadata !2162, null}
!2715 = metadata !{i32 786689, metadata !2158, metadata !"this", null, i32 16777216, metadata !2716, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2716 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSNSt12_Vector_baseIN2cv5Rect_IiEESaIS2_EE12_Vector_implE]
!2717 = metadata !{i32 0, i32 0, metadata !2158, null}
!2718 = metadata !{i32 79, i32 14, metadata !2719, null}
!2719 = metadata !{i32 786443, metadata !1822, metadata !2158, i32 79, i32 14, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/stl_vector.h]
!2720 = metadata !{i32 79, i32 14, metadata !2158, null}
!2721 = metadata !{i32 786689, metadata !2160, metadata !"this", null, i32 16777216, metadata !2722, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2722 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSSaIN2cv5Rect_IiEEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSSaIN2cv5Rect_IiEEE]
!2723 = metadata !{i32 0, i32 0, metadata !2160, null}
!2724 = metadata !{i32 121, i32 30, metadata !2725, null}
!2725 = metadata !{i32 786443, metadata !1898, metadata !2160, i32 121, i32 28, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/bits/allocator.h]
!2726 = metadata !{i32 121, i32 30, metadata !2160, null}
!2727 = metadata !{i32 786689, metadata !2161, metadata !"this", null, i32 16777216, metadata !2728, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2728 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN9__gnu_cxx13new_allocatorIN2cv5Rect_IiEEEE]
!2729 = metadata !{i32 0, i32 0, metadata !2161, null}
!2730 = metadata !{i32 86, i32 48, metadata !2161, null}
!2731 = metadata !{i32 786689, metadata !2163, metadata !"__a", metadata !2732, i32 16777400, metadata !2095, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__a] [line 184]
!2732 = metadata !{i32 786473, metadata !1896}    ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/alloc_traits.h]
!2733 = metadata !{i32 184, i32 36, metadata !2163, null}
!2734 = metadata !{i32 786689, metadata !2163, metadata !"__p", metadata !2732, i32 33554616, metadata !1923, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 184]
!2735 = metadata !{i32 184, i32 49, metadata !2163, null}
!2736 = metadata !{i32 786689, metadata !2163, metadata !"__n", metadata !2732, i32 50331832, metadata !2096, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__n] [line 184]
!2737 = metadata !{i32 184, i32 64, metadata !2163, null}
!2738 = metadata !{i32 185, i32 7, metadata !2163, null}
!2739 = metadata !{i32 185, i32 33, metadata !2163, null}
!2740 = metadata !{i32 786689, metadata !2164, metadata !"this", null, i32 16777216, metadata !2728, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2741 = metadata !{i32 0, i32 0, metadata !2164, null}
!2742 = metadata !{i32 786689, metadata !2164, metadata !"__p", metadata !2743, i32 33554541, metadata !2002, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__p] [line 109]
!2743 = metadata !{i32 786473, metadata !1985}    ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//usr/local/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.9.2/ext/new_allocator.h]
!2744 = metadata !{i32 109, i32 26, metadata !2164, null}
!2745 = metadata !{i32 786689, metadata !2164, metadata !"", metadata !2743, i32 50331757, metadata !2013, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 109]
!2746 = metadata !{i32 109, i32 40, metadata !2164, null}
!2747 = metadata !{i32 110, i32 9, metadata !2164, null}
!2748 = metadata !{i32 110, i32 33, metadata !2164, null}
!2749 = metadata !{i32 786689, metadata !2171, metadata !"__first", metadata !2685, i32 16777338, metadata !1925, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__first] [line 122]
!2750 = metadata !{i32 122, i32 31, metadata !2171, null}
!2751 = metadata !{i32 786689, metadata !2171, metadata !"__last", metadata !2685, i32 33554554, metadata !1925, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__last] [line 122]
!2752 = metadata !{i32 122, i32 57, metadata !2171, null}
!2753 = metadata !{i32 126, i32 7, metadata !2171, null}
!2754 = metadata !{i32 128, i32 5, metadata !2171, null}
!2755 = metadata !{i32 786689, metadata !2175, metadata !"", metadata !2685, i32 16777328, metadata !1925, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 112]
!2756 = metadata !{i32 112, i32 35, metadata !2175, null}
!2757 = metadata !{i32 786689, metadata !2175, metadata !"", metadata !2685, i32 33554544, metadata !1925, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line 112]
!2758 = metadata !{i32 112, i32 53, metadata !2175, null}
!2759 = metadata !{i32 112, i32 57, metadata !2175, null}
!2760 = metadata !{i32 786689, metadata !2178, metadata !"this", null, i32 16777216, metadata !2694, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2761 = metadata !{i32 0, i32 0, metadata !2178, null}
!2762 = metadata !{i32 125, i32 19, metadata !2178, null}
!2763 = metadata !{i32 125, i32 21, metadata !2178, null}
!2764 = metadata !{i32 786689, metadata !2179, metadata !"this", null, i32 16777216, metadata !2716, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2765 = metadata !{i32 0, i32 0, metadata !2179, null}
!2766 = metadata !{i32 88, i32 2, metadata !2179, null}
!2767 = metadata !{i32 88, i32 4, metadata !2179, null}
!2768 = metadata !{i32 786689, metadata !2180, metadata !"this", null, i32 16777216, metadata !2722, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2769 = metadata !{i32 0, i32 0, metadata !2180, null}
!2770 = metadata !{i32 113, i32 27, metadata !2180, null}
!2771 = metadata !{i32 113, i32 29, metadata !2180, null}
!2772 = metadata !{i32 786689, metadata !2181, metadata !"this", null, i32 16777216, metadata !2728, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2773 = metadata !{i32 0, i32 0, metadata !2181, null}
!2774 = metadata !{i32 79, i32 47, metadata !2181, null}
!2775 = metadata !{i32 786689, metadata !2187, metadata !"this", null, i32 16777216, metadata !2135, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2776 = metadata !{i32 0, i32 0, metadata !2187, null}
!2777 = metadata !{i32 366, i32 9, metadata !2778, null}
!2778 = metadata !{i32 786443, metadata !802, metadata !2187, i32 366, i32 9, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp]
!2779 = metadata !{i32 366, i32 9, metadata !2780, null}
!2780 = metadata !{i32 786443, metadata !802, metadata !2778, i32 366, i32 9, i32 1, i32 107} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp]
!2781 = metadata !{i32 367, i32 9, metadata !2778, null}
!2782 = metadata !{i32 368, i32 5, metadata !2187, null}
!2783 = metadata !{i32 369, i32 5, metadata !2187, null}
!2784 = metadata !{i32 370, i32 5, metadata !2187, null}
!2785 = metadata !{i32 371, i32 1, metadata !2187, null}
!2786 = metadata !{i32 786689, metadata !2191, metadata !"this", null, i32 16777216, metadata !2787, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2787 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv3Mat5MSizeE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv3Mat5MSizeE]
!2788 = metadata !{i32 0, i32 0, metadata !2191, null}
!2789 = metadata !{i32 786689, metadata !2191, metadata !"_p", metadata !2790, i32 33555138, metadata !649, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_p] [line 706]
!2790 = metadata !{i32 786473, metadata !802}     ; [ DW_TAG_file_type ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp]
!2791 = metadata !{i32 706, i32 31, metadata !2191, null}
!2792 = metadata !{i32 706, i32 43, metadata !2191, null}
!2793 = metadata !{i32 706, i32 44, metadata !2191, null}
!2794 = metadata !{i32 786689, metadata !2190, metadata !"this", null, i32 16777216, metadata !2795, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2795 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTSN2cv3Mat5MStepE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTSN2cv3Mat5MStepE]
!2796 = metadata !{i32 0, i32 0, metadata !2190, null}
!2797 = metadata !{i32 735, i32 30, metadata !2798, null}
!2798 = metadata !{i32 786443, metadata !802, metadata !2190, i32 735, i32 28, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp]
!2799 = metadata !{i32 735, i32 39, metadata !2798, null}
!2800 = metadata !{i32 735, i32 56, metadata !2190, null}
!2801 = metadata !{i32 786689, metadata !2189, metadata !"this", null, i32 16777216, metadata !2135, i32 1088, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 0]
!2802 = metadata !{i32 0, i32 0, metadata !2189, null}
!2803 = metadata !{i32 60, i32 5, metadata !2189, null}
!2804 = metadata !{i32 61, i32 5, metadata !2189, null}
!2805 = metadata !{i32 62, i32 5, metadata !2189, null}
!2806 = metadata !{i32 63, i32 5, metadata !2189, null}
!2807 = metadata !{i32 64, i32 5, metadata !2189, null}
!2808 = metadata !{i32 65, i32 1, metadata !2189, null}
!2809 = metadata !{i32 0, i32 0, metadata !2810, null}
!2810 = metadata !{i32 786443, metadata !802, metadata !2192} ; [ DW_TAG_lexical_block ] [/home/vgr16/nfshome/face_with_corner/SDRelease//home/vgr16/homedir/ZYBO_SDSoC_platforms-master/2015.4/zybo_hdmi_in/arm-xilinx-linux-gnueabi/include/opencv2/core/mat.hpp]
