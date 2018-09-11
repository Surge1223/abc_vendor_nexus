
# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include pure telephony configuration
include vendor/nexus/configs/nexus_phone.mk

# Inherit AOSP device configuration for  taimen
$(call inherit-product, device/essential/mata/aosp_mata.mk)

$(call inherit-product, vendor/gapps/gapps.mk)

# Override AOSP build properties
PRODUCT_NAME := mata
PRODUCT_DEVICE := mata
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mata \
    BUILD_FINGERPRINT=essential/mata/mata:9/PPR1.180905.036/296:user/release-keys \
    PRIVATE_BUILD_DESC="mata-user 9 PPR1.180905.036 296 release-keys"

$(call inherit-product-if-exists, vendor/essential/mata/mata-vendor.mk)

