TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a8
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_BOARD_PLATFORM := omap3

TARGET_USES_64_BIT_BINDER := true

PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current

TARGET_USES_MKE2FS := true
TARGET_USES_HWC2 := true

DEVICE_MANIFEST_FILE := device/ti/beagle_black/manifest.xml
DEVICE_MATRIX_FILE := device/ti/beagle_black/compatibility_matrix.xml

BOARD_SEPOLICY_DIRS := device/ti/beagle_black/sepolicy

USE_OPENGL_RENDERER := true
TARGET_SCREEN_DENSITY := 213

MALLOC_SEVLTE := true

USE_XML_AUDIO_POLICY_CONF := 1

BOARD_FLASH_BLOCK_SIZE := 4096

USE_CAMERA_STUB := false

BOARD_HAVE_BLUETOOTH := false

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAEG_PARTITION_SIZE := $(shell echo $$((2048*1024*1024))) #2048M
 
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := $(shell echo $$((256*1024*1024))) #256M

TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := $(shell echo $$((768*1024*1024))) #768M
