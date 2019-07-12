#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b659e62cb89a05a510d3c77a0a15f4430f5465f0; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:96960a0c22e5d3554846b41fbba92fb07748d2fc EMMC:/dev/block/bootdevice/by-name/recovery b659e62cb89a05a510d3c77a0a15f4430f5465f0 67108864 96960a0c22e5d3554846b41fbba92fb07748d2fc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
