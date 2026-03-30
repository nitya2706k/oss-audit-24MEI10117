#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Nitya Khandelwal"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date '+%d %B %Y, %H:%M:%S')

DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

if [ -z "$DISTRO" ]; then
    DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
fi

echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software        : $SOFTWARE_CHOICE"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME"
echo "Uptime          : $UPTIME"
echo "Date            : $DATE"
echo "Linux Distro    : $DISTRO"
echo "License         : GNU General Public License (GPL)"
echo "======================================"
