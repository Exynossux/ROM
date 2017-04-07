#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15540000.dwmmc0/by-name/RECOVERY:12273664:1fdfde7de66b540ec25145918eacd294334e3228; then
  applypatch EMMC:/dev/block/platform/15540000.dwmmc0/by-name/BOOT:10129408:e7ad68ed6f11e3cd7a256d3d5a11f318d151e49a EMMC:/dev/block/platform/15540000.dwmmc0/by-name/RECOVERY 1fdfde7de66b540ec25145918eacd294334e3228 12273664 e7ad68ed6f11e3cd7a256d3d5a11f318d151e49a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
