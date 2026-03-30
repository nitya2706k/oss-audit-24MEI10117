#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git)
        echo "Git: a distributed version control system for tracking code changes" ;;
    apache2)
        echo "Apache: open-source web server" ;;
    mysql-server)
        echo "MySQL: open-source database system" ;;
    firefox)
        echo "Firefox: open-source web browser" ;;
    *)
        echo "Unknown package" ;;
esac

