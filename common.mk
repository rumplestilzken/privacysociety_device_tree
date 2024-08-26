$(call inherit-product, device/phh/treble/lineage_arm64_bvN.mk)

RESOURCE_PATH := device/privacysociety/

#TARGET_NO_KERNEL_OVERRIDE := true

#AB_OTA_UPDATER := false
#PRODUCT_USE_DYNAMIC_PARTITIONS := true
#PRODUCT_BUILD_SUPER_PARTITION := false
#TARGET_NO_RECOVERY := false

#PRODUCT_EXTRA_RECOVERY_KEYS := $(TARGET_COPY_OUT_SYSTEM)/system/etc/security/otacerts.zip

#Init Scripts
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/init/privacysociety_firstboot.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/privacysociety_firstboot.rc \

#Allow resigned images.
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# BOARD_VENDOR_SEPOLICY_DIRS += $(RESOURCE_PATH)/sepolicy

PRODUCT_SYSTEM_PROPERTIES += \
    ro.system.ota.json_url="https://ota.privacysociety.org/ota.json" \
	ro.bootimage.build.tags=release-keys \
	lineage.updater.uri="https://ota.privacysociety.org/{device}/{incr}/updates.json" \

ART_BOOT_IMAGE_EXTRA_ARGS="--runtime-arg -verbose:verifier"

PRODUCT_PACKAGES += \
   privacysociety_app_store \
   TrebleApp \
   Updater \
#   treble-app2 \
