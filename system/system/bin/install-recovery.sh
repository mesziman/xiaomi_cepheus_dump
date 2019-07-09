#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:9b8e21d295ffdb63d963b70bf5f73deeb2c6c0e5; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:11849cb30f294397e74eb86a8276ad575efcd10b EMMC:/dev/block/bootdevice/by-name/recovery 9b8e21d295ffdb63d963b70bf5f73deeb2c6c0e5 67108864 11849cb30f294397e74eb86a8276ad575efcd10b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
