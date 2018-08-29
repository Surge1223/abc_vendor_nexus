
# Copyright (C) 2017 The ABC rom
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

$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

$(call inherit-product, vendor/gapps/gapps.mk)

# Override AOSP build properties
PRODUCT_NAME := bullhead
PRODUCT_DEVICE := bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM6.171019.030.H1 4903069 release-keys" \
    BUILD_FINGERPRINT=google/bullhead/bullhead:8.1.0/OPM6.171019.030.H1/4903069:user/release-keys


$(call inherit-product, vendor/lge/bullhead/bullhead-vendor.mk)
$(call inherit-product, device/lge/bullhead-vendorimage/bullhead-vendorimage.mk)
