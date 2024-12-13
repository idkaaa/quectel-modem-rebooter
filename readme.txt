Installs systemd service to reboot quectel modem if internet connection drops.

usage:

cd ..
adb push modemrebooter/. /usrdata/modemrebooter
adb shell /bin/sh /usrdata/modemrebooter/install.sh