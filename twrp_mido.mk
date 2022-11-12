# Only the below variable(s) need to be changed!
#
# Define hardware platform
PRODUCT_PLATFORM := sdm450

# Release name
PRODUCT_RELEASE_NAME := mido

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# SHRP Stuff
SHRP_DEVICE_CODE := mido
SHRP_PATH := device/Xiaomi/$(SHRP_DEVICE_CODE)
SHRP_MAINTAINER := Rsyd 
SHRP_REC_TYPE := Normal
SHRP_DEVICE_TYPE := A-Only
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_EDL_MODE := 1
SHRP_FLASH := 1
SHRP_EXPRESS := true
SHRP_EXPRESS_USE_DATA := true
SHRP_DARK := true
SHRP_FLASH_MAX_BRIGHTNESS := 255

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mido
PRODUCT_NAME := twrp_mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/mido/device.mk)
