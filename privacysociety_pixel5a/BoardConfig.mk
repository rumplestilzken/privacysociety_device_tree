include device/phh/treble/tdgsi_arm64_ab/BoardConfig.mk

# # Platform
TARGET_BOOTLOADER_BOARD_NAME := barbet
TARGET_SCREEN_DENSITY := 420
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 165
USES_DEVICE_GOOGLE_BARBET := true

# # Architecture
TARGET_BOARD_PLATFORM := lito
USES_DEVICE_GOOGLE_REDBULL := true

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

ifeq (,$(filter %_64,$(TARGET_PRODUCT)))
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76
endif