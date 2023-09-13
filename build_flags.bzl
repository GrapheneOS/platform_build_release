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

# This file defines the build system flags that can be set based on the
# release configuration.  If at all possible, use aconfig flags instead.
# This is for things that must be decided at compile time.

load(
    "//build/make/core/release_config.bzl",
    "ALL",
    "PRODUCT",
    "SYSTEM",
    "SYSTEM_EXT",
    "VENDOR",
    "flag",
)

# Flags should be alphabetical by flag name to reduce merge conflifcts
flags = [
    # The default permission for all flags
    flag("RELEASE_ACONFIG_FLAG_DEFAULT_PERMISSION", ALL, "READ_WRITE"),

    # The aconfig_value_set soong module to use to set aconfig values.
    flag("RELEASE_ACONFIG_VALUE_SETS", ALL, None),

    # Enables the use of the unfrozen versions of AIDL interfaces.
    # When this is `False` the libraries of the latest unfrozen version of a
    # stable interface will behave like the last frozen version.
    # When this is `True` the libraries behave like the lastest unfrozen version like
    # they always have.
    flag("RELEASE_AIDL_USE_UNFROZEN", ALL, True),

    # Enables running multiple payloads in the same Microdroid VM instance.
    flag("RELEASE_AVF_ENABLE_MULTI_TENANT_MICRODROID_VM", SYSTEM, False),

    # Enables assigning hardware devices to the guest VMs.
    # If this flag is enabled, then RELEASE_AVF_ENABLE_MICRODROID_VENDOR_MODULES
    # must also be enabled.
    flag("RELEASE_AVF_ENABLE_DEVICE_ASSIGNMENT", ALL, False),

    # Enables new DICE functionality in Microdroid VMs.
    flag("RELEASE_AVF_ENABLE_DICE_CHANGES", ALL, False),

    # Enables new llPvm functionality in Microdroid VMs.
    flag("RELEASE_AVF_ENABLE_LLPVM_CHANGES", ALL, False),

    # Enables pVM remote attestation in Microdroid VM.
    flag("RELEASE_AVF_ENABLE_REMOTE_ATTESTATION", ALL, False),

    # Enables loading vendor modules (both kernel & userspace) in Microdroid VM.
    flag("RELEASE_AVF_ENABLE_VENDOR_MODULES", ALL, False),

    # The behavior for the tree wrt building mainline modules or using prebuilts
    flag("RELEASE_DEFAULT_MODULE_BUILD_FROM_SOURCE", ALL, "true"),

    # The version of mainline prebuilts used when prebuilts are enabled.
    flag("RELEASE_MAINLINE_MODULE_PREBUILT_VERSION", ALL, "mainline-module-prebuilt_nightly"),

    # The platform version.
    # TODO(joeo): Remove the default here. Maybe for platform builds not having
    # a version should be an error and should be allowed for unbundled builds.
    flag("RELEASE_PLATFORM_VERSION", ALL, "VP1A"),

    # Set to true when the current platform version should be marked as REL.
    flag("RELEASE_PLATFORM_VERSION_CODENAME_REL", ALL, ""),
]
