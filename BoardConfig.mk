#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
BOARD_KERNEL_CMDLINE_CONSOLE :=

# Inherit from common
include device/virt/virtio-common/BoardConfigCommon.mk

USES_DEVICE_VIRT_VIRTIO_ARM := true
DEVICE_PATH := device/virt/virtio_arm

# Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# Binder
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_CONFIG := lineageos_virtio_defconfig

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor
