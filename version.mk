#
# Copyright (C) 2012 drkHD and The Android Open Source Project
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

# Common rom version
ROM_VERSION_STABLE=0
ROM_VERSION_BETA=1
ROM_VERSION_ALPHA=1

BUILD_VERSION=$(ROM_VERSION_STABLE).$(ROM_VERSION_BETA).$(ROM_VERSION_ALPHA)

DEVELOPER_ID=drkHD

# Common build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES+=USER=android_build

PRODUCT_PROPERTY_OVERRIDES += \
    ro.developerid=$(DEVELOPER_ID)

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=$(DEVELOPER_ID)

# Goo properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=$(DEVELOPER_ID) \
    ro.goo.board=$(PRODUCT_DEVICE) \
    ro.goo.rom=$(DEVELOPER_ID)-cm9-$(PRODUCT_DEVICE) \
    ro.goo.version=$(BUILD_VERSION)
