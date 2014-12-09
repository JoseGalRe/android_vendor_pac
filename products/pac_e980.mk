# Check for target product
ifeq (pac_e980,$(TARGET_PRODUCT))

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/1080x1920/bootanimation.zip:system/media/bootanimation.zip

# include PAC common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/lge/e980/cm.mk)

PRODUCT_NAME := pac_e980

endif