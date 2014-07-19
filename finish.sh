#!/bin/bash
rm -rf out/
mkdir -p out/modules
cp arch/arm/boot/zImage out/zImage
find . -name "*.ko" -exec cp -f {} out/modules \;
cp out/zImage ~/android/zips
cp out/modules/bcmdhd.ko ~/android/zips/modules
cp out/modules/bcmdhd_29.ko ~/android/zips/modules
cp out/modules/bcmdhd_34.ko ~/android/zips/modules
cp out/modules/cfg80211.ko ~/android/zips/modules
cp out/modules/tcrypt.ko ~/android/zips/modules
