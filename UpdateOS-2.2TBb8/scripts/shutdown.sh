#!/bin/sh

# USER_DIR=${USER_DIR:="/usbdrive"}
# PATCH_DIR=${PATCH_DIR:="/usbdrive/Patches"}
FW_DIR=${FW_DIR:="/root"}
SCRIPTS_DIR=$FW_DIR/scripts


oscsend localhost 4001 /shutdown i 1
$SCRIPTS_DIR/killpd.sh
$SCRIPTS_DIR/killmother.sh
killall wpa_supplicant
killall dhcpcd
shutdown -h now
#echo "shutting down"
