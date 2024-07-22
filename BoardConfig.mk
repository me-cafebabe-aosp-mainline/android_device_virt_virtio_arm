#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
BOARD_KERNEL_CMDLINE_CONSOLE := \
    console=ttyAMA0

# Inherit from common
include device/virt/virtio-common/BoardConfigCommon.mk

USES_DEVICE_VIRT_VIRTIO_ARM64 := true
DEVICE_PATH := device/virt/virtio_arm64

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_ARCH := arm64

ifneq ($(wildcard $(TARGET_KERNEL_SOURCE)/Makefile),)
BOOT_KERNEL_MODULES := $(strip $(shell cat $(DEVICE_PATH)/config/modules.load.ramdisk))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)
endif

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor
