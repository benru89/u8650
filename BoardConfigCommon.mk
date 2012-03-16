# Copyright (C) 2007 The Android Open Source Project
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

USE_CAMERA_STUB := false
TARGET_SPECIFIC_HEADER_PATH += device/huawei/c8650/include
# Arch and board related defines
TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

#BOARD_USE_FROYO_LIBCAMERA := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := adreno200
TARGET_NO_BOOTLOADER := true
ARCH_ARM_HAVE_VFP := true

# Graphics
USE_OPENGL_RENDERER := true
DISABLE_DEXPREOPT := true
BOARD_NO_PAGE_FLIPPING := true
USE_OPENGL_RENDERER := true
COPYBIT_MSM7K := true
COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY
COMMON_GLOBAL_CFLAGS += -DUSE_AAC_HW_DEC
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS -DMISSING_EGL_PIXEL_FORMAT_YV12
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DFORCE_CPU_UPLOAD
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27

BOARD_EGL_CFG := device/huawei/c8650/prebuilt/lib/egl/egl.cfg
TARGET_FORCE_CPU_UPLOAD := true
TARGET_USES_GENLOCK := true

# Target libs check
TARGET_PROVIDES_LIBRIL := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_DO_NOT_SETS_CAN_DRAW := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_PROVIDES_LIBAUDIO := true

# Skia
BOARD_USE_SKIA_LCDTEXT := true
ALLOW_DEQUEUE_CURRENT_BUFFER := true

# Kernel
BOARD_KERNEL_BASE := 0x10200000
BOARD_PAGE_SIZE := 2048

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Browser
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LEGACY := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := c8650
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
# Sensors
BOARD_USE_LEGACY_TOUCHSCREEN := true



# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/c8650/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/c8650/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/huawei/c8650/recovery/recovery.rc

# USB 
BOARD_DATA_DEVICE := /dev/block/mtdblock6	
BOARD_DATA_FILESYSTEM := auto  	
BOARD_DATA_FILESYSTEM_OPTIONS := rw	
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock5
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mtdblock4
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun"
