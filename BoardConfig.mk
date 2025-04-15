#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
include vendor/xiaomi/dolby/BoardConfigVendor.mk

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

DOLBY_PATH := device/xiaomi/dolby

# Properties
TARGET_VENDOR_PROP += $(DOLBY_PATH)/configs/properties/vendor.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_PATH)/sepolicy/vendor
