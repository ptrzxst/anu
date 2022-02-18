#!/bin/bash

# add bluetooth lib as vendor
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib/android.hardware.bluetooth@1.0.so https://transfer.sh/efSztv/android.hardware.bluetooth@1.0.so
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/lib/android.hardware.bluetooth@1.1.so https://transfer.sh/XEg4az/android.hardware.bluetooth@1.1.so

curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/etc/init/init.mi.btmac.rc https://transfer.sh/9sjRRC/init.mi.btmac.rc
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/init.mi.btmac.sh https://transfer.sh/5VNmPY/init.mi.btmac.sh
chmod 755 /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/init.mi.btmac.sh

# Kang nv_mac from SM8250
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/nv_mac https://gitlab.com/the-muppets/proprietary_vendor_xiaomi/-/raw/lineage-18.1/sm8250-common/proprietary/vendor/bin/nv_mac
chmod 755 /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/nv_mac

