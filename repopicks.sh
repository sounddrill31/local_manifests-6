#!/bin/bash
set -e

source "build/envsetup.sh";
source "vendor/lineage/build/envsetup.sh";

# hardware/xiaomi
repopick -P hardware/xiaomi 352657 # Add dummy sensors sub HAL
repopick -P hardware/xiaomi 352658 # sensors: Make sensor batch function virtual
repopick -P hardware/xiaomi 352659 # sensors: Make sensor run function virtual
repopick -P hardware/xiaomi 352660 # sensors: Make sensor flush function virtual
repopick -P hardware/xiaomi 352661 # sensors: Make sensor set mode operation function virtual
repopick -P hardware/xiaomi 352662 # sensors: Move one shot sensor out of main class
repopick -P hardware/xiaomi 352663 # sensors: Fix locking around setOperationMode and activate
repopick -P hardware/xiaomi 352664 # sensors: Create sysfs polling one shot sensor
repopick -P hardware/xiaomi 392967 # sensors: Let the reading of poll fd be configurable
repopick -P hardware/xiaomi 392968 # sensors: Add SysfsPollingOneShotSensor constructor without enable path
repopick -P hardware/xiaomi 392969 # sensors: Add udfps long press sensor using SysfsPollingOneShotSensor
repopick -P hardware/xiaomi 352665 # sensors: Handle fod_pressed_state without coordinates
repopick -P hardware/xiaomi 363160 # hidl: biometrics: fingerprint: Add enroll methods to udfps handler
repopick -P hardware/xiaomi 392965 # vibrator: effect: Create double click effect from click if necessary
repopick -P hardware/xiaomi 392966 # vibrator: effect: Fallback to click if an effect is missing

# frameworks/base
#repopick -P frameworks/base 386158 # Add 5G Ultra Wideband icon carrier config keys
#repopick -P frameworks/base 386159 # Fix default values for 5G Ultra Wideband icon carrier config keys

# vendor/lineage
repopick -P vendor/lineage 367044 # android: merge_dtbs: Respect miboard-id while merging

# vendor/qcom/opensource/vibrator
repopick -P vendor/qcom/opensource/vibrator 392952 # vibrator: Use a better check for primitive effects
