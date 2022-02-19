#!/bin/bash

# add btmac.rc/btmac.sh
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/etc/init/init.mi.btmac.rc https://transfer.sh/9sjRRC/init.mi.btmac.rc
curl -L -o /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/init.mi.btmac.sh https://transfer.sh/5VNmPY/init.mi.btmac.sh
chmod 755 /tmp/los/vendor/xiaomi/juice/proprietary/vendor/bin/init.mi.btmac.sh
