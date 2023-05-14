#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/a746/along-6051

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/a746/along-6051/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Ramdisk
PRODUCT_PACKAGES += \
    init.recovery.sun8i.rc \
    fstab.sun8i \
    ueventd.sun8i.rc \
    ueventd.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/root/disp.ko:recovery/root/disp.ko \
    $(LOCAL_PATH)/recovery/root/ft5x_ts.ko:recovery/root/ft5x_ts.ko \
    $(LOCAL_PATH)/recovery/root/gt82x.ko:recovery/root/gt82x.ko \
    $(LOCAL_PATH)/recovery/root/gt818_ts.ko:recovery/root/gt818_ts.ko \
    $(LOCAL_PATH)/recovery/root/lcd.ko:recovery/root/lcd.ko \
    $(LOCAL_PATH)/recovery/root/nand.ko:recovery/root/nand.ko \
    $(LOCAL_PATH)/recovery/root/sunxi-keyboard.ko:recovery/root/sunxi-keyboard.ko \
    $(LOCAL_PATH)/recovery/root/sw-device.ko:recovery/root/sw-device.ko

$(call inherit-product-if-exists, build/target/product/full.mk)
