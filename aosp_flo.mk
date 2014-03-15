#
# Copyright 2012 The Android Open Source Project
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
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)


# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := aosp_flo
PRODUCT_DEVICE := flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.4.2 KOT49H 937116 release-keys"

TARGET_TOOLS_PREFIX ?= prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7-linaro/bin/arm-linux-androideabi-

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/flo/device.mk)
$(call inherit-product-if-exists, vendor/asus/flo/flo-vendor.mk)
#$(call inherit-product-if-exists, vendor/qcom/proprietary/common/config/device-vendor.mk)
# Linaro specific bits
#$(call inherit-product, device/linaro/common/common.mk)
