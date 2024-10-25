#!/bin/sh

set -u
set -e

# Cleanup default consoles
sed -i '31,34d' ${TARGET_DIR}/etc/inittab
echo >> ${TARGET_DIR}/etc/inittab

# Change this for auto start!
export CONSOLE=false

if ${CONSOLE:-true} -eq true
then
    # Setup consoles
    echo "console::respawn:/sbin/getty -L  console 0 vt100 # GENERIC_SERIAL" >> ${TARGET_DIR}/etc/inittab
    echo "tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console" >> ${TARGET_DIR}/etc/inittab
else
    # Setup UxPlay
    echo "::respawn:/usr/bin/uxplay -nh -n UXPLAY" >> ${TARGET_DIR}/etc/inittab
fi
echo >> ${TARGET_DIR}/etc/inittab

# Mount /boot and copy any network to iwd folder
echo "::sysinit:/bin/sh -c 'mkdir -p /boot && mount /dev/disk/by-label/bootfs /boot'" >> ${TARGET_DIR}/etc/inittab
echo "::sysinit:/bin/sh -c 'mkdir -p /var/lib/iwd/ && mv /boot/*.psk /var/lib/iwd/'" >> ${TARGET_DIR}/etc/inittab