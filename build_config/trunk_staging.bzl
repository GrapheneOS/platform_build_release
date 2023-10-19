"""
Build flag values for release config trunk_staging.
"""
# Copyright (C) 2023 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# Build system flag configuration for `lunch <product>-trunk_staging-<variant>` builds
#                                                      ^^^^^^^^^^^^^
# See go/build-system-flags
#

load("//build/make/core/release_config.bzl", "value")

# Flags should be alphabetical by flag name to reduce merge conflifcts
values = [
    value("RELEASE_ACONFIG_VALUE_SETS", "//build/release/aconfig/trunk_staging:aconfig_value_set-aosp-trunk_staging"),
    value("RELEASE_AVF_ALLOW_PREINSTALLED_APPS", True),
    value("RELEASE_AVF_ENABLE_DEVICE_ASSIGNMENT", True),
    value("RELEASE_AVF_ENABLE_DICE_CHANGES", True),
    value("RELEASE_AVF_ENABLE_LLPVM_CHANGES", True),
    value("RELEASE_AVF_ENABLE_MULTI_TENANT_MICRODROID_VM", True),
    value("RELEASE_AVF_ENABLE_REMOTE_ATTESTATION", True),
    value("RELEASE_AVF_ENABLE_VENDOR_MODULES", True),
    value("RELEASE_PACKAGE_VIRTUAL_CAMERA", "virtual_camera"),
    value("RELEASE_DEPRECATE_VNDK", True),
    value("RELEASE_BINDER_DEATH_RECIPIENT_WEAK_FROM_JNI", True),
]
