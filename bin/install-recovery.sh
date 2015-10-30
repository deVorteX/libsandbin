#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12791808:42f44b1494429ee344c99a5fcdd1eabc55b194cc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12390400:58e2606b0f4cd9234af306f76a41562947adc2e7 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 42f44b1494429ee344c99a5fcdd1eabc55b194cc 12791808 58e2606b0f4cd9234af306f76a41562947adc2e7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
