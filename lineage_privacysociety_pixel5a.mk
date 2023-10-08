$(call inherit-product, device/privacysociety/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := privacysociety_pixel5a
PRODUCT_BRAND := Google
PRODUCT_SYSTEM_BRAND := Google
PRODUCT_MANUFACTURER := Google
PRODUCT_NAME := Pixel_5a
PRODUCT_MODEL := Pixel 5a

RESOURCE_PATH := device/privacysociety/privacysociety_pixel5a

#Init Scripts
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/privacysociety_firstboot.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/privacysociety_firstboot.sh \
	$(RESOURCE_PATH)/wallpaper.png:$(TARGET_COPY_OUT_SYSTEM)/product/media/wallpaper.png \

#bootanimation
TARGET_BOOTANIMATION := $(RESOURCE_PATH)/bootanimation.zip
