#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from golf device
$(call inherit-product, device/realme/golf/device.mk)

PRODUCT_DEVICE := golf
PRODUCT_NAME := omni_golf
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 9i 4G
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_golf-eng 99.87.36 SP2A.220405.004 eng.runner.20230606.091942 test-keys"

BUILD_FINGERPRINT := Realme/twrp_golf/golf:99.87.36/SP2A.220405.004/runner06060906:eng/test-keys
