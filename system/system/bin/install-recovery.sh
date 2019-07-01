#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:9af27185830138ea3acebf3f7a02a3c4702b1fed; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:d5d6b224d6de475140deaa76c51bd713dcd1dbc5 EMMC:/dev/block/bootdevice/by-name/recovery 9af27185830138ea3acebf3f7a02a3c4702b1fed 67108864 d5d6b224d6de475140deaa76c51bd713dcd1dbc5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
