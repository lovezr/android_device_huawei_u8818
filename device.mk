$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/u8818/u8818-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8818/overlay
PRODUCT_LOCALES += hdpi
#PRODUCT_LOCALES := zh_CN zh_TW en_US

# Video decoding
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libstagefrighthw
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7627a \
    copybit.msm7627a \
	lights.msm7627a \
    hwcomposer.msm7627a \
    libtilerenderer \
    libQcomUI \
	liboverlay \
    libgenlock \
    libmemalloc \
	libI420colorconvert \
	libhwcexternal \
	libhwcservice \
	libqdutils \
	mm-vdec-omx-test \
	mm-video-driver-test \
	mm-venc-omx-test720p \
	mm-video-encdrv-test
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7627a \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.msm7627a \
    libloc_api-rpc \
    Camera

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    
PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8818/prebuilt/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/u8818/prebuilt/init.qcom.sh:root/init.qcom.sh \
    device/huawei/u8818/prebuilt/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/u8818/prebuilt/init.msm7627a.rc:root/init.msm7627a.rc

PRODUCT_COPY_FILES += \
	device/huawei/u8818/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/huawei/u8818/prebuilt/system/wifi/dhd_4330.ko:system/wifi/dhd_4330.ko \
    device/huawei/u8818/prebuilt/system/wifi/fw_4330_b2.bin:system/wifi/fw_4330_b2.bin \
    device/huawei/u8818/prebuilt/system/wifi/nvram_4330.txt:system/wifi/nvram_4330.txt \
    device/huawei/u8818/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/huawei/u8818/audio_policy.conf:system/etc/audio_policy.conf
    
PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/init.bcm.chip_off.sh:system/etc/bluetooth/init.bcm.chip_off.sh \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/init.bcm.chip_on.sh:system/etc/bluetooth/init.bcm.chip_on.sh \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8818/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/u8818/prebuilt/system/etc/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/huawei/u8818/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8818/mediaprofiles/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8818/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8818/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8818/prebuilt/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/u8818/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/u8818/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8818/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8818/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/u8818/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl
    
PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/huawei/u8818/prebuilt/system/lib/libC2D2.so:system/lib/libC2D2.so \
    device/huawei/u8818/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/huawei/u8818/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/huawei/u8818/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/huawei/u8818/prebuilt/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so

PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_u8818
PRODUCT_DEVICE := u8818
PRODUCT_BRAND := huawei

