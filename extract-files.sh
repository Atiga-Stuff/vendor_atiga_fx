#!/bin/bash
#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=afterlife
VENDOR=dolby

DEVICE_BRINGUP_YEAR=2018

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

ANDROID_ROOT="$MY_DIR/../../.."

HELPER="$ANDROID_ROOT"/tools/extract-utils/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

while [ "$1" != "" ]; do
    case $1 in
        -n | --no-cleanup )     CLEAN_VENDOR=false
                                ;;
        -s | --section )        shift
                                SECTION=$1
                                CLEAN_VENDOR=false
                                ;;
        * )                     SRC=$1
                                ;;
    esac
    shift
done

if [ -z "$SRC" ]; then
    SRC=adb
fi

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$ANDROID_ROOT" true "$CLEAN_VENDOR"

extract "$MY_DIR"/proprietary-files.txt "$SRC" \
        "${KANG}" --section "$SECTION"

DEVICE_BLOB_ROOT="$ANDROID_ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary

# AfterEcho
"${PATCHELF} --replace-needed "libstagefright_foundation.so" "libstagefright_foundation-v33.so" "${DEVICE_BLOB_ROOT}"/vendor/lib/libstagefright_soft_ddpdec.so"
"${PATCHELF} --replace-needed "libstagefright_foundation.so" "libstagefright_foundation-v33.so" "${DEVICE_BLOB_ROOT}"/vendor/lib/libstagefright_soft_ac4dec.so"
"${PATCHELF} --replace-needed "libstagefright_foundation.so" "libstagefright_foundation-v33.so" "${DEVICE_BLOB_ROOT}"/vendor/lib64/libdlbdsservice.so"

"$MY_DIR"/setup-makefiles.sh
