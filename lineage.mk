# Release name
PRODUCT_RELEASE_NAME := odroidx2

# Inherit device configuration
$(call inherit-product, device/hardkernel/smdk4412-common/common.mk)
$(call inherit-product, device/hardkernel/odroidx2/odroidx2.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := odroidx2
PRODUCT_NAME := lineage_odroidx2
PRODUCT_BRAND := hardkernel
PRODUCT_MODEL := odroidx2
PRODUCT_MANUFACTURER := hardkernel

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
		PRODUCT_NAME=m0xx \
		TARGET_DEVICE=m0 \
		BUILD_FINGERPRINT="samsung/m0xx/m0:4.3/JSS15J/I9300XXUGMJ9:user/release-keys" \
		PRIVATE_BUILD_DESC="m0xx-user 4.3 JSS15J I9300XXUGMJ9 release-keys"
