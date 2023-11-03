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

$(call declare-release-config, next, build/release/build_config/next.bzl)
$(call declare-release-config, trunk, build/release/build_config/trunk.bzl)
$(call declare-release-config, trunk_food, build/release/build_config/trunk_food.bzl)
$(call declare-release-config, trunk_staging, build/release/build_config/trunk_staging.bzl)

# Temporary, until we remove the old "staging" configs
$(call declare-release-config, staging, build/release/build_config/trunk_staging.bzl)


