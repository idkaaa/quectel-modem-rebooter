#!/bin/bash

# stop timer/service
systemctl stop modemrebooter.timer

# Remount
mount -o remount,rw /

# remove systemd files
rm -v /lib/systemd/system/modemrebooter.service 
rm -v /lib/systemd/system/multi-user.target.wants/modemrebooter.service 
rm -v /lib/systemd/system/modemrebooter.timer 
rm -v /lib/systemd/system/timers.target.wants/modemrebooter.timer

# Remount readonly
mount -o remount,ro /

systemctl daemon-reload