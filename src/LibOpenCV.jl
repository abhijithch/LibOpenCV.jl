module LibOpenCV

module cv2

include("config.jl")
include("./Mat.jl")
include("./highgui.jl")
include("./imgproc.jl")
include("./tracking.jl")

const CV_8UC1 = 0
const CV_8UC2 = 8
const CV_8UC3 = 16
const CV_8UC4 = 24
const CV_8SC1 = 1
const CV_8SC2 = 9
const CV_8SC3 = 17
const CV_8SC4 = 25
const CV_16UC1 = 2
const CV_16UC2 = 10
const CV_16UC3 = 18
const CV_16UC4 = 26
const CV_16SC1 = 3
const CV_16SC2 = 11
const CV_16SC3 = 19
const CV_16SC4 = 27
const CV_32SC1 = 4
const CV_32SC2 = 12
const CV_32SC3 = 20
const CV_32SC4 = 28
const CV_32FC1 = 5
const CV_32FC2 = 13
const CV_32FC3 = 21
const CV_32FC4 = 29
const CV_64FC1 = 6
const CV_64FC2 = 14
const CV_64FC3 = 22
const CV_64FC4 = 30

const CV_BGR2BGRA    =0
const CV_RGB2RGBA    =CV_BGR2BGRA

const CV_BGRA2BGR    =1
const CV_RGBA2RGB    =CV_BGRA2BGR

const CV_BGR2RGBA    =2
const CV_RGB2BGRA    =CV_BGR2RGBA

const CV_RGBA2BGR    =3
const CV_BGRA2RGB    =CV_RGBA2BGR

const CV_BGR2RGB     =4
const CV_RGB2BGR     =CV_BGR2RGB

const CV_BGRA2RGBA   =5
const CV_RGBA2BGRA   =CV_BGRA2RGBA

const CV_BGR2GRAY    =6
const CV_RGB2GRAY    =7
const CV_GRAY2BGR    =8
const CV_GRAY2RGB    =CV_GRAY2BGR
const CV_GRAY2BGRA   =9
const CV_GRAY2RGBA   =CV_GRAY2BGRA
const CV_BGRA2GRAY   =10
const CV_RGBA2GRAY   =11

const CV_BGR2BGR565  =12
const CV_RGB2BGR565  =13
const CV_BGR5652BGR  =14
const CV_BGR5652RGB  =15
const CV_BGRA2BGR565 =16
const CV_RGBA2BGR565 =17
const CV_BGR5652BGRA =18
const CV_BGR5652RGBA =19

const CV_GRAY2BGR565 =20
const CV_BGR5652GRAY =21

const CV_BGR2BGR555  =22
const CV_RGB2BGR555  =23
const CV_BGR5552BGR  =24
const CV_BGR5552RGB  =25
const CV_BGRA2BGR555 =26
const CV_RGBA2BGR555 =27
const CV_BGR5552BGRA =28
const CV_BGR5552RGBA =29

const CV_GRAY2BGR555 =30
const CV_BGR5552GRAY =31

const CV_BGR2XYZ     =32
const CV_RGB2XYZ     =33
const CV_XYZ2BGR     =34
const CV_XYZ2RGB     =35

const CV_BGR2YCrCb   =36
const CV_RGB2YCrCb   =37
const CV_YCrCb2BGR   =38
const CV_YCrCb2RGB   =39

const CV_BGR2HSV     =40
const CV_RGB2HSV     =41

const CV_BGR2Lab     =44
const CV_RGB2Lab     =45

const CV_BayerBG2BGR =46
const CV_BayerGB2BGR =47
const CV_BayerRG2BGR =48
const CV_BayerGR2BGR =49

const CV_BayerBG2RGB =CV_BayerRG2BGR
const CV_BayerGB2RGB =CV_BayerGR2BGR
const CV_BayerRG2RGB =CV_BayerBG2BGR
const CV_BayerGR2RGB =CV_BayerGB2BGR

const CV_BGR2Luv     =50
const CV_RGB2Luv     =51
const CV_BGR2HLS     =52
const CV_RGB2HLS     =53

const CV_HSV2BGR     =54
const CV_HSV2RGB     =55

const CV_Lab2BGR     =56
const CV_Lab2RGB     =57
const CV_Luv2BGR     =58
const CV_Luv2RGB     =59
const CV_HLS2BGR     =60
const CV_HLS2RGB     =61

const CV_BayerBG2BGR_VNG =62
const CV_BayerGB2BGR_VNG =63
const CV_BayerRG2BGR_VNG =64
const CV_BayerGR2BGR_VNG =65

const CV_BayerBG2RGB_VNG =CV_BayerRG2BGR_VNG
const CV_BayerGB2RGB_VNG =CV_BayerGR2BGR_VNG
const CV_BayerRG2RGB_VNG =CV_BayerBG2BGR_VNG
const CV_BayerGR2RGB_VNG =CV_BayerGB2BGR_VNG

const CV_BGR2HSV_FULL = 66
const CV_RGB2HSV_FULL = 67
const CV_BGR2HLS_FULL = 68
const CV_RGB2HLS_FULL = 69

const CV_HSV2BGR_FULL = 70
const CV_HSV2RGB_FULL = 71
const CV_HLS2BGR_FULL = 72
const CV_HLS2RGB_FULL = 73

const CV_LBGR2Lab     = 74
const CV_LRGB2Lab     = 75
const CV_LBGR2Luv     = 76
const CV_LRGB2Luv     = 77

const CV_Lab2LBGR     = 78
const CV_Lab2LRGB     = 79
const CV_Luv2LBGR     = 80
const CV_Luv2LRGB     = 81

const CV_BGR2YUV      = 82
const CV_RGB2YUV      = 83
const CV_YUV2BGR      = 84
const CV_YUV2RGB      = 85

const CV_BayerBG2GRAY = 86
const CV_BayerGB2GRAY = 87
const CV_BayerRG2GRAY = 88
const CV_BayerGR2GRAY = 89


const CV_YUV2RGB_NV12 = 90
const CV_YUV2BGR_NV12 = 91
const CV_YUV2RGB_NV21 = 92
const CV_YUV2BGR_NV21 = 93
const CV_YUV420sp2RGB = CV_YUV2RGB_NV21
const CV_YUV420sp2BGR = CV_YUV2BGR_NV21

const CV_YUV2RGBA_NV12 = 94
const CV_YUV2BGRA_NV12 = 95
const CV_YUV2RGBA_NV21 = 96
const CV_YUV2BGRA_NV21 = 97
const CV_YUV420sp2RGBA = CV_YUV2RGBA_NV21
const CV_YUV420sp2BGRA = CV_YUV2BGRA_NV21

const CV_YUV2RGB_YV12 = 98
const CV_YUV2BGR_YV12 = 99
const CV_YUV2RGB_IYUV = 100
const CV_YUV2BGR_IYUV = 101
const CV_YUV2RGB_I420 = CV_YUV2RGB_IYUV
const CV_YUV2BGR_I420 = CV_YUV2BGR_IYUV
const CV_YUV420p2RGB = CV_YUV2RGB_YV12
const CV_YUV420p2BGR = CV_YUV2BGR_YV12

const CV_YUV2RGBA_YV12 = 102
const CV_YUV2BGRA_YV12 = 103
const CV_YUV2RGBA_IYUV = 104
const CV_YUV2BGRA_IYUV = 105
const CV_YUV2RGBA_I420 = CV_YUV2RGBA_IYUV
const CV_YUV2BGRA_I420 = CV_YUV2BGRA_IYUV
const CV_YUV420p2RGBA = CV_YUV2RGBA_YV12
const CV_YUV420p2BGRA = CV_YUV2BGRA_YV12

const CV_YUV2GRAY_420 = 106
const CV_YUV2GRAY_NV21 = CV_YUV2GRAY_420
const CV_YUV2GRAY_NV12 = CV_YUV2GRAY_420
const CV_YUV2GRAY_YV12 = CV_YUV2GRAY_420
const CV_YUV2GRAY_IYUV = CV_YUV2GRAY_420
const CV_YUV2GRAY_I420 = CV_YUV2GRAY_420
const CV_YUV420sp2GRAY = CV_YUV2GRAY_420
const CV_YUV420p2GRAY = CV_YUV2GRAY_420


const CV_YUV2RGB_UYVY = 107
const CV_YUV2BGR_UYVY = 108


const CV_YUV2RGB_Y422 = CV_YUV2RGB_UYVY
const CV_YUV2BGR_Y422 = CV_YUV2BGR_UYVY
const CV_YUV2RGB_UYNV = CV_YUV2RGB_UYVY
const CV_YUV2BGR_UYNV = CV_YUV2BGR_UYVY

const CV_YUV2RGBA_UYVY = 111
const CV_YUV2BGRA_UYVY = 112


const CV_YUV2RGBA_Y422 = CV_YUV2RGBA_UYVY
const CV_YUV2BGRA_Y422 = CV_YUV2BGRA_UYVY
const CV_YUV2RGBA_UYNV = CV_YUV2RGBA_UYVY
const CV_YUV2BGRA_UYNV = CV_YUV2BGRA_UYVY

const CV_YUV2RGB_YUY2 = 115
const CV_YUV2BGR_YUY2 = 116
const CV_YUV2RGB_YVYU = 117
const CV_YUV2BGR_YVYU = 118
const CV_YUV2RGB_YUYV = CV_YUV2RGB_YUY2
const CV_YUV2BGR_YUYV = CV_YUV2BGR_YUY2
const CV_YUV2RGB_YUNV = CV_YUV2RGB_YUY2
const CV_YUV2BGR_YUNV = CV_YUV2BGR_YUY2

const CV_YUV2RGBA_YUY2 = 119
const CV_YUV2BGRA_YUY2 = 120
const CV_YUV2RGBA_YVYU = 121
const CV_YUV2BGRA_YVYU = 122
const CV_YUV2RGBA_YUYV = CV_YUV2RGBA_YUY2
const CV_YUV2BGRA_YUYV = CV_YUV2BGRA_YUY2
const CV_YUV2RGBA_YUNV = CV_YUV2RGBA_YUY2
const CV_YUV2BGRA_YUNV = CV_YUV2BGRA_YUY2

const CV_YUV2GRAY_UYVY = 123
const CV_YUV2GRAY_YUY2 = 124

const CV_YUV2GRAY_Y422 = CV_YUV2GRAY_UYVY
const CV_YUV2GRAY_UYNV = CV_YUV2GRAY_UYVY
const CV_YUV2GRAY_YVYU = CV_YUV2GRAY_YUY2
const CV_YUV2GRAY_YUYV = CV_YUV2GRAY_YUY2
const CV_YUV2GRAY_YUNV = CV_YUV2GRAY_YUY2


const CV_RGBA2mRGBA = 125
const CV_mRGBA2RGBA = 126

const CV_RGB2YUV_I420 = 127
const CV_BGR2YUV_I420 = 128
const CV_RGB2YUV_IYUV = CV_RGB2YUV_I420
const CV_BGR2YUV_IYUV = CV_BGR2YUV_I420

const CV_RGBA2YUV_I420 = 129
const CV_BGRA2YUV_I420 = 130
const CV_RGBA2YUV_IYUV = CV_RGBA2YUV_I420
const CV_BGRA2YUV_IYUV = CV_BGRA2YUV_I420
const CV_RGB2YUV_YV12  = 131
const CV_BGR2YUV_YV12  = 132
const CV_RGBA2YUV_YV12 = 133
const CV_BGRA2YUV_YV12 = 134


const CV_BayerBG2BGR_EA = 135
const CV_BayerGB2BGR_EA = 136
const CV_BayerRG2BGR_EA = 137
const CV_BayerGR2BGR_EA = 138

const CV_BayerBG2RGB_EA = CV_BayerRG2BGR_EA
const CV_BayerGB2RGB_EA = CV_BayerGR2BGR_EA
const CV_BayerRG2RGB_EA = CV_BayerBG2BGR_EA
const CV_BayerGR2RGB_EA = CV_BayerGB2BGR_EA

end # cv2

export cv2

end # LibOpenCV