$(call inherit-product, device/privacysociety/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := privacysociety_atoml
PRODUCT_BRAND := Unihertz
PRODUCT_SYSTEM_BRAND := Unihertz
PRODUCT_MANUFACTURER := Unihertz
PRODUCT_NAME := Atom_L
PRODUCT_MODEL := Atom_L

RESOURCE_PATH := device/privacysociety/privacysociety_atoml

#Init Scripts
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/privacysociety_firstboot.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/privacysociety_firstboot.sh \

#bootanimation
TARGET_BOOTANIMATION := $(RESOURCE_PATH)/bootanimation.zip

#IMS
PRODUCT_PACKAGES += \
    MTK-IMS_R \
    treble-app2 \
