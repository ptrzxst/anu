#!/bin/bash

# add bluetooth lib as vendor
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib/android.hardware.bluetooth@1.0.so https://transfer.sh/efSztv/android.hardware.bluetooth@1.0.so
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib/android.hardware.bluetooth@1.1.so https://transfer.sh/XEg4az/android.hardware.bluetooth@1.1.so
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib64/android.hardware.bluetooth@1.0.so https://transfer.sh/kd6J4D/android.hardware.bluetooth@1.0.so
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib64/android.hardware.bluetooth@1.1.so https://transfer.sh/0AU9LK/android.hardware.bluetooth@1.1.so

# add prebuilt some app
rm -rf /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/SimpleDeviceConfig
mkdir -p /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/SimpleDeviceConfig
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/SimpleDeviceConfig/SimpleDeviceConfig.apk https://gitlab.com/I-n-o-k/vendor-j/-/raw/master/proprietary/system_ext/priv-app/SimpleDeviceConfig/SimpleDeviceConfig.apk

rm -rf /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/CbrsNetworkMonitor
mkdir -p /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/CbrsNetworkMonitor
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/system_ext/priv-app/CbrsNetworkMonitor/CbrsNetworkMonitor.apk https://gitlab.com/I-n-o-k/vendor-j/-/raw/master/proprietary/system_ext/priv-app/CbrsNetworkMonitor/CbrsNetworkMonitor.apk

# Kang qcril_database from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/radio/qcril_database/upgrade/7_version_update_ecc_table.sql https://gitlab.com/I-n-o-k/vendor-j/-/raw/master/proprietary/vendor/radio/qcril_database/upgrade/7_version_update_ecc_table.sql

# Kang batterysecret from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/etc/init/init.batterysecret.rc https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/etc/init/init.batterysecret.rc
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/batterysecret https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/bin/batterysecret
chmod 755 /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/batterysecret

# Kang nv_mac from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/nv_mac https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/bin/nv_mac
chmod 755 /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/nv_mac

# Kang mithermald from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/etc/init/init.mi_thermald.rc https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/etc/init/init.mi_thermald.rc

# Kang libspl from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib64/libspl.so https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/lib64/libspl.so

# Kang init.mi.btmac from SM8250
#curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/etc/init/init.mi.btmac.rc https://gitlab.com/I-n-o-k/vendor-lime/-/raw/11/proprietary/vendor/etc/init/init.mi.btmac.rc
#curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/init.mi.btmac.sh https://gitlab.com/I-n-o-k/vendor-lime/-/raw/11/proprietary/vendor/bin/init.mi.btmac.sh
chmod 755 /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/init.mi.btmac.sh 
