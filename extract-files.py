#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import (
    lib_fixups,
    lib_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/xiaomi/dolby',
    "vendor/xiaomi/sm8450-common",
]

blob_fixups: blob_fixups_user_type = {
#    (
#        'vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service',
#        'vendor/bin/hw/vendor.dolby.media.c2@1.0-service',
#    ): blob_fixup()
#        .add_needed('libstagefright_foundation-v33.so'),
#   'vendor/lib64/libqcodec2_base.so': blob_fixup()
#        .add_needed('libcodec2_hidl_shim.so'),
#    'vendor/lib64/libmisoundfx_ext.so': blob_fixup()
#        .replace_needed('libstagefright_foundation.so', 'libstagefright_foundation-v33.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'dolby',
    'xiaomi',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
    check_elf=True,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
