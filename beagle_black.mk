$(call inherit-product, $(LOCAL_PATH)/device.mk)

# device denfinition
PRODUCT_NAME := beagle_black
PRODUCT_DEVICE := beagle_black
PRODUCT_BRAND := bbbrevc
PRODUCT_MODEL :=  Beaglebone Black RevC
PRODUCT_MANUFACTURER := TI
PRODUCT_CHARACTERISTICS := tablet,nosdcard
PRODUCT_AAPT_PREF_CONFIG := hdpi

# overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# /vendor/etc
PRODUCT_COPY_FILES += \
          $(LOCAL_PATH)/etc/fstab.bbb:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.bbb \
          $(LOCAL_PATH)/etc/init.bbb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.bbb.rc \
          $(LOCAL_PATH)/etc/ueventd.bbb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/ueventd.bbb.rc \
          $(LOCAL_PATH)/audio/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
          $(LOCAL_PATH)/audio/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \

# system configuration
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
          ro.hardware.egl=swiftshader \
          ro.lmk.debug=true \
          persist.sys.strictmode.visual=0 \
          persist.sys.strictmode.disable=1 \
          ro.lmk.debug=true

