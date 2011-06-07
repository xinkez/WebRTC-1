# This file is generated by gyp; do not edit. This means you!

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := libwebrtc_utility
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=
LOCAL_SRC_FILES := coder.cc \
    file_player_impl.cc \
    file_recorder_impl.cc \
    process_thread_impl.cc \
    rtp_dump_impl.cc \
    frame_scaler.cc \
    video_coder.cc \
    video_frames_queue.cc

# Flags passed to both C and C++ files.
MY_CFLAGS :=  
MY_CFLAGS_C :=
MY_DEFS := '-DNO_TCMALLOC' \
    '-DNO_HEAPCHECKER' \
    '-DWEBRTC_TARGET_PC' \
    '-DWEBRTC_LINUX' \
    '-DWEBRTC_THREAD_RR' \
    '-DWEBRTC_ANDROID' \
    '-DANDROID' 
LOCAL_CFLAGS := $(MY_CFLAGS_C) $(MY_CFLAGS) $(MY_DEFS)

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../.. \
    $(LOCAL_PATH)/../interface \
    $(LOCAL_PATH)/../../interface \
    $(LOCAL_PATH)/../../../common_video/vplib/main/interface \
    $(LOCAL_PATH)/../../media_file/interface \
    $(LOCAL_PATH)/../../video_coding/main/interface \
    $(LOCAL_PATH)/../../audio_coding/main/interface \
    $(LOCAL_PATH)/../../video_coding/codecs/interface \
    $(LOCAL_PATH)/../../../common_audio/resampler/main/interface \
    $(LOCAL_PATH)/../../../system_wrappers/interface 

# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS := 
LOCAL_LDFLAGS :=
LOCAL_STATIC_LIBRARIES :=

LOCAL_SHARED_LIBRARIES := libcutils \
    libdl \
    libstlport
LOCAL_ADDITIONAL_DEPENDENCIES :=

include external/stlport/libstlport.mk
include $(BUILD_STATIC_LIBRARY)

