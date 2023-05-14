#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from along-6051 device
$(call inherit-product, device/a746/along-6051/device.mk)

PRODUCT_DEVICE := along-6051
PRODUCT_NAME := omni_along-6051
PRODUCT_BRAND := A746
PRODUCT_MODEL := A746
PRODUCT_MANUFACTURER := a746

PRODUCT_GMS_CLIENTID_BASE := android-a746

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="AZPEN 20170802"

BUILD_FINGERPRINT := A746/along_6051/along-6051:4.4.2/AZPEN/20170802:user/test-keys
