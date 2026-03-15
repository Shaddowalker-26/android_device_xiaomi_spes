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

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SOONG_NAMESPACES += \
    vendor/pixelos/pixel-clocks/common


# Pixel Lockscreen Clocks
$(call inherit-product, vendor/pixelos/pixel-clocks/products/clocks.mk)

# Product Specifics
PRODUCT_NAME := Lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="spes_global-user 13 TKQ1.221114.001 V816.0.11.0.TGKMIXM release-keys" \
    BuildFingerprint=Redmi/spes_global/spes:13/TKQ1.221114.001/V816.0.11.0.TGKMIXM:user/release-keys


# Cloned app exemption
PRODUCT_COPY_FILES += \
    vendor/lineage/prebuilt/common/etc/sysconfig/preinstalled-packages-platform-evolution-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-platform-evolution-product.xml

# Google Photos Pixel Exclusive XML
PRODUCT_COPY_FILES += \
    vendor/lineage/prebuilt/common/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml


