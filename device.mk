#
# Copyright (C) 2018 The LineageOS Project
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

# TODO: Create
# Inherit common device configuration
$(call inherit-product, device/samsung/universal7885-common/universal7885-common.mk)

# TODO : Dalvik Heap's Customization
#Dalvik Heap's
#$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)
#$(call inherit-product, vendor/samsung/a7y18lte/a7y18lte-vendor.mk)

# TODO: Define
# Init
PRODUCT_PACKAGES += \
    init.target.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# System.prop
TARGET_SYSTEM_PROP += device/samsung/a7y18lte/system.prop


# TODO: Check the need\
# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-service \
    android.hardware.keymaster@3.0-impl \
    libkeymaster3device

# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# TODO: Check and revise
# Rootdir
PRODUCT_PACKAGES += \
	fstab.exynos7885 \
	init.target.rc \
	init.baseband.rc
