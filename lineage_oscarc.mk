#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from oscarc device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_oscarc
PRODUCT_DEVICE := oscarc
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3478
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RE547D-user 14 UKQ1.230924.001 S.1ca577a_1a33b-11cfd8 release-keys" \
    BuildFingerprint=realme/RMX3478/RE547D:14/UKQ1.230924.001/S.1ca577a_1a33b-11cfd8:user/release-keys \
    DeviceName=RE547D \
    DeviceProduct=RE547D \
    SystemDevice=RE547D \
    SystemName=RE547D
