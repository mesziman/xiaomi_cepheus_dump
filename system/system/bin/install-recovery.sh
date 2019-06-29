#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:13b8cfd2cbecd87fbfaf9378056e20a67293d453; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:69297db22094c465bc481996f5413cee87ae7244 EMMC:/dev/block/bootdevice/by-name/recovery 13b8cfd2cbecd87fbfaf9378056e20a67293d453 67108864 69297db22094c465bc481996f5413cee87ae7244:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
