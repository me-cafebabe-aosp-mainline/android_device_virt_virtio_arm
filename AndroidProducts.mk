#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_virtio_arm.mk \
    $(LOCAL_DIR)/lineage_virtio_arm.mk

$(foreach build_type, user userdebug eng, \
    $(eval COMMON_LUNCH_CHOICES += aosp_virtio_arm-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += lineage_virtio_arm-$(build_type)))
