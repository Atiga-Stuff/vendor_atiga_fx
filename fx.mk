ve# Automatically generated file. DO NOT MODIFY
#
# This file is generated by vendor/atiga/fx/setup-makefiles.sh

PRODUCT_SOONG_NAMESPACES += \
    vendor/atiga/fx

# AtigaFX
PRODUCT_PACKAGES += \
    AtigaFX

# Minijail
PRODUCT_PACKAGES += \
    libcodec2_soft_common.vendor \
    libcodec2_vndk.vendor \
    libsfplugin_ccodec_utils.vendor \
    libstagefright_foundation-v33

# Proprietary
PRODUCT_COPY_FILES += \
    vendor/atiga/fx/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    vendor/atiga/fx/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    vendor/atiga/fx/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    vendor/atiga/fx/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    vendor/atiga/fx/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    vendor/atiga/fx/proprietary/vendor/lib/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdeccfg.so \
    vendor/atiga/fx/proprietary/vendor/lib/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ac4dec.so \
    vendor/atiga/fx/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    vendor/atiga/fx/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    vendor/atiga/fx/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    vendor/atiga/fx/proprietary/vendor/lib/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswvqe.so \
    vendor/atiga/fx/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    vendor/atiga/fx/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    vendor/atiga/fx/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    vendor/atiga/fx/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    vendor/atiga/fx/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so

PRODUCT_PACKAGES += \
    manifest_vendor.dolby.hardware.dms.xml

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/atiga/fx/sepolicy/vendor
