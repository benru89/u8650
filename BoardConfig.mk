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

-include device/huawei/c8650/BoardConfigCommon.mk

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true

# Board related defines
TARGET_BOOTLOADER_BOARD_NAME := c8650

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
# I know we have the bcm4319 but this is a hack to get around incompatibility
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/wifi/dhd.ko"
WIFI_DRIVER_FW_PATH_AP  := "/system/wifi/firmware.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_MODULE_ARG  := "firmware_path=/system/wifi/firmware.bin nvram_path=/system/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "dhd"

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00600000 00020000 "recovery"
# mtd1: 00400000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 03980000 00020000 "cache"
# mtd5: 0dc00000 00020000 "system"
# mtd6: 0a280000 00020000 "userdata"
# mtd7: 00100000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0ba00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a0a0000
BOARD_FLASH_BLOCK_SIZE := 131072
