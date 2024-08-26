$(call inherit-product, device/privacysociety/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := privacysociety_jelly2e
PRODUCT_BRAND := Unihertz
PRODUCT_SYSTEM_BRAND := Unihertz
PRODUCT_MANUFACTURER := Unihertz
PRODUCT_NAME := Jelly_2E
PRODUCT_MODEL := Jelly_2E

RESOURCE_PATH := device/privacysociety/privacysociety_jelly2e

#Init Scripts
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/privacysociety_firstboot.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/privacysociety_firstboot.sh \
	$(RESOURCE_PATH)/wallpaper.png:$(TARGET_COPY_OUT_SYSTEM)/product/media/wallpaper.png \

#bootanimation
TARGET_BOOTANIMATION := $(RESOURCE_PATH)/bootanimation.zip

# Avb
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 3

#Bootloader
#TARGET_BOARD_PLATFORM := mt6771
#TARGET_BOOTLOADER_BOARD_NAME := mt6771
#TARGET_NO_BOOTLOADER := true

# OTA
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := system
PRODUCT_PACKAGES += \
    update_engine \
    update_verifier
#PRODUCT_OTA_FORCE_NON_AB_PACKAGE := true
#TARGET_OTA_ALLOW_NON_AB := true

# Dynamic Paritions
PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_BUILD_PRODUCT_IMAGE := true

# Kernel
TARGET_NO_KERNEL := true
TARGET_NO_KERNEL_OVERRIDE := true

# These two are for MTK Chipsets only
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# Recovery
TARGET_NO_RECOVERY := true

# vbmeta
PRODUCT_EXTRA_RECOVERY_KEYS := /home/rumplestilzken/.android-certs/releasekey

# Partitions
BOARD_SUPER_PARTITION_SIZE := 4831838208
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 4829741056
BOARD_MAIN_PARTITION_LIST := system

# Product
BUILDING_SYSTEM_IMAGE := true
BUILDING_CACHE_IMAGE := false
#BUILDING_RECOVERY_IMAGE := true
PRODUCT_BUILD_CACHE_IMAGE := false
PRODUCT_BUILD_RECOVERY_IMAGE := false
PRODUCT_BUILD_PRODUCT_IMAGE := false
PRODUCT_BUILD_VENDOR_IMAGE := false

# Treble
BOARD_VNDK_VERSION := current

# Vendor
BUILD_WITHOUT_VENDOR := true

#IMS
PRODUCT_PACKAGES += \
    MTK-IMS_R \
#    treble-app2 \
