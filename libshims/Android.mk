LOCAL_PATH := $(call my-dir)

# camera sensors
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    android/sensor.cpp \
    gui/SensorManager.cpp

LOCAL_C_INCLUDES := gui
LOCAL_SHARED_LIBRARIES := libgui libutils liblog libbinder libandroid
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

# camera
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    camera/libcamera_flourmo.c

LOCAL_SHARED_LIBRARIES := libutils libgui liblog
LOCAL_MODULE := libcamera_flourmo
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# healthd
include $(CLEAR_VARS)

LOCAL_SRC_FILES := healthd_board_ido.cpp
LOCAL_MODULE := libhealthd.ido
LOCAL_C_INCLUDES := system/core/healthd
LOCAL_CFLAGS := -Werror

include $(BUILD_STATIC_LIBRARY)
