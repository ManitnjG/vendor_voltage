# Inherit common VoltageOS stuff
$(call inherit-product, vendor/voltage/config/common.mk)

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    LatinIME

# Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/voltage/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/voltage/overlay/dictionaries

# Settings
PRODUCT_PRODUCT_PROPERTIES += \
    persist.settings.large_screen_opt.enabled=true

$(call inherit-product, vendor/voltage/config/wifionly.mk)
