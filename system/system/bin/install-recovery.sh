#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5806732d86133c463d3cefdb398ca5c2873ed3eb; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:c17efdb835c3e64b9f22a2b3006d6a33affc3097 EMMC:/dev/block/bootdevice/by-name/recovery 5806732d86133c463d3cefdb398ca5c2873ed3eb 67108864 c17efdb835c3e64b9f22a2b3006d6a33affc3097:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
