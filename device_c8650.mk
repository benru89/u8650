# Copyright (C) 2009 The Android Open Source Project
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

# Proprietary and common side of the device
$(call inherit-product, vendor/huawei/c8650/c8650-vendor.mk)
$(call inherit-product, device/huawei/c8650/device_huawei.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_c8650
PRODUCT_DEVICE := c8650
PRODUCT_MODEL := huawei c8650

# Libs
PRODUCT_PACKAGES += \
    lights.c8650 \
    camera.c8650 \
    copybit.c8650 \
    gralloc.c8650 \
    audio.primary.c8650 \
    audio_policy.c8650 \
    gps.c8650 \
   #     sensors.c8650 \

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Init
PRODUCT_COPY_FILES += \
    device/huawei/c8650/prebuilt/init.c8650.rc:root/init.c8650.rc \
    device/huawei/c8650/prebuilt/init.c8650.usb.rc:root/init.c8650.usb.rc \
    device/huawei/c8650/prebuilt/ueventd.c8650.rc:root/ueventd.c8650.rc

# Keypad files
PRODUCT_COPY_FILES += \
    device/huawei/c8650/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/c8650/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/c8650/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    device/huawei/c8650/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/huawei/c8650/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/c8650/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/c8650/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc \
    device/huawei/c8650/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    device/huawei/c8650/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/c8650/prebuilt/usr/idc/synaptics-rmi4-ts.idc:system/usr/idc/synaptics-rmi4-ts.idc \
    device/huawei/c8650/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/huawei/c8650/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    device/huawei/c8650/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    device/huawei/c8650/prebuilt/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/huawei/c8650/prebuilt/usr/keychars/synaptics.kcm.bin:system/usr/keychars/synaptics.kcm.bin

    
# Gralloc (from paul-xxx as I can't get ones that I compiled to work)
PRODUCT_COPY_FILES += \
    device/huawei/c8650/prebuilt/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    device/huawei/c8650/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so

# WiFi
PRODUCT_COPY_FILES += \
    device/huawei/c8650/prebuilt/wifi/dhd.ko:system/wifi/dhd.ko \
    device/huawei/c8650/prebuilt/wifi/firmware.bin:system/wifi/firmware.bin \
    device/huawei/c8650/prebuilt/wifi/firmware_apsta.bin:system/wifi/firmware_apsta.bin \
    device/huawei/c8650/prebuilt/wifi/nvram.txt:system/wifi/nvram.txt
