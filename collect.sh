#!/bin/bash
cd ~/rom

. build/envsetup.sh
export CCACHE_DIR=~/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 20G
ccache -o compression=true
ccache -z
$lunch
make android.hardware.bluetooth@1.0.vendor && make android.hardware.bluetooth@1.1.vendor && $make -j8 &
sleep 100m
kill %1
ccache -s
