USE_CAMERA_STUB := true


# Platform
TARGET_BOARD_PLATFORM := mt6752
TARGET_BOARD_PLATFORM_GPU := mali-760mp

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_NO_BOOTLOADER := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1n2ef10led3f0wwwa
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --second_offset 0x00f00000 --tags_offset 0x0e000000
TARGET_BOOTLOADER_BOARD_NAME := 

BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760    #need to modified to support xiaowa device
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 14680064  #need to modified to support xiaowa device
# BOARD_SYSTEMIMAGE_PARTITION_SIZE := 
# BOARD_USERDATAIMAGE_PARTITION_SIZE := 
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Custom recovery
TARGET_PREBUILT_KERNEL := device/xiaowa/wa2/kernel
TARGET_RECOVERY_INITRC := device/xiaowa/wa2/twrp_init.rc
#twrp config 
TARGET_RECOVERY_FSTAB := device/xiaowa/wa2/recovery/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT 	:= "RGBA_8888"

DEVICE_RESOLUTION := 1080x1920

BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_SDCARD_ON_DATA := true


RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# TWRP
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard2"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard2"
#TW_NO_REBOOT_BOOTLOADER := true
#TW_NO_USB_STORAGE := true
TW_ALWAYS_RMRF := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt67xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
#TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_FB2PNG := true
#TW_USE_TOOLBOX := true
TW_EXCLUDE_SUPERSU := true
BOARD_CUSTOM_BOOTIMG_MK := device/xiaowa/wa2/boot.mk 
