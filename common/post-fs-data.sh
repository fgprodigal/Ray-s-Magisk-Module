#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# Set CF DNS servers address
setprop net.eth0.dns1 223.5.5.5
setprop net.eth0.dns2 119.29.29.29

setprop net.dns1 223.5.5.5
setprop net.dns2 119.29.29.29

setprop net.ppp0.dns1 223.5.5.5
setprop net.ppp0.dns2 119.29.29.29

setprop net.rmnet0.dns1 223.5.5.5
setprop net.rmnet0.dns2 119.29.29.29

setprop net.rmnet1.dns1 223.5.5.5
setprop net.rmnet1.dns2 119.29.29.29

setprop net.pdpbr1.dns1 223.5.5.5
setprop net.pdpbr1.dns2 119.29.29.29




# Edit the resolv conf file if it exist

if [ -a /system/etc/resolv.conf ]; then
  mkdir -p $MODDIR/system/etc/
  printf "nameserver 223.5.5.5\nnameserver 119.29.29.29" >> $MODDIR/system/etc/resolv.conf
  chmod 644 $MODDIR/system/etc/resolv.conf
fi