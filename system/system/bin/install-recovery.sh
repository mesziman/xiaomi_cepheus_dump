#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:36cfdb20ab5c39d80d36a5685a340c827ad65e69; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:88d592b00c1e048481c515708d64421163506e17 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:36cfdb20ab5c39d80d36a5685a340c827ad65e69 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
