#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# RiceDroid spesific flags
RICE_MAINTAINER := rktdnt
RICE_OFFICIAL := true
RICE_CHIPSET := SM680
#SUSHI_BOOTANIMATION := 720
#WITH_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_OPTOUT_GOOGLE_TELEPHONY := false
TARGET_USE_PIXEL_FINGERPRINT := false
TARGET_HAS_UDFPS := false
