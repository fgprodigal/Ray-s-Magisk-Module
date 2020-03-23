# 注意 这不是占位符！！修改权限的时候请把0改为1
SKIPUNZIP=1

ui_print "- 正在提取模块文件"
unzip -o "$ZIPFILE" -x 'META-INF/*' -d $MODPATH >&2

set_perm_recursive $MODPATH 0 0 0755 0644
set_perm  $MODPATH/system/etc/permissions/services.cn.google.xml 0 0 0000 0000
set_perm  $MODPATH/system/product/etc/permissions/services.cn.google.xml 0 0 0000 0000
set_perm  $MODPATH/system/etc/sysconfig/nexus.xml 0 0 0444 0444
set_perm  $MODPATH/system/product/etc/sysconfig/nexus.xml 0 0 0444 0444