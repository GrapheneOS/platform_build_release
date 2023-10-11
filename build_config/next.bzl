"""
Build flag values for release config next.
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
# Build system flag configuration for `lunch <product>-next-<variant>` builds
#                                                      ^^^^
# See go/build-system-flags
#

load("//build/make/core/release_config.bzl", "value")

# Flags should be alphabetical by flag name to reduce merge conflifcts
values = [
    value("RELEASE_ACONFIG_FLAG_DEFAULT_PERMISSION", "READ_ONLY"),
    value("RELEASE_ACONFIG_VALUE_SETS", "//build/release/aconfig/next:aconfig_value_set-aosp-next"),
    value("RELEASE_AIDL_USE_UNFROZEN", False),
    value("RELEASE_DEFAULT_MODULE_BUILD_FROM_SOURCE", False),
    value("RELEASE_EXPOSE_FLAGGED_API", True),
    value("RELEASE_PLATFORM_VERSION", "UP1A"),
    value("RELEASE_PLATFORM_VERSION_CODENAME_REL", "true"),
    value("RELEASE_PLATFORM_VNDK_VERSION", "35"),
]
