#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/dolby/dolby-vendor.mk)

# DolbyManager
PRODUCT_PACKAGES += \
    XiaomiDolby

# Build codec2 packages
PRODUCT_PACKAGES += \
    libavservices_minijail.vendor \
    libcodec2_hidl@1.2.vendor \
    libcodec2_soft_common.vendor

# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dax/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
#    $(LOCAL_PATH)/configs/media/media_codecs_with_dolby_diwali.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_with_dolby_diwali.xml \
#    $(LOCAL_PATH)/configs/media/dolby_vision.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/dolby_vision.cfg

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
