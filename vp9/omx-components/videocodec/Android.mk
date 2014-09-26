LOCAL_PATH := $(call my-dir)

# VP9 with SW decode and HW Render
include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := \
    libui \
    libwrs_omxil_common \
    liblog \
    libhardware

LOCAL_STATIC_LIBRARIES := \
    libvpx_internal

LOCAL_C_INCLUDES := \
    $(TARGET_OUT_HEADERS)/wrs_omxil_core \
    $(TARGET_OUT_HEADERS)/khronos/openmax \
    $(LOCAL_PATH)/libvpx_internal/libvpx \
    $(LOCAL_PATH)/libvpx_internal/libvpx/vpx_codec \
    $(LOCAL_PATH)/libvpx_internal/libvpx/vpx_ports \
    $(call include-path-for, frameworks-native)/media/hardware \
    $(call include-path-for, frameworks-native)/media/openmax

LOCAL_SRC_FILES := \
    OMXComponentCodecBase.cpp\
    OMXVideoDecoderBase.cpp\
    OMXVideoDecoderVP9HWR.cpp

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libOMXVideoDecoderVP9HWR

include $(BUILD_SHARED_LIBRARY)
# end VP9 SW decode and HW Render
