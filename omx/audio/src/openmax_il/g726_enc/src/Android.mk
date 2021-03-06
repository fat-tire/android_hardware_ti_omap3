ifeq ($(BUILD_G726_ENCODER),1)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)



LOCAL_SRC_FILES:= \
    OMX_G726Enc_Utils.c \
    OMX_G726Encoder.c   \
    OMX_G726Enc_ComponentThread.c

LOCAL_C_INCLUDES := $(TI_OMX_COMP_C_INCLUDES) \
    $(TI_OMX_SYSTEM)/common/inc \
    $(TI_OMX_AUDIO)/g726_enc/inc
    
LOCAL_SHARED_LIBRARIES := $(TI_OMX_COMP_SHARED_LIBRARIES) \
        liblog


LOCAL_LDLIBS += \
    -lpthread \
    -ldl \
    -lsdl
    
LOCAL_CFLAGS := $(TI_OMX_CFLAGS) -DOMAP_2430

LOCAL_MODULE:= libOMX.TI.G726.encode
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
endif
