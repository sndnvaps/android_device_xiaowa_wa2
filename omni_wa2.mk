$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)


LOCAL_PATH := device/xiaowa/wa2


# kernel choose
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/factory_init.project.rc:recovery/root/factory_init.project.rc \
    $(LOCAL_PATH)/factory_init.rc:recovery/root/factory_init.rc \
    $(LOCAL_PATH)/init.rc:recovery/root/init.rc \
    $(LOCAL_PATH)/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    $(LOCAL_PATH)/meta_init.project.rc:recovery/root/meta_init.project.rc \
    $(LOCAL_PATH)/meta_init.rc:recovery/root/meta_init.rc \
    $(LOCAL_PATH)/ueventd.rc:recovery/root/ueventd.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := omni_wa2
PRODUCT_DEVICE := wa2
PRODUCT_MODEL := XIAOWA WA2
PRODUCT_RELEASE_NAME := WA2
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := XIAOWA 


