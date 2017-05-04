#
# Copyright (C) 2012 The CyanogenMod Project
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
include device/hardkernel/smdk4412-common/BoardCommonConfig.mk

#
# Wifi related defines
#
# ralink module = rt5370sta, realtek = rtl8191su
#
WIFI_DRIVER          := rtl8192cu 
BOARD_WIFI_VENDOR    := realtek 
BOARD_WLAN_DEVICE    := rtl8192cu 
 
WPA_SUPPLICANT_VERSION              := VER_0_8_X 
BOARD_WPA_SUPPLICANT_DRIVER         := NL80211 
BOARD_WPA_SUPPLICANT_PRIVATE_LIB    := lib_driver_cmd_nl80211 
WIFI_DRIVER_MODULE_NAME             := rtl8192cu 
WIFI_DRIVER_MODULE_PATH             := /system/lib/modules/8192cu.ko 


# Bionic
MALLOC_SVELTE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
LIBART_IMG_BASE := 0x30000000

# RIL
BOARD_PROVIDES_LIBRIL := false
#BOARD_MODEM_TYPE := xmm6262
#TARGET_SPECIFIC_HEADER_PATH += device/samsung/i9300/include
#BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
#BOARD_RIL_CLASS := ../../../device/samsung/i9300/ril

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/hardkernel/odroidx2/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/hardkernel/smdk4412
TARGET_KERNEL_CONFIG := lineageos_odroidx2_defconfig

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE := 1048576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# Recovery
TARGET_RECOVERY_FSTAB := device/hardkernel/odroidx2/rootdir/fstab.odroidx2
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# PowerHAL
TARGET_POWERHAL_VARIANT := pegasusq

# Selinux
#BOARD_SEPOLICY_DIRS += \
#    device/samsung/i9300/selinux

# assert
TARGET_OTA_ASSERT_DEVICE := m0,odroidx2,odroidx2
