## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/gionee/e7/e7.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e7
PRODUCT_NAME := cm_e7
PRODUCT_BRAND := GIONEE
PRODUCT_MODEL := GIONEE-E7
PRODUCT_MANUFACTURER := gionee

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=gionee/gionee/e7:4.2.2/JDQ39B/D80210a.1378316352:user/test-keys PRIVATE_BUILD_DESC="g2_open_com-user 4.2.2 JDQ39B D80210a.1378316352 test-keys"

PRODUCT_PACKAGES += Torch
