#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:1520d5aa10899aae95fa97d94eb89e8ee02d118e; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:215d98a93d0614521e50e6993918c3ad688ff52b \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:1520d5aa10899aae95fa97d94eb89e8ee02d118e && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
