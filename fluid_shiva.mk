#
# Copyright (C) 2019 Potato Open Sauce Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := shiva

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_q.mk)

# Inherit from shiva device
$(call inherit-product, device/xiaomi/shiva/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fluid_shiva
PRODUCT_NAME := lineage_shiva
PRODUCT_BRAND := Poco
PRODUCT_MODEL := Poco M2
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Poco/shiva_global/shiva:10/QP1A.190711.020/V11.0.8.0.QJCMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="shiva-user 10 QP1A.190711.020 release-keys" \
    PRODUCT_NAME="shiva" \
    TARGET_DEVICE="shiva"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
