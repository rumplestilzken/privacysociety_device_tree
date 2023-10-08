$(call inherit-product, device/phh/treble/lineage_arm64_bvN.mk)

RESOURCE_PATH := device/privacysociety/

TARGET_NO_KERNEL_OVERRIDE := true

#Init Scripts
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/init/privacysociety_firstboot.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/privacysociety_firstboot.rc \

#Allow resigned images.
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.system.ota.json_url="https://ota.privacysociety.org/ota.json" \
		ro.bootimage.build.tags=release-keys \
		lineage.updater.uri="https://ota.privacysociety.org/{device}/{incr}/updates.json" \

PRODUCT_PACKAGES += \
   privacysociety_app_store \
	 # treble-app2
