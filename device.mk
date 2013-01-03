
# Inherit the msm7x27a-common definitions
$(call inherit-product, device/huawei/msm7x27a-common/common.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8818/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

PRODUCT_NAME := cm_u8818
PRODUCT_DEVICE := u8818
PRODUCT_BRAND := huawei

