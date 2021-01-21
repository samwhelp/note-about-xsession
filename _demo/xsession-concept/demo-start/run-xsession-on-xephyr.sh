#!/usr/bin/env bash

Xephyr :100 -ac -screen 1280x680 &
XEPHYR_PID=$!
sleep 0.5

DISPLAY=:100 demo-session.sh
kill ${XEPHYR_PID}


################################################################################
##
#

# ## Original Script
# * https://github.com/worron/awesome-config/blob/master/scripts/run-with-xephyr.sh

# ## Reference
# * https://wiki.archlinux.org/index.php/Xephyr

#
##
################################################################################
