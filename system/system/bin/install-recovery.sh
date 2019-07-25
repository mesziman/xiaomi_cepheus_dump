#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5d00d12734ee331f5a9a30b804fc07294ab1f7e6; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:6662e9804ffe352e893d24f5d75340fcaf14d396 EMMC:/dev/block/bootdevice/by-name/recovery 5d00d12734ee331f5a9a30b804fc07294ab1f7e6 67108864 6662e9804ffe352e893d24f5d75340fcaf14d396:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
