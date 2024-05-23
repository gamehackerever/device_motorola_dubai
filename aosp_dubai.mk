#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_NAME := aosp_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=dubai_g \
    PRIVATE_BUILD_DESC="dubai_g-user 13 T1RDS33.116-33-15-1 06f6d-c0e7b release-keys"

BUILD_FINGERPRINT := motorola/dubai_g/dubai:13/T1RDS33.116-33-15-1/06f6d-c0e7b:user/release-keys

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080
