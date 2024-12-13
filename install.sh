#!/bin/bash

# Remount
mount -o remount,rw /

# Copy systemd init files & reload
cp /usrdata/modemrebooter/modemrebooter.service /lib/systemd/system
cp /usrdata/modemrebooter/modemrebooter.timer /lib/systemd/system

systemctl daemon-reload

# Link systemd files
ln -s /lib/systemd/system/modemrebooter.service /lib/systemd/system/multi-user.target.wants/
ln -s /lib/systemd/system/modemrebooter.timer /lib/systemd/system/timers.target.wants/

# Remount readonly
mount -o remount,ro /

# Start Services
systemctl start modemrebooter.timer