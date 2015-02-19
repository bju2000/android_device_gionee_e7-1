#
# Copyright (C) 2013 The CyanogenMod Project
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

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

# Kernel information
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x05000000 --tags_offset 0x04800000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true

BOARD_CUSTOM_BOOTIMG_MK := device/gionee/g2-common/releasetools/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/gionee/android_kernel_gionee_e7
TARGET_PREBUILT_KERNEL := device/gionee/e7/kernel
BOARD_USES_ALSA_AUDIO:= true
AUDIO_FEATURE_DEEP_BUFFER_PRIMARY := true
AUDIO_FEATURE_DYNAMIC_VOLUME_MIXER := true

TARGET_BOOTLOADER_BOARD_NAME := galbi
TARGET_BOARD_PLATFORM := msm8974

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
#BOARD_WLAN_DEVICE           := ath6kl
#WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/wlan/parameters/fwpath"
#WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/ath6k/AR6004/fw_bcmdhd.bin"
#WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := ath6k

BOARD_EGL_CFG := device/gionee/g2-common/egl.cfg

USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

BOARD_USES_QCOM_HARDWARE := true
#TARGET_USES_QCOM_BSP :=true
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE -DLPA_DEFAULT_BUFFER_SIZE=512 -DQCOM_HARDWARE
# -DQCOM_BSP 
TARGET_DISPLAY_USE_RETIRE_FENCE := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Audio
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true

#Recovery ORI
RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB = device/gionee/g2-common/recovery.fstab2
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
ENABLE_LOKI_RECOVERY := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#Recovery TWRP
#RECOVERY_FSTAB_VERSION = 1
#TARGET_RECOVERY_FSTAB = device/gionee/g2-common/recovery.fstab
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#ENABLE_LOKI_RECOVERY := false
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
#BOARD_HAS_NO_SELECT_BUTTON := true
#COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#twrp
DEVICE_RESOLUTION := 1080x1920
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := false
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M

BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/gionee/g2-common/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/gionee/g2-common/bluetooth/vnd_g2.txt

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true

BOARD_CHARGER_ENABLE_SUSPEND := true

BOARD_HARDWARE_CLASS := device/gionee/g2-common/cmhw/

BOARD_SEPOLICY_DIRS += \
        device/gionee/g2-common/sepolicy

# The list below is order dependent
BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       file_contexts

BOARD_NFC_HAL_SUFFIX := g2

BOARD_RIL_CLASS := ../../../device/gionee/g2-common/ril/
TARGET_RELEASETOOLS_EXTENSIONS := device/gionee/g2-common/releasetools

COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'
BOARD_USES_QC_TIME_SERVICES := true

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Surfaceflinger optimization for VD surfaces
#TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#TARGET_DISABLE_TRIPLE_BUFFERING := false


