#!/bin/bash

# add prebuilt some app
rm -rf /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/SimpleDeviceConfig
mkdir -p /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/SimpleDeviceConfig
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/SimpleDeviceConfig/SimpleDeviceConfig.apk https://gitlab.com/I-n-o-k/vendor-j/-/raw/master/proprietary/system_ext/priv-app/SimpleDeviceConfig/SimpleDeviceConfig.apk

rm -rf /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/CbrsNetworkMonitor
mkdir -p /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/CbrsNetworkMonitor
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/CbrsNetworkMonitor/CbrsNetworkMonitor.apk https://gitlab.com/I-n-o-k/vendor-j/-/raw/master/proprietary/system_ext/priv-app/CbrsNetworkMonitor/CbrsNetworkMonitor.apk

# Kang qcril_database from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/radio/qcril_database/upgrade/7_version_update_ecc_table.sql https://gitlab.com/I-n-o-k/vendor-j/-/raw/master/proprietary/vendor/radio/qcril_database/upgrade/7_version_update_ecc_table.sql

# Kang bluetooth service qti from SM8250
rm -rf /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/hw/android.hardware.bluetooth@1.0-service-qti
rm -rf /tmp/los/vendor/xiaomi/juice/proprietary/vendor/etc/init/android.hardware.bluetooth@1.0-service-qti.rc
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/hw/android.hardware.bluetooth@1.0-service-qti https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/bin/android.hardware.bluetooth@1.0-service-qti
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/etc/init/android.hardware.bluetooth@1.0-service-qti.rc https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/etc/init/android.hardware.bluetooth@1.0-service-qti.rc

# Kang libaptX from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/lib64/libaptXHD_encoder.so https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/system_ext/lib64/libaptXHD_encoder.so
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/lib64/libaptX_encoder.so https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/system_ext/lib64/libaptX_encoder.so

# Kang batterysecret from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/etc/init/init.batterysecret.rc https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/etc/init/init.batterysecret.rc
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/batterysecret https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/bin/batterysecret
chmod 755 /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/batterysecret

# Kang nv_mac from SM825P
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/nv_mac https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/bin/nv_mac
chmod 755 /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/nv_mac

# Kang btconfigstore from SM8150
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8150-common/proprietary/vendor/lib/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib64/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8150-common/proprietary/vendor/lib64/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so

