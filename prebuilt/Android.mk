LOCAL_PATH := $(call my-dir)/../src

# ================ import libprotobuf.a ================
include $(CLEAR_VARS)

# lib name
LOCAL_MODULE    := protobuf_static
# .a path
LOCAL_SRC_FILES := ../prebuilt/libprotobuf.a

# 賦值給NDK編譯系統
LOCAL_EXPORT_C_INCLUDES  := $(LOCAL_PATH) \
							$(LOCAL_PATH)/google/protobuf \
							$(LOCAL_PATH)/../vsprojects \

include $(PREBUILT_STATIC_LIBRARY)

