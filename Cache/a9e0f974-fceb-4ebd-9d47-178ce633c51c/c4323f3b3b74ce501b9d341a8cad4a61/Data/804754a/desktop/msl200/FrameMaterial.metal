#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_BACKEND_SHADER_FLAGS_END__
#endif
//efine SC_DISABLE_FRUSTUM_CULLING
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
    return 0;
}
}
    #ifndef sc_TextureRenderingLayout_Regular
        #define sc_TextureRenderingLayout_Regular 0
        #define sc_TextureRenderingLayout_StereoInstancedClipped 1
        #define sc_TextureRenderingLayout_StereoMultiview 2
    #endif
    #define depthToGlobal   depthScreenToViewSpace
    #define depthToLocal    depthViewToScreenSpace
    #ifndef quantizeUV
        #define quantizeUV sc_QuantizeUV
        #define sc_platformUVFlip sc_PlatformFlipV
        #define sc_PlatformFlipUV sc_PlatformFlipV
    #endif
    #ifndef sc_SampleTexture
        #define sc_SampleTexture sc_SampleTextureBiasOrLevel
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output vec4 FragColor0 0
//output vec4 FragColor1 1
//output vec4 FragColor2 2
//output vec4 FragColor3 3
//sampler sampler intensityTextureSmpSC 2:17
//sampler sampler matcapTextureSmpSC 2:18
//sampler sampler sc_ScreenTextureSmpSC 2:23
//texture texture2D intensityTexture 2:1:2:17
//texture texture2D matcapTexture 2:2:2:18
//texture texture2D sc_ScreenTexture 2:14:2:23
//ubo float sc_BonesUBO 2:0:96 {
//sc_Bone_t sc_Bones 0:[]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 2:26:4608 {
//sc_PointLight_t sc_PointLights 0:[3]:80
//bool sc_PointLights.falloffEnabled 0
//float sc_PointLights.falloffEndDistance 4
//float sc_PointLights.negRcpFalloffEndDistance4 8
//float sc_PointLights.angleScale 12
//float sc_PointLights.angleOffset 16
//float3 sc_PointLights.direction 32
//float3 sc_PointLights.position 48
//float4 sc_PointLights.color 64
//sc_DirectionalLight_t sc_DirectionalLights 240:[5]:32
//float3 sc_DirectionalLights.direction 0
//float4 sc_DirectionalLights.color 16
//sc_AmbientLight_t sc_AmbientLights 400:[3]:32
//float3 sc_AmbientLights.color 0
//float sc_AmbientLights.intensity 16
//sc_LightEstimationData_t sc_LightEstimationData 496
//sc_SphericalGaussianLight_t sc_LightEstimationData.sg 0:[12]:48
//float3 sc_LightEstimationData.sg.color 0
//float sc_LightEstimationData.sg.sharpness 16
//float3 sc_LightEstimationData.sg.axis 32
//float3 sc_LightEstimationData.ambientLight 576
//float4 sc_EnvmapDiffuseSize 1088
//float4 sc_EnvmapDiffuseDims 1104
//float4 sc_EnvmapDiffuseView 1120
//float4 sc_EnvmapSpecularSize 1136
//float4 sc_EnvmapSpecularDims 1152
//float4 sc_EnvmapSpecularView 1168
//float3 sc_EnvmapRotation 1184
//float sc_EnvmapExposure 1200
//float3 sc_Sh 1216:[9]:16
//float sc_ShIntensity 1360
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4 sc_GeometryInfo 1408
//float4x4 sc_ModelViewProjectionMatrixArray 1424:[2]:64
//float4x4 sc_ModelViewProjectionMatrixInverseArray 1552:[2]:64
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ViewProjectionMatrixInverseArray 1808:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ModelViewMatrixInverseArray 2064:[2]:64
//float3x3 sc_ViewNormalMatrixArray 2192:[2]:48
//float3x3 sc_ViewNormalMatrixInverseArray 2288:[2]:48
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_ViewMatrixInverseArray 2768:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float3x3 sc_NormalMatrixInverse 3200
//float4x4 sc_PrevFrameModelMatrix 3248
//float4x4 sc_PrevFrameModelMatrixInverse 3312
//float3 sc_LocalAabbMin 3376
//float3 sc_LocalAabbMax 3392
//float3 sc_WorldAabbMin 3408
//float3 sc_WorldAabbMax 3424
//float4 sc_WindowToViewportTransform 3440
//sc_Camera_t sc_Camera 3456
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3488
//float4 sc_ShadowColor 3504
//float4x4 sc_ProjectorMatrix 3520
//float _sc_GetFramebufferColorInvalidUsageMarker 3584
//float shaderComplexityValue 3588
//float sc_DisableFrustumCullingMarker 3592
//float4 weights0 3600
//float4 weights1 3616
//float4 weights2 3632
//float4 sc_StereoClipPlanes 3648:[2]:16
//int sc_FallbackInstanceID 3680
//float _sc_framebufferFetchMarker 3684
//float2 sc_TAAJitterOffset 3688
//float strandWidth 3696
//float strandTaper 3700
//float4 sc_StrandDataMapTextureSize 3712
//float clumpInstanceCount 3728
//float clumpRadius 3732
//float clumpTipScale 3736
//float hairstyleInstanceCount 3740
//float hairstyleNoise 3744
//float4 sc_ScreenTextureSize 3760
//float4 sc_ScreenTextureDims 3776
//float4 sc_ScreenTextureView 3792
//float correctedIntensity 3808
//float4 intensityTextureSize 3824
//float4 intensityTextureDims 3840
//float4 intensityTextureView 3856
//float3x3 intensityTextureTransform 3872
//float4 intensityTextureUvMinMax 3920
//float4 intensityTextureBorderColor 3936
//float reflBlurWidth 3952
//float reflBlurMinRough 3956
//float reflBlurMaxRough 3960
//int overrideTimeEnabled 3964
//float overrideTimeElapsed 3968
//float overrideTimeDelta 3972
//int PreviewEnabled 3976
//int PreviewNodeID 3980
//float alphaTestThreshold 3984
//float scaleX 3988
//float scaleFactor 3992
//float scaleY 3996
//float scaleZ 4000
//float2 fullScale 4008
//float2 rawScale 4016
//float frameMargin 4024
//float3 touchPosition 4032
//float2 aspectRatio 4048
//float isHovered 4056
//float4 matcapTextureSize 4064
//float4 matcapTextureDims 4080
//float4 matcapTextureView 4096
//float3x3 matcapTextureTransform 4112
//float4 matcapTextureUvMinMax 4160
//float4 matcapTextureBorderColor 4176
//float borderAlpha 4192
//float4 scaleHandles 4208
//float backingAlpha 4224
//float opacity 4228
//float Port_Input1_N021 4232
//float Port_Input2_N014 4236
//float Port_Input1_N018 4240
//float Port_Input1_N002 4244
//float Port_Input2_N019 4248
//float Port_Input1_N008 4252
//float Port_Input2_N023 4256
//float3 Port_Input0_N055 4272
//float3 Port_Value_N073 4288
//float3 Port_Value_N054 4304
//float Port_Input0_N125 4320
//float Port_Input1_N084 4324
//float Port_Input1_N033 4328
//float2 Port_Input0_N096 4336
//float Port_Value1_N050 4344
//float Port_Value2_N049 4348
//float Port_Value2_N064 4352
//float Port_Value1_N065 4356
//float Port_Input1_N059 4360
//float Port_Input1_N062 4364
//float Port_RangeMinA_N112 4368
//float Port_RangeMaxA_N112 4372
//float Port_RangeMinB_N112 4376
//float Port_RangeMaxB_N112 4380
//float Port_Input1_N072 4384
//float Port_RangeMinA_N053 4388
//float Port_RangeMaxA_N053 4392
//float Port_RangeMinB_N053 4396
//float Port_RangeMaxB_N053 4400
//float Port_Input1_N160 4404
//float Port_Input0_N109 4408
//float Port_radius_N104 4412
//float Port_borderSoftness_N104 4416
//float Port_backingSoftness_N104 4420
//float2 Port_borderOffset_N104 4424
//float Port_RangeMinA_N110 4432
//float Port_RangeMaxA_N110 4436
//float Port_RangeMinB_N110 4440
//float Port_RangeMaxB_N110 4444
//float2 Port_handleOffset_N104 4448
//float Port_handleWidth_N104 4456
//float Port_handleRadius_N104 4460
//float4 Port_Input0_N024 4464
//float4 Port_Input1_N024 4480
//float Port_Input1_N087 4496
//float Port_Input1_N149 4500
//float3 Port_Value_N151 4512
//float Port_Input1_N052 4528
//float Port_RangeMinA_N129 4532
//float Port_RangeMaxA_N129 4536
//float Port_RangeMinB_N129 4540
//float Port_RangeMaxB_N129 4544
//float3 Port_Value1_N156 4560
//float Port_Input0_N166 4576
//float Port_Input1_N165 4580
//float Port_Input0_N157 4584
//float Port_Input1_N157 4588
//float Port_Input1_N093 4592
//}
//spec_const bool BLEND_MODE_AVERAGE 1000
//spec_const bool BLEND_MODE_BRIGHT 1001
//spec_const bool BLEND_MODE_COLOR_BURN 1002
//spec_const bool BLEND_MODE_COLOR_DODGE 1003
//spec_const bool BLEND_MODE_COLOR 1004
//spec_const bool BLEND_MODE_DARKEN 1005
//spec_const bool BLEND_MODE_DIFFERENCE 1006
//spec_const bool BLEND_MODE_DIVIDE 1007
//spec_const bool BLEND_MODE_DIVISION 1008
//spec_const bool BLEND_MODE_EXCLUSION 1009
//spec_const bool BLEND_MODE_FORGRAY 1010
//spec_const bool BLEND_MODE_HARD_GLOW 1011
//spec_const bool BLEND_MODE_HARD_LIGHT 1012
//spec_const bool BLEND_MODE_HARD_MIX 1013
//spec_const bool BLEND_MODE_HARD_PHOENIX 1014
//spec_const bool BLEND_MODE_HARD_REFLECT 1015
//spec_const bool BLEND_MODE_HUE 1016
//spec_const bool BLEND_MODE_INTENSE 1017
//spec_const bool BLEND_MODE_LIGHTEN 1018
//spec_const bool BLEND_MODE_LINEAR_LIGHT 1019
//spec_const bool BLEND_MODE_LUMINOSITY 1020
//spec_const bool BLEND_MODE_NEGATION 1021
//spec_const bool BLEND_MODE_NOTBRIGHT 1022
//spec_const bool BLEND_MODE_OVERLAY 1023
//spec_const bool BLEND_MODE_PIN_LIGHT 1024
//spec_const bool BLEND_MODE_REALISTIC 1025
//spec_const bool BLEND_MODE_SATURATION 1026
//spec_const bool BLEND_MODE_SOFT_LIGHT 1027
//spec_const bool BLEND_MODE_SUBTRACT 1028
//spec_const bool BLEND_MODE_VIVID_LIGHT 1029
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 1030
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 1031
//spec_const bool SC_USE_CLAMP_TO_BORDER_matcapTexture 1032
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 1033
//spec_const bool SC_USE_UV_MIN_MAX_matcapTexture 1034
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 1035
//spec_const bool SC_USE_UV_TRANSFORM_matcapTexture 1036
//spec_const bool UseViewSpaceDepthVariant 1037
//spec_const bool intensityTextureHasSwappedViews 1038
//spec_const bool matcapTextureHasSwappedViews 1039
//spec_const bool sc_BlendMode_AddWithAlphaFactor 1040
//spec_const bool sc_BlendMode_Add 1041
//spec_const bool sc_BlendMode_AlphaTest 1042
//spec_const bool sc_BlendMode_AlphaToCoverage 1043
//spec_const bool sc_BlendMode_ColoredGlass 1044
//spec_const bool sc_BlendMode_Custom 1045
//spec_const bool sc_BlendMode_Max 1046
//spec_const bool sc_BlendMode_Min 1047
//spec_const bool sc_BlendMode_MultiplyOriginal 1048
//spec_const bool sc_BlendMode_Multiply 1049
//spec_const bool sc_BlendMode_Normal 1050
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 1051
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 1052
//spec_const bool sc_BlendMode_PremultipliedAlpha 1053
//spec_const bool sc_BlendMode_Screen 1054
//spec_const bool sc_DepthOnly 1055
//spec_const bool sc_FramebufferFetch 1056
//spec_const bool sc_MotionVectorsPass 1057
//spec_const bool sc_OITCompositingPass 1058
//spec_const bool sc_OITDepthBoundsPass 1059
//spec_const bool sc_OITDepthGatherPass 1060
//spec_const bool sc_ProjectiveShadowsCaster 1061
//spec_const bool sc_ProjectiveShadowsReceiver 1062
//spec_const bool sc_RenderAlphaToColor 1063
//spec_const bool sc_ScreenTextureHasSwappedViews 1064
//spec_const bool sc_ShaderComplexityAnalyzer 1065
//spec_const bool sc_UseFramebufferFetchMarker 1066
//spec_const bool sc_VertexBlendingUseNormals 1067
//spec_const bool sc_VertexBlending 1068
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 1069
//spec_const int SC_SOFTWARE_WRAP_MODE_U_matcapTexture 1070
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 1071
//spec_const int SC_SOFTWARE_WRAP_MODE_V_matcapTexture 1072
//spec_const int intensityTextureLayout 1073
//spec_const int matcapTextureLayout 1074
//spec_const int sc_DepthBufferMode 1075
//spec_const int sc_RenderingSpace 1076
//spec_const int sc_ScreenTextureLayout 1077
//spec_const int sc_SkinBonesCount 1078
//spec_const int sc_StereoRenderingMode 1079
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 1080
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(1000)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1001)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(1002)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(1003)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(1004)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(1005)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(1006)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(1007)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(1008)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(1009)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(1010)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(1011)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(1012)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(1013)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(1014)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(1015)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(1016)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(1017)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(1018)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(1019)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(1020)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(1021)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(1022)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(1023)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(1024)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(1025)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(1026)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(1027)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(1028)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(1029)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(1030)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(1031)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_matcapTexture [[function_constant(1032)]];
constant bool SC_USE_CLAMP_TO_BORDER_matcapTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_matcapTexture) ? SC_USE_CLAMP_TO_BORDER_matcapTexture : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(1033)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_matcapTexture [[function_constant(1034)]];
constant bool SC_USE_UV_MIN_MAX_matcapTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_matcapTexture) ? SC_USE_UV_MIN_MAX_matcapTexture : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(1035)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_matcapTexture [[function_constant(1036)]];
constant bool SC_USE_UV_TRANSFORM_matcapTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_matcapTexture) ? SC_USE_UV_TRANSFORM_matcapTexture : false;
constant bool UseViewSpaceDepthVariant [[function_constant(1037)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool intensityTextureHasSwappedViews [[function_constant(1038)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool matcapTextureHasSwappedViews [[function_constant(1039)]];
constant bool matcapTextureHasSwappedViews_tmp = is_function_constant_defined(matcapTextureHasSwappedViews) ? matcapTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(1040)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(1041)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(1042)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(1043)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(1044)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(1045)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(1046)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(1047)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(1048)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(1049)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(1050)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(1051)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(1052)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(1053)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(1054)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(1055)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(1056)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(1057)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(1058)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(1059)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(1060)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(1061)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(1062)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(1063)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(1064)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_ShaderComplexityAnalyzer [[function_constant(1065)]];
constant bool sc_ShaderComplexityAnalyzer_tmp = is_function_constant_defined(sc_ShaderComplexityAnalyzer) ? sc_ShaderComplexityAnalyzer : false;
constant bool sc_UseFramebufferFetchMarker [[function_constant(1066)]];
constant bool sc_UseFramebufferFetchMarker_tmp = is_function_constant_defined(sc_UseFramebufferFetchMarker) ? sc_UseFramebufferFetchMarker : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(1067)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(1068)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(1069)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_matcapTexture [[function_constant(1070)]];
constant int SC_SOFTWARE_WRAP_MODE_U_matcapTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_matcapTexture) ? SC_SOFTWARE_WRAP_MODE_U_matcapTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(1071)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_matcapTexture [[function_constant(1072)]];
constant int SC_SOFTWARE_WRAP_MODE_V_matcapTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_matcapTexture) ? SC_SOFTWARE_WRAP_MODE_V_matcapTexture : -1;
constant int intensityTextureLayout [[function_constant(1073)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int matcapTextureLayout [[function_constant(1074)]];
constant int matcapTextureLayout_tmp = is_function_constant_defined(matcapTextureLayout) ? matcapTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(1075)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(1076)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(1077)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_SkinBonesCount [[function_constant(1078)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(1079)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(1080)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float4 VertexColor;
float3 SurfacePosition_ObjectSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float _sc_GetFramebufferColorInvalidUsageMarker;
float shaderComplexityValue;
float sc_DisableFrustumCullingMarker;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float _sc_framebufferFetchMarker;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed;
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float scaleX;
float scaleFactor;
float scaleY;
float scaleZ;
float2 fullScale;
float2 rawScale;
float frameMargin;
float3 touchPosition;
float2 aspectRatio;
float isHovered;
float4 matcapTextureSize;
float4 matcapTextureDims;
float4 matcapTextureView;
float3x3 matcapTextureTransform;
float4 matcapTextureUvMinMax;
float4 matcapTextureBorderColor;
float borderAlpha;
float4 scaleHandles;
float backingAlpha;
float opacity;
float Port_Input1_N021;
float Port_Input2_N014;
float Port_Input1_N018;
float Port_Input1_N002;
float Port_Input2_N019;
float Port_Input1_N008;
float Port_Input2_N023;
float3 Port_Input0_N055;
float3 Port_Value_N073;
float3 Port_Value_N054;
float Port_Input0_N125;
float Port_Input1_N084;
float Port_Input1_N033;
float2 Port_Input0_N096;
float Port_Value1_N050;
float Port_Value2_N049;
float Port_Value2_N064;
float Port_Value1_N065;
float Port_Input1_N059;
float Port_Input1_N062;
float Port_RangeMinA_N112;
float Port_RangeMaxA_N112;
float Port_RangeMinB_N112;
float Port_RangeMaxB_N112;
float Port_Input1_N072;
float Port_RangeMinA_N053;
float Port_RangeMaxA_N053;
float Port_RangeMinB_N053;
float Port_RangeMaxB_N053;
float Port_Input1_N160;
float Port_Input0_N109;
float Port_radius_N104;
float Port_borderSoftness_N104;
float Port_backingSoftness_N104;
float2 Port_borderOffset_N104;
float Port_RangeMinA_N110;
float Port_RangeMaxA_N110;
float Port_RangeMinB_N110;
float Port_RangeMaxB_N110;
float2 Port_handleOffset_N104;
float Port_handleWidth_N104;
float Port_handleRadius_N104;
float4 Port_Input0_N024;
float4 Port_Input1_N024;
float Port_Input1_N087;
float Port_Input1_N149;
float3 Port_Value_N151;
float Port_Input1_N052;
float Port_RangeMinA_N129;
float Port_RangeMaxA_N129;
float Port_RangeMinB_N129;
float Port_RangeMaxB_N129;
float3 Port_Value1_N156;
float Port_Input0_N166;
float Port_Input1_N165;
float Port_Input0_N157;
float Port_Input1_N157;
float Port_Input1_N093;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Set2
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> intensityTexture [[id(1)]];
texture2d<float> matcapTexture [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler intensityTextureSmpSC [[id(17)]];
sampler matcapTextureSmpSC [[id(18)]];
sampler sc_ScreenTextureSmpSC [[id(23)]];
constant userUniformsObj* UserUniforms [[id(26)]];
};
struct main_vert_out
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set2& sc_set2 [[buffer(2)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_0;
l9_0.position=in.position;
l9_0.normal=in.normal;
l9_0.tangent=in.tangent.xyz;
l9_0.texture0=in.texture0;
l9_0.texture1=in.texture1;
sc_Vertex_t l9_1=l9_0;
sc_Vertex_t param=l9_1;
sc_Vertex_t l9_2=param;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_3=l9_2;
float3 l9_4=in.blendShape0Pos;
float3 l9_5=in.blendShape0Normal;
float l9_6=(*sc_set2.UserUniforms).weights0.x;
sc_Vertex_t l9_7=l9_3;
float3 l9_8=l9_4;
float l9_9=l9_6;
float3 l9_10=l9_7.position.xyz+(l9_8*l9_9);
l9_7.position=float4(l9_10.x,l9_10.y,l9_10.z,l9_7.position.w);
l9_3=l9_7;
l9_3.normal+=(l9_5*l9_6);
l9_2=l9_3;
sc_Vertex_t l9_11=l9_2;
float3 l9_12=in.blendShape1Pos;
float3 l9_13=in.blendShape1Normal;
float l9_14=(*sc_set2.UserUniforms).weights0.y;
sc_Vertex_t l9_15=l9_11;
float3 l9_16=l9_12;
float l9_17=l9_14;
float3 l9_18=l9_15.position.xyz+(l9_16*l9_17);
l9_15.position=float4(l9_18.x,l9_18.y,l9_18.z,l9_15.position.w);
l9_11=l9_15;
l9_11.normal+=(l9_13*l9_14);
l9_2=l9_11;
sc_Vertex_t l9_19=l9_2;
float3 l9_20=in.blendShape2Pos;
float3 l9_21=in.blendShape2Normal;
float l9_22=(*sc_set2.UserUniforms).weights0.z;
sc_Vertex_t l9_23=l9_19;
float3 l9_24=l9_20;
float l9_25=l9_22;
float3 l9_26=l9_23.position.xyz+(l9_24*l9_25);
l9_23.position=float4(l9_26.x,l9_26.y,l9_26.z,l9_23.position.w);
l9_19=l9_23;
l9_19.normal+=(l9_21*l9_22);
l9_2=l9_19;
}
else
{
sc_Vertex_t l9_27=l9_2;
float3 l9_28=in.blendShape0Pos;
float l9_29=(*sc_set2.UserUniforms).weights0.x;
float3 l9_30=l9_27.position.xyz+(l9_28*l9_29);
l9_27.position=float4(l9_30.x,l9_30.y,l9_30.z,l9_27.position.w);
l9_2=l9_27;
sc_Vertex_t l9_31=l9_2;
float3 l9_32=in.blendShape1Pos;
float l9_33=(*sc_set2.UserUniforms).weights0.y;
float3 l9_34=l9_31.position.xyz+(l9_32*l9_33);
l9_31.position=float4(l9_34.x,l9_34.y,l9_34.z,l9_31.position.w);
l9_2=l9_31;
sc_Vertex_t l9_35=l9_2;
float3 l9_36=in.blendShape2Pos;
float l9_37=(*sc_set2.UserUniforms).weights0.z;
float3 l9_38=l9_35.position.xyz+(l9_36*l9_37);
l9_35.position=float4(l9_38.x,l9_38.y,l9_38.z,l9_35.position.w);
l9_2=l9_35;
sc_Vertex_t l9_39=l9_2;
float3 l9_40=in.blendShape3Pos;
float l9_41=(*sc_set2.UserUniforms).weights0.w;
float3 l9_42=l9_39.position.xyz+(l9_40*l9_41);
l9_39.position=float4(l9_42.x,l9_42.y,l9_42.z,l9_39.position.w);
l9_2=l9_39;
sc_Vertex_t l9_43=l9_2;
float3 l9_44=in.blendShape4Pos;
float l9_45=(*sc_set2.UserUniforms).weights1.x;
float3 l9_46=l9_43.position.xyz+(l9_44*l9_45);
l9_43.position=float4(l9_46.x,l9_46.y,l9_46.z,l9_43.position.w);
l9_2=l9_43;
sc_Vertex_t l9_47=l9_2;
float3 l9_48=in.blendShape5Pos;
float l9_49=(*sc_set2.UserUniforms).weights1.y;
float3 l9_50=l9_47.position.xyz+(l9_48*l9_49);
l9_47.position=float4(l9_50.x,l9_50.y,l9_50.z,l9_47.position.w);
l9_2=l9_47;
}
}
param=l9_2;
sc_Vertex_t l9_51=param;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_52=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_52=float4(1.0,fract(in.boneData.yzw));
l9_52.x-=dot(l9_52.yzw,float3(1.0));
}
float4 l9_53=l9_52;
float4 l9_54=l9_53;
int l9_55=0;
int l9_56=0;
if (sc_SkinBonesCount_tmp>0)
{
l9_56=int(in.boneData[l9_55]);
}
int l9_57=l9_56;
int l9_58=l9_57;
int l9_59=1;
int l9_60=0;
if (sc_SkinBonesCount_tmp>0)
{
l9_60=int(in.boneData[l9_59]);
}
int l9_61=l9_60;
int l9_62=l9_61;
int l9_63=2;
int l9_64=0;
if (sc_SkinBonesCount_tmp>0)
{
l9_64=int(in.boneData[l9_63]);
}
int l9_65=l9_64;
int l9_66=l9_65;
int l9_67=3;
int l9_68=0;
if (sc_SkinBonesCount_tmp>0)
{
l9_68=int(in.boneData[l9_67]);
}
int l9_69=l9_68;
int l9_70=l9_69;
int l9_71=l9_58;
float4 l9_72=l9_51.position;
float3 l9_73=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_74=l9_71;
float4 l9_75=(*sc_set2.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[0];
float4 l9_76=(*sc_set2.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[1];
float4 l9_77=(*sc_set2.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[2];
float4 l9_78[3];
l9_78[0]=l9_75;
l9_78[1]=l9_76;
l9_78[2]=l9_77;
l9_73=float3(dot(l9_72,l9_78[0]),dot(l9_72,l9_78[1]),dot(l9_72,l9_78[2]));
}
else
{
l9_73=l9_72.xyz;
}
float3 l9_79=l9_73;
float3 l9_80=l9_79;
float l9_81=l9_54.x;
int l9_82=l9_62;
float4 l9_83=l9_51.position;
float3 l9_84=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_85=l9_82;
float4 l9_86=(*sc_set2.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[0];
float4 l9_87=(*sc_set2.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[1];
float4 l9_88=(*sc_set2.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[2];
float4 l9_89[3];
l9_89[0]=l9_86;
l9_89[1]=l9_87;
l9_89[2]=l9_88;
l9_84=float3(dot(l9_83,l9_89[0]),dot(l9_83,l9_89[1]),dot(l9_83,l9_89[2]));
}
else
{
l9_84=l9_83.xyz;
}
float3 l9_90=l9_84;
float3 l9_91=l9_90;
float l9_92=l9_54.y;
int l9_93=l9_66;
float4 l9_94=l9_51.position;
float3 l9_95=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_96=l9_93;
float4 l9_97=(*sc_set2.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[0];
float4 l9_98=(*sc_set2.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[1];
float4 l9_99=(*sc_set2.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[2];
float4 l9_100[3];
l9_100[0]=l9_97;
l9_100[1]=l9_98;
l9_100[2]=l9_99;
l9_95=float3(dot(l9_94,l9_100[0]),dot(l9_94,l9_100[1]),dot(l9_94,l9_100[2]));
}
else
{
l9_95=l9_94.xyz;
}
float3 l9_101=l9_95;
float3 l9_102=l9_101;
float l9_103=l9_54.z;
int l9_104=l9_70;
float4 l9_105=l9_51.position;
float3 l9_106=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_107=l9_104;
float4 l9_108=(*sc_set2.sc_BonesUBO).sc_Bones[l9_107].boneMatrix[0];
float4 l9_109=(*sc_set2.sc_BonesUBO).sc_Bones[l9_107].boneMatrix[1];
float4 l9_110=(*sc_set2.sc_BonesUBO).sc_Bones[l9_107].boneMatrix[2];
float4 l9_111[3];
l9_111[0]=l9_108;
l9_111[1]=l9_109;
l9_111[2]=l9_110;
l9_106=float3(dot(l9_105,l9_111[0]),dot(l9_105,l9_111[1]),dot(l9_105,l9_111[2]));
}
else
{
l9_106=l9_105.xyz;
}
float3 l9_112=l9_106;
float3 l9_113=(((l9_80*l9_81)+(l9_91*l9_92))+(l9_102*l9_103))+(l9_112*l9_54.w);
l9_51.position=float4(l9_113.x,l9_113.y,l9_113.z,l9_51.position.w);
int l9_114=l9_58;
float3x3 l9_115=float3x3(float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[0].xyz),float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[1].xyz),float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[2].xyz));
float3x3 l9_116=l9_115;
float3x3 l9_117=l9_116;
int l9_118=l9_62;
float3x3 l9_119=float3x3(float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_118].normalMatrix[0].xyz),float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_118].normalMatrix[1].xyz),float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_118].normalMatrix[2].xyz));
float3x3 l9_120=l9_119;
float3x3 l9_121=l9_120;
int l9_122=l9_66;
float3x3 l9_123=float3x3(float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_122].normalMatrix[0].xyz),float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_122].normalMatrix[1].xyz),float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_122].normalMatrix[2].xyz));
float3x3 l9_124=l9_123;
float3x3 l9_125=l9_124;
int l9_126=l9_70;
float3x3 l9_127=float3x3(float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_126].normalMatrix[0].xyz),float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_126].normalMatrix[1].xyz),float3((*sc_set2.sc_BonesUBO).sc_Bones[l9_126].normalMatrix[2].xyz));
float3x3 l9_128=l9_127;
float3x3 l9_129=l9_128;
l9_51.normal=((((l9_117*l9_51.normal)*l9_54.x)+((l9_121*l9_51.normal)*l9_54.y))+((l9_125*l9_51.normal)*l9_54.z))+((l9_129*l9_51.normal)*l9_54.w);
l9_51.tangent=((((l9_117*l9_51.tangent)*l9_54.x)+((l9_121*l9_51.tangent)*l9_54.y))+((l9_125*l9_51.tangent)*l9_54.z))+((l9_129*l9_51.tangent)*l9_54.w);
}
param=l9_51;
if (sc_RenderingSpace_tmp==3)
{
out.varPos=float3(0.0);
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPos=float3(0.0);
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPos=param.position.xyz;
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
out.varPos=((*sc_set2.UserUniforms).sc_ModelMatrix*param.position).xyz;
out.varNormal=(*sc_set2.UserUniforms).sc_NormalMatrix*param.normal;
float3 l9_130=(*sc_set2.UserUniforms).sc_NormalMatrix*param.tangent;
out.varTangent=float4(l9_130.x,l9_130.y,l9_130.z,out.varTangent.w);
}
}
}
}
if ((*sc_set2.UserUniforms).PreviewEnabled==1)
{
param.texture0.x=1.0-param.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param;
float l9_131;
if ((*sc_set2.UserUniforms).overrideTimeEnabled==1)
{
l9_131=(*sc_set2.UserUniforms).overrideTimeElapsed;
}
else
{
l9_131=(*sc_set2.UserUniforms).sc_Time.x;
}
ssGlobals Globals;
Globals.gTimeElapsed=l9_131;
float l9_132;
if ((*sc_set2.UserUniforms).overrideTimeEnabled==1)
{
l9_132=(*sc_set2.UserUniforms).overrideTimeDelta;
}
else
{
l9_132=(*sc_set2.UserUniforms).sc_Time.y;
}
Globals.gTimeDelta=l9_132;
Globals.VertexColor=out.varColor;
Globals.SurfacePosition_ObjectSpace=((*sc_set2.UserUniforms).sc_ModelMatrixInverse*float4(out.varPos,1.0)).xyz;
float3 WorldPosition=out.varPos;
float3 WorldNormal=out.varNormal;
float3 WorldTangent=out.varTangent.xyz;
float Output_N16=0.0;
float param_1=(*sc_set2.UserUniforms).scaleX;
Output_N16=param_1;
float4 Color_N9=float4(0.0);
Color_N9=Globals.VertexColor;
float Value1_N10=0.0;
float Value2_N10=0.0;
float Value3_N10=0.0;
float4 param_2=Color_N9;
float param_3=param_2.x;
float param_4=param_2.y;
float param_5=param_2.z;
Value1_N10=param_3;
Value2_N10=param_4;
Value3_N10=param_5;
float Output_N21=0.0;
Output_N21=Value1_N10-(*sc_set2.UserUniforms).Port_Input1_N021;
float Output_N14=0.0;
Output_N14=(Output_N16*Output_N21)*(*sc_set2.UserUniforms).Port_Input2_N014;
float Output_N81=0.0;
float param_6=(*sc_set2.UserUniforms).scaleFactor;
Output_N81=param_6;
float Output_N99=0.0;
Output_N99=Output_N14/(Output_N81+1.234e-06);
float3 Position_N12=float3(0.0);
Position_N12=Globals.SurfacePosition_ObjectSpace;
float Value1_N13=0.0;
float Value2_N13=0.0;
float Value3_N13=0.0;
float3 param_7=Position_N12;
float param_8=param_7.x;
float param_9=param_7.y;
float param_10=param_7.z;
Value1_N13=param_8;
Value2_N13=param_9;
Value3_N13=param_10;
float Output_N15=0.0;
Output_N15=Output_N99+Value1_N13;
float Output_N22=0.0;
float param_11=(*sc_set2.UserUniforms).scaleY;
Output_N22=param_11;
float Output_N18=0.0;
Output_N18=Value2_N10-(*sc_set2.UserUniforms).Port_Input1_N018;
float Output_N2=0.0;
Output_N2=Output_N18*(*sc_set2.UserUniforms).Port_Input1_N002;
float Output_N19=0.0;
Output_N19=(Output_N22*Output_N2)*(*sc_set2.UserUniforms).Port_Input2_N019;
float Output_N97=0.0;
Output_N97=Output_N19/(Output_N81+1.234e-06);
float Output_N20=0.0;
Output_N20=Output_N97+Value2_N13;
float Output_N7=0.0;
float param_12=(*sc_set2.UserUniforms).scaleZ;
Output_N7=param_12;
float Output_N8=0.0;
Output_N8=Value3_N10-(*sc_set2.UserUniforms).Port_Input1_N008;
float Output_N23=0.0;
Output_N23=(Output_N7*Output_N8)*(*sc_set2.UserUniforms).Port_Input2_N023;
float Output_N177=0.0;
Output_N177=Output_N23/(Output_N81+1.234e-06);
float Output_N0=0.0;
Output_N0=Value3_N13+Output_N177;
float3 Value_N17=float3(0.0);
Value_N17.x=Output_N15;
Value_N17.y=Output_N20;
Value_N17.z=Output_N0;
float3 VectorOut_N11=float3(0.0);
VectorOut_N11=((*sc_set2.UserUniforms).sc_ModelMatrix*float4(Value_N17,1.0)).xyz;
WorldPosition=VectorOut_N11;
if ((*sc_set2.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPos;
WorldNormal=out.varNormal;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_13=v;
float3 param_14=WorldPosition;
float3 param_15=WorldNormal;
float3 param_16=WorldTangent;
float4 param_17=v.position;
out.varPos=param_14;
out.varNormal=normalize(param_15);
float3 l9_133=normalize(param_16);
out.varTangent=float4(l9_133.x,l9_133.y,l9_133.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_134=param_13.position;
float4 l9_135=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=gl_InstanceIndex%2;
}
int l9_137=l9_136;
l9_135=(*sc_set2.UserUniforms).sc_ProjectionMatrixInverseArray[l9_137]*l9_134;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=gl_InstanceIndex%2;
}
int l9_139=l9_138;
l9_135=(*sc_set2.UserUniforms).sc_ViewMatrixArray[l9_139]*l9_134;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_140=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_140=0;
}
else
{
l9_140=gl_InstanceIndex%2;
}
int l9_141=l9_140;
l9_135=(*sc_set2.UserUniforms).sc_ModelViewMatrixArray[l9_141]*l9_134;
}
else
{
l9_135=l9_134;
}
}
}
float4 l9_142=l9_135;
out.varViewSpaceDepth=-l9_142.z;
}
float4 l9_143=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_143=param_17;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_144=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_144=0;
}
else
{
l9_144=gl_InstanceIndex%2;
}
int l9_145=l9_144;
l9_143=((*sc_set2.UserUniforms).sc_ModelViewMatrixArray[l9_145]*param_13.position)*float4(1.0/(*sc_set2.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_146=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_146=0;
}
else
{
l9_146=gl_InstanceIndex%2;
}
int l9_147=l9_146;
l9_143=(*sc_set2.UserUniforms).sc_ViewProjectionMatrixArray[l9_147]*float4(out.varPos,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_148=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_148=0;
}
else
{
l9_148=gl_InstanceIndex%2;
}
int l9_149=l9_148;
l9_143=(*sc_set2.UserUniforms).sc_ViewProjectionMatrixArray[l9_149]*float4(out.varPos,1.0);
}
}
}
}
out.varPackedTex=float4(param_13.texture0,param_13.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_150=param_13.position;
float4 l9_151=l9_150;
if (sc_RenderingSpace_tmp==1)
{
l9_151=(*sc_set2.UserUniforms).sc_ModelMatrix*l9_150;
}
float4 l9_152=(*sc_set2.UserUniforms).sc_ProjectorMatrix*l9_151;
float2 l9_153=((l9_152.xy/float2(l9_152.w))*0.5)+float2(0.5);
out.varShadowTex=l9_153;
}
float4 l9_154=l9_143;
int l9_155=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_155=0;
}
else
{
l9_155=gl_InstanceIndex%2;
}
int l9_156=l9_155;
bool l9_157=(*sc_set2.UserUniforms).sc_ProjectionMatrixArray[l9_156][2].w!=0.0;
if ((sc_DepthBufferMode_tmp==1)&&l9_157)
{
float l9_158=2.0/log2((*sc_set2.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_154.z=((log2(fast::max((*sc_set2.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_154.w))*l9_158)-1.0)*l9_154.w;
}
float4 l9_159=l9_154;
l9_143=l9_159;
float4 l9_160=l9_143;
float4 l9_161=l9_160;
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_162=l9_161;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_163=dot(l9_162,(*sc_set2.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_164=l9_163;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_164;
}
}
float4 l9_165=float4(l9_161.x,-l9_161.y,(l9_161.z*0.5)+(l9_161.w*0.5),l9_161.w);
out.gl_Position=l9_165;
v=param_13;
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 SurfacePosition_ObjectSpace;
float3 SurfacePosition_ViewSpace;
float3 VertexNormal_WorldSpace;
float3 VertexNormal_ViewSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float _sc_GetFramebufferColorInvalidUsageMarker;
float shaderComplexityValue;
float sc_DisableFrustumCullingMarker;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float _sc_framebufferFetchMarker;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed;
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float scaleX;
float scaleFactor;
float scaleY;
float scaleZ;
float2 fullScale;
float2 rawScale;
float frameMargin;
float3 touchPosition;
float2 aspectRatio;
float isHovered;
float4 matcapTextureSize;
float4 matcapTextureDims;
float4 matcapTextureView;
float3x3 matcapTextureTransform;
float4 matcapTextureUvMinMax;
float4 matcapTextureBorderColor;
float borderAlpha;
float4 scaleHandles;
float backingAlpha;
float opacity;
float Port_Input1_N021;
float Port_Input2_N014;
float Port_Input1_N018;
float Port_Input1_N002;
float Port_Input2_N019;
float Port_Input1_N008;
float Port_Input2_N023;
float3 Port_Input0_N055;
float3 Port_Value_N073;
float3 Port_Value_N054;
float Port_Input0_N125;
float Port_Input1_N084;
float Port_Input1_N033;
float2 Port_Input0_N096;
float Port_Value1_N050;
float Port_Value2_N049;
float Port_Value2_N064;
float Port_Value1_N065;
float Port_Input1_N059;
float Port_Input1_N062;
float Port_RangeMinA_N112;
float Port_RangeMaxA_N112;
float Port_RangeMinB_N112;
float Port_RangeMaxB_N112;
float Port_Input1_N072;
float Port_RangeMinA_N053;
float Port_RangeMaxA_N053;
float Port_RangeMinB_N053;
float Port_RangeMaxB_N053;
float Port_Input1_N160;
float Port_Input0_N109;
float Port_radius_N104;
float Port_borderSoftness_N104;
float Port_backingSoftness_N104;
float2 Port_borderOffset_N104;
float Port_RangeMinA_N110;
float Port_RangeMaxA_N110;
float Port_RangeMinB_N110;
float Port_RangeMaxB_N110;
float2 Port_handleOffset_N104;
float Port_handleWidth_N104;
float Port_handleRadius_N104;
float4 Port_Input0_N024;
float4 Port_Input1_N024;
float Port_Input1_N087;
float Port_Input1_N149;
float3 Port_Value_N151;
float Port_Input1_N052;
float Port_RangeMinA_N129;
float Port_RangeMaxA_N129;
float Port_RangeMinB_N129;
float Port_RangeMaxB_N129;
float3 Port_Value1_N156;
float Port_Input0_N166;
float Port_Input1_N165;
float Port_Input0_N157;
float Port_Input1_N157;
float Port_Input1_N093;
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set2
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> intensityTexture [[id(1)]];
texture2d<float> matcapTexture [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler intensityTextureSmpSC [[id(17)]];
sampler matcapTextureSmpSC [[id(18)]];
sampler sc_ScreenTextureSmpSC [[id(23)]];
constant userUniformsObj* UserUniforms [[id(26)]];
};
struct main_frag_out
{
float4 FragColor0 [[color(0)]];
float4 FragColor1 [[color(1)]];
float4 FragColor2 [[color(2)]];
float4 FragColor3 [[color(3)]];
};
struct main_frag_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228=0;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
float2 l9_279=l9_278;
float2 l9_280=l9_279;
l9_236=l9_280;
float l9_281=l9_236.x;
int l9_282=l9_239.x;
bool l9_283=l9_245;
float l9_284=l9_246;
if ((l9_282==0)||(l9_282==3))
{
float l9_285=l9_281;
float l9_286=0.0;
float l9_287=1.0;
bool l9_288=l9_283;
float l9_289=l9_284;
float l9_290=fast::clamp(l9_285,l9_286,l9_287);
float l9_291=step(abs(l9_285-l9_290),9.9999997e-06);
l9_289*=(l9_291+((1.0-float(l9_288))*(1.0-l9_291)));
l9_285=l9_290;
l9_281=l9_285;
l9_284=l9_289;
}
l9_236.x=l9_281;
l9_246=l9_284;
float l9_292=l9_236.y;
int l9_293=l9_239.y;
bool l9_294=l9_245;
float l9_295=l9_246;
if ((l9_293==0)||(l9_293==3))
{
float l9_296=l9_292;
float l9_297=0.0;
float l9_298=1.0;
bool l9_299=l9_294;
float l9_300=l9_295;
float l9_301=fast::clamp(l9_296,l9_297,l9_298);
float l9_302=step(abs(l9_296-l9_301),9.9999997e-06);
l9_300*=(l9_302+((1.0-float(l9_299))*(1.0-l9_302)));
l9_296=l9_301;
l9_292=l9_296;
l9_295=l9_300;
}
l9_236.y=l9_292;
l9_246=l9_295;
float2 l9_303=l9_236;
int l9_304=l9_234;
int l9_305=l9_235;
float l9_306=l9_244;
float2 l9_307=l9_303;
int l9_308=l9_304;
int l9_309=l9_305;
float3 l9_310=float3(0.0);
if (l9_308==0)
{
l9_310=float3(l9_307,0.0);
}
else
{
if (l9_308==1)
{
l9_310=float3(l9_307.x,(l9_307.y*0.5)+(0.5-(float(l9_309)*0.5)),0.0);
}
else
{
l9_310=float3(l9_307,float(l9_309));
}
}
float3 l9_311=l9_310;
float3 l9_312=l9_311;
float2 l9_313=l9_312.xy;
float l9_314=l9_306;
float4 l9_315=intensityTexture.sample(intensityTextureSmpSC,l9_313,bias(l9_314));
float4 l9_316=l9_315;
float4 l9_317=l9_316;
if (l9_242)
{
l9_317=mix(l9_243,l9_317,float4(l9_246));
}
float4 l9_318=l9_317;
float3 l9_319=l9_318.xyz;
float3 l9_320=l9_319;
float l9_321=16.0;
float l9_322=((((l9_320.x*256.0)+l9_320.y)+(l9_320.z/256.0))/257.00391)*l9_321;
float l9_323=l9_322;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_323=fast::max(l9_323,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_323=fast::min(l9_323,1.0);
}
float l9_324=l9_225;
float3 l9_325=param_8;
float3 l9_326=param_9;
float l9_327=l9_226;
float l9_328=l9_323;
float3 l9_329=transformColor(l9_324,l9_325,l9_326,l9_327,l9_328);
return l9_329;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 outputMotionVectorsIfNeeded(thread const float3& surfacePosWorldSpace,thread const float4& finalColor,thread int& varStereoViewID,constant userUniformsObj& UserUniforms)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float3 param=surfacePosWorldSpace;
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 l9_2=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(param,1.0);
float2 l9_3=l9_2.xy/float2(l9_2.w);
l9_2=float4(l9_3.x,l9_3.y,l9_2.z,l9_2.w);
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
float4 l9_6=((UserUniforms.sc_PrevFrameViewProjectionMatrixArray[l9_5]*UserUniforms.sc_PrevFrameModelMatrix)*UserUniforms.sc_ModelMatrixInverse)*float4(param,1.0);
float2 l9_7=l9_6.xy/float2(l9_6.w);
l9_6=float4(l9_7.x,l9_7.y,l9_6.z,l9_6.w);
float2 l9_8=(l9_2.xy-l9_6.xy)*0.5;
float2 l9_9=l9_8;
float l9_10=(l9_9.x*5.0)+0.5;
float l9_11=floor(l9_10*65535.0);
float l9_12=floor(l9_11*0.00390625);
float2 l9_13=float2(l9_12/255.0,(l9_11-(l9_12*256.0))/255.0);
float l9_14=(l9_9.y*5.0)+0.5;
float l9_15=floor(l9_14*65535.0);
float l9_16=floor(l9_15*0.00390625);
float2 l9_17=float2(l9_16/255.0,(l9_15-(l9_16*256.0))/255.0);
float4 l9_18=float4(l9_13,l9_17);
float4 l9_19=l9_18;
return l9_19;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set2& sc_set2 [[buffer(2)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
float4 N25_base=float4(0.0);
float4 N25_blend=float4(0.0);
float4 N25_result=float4(0.0);
float N78_DoSample=0.0;
float3 N78_Normal=float3(0.0);
float4 N78_ReflectionSample=float4(0.0);
float N104_radius=0.0;
float N104_borderSoftness=0.0;
float N104_backingSoftness=0.0;
float2 N104_position=float2(0.0);
float2 N104_scale=float2(0.0);
float2 N104_borderOffset=float2(0.0);
float2 N104_backingOffset=float2(0.0);
float2 N104_handleOffset=float2(0.0);
float N104_handleWidth=0.0;
float N104_handleRadius=0.0;
float4 N104_scaleHandles=float4(0.0);
float N104_borderSelect=0.0;
float N104_backingSelect=0.0;
float N104_handleSelect=0.0;
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(1.0);
float l9_0;
if ((*sc_set2.UserUniforms).overrideTimeEnabled==1)
{
l9_0=(*sc_set2.UserUniforms).overrideTimeElapsed;
}
else
{
l9_0=(*sc_set2.UserUniforms).sc_Time.x;
}
ssGlobals Globals;
Globals.gTimeElapsed=l9_0;
float l9_1;
if ((*sc_set2.UserUniforms).overrideTimeEnabled==1)
{
l9_1=(*sc_set2.UserUniforms).overrideTimeDelta;
}
else
{
l9_1=(*sc_set2.UserUniforms).sc_Time.y;
}
Globals.gTimeDelta=l9_1;
Globals.SurfacePosition_ObjectSpace=((*sc_set2.UserUniforms).sc_ModelMatrixInverse*float4(in.varPos,1.0)).xyz;
int l9_2=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2=0;
}
else
{
l9_2=in.varStereoViewID;
}
int l9_3=l9_2;
Globals.SurfacePosition_ViewSpace=((*sc_set2.UserUniforms).sc_ViewMatrixArray[l9_3]*float4(in.varPos,1.0)).xyz;
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=in.varStereoViewID;
}
int l9_5=l9_4;
Globals.VertexNormal_ViewSpace=normalize(((*sc_set2.UserUniforms).sc_ViewMatrixArray[l9_5]*float4(Globals.VertexNormal_WorldSpace,0.0)).xyz);
float3 Output_N73=float3(0.0);
Output_N73=(*sc_set2.UserUniforms).Port_Value_N073;
float3 Output_N54=float3(0.0);
Output_N54=(*sc_set2.UserUniforms).Port_Value_N054;
float2 Output_N130=float2(0.0);
float2 param=(*sc_set2.UserUniforms).fullScale;
Output_N130=param;
float Value1_N83=0.0;
float Value2_N83=0.0;
float2 param_1=Output_N130;
float param_2=param_1.x;
float param_3=param_1.y;
Value1_N83=param_2;
Value2_N83=param_3;
float Output_N132=0.0;
Output_N132=fast::max(Value1_N83,Value2_N83);
float Output_N125=0.0;
Output_N125=(*sc_set2.UserUniforms).Port_Input0_N125/(Output_N132+1.234e-06);
float Output_N84=0.0;
Output_N84=Output_N125*(*sc_set2.UserUniforms).Port_Input1_N084;
float3 Position_N31=float3(0.0);
Position_N31=Globals.SurfacePosition_ObjectSpace;
float2 Output_N32=float2(0.0);
float2 param_4=(*sc_set2.UserUniforms).rawScale;
Output_N32=param_4;
float2 Output_N96=float2(0.0);
Output_N96=(*sc_set2.UserUniforms).Port_Input0_N096+Output_N32;
float Value1_N39=0.0;
float Value2_N39=0.0;
float2 param_5=Output_N96;
float param_6=param_5.x;
float param_7=param_5.y;
Value1_N39=param_6;
Value2_N39=param_7;
float Output_N47=0.0;
Output_N47=fast::min(Value1_N39,Value2_N39);
float2 Output_N3=float2(0.0);
Output_N3=Position_N31.xy*float2(Output_N47);
float Output_N30=0.0;
Output_N30=fast::max(Value1_N39,Value2_N39);
float2 Output_N29=float2(0.0);
Output_N29=Output_N3/(float2(Output_N30)+float2(1.234e-06));
float Output_N81=0.0;
float param_8=(*sc_set2.UserUniforms).scaleFactor;
Output_N81=param_8;
float Output_N79=0.0;
Output_N79=Output_N81/(Output_N47+1.234e-06);
float Output_N35=0.0;
Output_N35=Output_N30/(Output_N47+1.234e-06);
float2 Value_N50=float2(0.0);
Value_N50.x=(*sc_set2.UserUniforms).Port_Value1_N050;
Value_N50.y=Output_N35;
float Output_N56=0.0;
Output_N56=Output_N30/(Output_N47+1.234e-06);
float2 Value_N49=float2(0.0);
Value_N49.x=Output_N56;
Value_N49.y=(*sc_set2.UserUniforms).Port_Value2_N049;
float Output_N48=0.0;
Output_N48=step(Value1_N39,Value2_N39);
float2 Output_N36=float2(0.0);
Output_N36=mix(Value_N50,Value_N49,float2(Output_N48));
float2 Output_N51=float2(0.0);
Output_N51=float2(Output_N79)*Output_N36;
float2 Output_N34=float2(0.0);
Output_N34=Output_N29*Output_N51;
float Output_N82=0.0;
float param_9=(*sc_set2.UserUniforms).frameMargin;
Output_N82=param_9;
float Output_N60=0.0;
Output_N60=Output_N82/(Output_N81+1.234e-06);
float Output_N63=0.0;
Output_N63=Output_N47/(Output_N30+1.234e-06);
float2 Value_N64=float2(0.0);
Value_N64.x=Output_N63;
Value_N64.y=(*sc_set2.UserUniforms).Port_Value2_N064;
float2 Value_N65=float2(0.0);
Value_N65.x=(*sc_set2.UserUniforms).Port_Value1_N065;
Value_N65.y=Output_N63;
float2 Output_N66=float2(0.0);
Output_N66=mix(Value_N64,Value_N65,float2(Output_N48));
float2 Output_N80=float2(0.0);
Output_N80=float2(Output_N79)*Output_N66;
float2 Output_N59=float2(0.0);
Output_N59=Output_N80*float2((*sc_set2.UserUniforms).Port_Input1_N059);
float2 Output_N61=float2(0.0);
Output_N61=float2(Output_N60)*Output_N59;
float2 Output_N62=float2(0.0);
Output_N62=Output_N61+float2((*sc_set2.UserUniforms).Port_Input1_N062);
float2 Output_N98=float2(0.0);
Output_N98=Output_N34/(Output_N62+float2(1.234e-06));
float2 Value_N37=float2(0.0);
Value_N37=Output_N98;
float3 Output_N40=float3(0.0);
float3 param_10=(*sc_set2.UserUniforms).touchPosition;
Output_N40=param_10;
float2 Output_N41=float2(0.0);
Output_N41=Value_N37-Output_N40.xy;
float2 Output_N5=float2(0.0);
float2 param_11=(*sc_set2.UserUniforms).aspectRatio;
Output_N5=param_11;
float2 Output_N28=float2(0.0);
Output_N28=Output_N41/(Output_N5+float2(1.234e-06));
float Output_N6=0.0;
Output_N6=length(Output_N28);
float Output_N33=0.0;
Output_N33=smoothstep(Output_N84,(*sc_set2.UserUniforms).Port_Input1_N033,Output_N6);
float ValueOut_N112=0.0;
float param_12=Output_N33;
float param_14=(*sc_set2.UserUniforms).Port_RangeMinA_N112;
float param_15=(*sc_set2.UserUniforms).Port_RangeMaxA_N112;
float param_16=(*sc_set2.UserUniforms).Port_RangeMinB_N112;
float param_17=(*sc_set2.UserUniforms).Port_RangeMaxB_N112;
float param_13=(((param_12-param_14)/(param_15-param_14))*(param_17-param_16))+param_16;
float l9_6;
if (param_17>param_16)
{
l9_6=fast::clamp(param_13,param_16,param_17);
}
else
{
l9_6=fast::clamp(param_13,param_17,param_16);
}
param_13=l9_6;
ValueOut_N112=param_13;
float Output_N72=0.0;
float l9_7;
if (ValueOut_N112<=0.0)
{
l9_7=0.0;
}
else
{
l9_7=pow(ValueOut_N112,(*sc_set2.UserUniforms).Port_Input1_N072);
}
Output_N72=l9_7;
float3 Output_N26=float3(0.0);
Output_N26=mix(Output_N73,Output_N54,float3(Output_N72));
float ValueOut_N53=0.0;
float param_18=Output_N33;
float param_20=(*sc_set2.UserUniforms).Port_RangeMinA_N053;
float param_21=(*sc_set2.UserUniforms).Port_RangeMaxA_N053;
float param_22=(*sc_set2.UserUniforms).Port_RangeMinB_N053;
float param_23=(*sc_set2.UserUniforms).Port_RangeMaxB_N053;
float param_19=(((param_18-param_20)/(param_21-param_20))*(param_23-param_22))+param_22;
float l9_8;
if (param_23>param_22)
{
l9_8=fast::clamp(param_19,param_22,param_23);
}
else
{
l9_8=fast::clamp(param_19,param_23,param_22);
}
param_19=l9_8;
ValueOut_N53=param_19;
float Output_N160=0.0;
float l9_9;
if (ValueOut_N53<=0.0)
{
l9_9=0.0;
}
else
{
l9_9=pow(ValueOut_N53,(*sc_set2.UserUniforms).Port_Input1_N160);
}
Output_N160=l9_9;
float Output_N94=0.0;
float param_24=(*sc_set2.UserUniforms).isHovered;
Output_N94=param_24;
float Output_N95=0.0;
Output_N95=Output_N160*Output_N94;
float3 Output_N55=float3(0.0);
Output_N55=mix((*sc_set2.UserUniforms).Port_Input0_N055,Output_N26,float3(Output_N95));
float2 Output_N111=float2(0.0);
Output_N111=Value_N37*Output_N130;
float Output_N74=0.0;
float param_25=(*sc_set2.UserUniforms).borderAlpha;
Output_N74=param_25;
float ValueOut_N110=0.0;
float param_26=Output_N74;
float param_28=(*sc_set2.UserUniforms).Port_RangeMinA_N110;
float param_29=(*sc_set2.UserUniforms).Port_RangeMaxA_N110;
float param_30=(*sc_set2.UserUniforms).Port_RangeMinB_N110;
float param_31=(*sc_set2.UserUniforms).Port_RangeMaxB_N110;
float param_27=(((param_26-param_28)/(param_29-param_28))*(param_31-param_30))+param_30;
float l9_10;
if (param_31>param_30)
{
l9_10=fast::clamp(param_27,param_30,param_31);
}
else
{
l9_10=fast::clamp(param_27,param_31,param_30);
}
param_27=l9_10;
ValueOut_N110=param_27;
float4 Output_N1=float4(0.0);
float4 param_32=(*sc_set2.UserUniforms).scaleHandles;
Output_N1=param_32;
float borderSelect_N104=0.0;
float backingSelect_N104=0.0;
float handleSelect_N104=0.0;
float param_33=(*sc_set2.UserUniforms).Port_radius_N104;
float param_34=(*sc_set2.UserUniforms).Port_borderSoftness_N104;
float param_35=(*sc_set2.UserUniforms).Port_backingSoftness_N104;
float2 param_36=Output_N111;
float2 param_37=Output_N130;
float2 param_38=(*sc_set2.UserUniforms).Port_borderOffset_N104;
float2 param_39=float2(ValueOut_N110);
float2 param_40=(*sc_set2.UserUniforms).Port_handleOffset_N104;
float param_41=(*sc_set2.UserUniforms).Port_handleWidth_N104;
float param_42=(*sc_set2.UserUniforms).Port_handleRadius_N104;
float4 param_43=Output_N1;
ssGlobals param_47=Globals;
ssGlobals tempGlobals=param_47;
float param_44=0.0;
float param_45=0.0;
float param_46=0.0;
N104_radius=param_33;
N104_borderSoftness=param_34;
N104_backingSoftness=param_35;
N104_position=param_36;
N104_scale=param_37;
N104_borderOffset=param_38;
N104_backingOffset=param_39;
N104_handleOffset=param_40;
N104_handleWidth=param_41;
N104_handleRadius=param_42;
N104_scaleHandles=param_43;
float2 l9_11=N104_scale*0.5;
float2 l9_12=N104_position;
float2 l9_13=l9_11-N104_borderOffset;
float l9_14=N104_radius;
l9_12=(abs(l9_12)-l9_13)+float2(l9_14);
float l9_15=(length(fast::max(l9_12,float2(0.0)))+fast::min(fast::max(l9_12.x,l9_12.y),0.0))-l9_14;
N104_borderSelect=l9_15;
float l9_16=smoothstep(0.0,N104_borderSoftness,N104_borderSelect);
float l9_17=fast::clamp(l9_16,0.0,1.0);
N104_borderSelect=1.0-l9_17;
float2 l9_18=N104_position;
float2 l9_19=l9_11-N104_backingOffset;
float l9_20=N104_radius;
l9_18=(abs(l9_18)-l9_19)+float2(l9_20);
float l9_21=(length(fast::max(l9_18,float2(0.0)))+fast::min(fast::max(l9_18.x,l9_18.y),0.0))-l9_20;
N104_backingSelect=l9_21;
float l9_22=smoothstep(0.0,N104_backingSoftness,N104_backingSelect);
float l9_23=fast::clamp(l9_22,0.0,1.0);
N104_backingSelect=1.0-l9_23;
float2 l9_24=N104_position;
float2 l9_25=l9_11-N104_handleOffset;
float l9_26=N104_handleRadius;
l9_24=(abs(l9_24)-l9_25)+float2(l9_26);
float l9_27=(length(fast::max(l9_24,float2(0.0)))+fast::min(fast::max(l9_24.x,l9_24.y),0.0))-l9_26;
N104_handleSelect=l9_27;
float l9_28=smoothstep((-N104_handleWidth)*0.5,0.0,N104_handleSelect);
float l9_29=fast::clamp(l9_28,0.0,1.0);
float l9_30=smoothstep(0.0,N104_handleWidth*0.5,N104_handleSelect);
float l9_31=fast::clamp(l9_30,0.0,1.0);
N104_handleSelect=l9_29-l9_31;
float l9_32=0.0;
l9_32+=((smoothstep(l9_11.y-5.0,l9_11.y,N104_position.y)*smoothstep(l9_11.x-5.0,l9_11.x,N104_position.x))*N104_scaleHandles.x);
l9_32+=((smoothstep((-l9_11.y)+5.0,-l9_11.y,N104_position.y)*smoothstep(l9_11.x-5.0,l9_11.x,N104_position.x))*N104_scaleHandles.y);
l9_32+=((smoothstep((-l9_11.y)+5.0,-l9_11.y,N104_position.y)*smoothstep((-l9_11.x)+5.0,-l9_11.x,N104_position.x))*N104_scaleHandles.z);
l9_32+=((smoothstep(l9_11.y-5.0,l9_11.y,N104_position.y)*smoothstep((-l9_11.x)+5.0,-l9_11.x,N104_position.x))*N104_scaleHandles.w);
N104_handleSelect*=l9_32;
param_44=N104_borderSelect;
param_45=N104_backingSelect;
param_46=N104_handleSelect;
borderSelect_N104=param_44;
backingSelect_N104=param_45;
handleSelect_N104=param_46;
float Output_N109=0.0;
Output_N109=(*sc_set2.UserUniforms).Port_Input0_N109-borderSelect_N104;
float3 Normal_N142=float3(0.0);
Normal_N142=Globals.VertexNormal_ViewSpace;
float4 ReflectionSample_N78=float4(0.0);
float param_48=Output_N109;
float3 param_49=Normal_N142;
ssGlobals param_51=Globals;
tempGlobals=param_51;
float4 param_50=float4(0.0);
N78_DoSample=param_48;
N78_Normal=param_49;
float3 l9_33=N78_Normal;
N78_ReflectionSample=float4(0.0);
if (N78_DoSample>0.0)
{
float3 l9_34=tempGlobals.SurfacePosition_ViewSpace;
float2 l9_35=cross(normalize(l9_34),l9_33).yx;
l9_35.x*=(-1.0);
l9_35=(l9_35*0.5)+float2(0.5);
float2 l9_36=l9_35;
float4 l9_37=float4(0.0);
int l9_38=0;
if ((int(matcapTextureHasSwappedViews_tmp)!=0))
{
int l9_39=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_39=0;
}
else
{
l9_39=in.varStereoViewID;
}
int l9_40=l9_39;
l9_38=1-l9_40;
}
else
{
int l9_41=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_41=0;
}
else
{
l9_41=in.varStereoViewID;
}
int l9_42=l9_41;
l9_38=l9_42;
}
int l9_43=l9_38;
int l9_44=matcapTextureLayout_tmp;
int l9_45=l9_43;
float2 l9_46=l9_36;
bool l9_47=(int(SC_USE_UV_TRANSFORM_matcapTexture_tmp)!=0);
float3x3 l9_48=(*sc_set2.UserUniforms).matcapTextureTransform;
int2 l9_49=int2(SC_SOFTWARE_WRAP_MODE_U_matcapTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_matcapTexture_tmp);
bool l9_50=(int(SC_USE_UV_MIN_MAX_matcapTexture_tmp)!=0);
float4 l9_51=(*sc_set2.UserUniforms).matcapTextureUvMinMax;
bool l9_52=(int(SC_USE_CLAMP_TO_BORDER_matcapTexture_tmp)!=0);
float4 l9_53=(*sc_set2.UserUniforms).matcapTextureBorderColor;
float l9_54=0.0;
bool l9_55=l9_52&&(!l9_50);
float l9_56=1.0;
float l9_57=l9_46.x;
int l9_58=l9_49.x;
if (l9_58==1)
{
l9_57=fract(l9_57);
}
else
{
if (l9_58==2)
{
float l9_59=fract(l9_57);
float l9_60=l9_57-l9_59;
float l9_61=step(0.25,fract(l9_60*0.5));
l9_57=mix(l9_59,1.0-l9_59,fast::clamp(l9_61,0.0,1.0));
}
}
l9_46.x=l9_57;
float l9_62=l9_46.y;
int l9_63=l9_49.y;
if (l9_63==1)
{
l9_62=fract(l9_62);
}
else
{
if (l9_63==2)
{
float l9_64=fract(l9_62);
float l9_65=l9_62-l9_64;
float l9_66=step(0.25,fract(l9_65*0.5));
l9_62=mix(l9_64,1.0-l9_64,fast::clamp(l9_66,0.0,1.0));
}
}
l9_46.y=l9_62;
if (l9_50)
{
bool l9_67=l9_52;
bool l9_68;
if (l9_67)
{
l9_68=l9_49.x==3;
}
else
{
l9_68=l9_67;
}
float l9_69=l9_46.x;
float l9_70=l9_51.x;
float l9_71=l9_51.z;
bool l9_72=l9_68;
float l9_73=l9_56;
float l9_74=fast::clamp(l9_69,l9_70,l9_71);
float l9_75=step(abs(l9_69-l9_74),9.9999997e-06);
l9_73*=(l9_75+((1.0-float(l9_72))*(1.0-l9_75)));
l9_69=l9_74;
l9_46.x=l9_69;
l9_56=l9_73;
bool l9_76=l9_52;
bool l9_77;
if (l9_76)
{
l9_77=l9_49.y==3;
}
else
{
l9_77=l9_76;
}
float l9_78=l9_46.y;
float l9_79=l9_51.y;
float l9_80=l9_51.w;
bool l9_81=l9_77;
float l9_82=l9_56;
float l9_83=fast::clamp(l9_78,l9_79,l9_80);
float l9_84=step(abs(l9_78-l9_83),9.9999997e-06);
l9_82*=(l9_84+((1.0-float(l9_81))*(1.0-l9_84)));
l9_78=l9_83;
l9_46.y=l9_78;
l9_56=l9_82;
}
float2 l9_85=l9_46;
bool l9_86=l9_47;
float3x3 l9_87=l9_48;
if (l9_86)
{
l9_85=float2((l9_87*float3(l9_85,1.0)).xy);
}
float2 l9_88=l9_85;
float2 l9_89=l9_88;
float2 l9_90=l9_89;
l9_46=l9_90;
float l9_91=l9_46.x;
int l9_92=l9_49.x;
bool l9_93=l9_55;
float l9_94=l9_56;
if ((l9_92==0)||(l9_92==3))
{
float l9_95=l9_91;
float l9_96=0.0;
float l9_97=1.0;
bool l9_98=l9_93;
float l9_99=l9_94;
float l9_100=fast::clamp(l9_95,l9_96,l9_97);
float l9_101=step(abs(l9_95-l9_100),9.9999997e-06);
l9_99*=(l9_101+((1.0-float(l9_98))*(1.0-l9_101)));
l9_95=l9_100;
l9_91=l9_95;
l9_94=l9_99;
}
l9_46.x=l9_91;
l9_56=l9_94;
float l9_102=l9_46.y;
int l9_103=l9_49.y;
bool l9_104=l9_55;
float l9_105=l9_56;
if ((l9_103==0)||(l9_103==3))
{
float l9_106=l9_102;
float l9_107=0.0;
float l9_108=1.0;
bool l9_109=l9_104;
float l9_110=l9_105;
float l9_111=fast::clamp(l9_106,l9_107,l9_108);
float l9_112=step(abs(l9_106-l9_111),9.9999997e-06);
l9_110*=(l9_112+((1.0-float(l9_109))*(1.0-l9_112)));
l9_106=l9_111;
l9_102=l9_106;
l9_105=l9_110;
}
l9_46.y=l9_102;
l9_56=l9_105;
float2 l9_113=l9_46;
int l9_114=l9_44;
int l9_115=l9_45;
float l9_116=l9_54;
float2 l9_117=l9_113;
int l9_118=l9_114;
int l9_119=l9_115;
float3 l9_120=float3(0.0);
if (l9_118==0)
{
l9_120=float3(l9_117,0.0);
}
else
{
if (l9_118==1)
{
l9_120=float3(l9_117.x,(l9_117.y*0.5)+(0.5-(float(l9_119)*0.5)),0.0);
}
else
{
l9_120=float3(l9_117,float(l9_119));
}
}
float3 l9_121=l9_120;
float3 l9_122=l9_121;
float2 l9_123=l9_122.xy;
float l9_124=l9_116;
float4 l9_125=sc_set2.matcapTexture.sample(sc_set2.matcapTextureSmpSC,l9_123,bias(l9_124));
float4 l9_126=l9_125;
float4 l9_127=l9_126;
if (l9_52)
{
l9_127=mix(l9_53,l9_127,float4(l9_56));
}
float4 l9_128=l9_127;
l9_37=l9_128;
float4 l9_129=l9_37;
N78_ReflectionSample=l9_129;
}
param_50=N78_ReflectionSample;
ReflectionSample_N78=param_50;
float Output_N87=0.0;
float l9_130;
if (Output_N109<=0.0)
{
l9_130=0.0;
}
else
{
l9_130=pow(Output_N109,(*sc_set2.UserUniforms).Port_Input1_N087);
}
Output_N87=l9_130;
float4 Output_N24=float4(0.0);
Output_N24=mix((*sc_set2.UserUniforms).Port_Input0_N024,(*sc_set2.UserUniforms).Port_Input1_N024,float4(Output_N87));
float4 Output_N58=float4(0.0);
Output_N58=fast::max(ReflectionSample_N78,Output_N24);
float4 Output_N149=float4(0.0);
Output_N149=Output_N58*float4((*sc_set2.UserUniforms).Port_Input1_N149);
float Output_N75=0.0;
Output_N75=Output_N74*Output_N109;
float4 Value_N176=float4(0.0);
Value_N176=float4(Output_N149.xyz.x,Output_N149.xyz.y,Output_N149.xyz.z,Value_N176.w);
Value_N176.w=Output_N75;
float3 Output_N151=float3(0.0);
Output_N151=(*sc_set2.UserUniforms).Port_Value_N151;
float Output_N27=0.0;
float param_52=(*sc_set2.UserUniforms).backingAlpha;
Output_N27=param_52;
float Output_N52=0.0;
Output_N52=Output_N27*(*sc_set2.UserUniforms).Port_Input1_N052;
float ValueOut_N129=0.0;
ValueOut_N129=(((Output_N74-(*sc_set2.UserUniforms).Port_RangeMinA_N129)/((*sc_set2.UserUniforms).Port_RangeMaxA_N129-(*sc_set2.UserUniforms).Port_RangeMinA_N129))*((*sc_set2.UserUniforms).Port_RangeMaxB_N129-(*sc_set2.UserUniforms).Port_RangeMinB_N129))+(*sc_set2.UserUniforms).Port_RangeMinB_N129;
float Output_N169=0.0;
float l9_131;
if (backingSelect_N104<=0.0)
{
l9_131=0.0;
}
else
{
l9_131=pow(backingSelect_N104,ValueOut_N129);
}
Output_N169=l9_131;
float Output_N76=0.0;
Output_N76=Output_N52*Output_N169;
float4 Value_N42=float4(0.0);
Value_N42=float4(Output_N151.x,Output_N151.y,Output_N151.z,Value_N42.w);
Value_N42.w=Output_N76;
float4 result_N25=float4(0.0);
float4 param_53=Value_N176;
float4 param_54=Value_N42;
ssGlobals param_56=Globals;
tempGlobals=param_56;
float4 param_55=float4(0.0);
N25_base=param_53;
N25_blend=param_54;
float l9_132=fast::max(N25_blend.w,N25_base.w);
float3 l9_133=(N25_blend.xyz*N25_blend.w)+(N25_base.xyz*N25_base.w);
N25_result=float4(l9_133,l9_132);
param_55=N25_result;
result_N25=param_55;
float Output_N166=0.0;
Output_N166=(*sc_set2.UserUniforms).Port_Input0_N166*Output_N125;
float Output_N165=0.0;
Output_N165=smoothstep(Output_N166,(*sc_set2.UserUniforms).Port_Input1_N165,Output_N6);
float Output_N159=0.0;
Output_N159=Output_N94*Output_N165;
float Output_N157=0.0;
Output_N157=smoothstep((*sc_set2.UserUniforms).Port_Input0_N157,(*sc_set2.UserUniforms).Port_Input1_N157,handleSelect_N104);
float Output_N158=0.0;
Output_N158=Output_N159*Output_N157;
float4 Value_N156=float4(0.0);
Value_N156=float4((*sc_set2.UserUniforms).Port_Value1_N156.x,(*sc_set2.UserUniforms).Port_Value1_N156.y,(*sc_set2.UserUniforms).Port_Value1_N156.z,Value_N156.w);
Value_N156.w=Output_N158;
float4 Output_N100=float4(0.0);
Output_N100=mix(result_N25,Value_N156,float4(Output_N158));
float3 Value1_N77=float3(0.0);
float Value2_N77=0.0;
float4 param_57=Output_N100;
float3 param_58=param_57.xyz;
float param_59=param_57.w;
Value1_N77=param_58;
Value2_N77=param_59;
float3 Output_N57=float3(0.0);
Output_N57=Output_N55+Value1_N77;
float Output_N88=0.0;
float param_60=(*sc_set2.UserUniforms).opacity;
Output_N88=param_60;
float Output_N89=0.0;
Output_N89=Value2_N77*Output_N88;
float4 Value_N90=float4(0.0);
Value_N90=float4(Output_N57.x,Output_N57.y,Output_N57.z,Value_N90.w);
Value_N90.w=Output_N89;
float Output_N93=0.0;
Output_N93=step(Output_N89,(*sc_set2.UserUniforms).Port_Input1_N093);
float4 Output_N92=float4(0.0);
float4 param_61=Value_N90;
float param_62=Output_N93;
float4 param_63=param_61;
if ((param_62*1.0)!=0.0)
{
discard_fragment();
}
Output_N92=param_63;
FinalColor=Output_N92;
float param_64=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_64<(*sc_set2.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_134=gl_FragCoord;
float2 l9_135=floor(mod(l9_134.xy,float2(4.0)));
float l9_136=(mod(dot(l9_135,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_64<l9_136)
{
discard_fragment();
}
}
float4 param_65=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_137=param_65;
float4 l9_138=l9_137;
float l9_139=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_139=l9_138.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_139=fast::clamp(l9_138.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_139=fast::clamp(dot(l9_138.xyz,float3(l9_138.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_139=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_139=(1.0-dot(l9_138.xyz,float3(0.33333001)))*l9_138.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_139=(1.0-fast::clamp(dot(l9_138.xyz,float3(1.0)),0.0,1.0))*l9_138.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_139=fast::clamp(dot(l9_138.xyz,float3(1.0)),0.0,1.0)*l9_138.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_139=fast::clamp(dot(l9_138.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_139=fast::clamp(dot(l9_138.xyz,float3(1.0)),0.0,1.0)*l9_138.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_139=dot(l9_138.xyz,float3(0.33333001))*l9_138.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_139=1.0-fast::clamp(dot(l9_138.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_139=fast::clamp(dot(l9_138.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_140=l9_139;
float l9_141=l9_140;
float l9_142=(*sc_set2.UserUniforms).sc_ShadowDensity*l9_141;
float3 l9_143=mix((*sc_set2.UserUniforms).sc_ShadowColor.xyz,(*sc_set2.UserUniforms).sc_ShadowColor.xyz*l9_137.xyz,float3((*sc_set2.UserUniforms).sc_ShadowColor.w));
float4 l9_144=float4(l9_143.x,l9_143.y,l9_143.z,l9_142);
param_65=l9_144;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_65=float4(param_65.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_145=param_65;
float4 l9_146=float4(0.0);
float4 l9_147=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_148=out.FragColor0;
float4 l9_149=l9_148;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_149.x+=(*sc_set2.UserUniforms)._sc_framebufferFetchMarker;
}
float4 l9_150=l9_149;
l9_147=l9_150;
}
else
{
float4 l9_151=gl_FragCoord;
float2 l9_152=(l9_151.xy*(*sc_set2.UserUniforms).sc_WindowToViewportTransform.xy)+(*sc_set2.UserUniforms).sc_WindowToViewportTransform.zw;
float2 l9_153=l9_152;
float2 l9_154=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_155=1;
int l9_156=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_156=0;
}
else
{
l9_156=in.varStereoViewID;
}
int l9_157=l9_156;
int l9_158=l9_157;
float3 l9_159=float3(l9_153,0.0);
int l9_160=l9_155;
int l9_161=l9_158;
if (l9_160==1)
{
l9_159.y=((2.0*l9_159.y)+float(l9_161))-1.0;
}
float2 l9_162=l9_159.xy;
l9_154=l9_162;
}
else
{
l9_154=l9_153;
}
float2 l9_163=l9_154;
float2 l9_164=l9_163;
float2 l9_165=l9_164;
int l9_166=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_167=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_167=0;
}
else
{
l9_167=in.varStereoViewID;
}
int l9_168=l9_167;
l9_166=1-l9_168;
}
else
{
int l9_169=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_169=0;
}
else
{
l9_169=in.varStereoViewID;
}
int l9_170=l9_169;
l9_166=l9_170;
}
int l9_171=l9_166;
float2 l9_172=l9_165;
int l9_173=l9_171;
float2 l9_174=l9_172;
int l9_175=l9_173;
float l9_176=0.0;
float4 l9_177=float4(0.0);
float2 l9_178=l9_174;
int l9_179=sc_ScreenTextureLayout_tmp;
int l9_180=l9_175;
float l9_181=l9_176;
float2 l9_182=l9_178;
int l9_183=l9_179;
int l9_184=l9_180;
float3 l9_185=float3(0.0);
if (l9_183==0)
{
l9_185=float3(l9_182,0.0);
}
else
{
if (l9_183==1)
{
l9_185=float3(l9_182.x,(l9_182.y*0.5)+(0.5-(float(l9_184)*0.5)),0.0);
}
else
{
l9_185=float3(l9_182,float(l9_184));
}
}
float3 l9_186=l9_185;
float3 l9_187=l9_186;
float2 l9_188=l9_187.xy;
float l9_189=l9_181;
float4 l9_190=sc_set2.sc_ScreenTexture.sample(sc_set2.sc_ScreenTextureSmpSC,l9_188,bias(l9_189));
float4 l9_191=l9_190;
l9_177=l9_191;
float4 l9_192=l9_177;
float4 l9_193=l9_192;
float4 l9_194=l9_193;
l9_147=l9_194;
}
float4 l9_195=l9_147;
float4 l9_196=l9_195;
float3 l9_197=l9_196.xyz;
float3 l9_198=l9_197;
float3 l9_199=l9_145.xyz;
float3 l9_200=definedBlend(l9_198,l9_199,in.varStereoViewID,(*sc_set2.UserUniforms),sc_set2.intensityTexture,sc_set2.intensityTextureSmpSC);
l9_146=float4(l9_200.x,l9_200.y,l9_200.z,l9_146.w);
float3 l9_201=mix(l9_197,l9_146.xyz,float3(l9_145.w));
l9_146=float4(l9_201.x,l9_201.y,l9_201.z,l9_146.w);
l9_146.w=1.0;
float4 l9_202=l9_146;
param_65=l9_202;
}
else
{
float4 l9_203=param_65;
float4 l9_204=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_204=float4(mix(float3(1.0),l9_203.xyz,float3(l9_203.w)),l9_203.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_205=l9_203.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_205=fast::clamp(l9_205,0.0,1.0);
}
l9_204=float4(l9_203.xyz*l9_205,l9_205);
}
else
{
l9_204=l9_203;
}
}
float4 l9_206=l9_204;
param_65=l9_206;
}
}
}
float4 l9_207=param_65;
FinalColor=l9_207;
if ((*sc_set2.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_208=float4(0.0);
if ((int(sc_ShaderComplexityAnalyzer_tmp)!=0))
{
l9_208=float4((*sc_set2.UserUniforms).shaderComplexityValue/255.0,0.0,0.0,1.0);
}
else
{
l9_208=float4(0.0);
}
float4 l9_209=l9_208;
float4 Cost=l9_209;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_66=in.varPos;
float4 param_67=FinalColor;
FinalColor=outputMotionVectorsIfNeeded(param_66,param_67,in.varStereoViewID,(*sc_set2.UserUniforms));
float4 param_68=FinalColor;
float4 l9_210=param_68;
out.FragColor0=l9_210;
return out;
}
} // FRAGMENT SHADER