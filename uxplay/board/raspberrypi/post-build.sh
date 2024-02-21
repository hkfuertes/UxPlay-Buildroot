#!/bin/sh

set -u
set -e

# Change this for auto start!
export CONSOLE=true

if ${CONSOLE:-true} -eq true
then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
else
    sed -i '31,34d' ${TARGET_DIR}/etc/inittab
    echo >> ${TARGET_DIR}/etc/inittab
    echo "::respawn:/usr/bin/uxplay -nh -n PROJECTOR" >> ${TARGET_DIR}/etc/inittab
fi
