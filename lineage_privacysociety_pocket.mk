$(call inherit-product, device/privacysociety/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := privacysociety_pocket
PRODUCT_BRAND := Unihertz
PRODUCT_SYSTEM_BRAND := Unihertz
PRODUCT_MANUFACTURER := Unihertz
PRODUCT_NAME := Titan Pocket
PRODUCT_MODEL := Titan_pocket

RESOURCE_PATH := device/privacysociety/privacysociety_pocket

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

# Avb
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 3
#
#Bootloader
#TARGET_BOARD_PLATFORM := mt6771
#TARGET_BOOTLOADER_BOARD_NAME := mt6771
#TARGET_NO_BOOTLOADER := true

# OTA
#AB_OTA_UPDATER := true
#AB_OTA_PARTITIONS := system
#PRODUCT_OTA_FORCE_NON_AB_PACKAGE := true
TARGET_OTA_ALLOW_NON_AB := true

# Dynamic Paritions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Boot
#BOARD_CUSTOM_BOOTIMG := true
#BOARD_PREBUILT_BOOTIMAGE := $(RESOURCE_PATH)/recovery/tee/boot.img
#BOARD_COPY_BOOT_IMAGE_TO_TARGET_FILES := true
#TARGET_NO_TWO_STEP_RECOVERY := true

# Kernel
#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
#BOARD_KERNEL_BASE := 0x40078000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_OFFSET := 0x00008000
#BOARD_RAMDISK_OFFSET := 0x14f88000
#BOARD_KERNEL_SECOND_OFFSET := 0x00e88000
#BOARD_DTB_OFFSET := 0x13f88000
#BOARD_BOOT_HEADER_VERSION := 2
#BOARD_KERNEL_TAGS_OFFSET := 0x13f88000
#BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
#BOARD_INCLUDE_DTB_IN_BOOTIMG := true
#BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
#BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
#BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
#INSTALLED_KERNEL_TARGET := $(RESOURCE_PATH)/recovery/tee/recovery.img-kernel
#INSTALLED_BOOTIMAGE_TARGET :=
#TARGET_PREBUILT_KERNEL := $(RESOURCE_PATH)/recovery/tee/kernel
TARGET_NO_KERNEL := true
TARGET_NO_KERNEL_OVERRIDE := true

# These two are for MTK Chipsets only
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := false
TARGET_NO_RECOVERY := true
BOARD_PREBUILT_DTBOIMAGE := $(RESOURCE_PATH)/recovery/tee/dtbo-verified.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(RESOURCE_PATH)/recovery/tee/
TARGET_RECOVERY_FSTAB := $(RESOURCE_PATH)/recovery/tee/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_PREBUILT_RECOVERY_KERNEL := $(RESOURCE_PATH)/recovery/tee/kernel
#BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := false
#BOARD_PREBUILT_RECOVERY := $(PRODUCT_OUT)/recovery.img
#$(INSTALLED_RECOVERYIMAGE_TARGET):
#	@echo "++++  Add hash footer to PREBUILT RECOVERY  ++++"
#	$(AVBTOOL) add_hash_footer \
#	    --image $(BOARD_PREBUILT_RECOVERY) \
#	    --partition_size $(BOARD_RECOVERYIMAGE_PARTITION_SIZE) \
#	    --partition_name recovery $(INTERNAL_AVB_RECOVERY_SIGNING_ARGS) \
#	    $(BOARD_AVB_RECOVERY_ADD_HASH_FOOTER_ARGS)
#	@echo "++++  Copying PREBUILT RECOVERY to $(PRODUCT_OUT)  ++++"
#	@cp $(BOARD_PREBUILT_RECOVERY) $(PRODUCT_OUT)/recovery.img
#BOARD_IMG_USE_RAMDISK := true
#BOARD_USES_FULL_RECOVERY_IMAGE := true
#TARGET_RECOVERY_OUT := $(PRODUCT_OUT)/recovery.img

# vbmeta
PRODUCT_EXTRA_RECOVERY_KEYS := /home/rumplestilzken/.android-certs/releasekey

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 121978716160
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SUPER_PARTITION_SIZE := 4831838208
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 4829741056
BOARD_MAIN_PARTITION_LIST := system

# Product
BUILDING_SYSTEM_IMAGE := true
BUILDING_CACHE_IMAGE := true
#BUILDING_RECOVERY_IMAGE := true
PRODUCT_BUILD_CACHE_IMAGE := true
PRODUCT_BUILD_RECOVERY_IMAGE := false

# Vendor
BUILD_WITHOUT_VENDOR := true

#BOARD_INCLUDE_RECOVERY_DTBO := true
#TARGET_RELEASETOOLS_EXTENSIONS := $(RESOURCE_PATH)/
#WITH_DEXPREOPT := false

#Init Scripts
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/privacysociety_firstboot.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/privacysociety_firstboot.sh \
	$(RESOURCE_PATH)/wallpaper.png:$(TARGET_COPY_OUT_SYSTEM)/product/media/wallpaper.png \

# Stop input from touchpad
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/excluded-input-devices.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/excluded-input-devices.xml \

#bootanimation
TARGET_BOOTANIMATION := $(RESOURCE_PATH)/bootanimation.zip

#Copy keyboard files into place.
PRODUCT_COPY_FILES += \
    $(RESOURCE_PATH)/keyboard/system_usr_idc/aw9523-key.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/aw9523-key.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_idc/mtk-pad.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-pad.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_idc/qwerty.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/qwerty.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_idc/qwerty2.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/qwerty2.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_idc/titan-uinput.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/titan-uinput.idc \
	$(RESOURCE_PATH)/keyboard/system_usr_keychars/aw9523-key.kcm:$(TARGET_COPY_OUT_SYSTEM)/usr/keychars/aw9523-key.kcm \
	$(RESOURCE_PATH)/keyboard/system_usr_keychars/Generic.kcm:$(TARGET_COPY_OUT_SYSTEM)/usr/keychars/Generic.kcm \
	$(RESOURCE_PATH)/keyboard/system_usr_keychars/qwerty.kcm:$(TARGET_COPY_OUT_SYSTEM)/usr/keychars/qwerty.kcm \
	$(RESOURCE_PATH)/keyboard/system_usr_keychars/qwerty2.kcm:$(TARGET_COPY_OUT_SYSTEM)/usr/keychars/qwerty2.kcm \
	$(RESOURCE_PATH)/keyboard/system_usr_keychars/Virtual.kcm:$(TARGET_COPY_OUT_SYSTEM)/usr/keychars/Virtual.kcm \
	$(RESOURCE_PATH)/keyboard/system_usr_keylayout/Generic.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Generic.kl \
	$(RESOURCE_PATH)/keyboard/system_usr_keylayout/aw9523-key.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/aw9523-key.kl \
	$(RESOURCE_PATH)/keyboard/system_usr_keylayout/AVRCP.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/AVRCP.kl \
	$(RESOURCE_PATH)/keyboard/system_usr_keylayout/qwerty.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/qwerty.kl \
	$(RESOURCE_PATH)/keyboard/system_usr_keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

#Kika-Input
KIKA_PATH = device/privacysociety/prebuilt/kika-input/
#lib
PRODUCT_COPY_FILES += \
	$(KIKA_PATH)/lib/libChangjieD1.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libChangjieD1.so \
   	$(KIKA_PATH)/lib/libChangjieH1.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libChangjieH1.so \
	$(KIKA_PATH)/lib/libChsPinyin.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libChsPinyin.so \
	$(KIKA_PATH)/lib/libChtZhuyin.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libChtZhuyin.so \
	$(KIKA_PATH)/lib/libDutch.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libDutch.so \
	$(KIKA_PATH)/lib/libEnglish_GB.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libEnglish_GB.so \
	$(KIKA_PATH)/lib/libEnglish.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libEnglish.so \
	$(KIKA_PATH)/lib/libFrench_FR.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libFrench_FR.so \
	$(KIKA_PATH)/lib/libGerman.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libGerman.so \
	$(KIKA_PATH)/lib/libIdiomTD.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libIdiomTD.so \
	$(KIKA_PATH)/lib/libIdiomTH.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libIdiomTH.so \
	$(KIKA_PATH)/lib/libIQQI-jni-Resource.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libIQQI-jni-Resource.so \
	$(KIKA_PATH)/lib/libiqqijni.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libiqqijni.so \
	$(KIKA_PATH)/lib/libiqqipy.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libiqqipy.so \
	$(KIKA_PATH)/lib/libItalian.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libItalian.so \
	$(KIKA_PATH)/lib/libjni_kikaime.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libjni_kikaime.so \
	$(KIKA_PATH)/lib/libmjp.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libmjp.so \
	$(KIKA_PATH)/lib/libPortuguese_PT.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libPortuguese_PT.so \
	$(KIKA_PATH)/lib/libRussian.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libRussian.so \
	$(KIKA_PATH)/lib/libSpanish_ES.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libSpanish_ES.so \

#lib64
PRODUCT_COPY_FILES += \
	$(KIKA_PATH)/lib64/libChangjieD1.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libChangjieD1.so \
   	$(KIKA_PATH)/lib64/libChangjieH1.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libChangjieH1.so \
	$(KIKA_PATH)/lib64/libChsPinyin.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libChsPinyin.so \
	$(KIKA_PATH)/lib64/libChtZhuyin.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libChtZhuyin.so \
	$(KIKA_PATH)/lib64/libDutch.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libDutch.so \
	$(KIKA_PATH)/lib64/libEnglish_GB.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libEnglish_GB.so \
	$(KIKA_PATH)/lib64/libEnglish.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libEnglish.so \
	$(KIKA_PATH)/lib64/libFrench_FR.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libFrench_FR.so \
	$(KIKA_PATH)/lib64/libGerman.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libGerman.so \
	$(KIKA_PATH)/lib64/libIdiomTD.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libIdiomTD.so \
	$(KIKA_PATH)/lib64/libIdiomTH.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libIdiomTH.so \
	$(KIKA_PATH)/lib64/libIQQI-jni-Resource.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libIQQI-jni-Resource.so \
	$(KIKA_PATH)/lib64/libiqqijni.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libiqqijni.so \
	$(KIKA_PATH)/lib64/libiqqipy.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libiqqipy.so \
	$(KIKA_PATH)/lib64/libItalian.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libItalian.so \
	$(KIKA_PATH)/lib64/libjni_kikaime.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libjni_kikaime.so \
	$(KIKA_PATH)/lib64/libmjp.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmjp.so \
	$(KIKA_PATH)/lib64/libPortuguese_PT.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libPortuguese_PT.so \
	$(KIKA_PATH)/lib64/libRussian.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libRussian.so \
	$(KIKA_PATH)/lib64/libSpanish_ES.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libSpanish_ES.so \

#IMS
PRODUCT_PACKAGES += \
    MTK-IMS_R \
    KikaInput \
#    treble-app2 \
