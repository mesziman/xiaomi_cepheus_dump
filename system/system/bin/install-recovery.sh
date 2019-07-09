#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:416bf5a0bbec53ab399dbd0c523e3cf58d701f88; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:b102464045c9ff5c90003989f99c4cb6c13776f2 EMMC:/dev/block/bootdevice/by-name/recovery 416bf5a0bbec53ab399dbd0c523e3cf58d701f88 67108864 b102464045c9ff5c90003989f99c4cb6c13776f2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
