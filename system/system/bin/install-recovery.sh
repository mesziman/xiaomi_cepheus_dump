#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c570adbd7f40d54c6d6738bb3d339ae641fc33f3; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:591955fff87b47b8310a4c2ecab7f48937e90f33 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c570adbd7f40d54c6d6738bb3d339ae641fc33f3 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
