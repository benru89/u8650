## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_as_supl.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/c8650/device_c8650.mk)

PRODUCT_NAME := cm_c8650
PRODUCT_RELEASE_NAME := c8650

-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c8650

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=c8650 BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT="google/yakju/maguro:4.0.2/ICL53F/235179:user/release-keys" 
PRIVATE_BUILD_DESC="yakju-user 4.0.2 ICL53F 235179 release-keys"

# Goo Manager supprt
PRODUCT_PROPERTY_OVERRIDES += \
   ro.goo.board=c8650 \
   ro.goo.developerid=Ivan \
   ro.goo.rom=cm9c8650 \
   ro.goo.version=$(shell date +%Y%m%d)
