RESOURCE_PATH := device/privacysociety/

TARGET_NO_KERNEL_OVERRIDE := true

#Init Scripts
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/init/privacysociety_firstboot.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/privacysociety_firstboot.rc \

#Allow resigned images.
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

#PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#    persist.restricted_networking_mode=0 \
#    persist.rumplestilzken.settings=true \
