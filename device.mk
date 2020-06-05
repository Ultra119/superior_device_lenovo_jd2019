# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lenovo/jd2019/jd2019-vendor.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29

# Boot animation
#TARGET_SCREEN_HEIGHT := 2244
#TARGET_SCREEN_WIDTH := 1080

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default
# Camera
PRODUCT_PACKAGES += \
    Snap \
    GCam

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/org.codeaurora.snapcam.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/org.codeaurora.snapcam.xml

# Common init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.safailnet.rc \
    init.power.rc

# Device-specific settings
PRODUCT_PACKAGES += \
    LenovoParts

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI \
    NexusLauncherRelease

# Display
PRODUCT_PACKAGES += \
    libvulkan \
    vendor.display.config@1.0

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio
PRODUCT_BOOT_JARS += \
    qcom.fmradio
<<<<<<< HEAD
=======
PRODUCT_PRODUCT_PROPERTIES += \
   vendor.bluetooth.soc=cherokee \
   ro.vendor.fm.use_audio_session=true
>>>>>>> 17fa17b... Fix bootloop

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/vintf/manifest.xml

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml
<<<<<<< HEAD
=======
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml
>>>>>>> 17fa17b... Fix bootloop

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/fts_ts.kl:system/usr/keylayout/fts_ts.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.lenovo_jd2019

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Permissions
PRODUCT_COPY_FILES += \
<<<<<<< HEAD
=======
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Pixel identification
PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=google/flame/flame:10/QQ2A.200501.001.A3/6353761:user/release-keys

# Permissions
PRODUCT_COPY_FILES += \
>>>>>>> 17fa17b... Fix bootloop
    $(LOCAL_PATH)/configs/privapp-permissions-google-p.xml:$(TARGET_COPY_OUT_SYSTEM)/product/etc/permissions/privapp-permissions-google-p.xml

# Power
PRODUCT_PACKAGES += \
<<<<<<< HEAD
    android.hardware.power@1.3-service.lenovo-libperfmgr \
    android.hardware.power.stats@1.0-service.lenovo

=======
    android.hardware.power@1.2-service-qti

# QTI Performance
PRODUCT_BOOT_JARS += \
    QPerformance \
    UxPerformance
>>>>>>> 17fa17b... Fix bootloop
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/powerhint.json:system/etc/powerhint.json

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/google/pixel

# System properties
-include $(LOCAL_PATH)/product_prop.mk

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext
PRODUCT_BOOT_JARS += \
    telephony-ext
PRODUCT_PACKAGES += \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.lenovo_jd2019

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/wifi/WCNSS_qcom_cfg.ini

# WiFi Display
PRODUCT_PACKAGES += \
    libnl
PRODUCT_BOOT_JARS += \
    WfdCommon
<<<<<<< HEAD

# Wallpapers
PRODUCT_PACKAGES += \
    PixelLiveWallpaperPrebuilt

=======
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_hwc_vds=1 \

# Wallpapers
PRODUCT_PACKAGES += \
    PixelLiveWallpaperPrebuilt
>>>>>>> 17fa17b... Fix bootloop
