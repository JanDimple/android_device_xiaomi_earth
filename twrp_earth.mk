# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from earth device
$(call inherit-product, device/xiaomi/earth/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_DEVICE := earth
PRODUCT_NAME := twrp_earth
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22120RN86C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
