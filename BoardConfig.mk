# Copyright (C) 2017-2020 The LineageOS Project
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

# inherit from the proprietary version
-include vendor/china/yt9216bj/BoardConfigVendor.mk
DEVICE_PATH := device/china/yt9216bj

BUILD_BROKEN_DUP_RULES := true

# For building with TWRP minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := unknown
TARGET_BOOTLOADER_BOARD_NAME := yt9216bj

# Firmware
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := buildvariant=user
BOARD_KERNEL_BASE := 0x0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# Kernel config
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage


# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RAMDISK_OFFSET := 04000000
BOARD_KERNEL_TAGS_OFFSET := 06900000

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_KERNEL_CMDLINE := buildvariant=user

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Vendor separation
TARGET_COPY_OUT_VENDOR := vendor

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_OTA_ASSERT_DEVICE := yt9216bj

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

TARGET_BOARD_PLATFORM := ac8227l

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0


# TWRP Configuration
TW_THEME := landscape_mdpi
TW_EXTRA_LANGUAGES := false
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_SCREEN_TIMEOUT := true
TW_NO_BATT_PERCENT := true


