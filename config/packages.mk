# VoltageOS packages
PRODUCT_PACKAGES += \
    Covers \
    Etar \
    ThemePicker \
    ThemesStub \
    GmsCompat \
    GameSpace \
    Apps \
    SetupWizard \
    Jellyfish \
    LogViewer \
    OmniJaws \
    ParallelSpace \
    Gramophone \
    Seedvault \
    Datura \
    ExactCalculator \
    Glimpse

ifeq ($(VOLTAGE_BUILD_TYPE), OFFICIAL)
    PRODUCT_PACKAGES += \
	Updater
endif

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# BtHelper
PRODUCT_PACKAGES += \
    BtHelper

# Extra tools in Voltage
PRODUCT_PACKAGES += \
    awk \
    bzip2 \
    curl \
    getcap \
    libsepol \
    setcap \

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    mke2fs \
    mkfs.exfat

# VoltageOS UDFPS animations
ifeq ($(EXTRA_UDFPS_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    UdfpsIcons \
    UdfpsAnimations
endif
