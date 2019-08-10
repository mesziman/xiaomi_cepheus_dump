#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:75666aa5b02f755da97ed06cc523fa105e512242; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:e4551a6c976fe66ea9aad6e6e7a56bd0625207a3 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:75666aa5b02f755da97ed06cc523fa105e512242 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
