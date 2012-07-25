LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    TIOMXPlugin.cpp

LOCAL_CFLAGS := $(PV_CFLAGS_MINUS_VISIBILITY)

LOCAL_C_INCLUDES:= \
        $(TOP)/frameworks/native/include/media/stagefright/openmax \
	$(TOP)/frameworks/native/include/media/hardware/openmax \
	$(TOP)/frameworks/native/include/media/openmax \
	$(TOP)/frameworks/native/include/media/hardware

LOCAL_SHARED_LIBRARIES :=       \
        libbinder               \
        libutils                \
        libcutils               \
        libui                   \
        libdl                   \

LOCAL_MODULE := libstagefrighthw
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

