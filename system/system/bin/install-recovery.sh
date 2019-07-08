#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:39a98c123628b8bfbde899a160baabecaf27e770; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:82e412352b6181f8a4d9c058a735b836f0689564 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:39a98c123628b8bfbde899a160baabecaf27e770 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
