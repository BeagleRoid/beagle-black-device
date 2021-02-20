LOCAL_PATH := device/ti/beagle_black

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)

PRODUCT_COPY_FILES += \
	system/core/rootdir/etc/public.libraries.android.txt:system/etc/public.libraries.txt

PRODUCT_RUNTIMES := runtime_libart_default

PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

DEVICE_PACKAGE_OVERLAYS += \
	$(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/etc/fstab.bbb:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.bbb \
	$(LOCAL_PATH)/etc/init.bbb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.bbb.rc \
	$(LOCAL_PATH)/etc/ueventd.bbb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/ueventd.bbb.rc \
	$(LOCAL_PATH)/audio/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
	$(LOCAL_PATH)/audio/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.low_ram=true \
	ro.product.serialnumber=123456789 \
	ro.hardware.hwcomposer=drm_minigbm \
	ro.hardware.gralloc=minigbm \
	ro.lmk.low=1001 \
	ro.lmk.medium=1001 \
	debug.sf.nobootanimation=1 \
	debug.stagefright.ccodec=0 \
	ro.fw.multiuser.headless_system_user=true \
	ro.fw.system_user_split=true \
	ro.hardware.egl=swiftshader

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.lmk.debug=true

PRODUCT_PACKAGES += \
	minigbm \
	drm_hwcomposer \
	hwcomposer.drm_minigbm \
	swiftshader_top_release \
	swiftshader_top_debug \
	libEGL_swiftshader \
	libGLESv1_CM_swiftshader \
	libGLESv2_swiftshader

PRODUCT_PACKAGES += \
	dhcpcd.conf

PRODUCT_PACKAGES += \
	make_ext4fs

PRODUCT_PACKAGES += \
        libGLES_android

#PRODUCT_PACKAGES += vndk_package
#PRODUCT_PACKAGES := vndk-sp

PRODUCT_PACKAGES += \
	android.hardware.gatekeeper@1.0-service \
	android.hardware.gatekeeper@1.0-impl \

PRODUCT_PACKAGES += \
	android.hardware.memtrack@1.0-service \
	android.hardware.memtrack@1.0-impl \
	memtrack.default

PRODUCT_PACKAGES += \
	android.hardware.keymaster@3.0-impl \
	android.hardware.keymaster@3.0-service \
	android.hardware.drm@1.0-impl \
	android.hardware.drm@1.0-service

PRODUCT_PACKAGES += \
	android.hardware.graphics.mapper@2.0-impl \
	android.hardware.graphics.mapper@2.0-service \
	android.hardware.graphics.composer@2.1-impl \
	android.hardware.graphics.composer@2.1-service \
	android.hardware.graphics.allocator@2.0-impl \
	android.hardware.graphics.allocator@2.0-service

PRODUCT_PACKAGES += \
	android.hardware.audio@5.0-impl:32 \
	android.hardware.audio.effect@5.0-impl:32 \
	android.hardware.soundtrigger@2.2-impl:32 \
	android.hardware.audio@2.0-service

