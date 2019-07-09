#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3ff2cd528a060e7fc2bbb455d2cf0b694b2463fc; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:64e90e9c8fb94a3d739e4dccce67c9ff5d26782f EMMC:/dev/block/bootdevice/by-name/recovery 3ff2cd528a060e7fc2bbb455d2cf0b694b2463fc 67108864 64e90e9c8fb94a3d739e4dccce67c9ff5d26782f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
