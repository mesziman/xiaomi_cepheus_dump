#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:acc62b01f88b222441b378b5a7038424191e1016; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:6815e4baf040bce76f6b593fe45cd0c4c4c5f7ad \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:acc62b01f88b222441b378b5a7038424191e1016 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
