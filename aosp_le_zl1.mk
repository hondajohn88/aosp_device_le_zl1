#
# Copyright 2015 The CyanogenMod Project
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

# Get the long list of APNs
PRODUCT_COPY_FILES := device/leeco/le_zl1/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aosp_le_zl1
PRODUCT_DEVICE := le_zl1
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on LEX727
PRODUCT_MANUFACTURER := lemobile
#PRODUCT_RESTRICT_VENDOR_FILES := true
TARGET_VENDOR := LeEco

# Inherit from le_zl1 device
$(call inherit-product, device/leeco/le_zl1/device.mk)
$(call inherit-product, vendor/leeco/le_zl1/le_zl1-vendor.mk)

PRODUCT_GMS_CLIENTID_BASE := android-leeco

PRODUCT_PACKAGES += \
    Launcher3
