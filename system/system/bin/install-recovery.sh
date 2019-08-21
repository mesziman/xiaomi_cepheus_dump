#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:8164e6bdaf4f292221a62c0bd90ecd82873b127f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:75f92392797e16713d588f6485c149ee2309fad9 EMMC:/dev/block/bootdevice/by-name/recovery 8164e6bdaf4f292221a62c0bd90ecd82873b127f 67108864 75f92392797e16713d588f6485c149ee2309fad9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
