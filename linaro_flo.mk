# Inherit device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flo
PRODUCT_NAME := linaro_flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.3/JSS15R/804956:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.3 JSS15R 804956 release-keys"

TARGET_TOOLS_PREFIX ?= prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7-linaro/bin/arm-linux-androideabi-

