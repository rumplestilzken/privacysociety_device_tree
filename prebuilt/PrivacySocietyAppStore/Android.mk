LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := privacysociety_app_store

LOCAL_CERTIFICATE := platform

LOCAL_SRC_FILES := app-store-ps-rom.apk

LOCAL_MODULE_CLASS := APPS

LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)