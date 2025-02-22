#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/gale/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_gale
PRODUCT_DEVICE := gale
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23106RN0DA

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_gale-user 12 SP1A.210812.016 V816.0.2.0.UGPMIXM release-keys"
    RISING_MAINTAINER="winbo.yml"

    PRODUCT_BUILD_PROP_OVERRIDES += \
        RisingChipset="MT6768" \
        RisingMaintainer="winbo.yml"

    RISING_PACKAGE_TYPE := "PIXEL"

    TARGET_ENABLE_BLUR := false

    TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false  

    WITH_GMS := true

    PRODUCT_PACKAGES += \
        Photos \
        MarkupGoogle \
        LatinIMEGooglePrebuilt \
        AiWallpapers \
        WallpaperEmojiPrebuilt \
        PrebuiltDeskClockGoogle \
        CalculatorGooglePrebuilt \
        CalendarGooglePrebuilt \
        Velvet
    TARGET_CORE_GMS_EXTRAS := true

    TARGET_DEFAULT_PIXEL_LAUNCHER := false

    BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

BUILD_FINGERPRINT := alps/vnd_gale/gale:12/SP1A.210812.016/V816.0.2.0.UGPMIXM:user/release-keys
