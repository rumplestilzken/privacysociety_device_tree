$(call inherit-product, device/privacysociety/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := privacysociety_pocket
PRODUCT_BRAND := Unihertz
PRODUCT_SYSTEM_BRAND := Unihertz
PRODUCT_MANUFACTURER := Unihertz
PRODUCT_NAME := Titan Pocket
PRODUCT_MODEL := Titan_pocket

RESOURCE_PATH := device/privacysociety/privacysociety_pocket

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
KIKA_PATH += device/privacysociety/prebuilt/kika-input/
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
    treble-app2 \
    KikaInput \
