#
# SPDX-FileCopyrightText: 2024 The Evolution X Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/$(DEVICE_CODENAME)/overlay-evolution

TARGET_HAS_UDFPS := true

# Evolution X installs these into /system; allow them past the generic_system artifact path check
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/etc/permissions/privapp-permissions-appbackup.xml \
    system/priv-app/AppDataBackup/AppDataBackup.apk

# GMS replaces these AOSP system apps with Google versions, which have to stay in /system
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/app/GoogleExtShared/GoogleExtShared.apk \
    system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk \
    system/priv-app/DocumentsUIGoogle/DocumentsUIGoogle.apk \
    system/priv-app/GooglePackageInstaller/GooglePackageInstaller.apk \
    system/priv-app/TagGoogle/TagGoogle.apk
