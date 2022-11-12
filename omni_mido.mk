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
$(call inherit-product, vendor/pb/config/common.mk)

# PBRP Stuff
MAINTAINER := "Rsyd @RasyidKautsar"
PB_DISABLE_DEFAULT_DM_VERITY := true
PB_DISABLE_DEFAULT_TREBLE_COMP := true
PB_TORCH_PATH := "/sys/class/leds/led:torch_0"

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mido
PRODUCT_NAME := omni_mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/mido/device.mk)
