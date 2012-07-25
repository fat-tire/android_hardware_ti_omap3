LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= \
	cexec.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../inc	

LOCAL_SHARED_LIBRARIES := \
	libbridge \
	
LOCAL_CFLAGS += -Wall -g -O2 -finline-functions -DOMAP_3430

# change to dspexec for compatibility reasons - why did you rename this, TI?!
LOCAL_MODULE:= dspexec
LOCAL_MODULE_TAGS:= optional

include $(BUILD_EXECUTABLE)

