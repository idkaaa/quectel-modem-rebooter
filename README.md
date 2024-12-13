# quectel-modem-rebooter
Reboots quectel modem OS if internet connection drops

Installs systemd service to reboot quectel modem linux OS if internet connection drops.

Dependencies: 
ADB access to modem OS, per: 

https://github.com/natecarlson/quectel-rgmii-configuration-notes

or

https://github.com/iamromulan/quectel-rgmii-toolkit

or

https://github.com/aesthernr/quectel-rgmii-configuration-notes


## Usage:
```
cd ..

adb push modemrebooter/. /usrdata/modemrebooter

adb shell /bin/sh /usrdata/modemrebooter/install.sh
```

### Notes:

Tested with RM502Q-AE

Timer fires every 120 seconds with a 110 second delay before running connectivity check script. 

Tried (and failed) to set boot delay, but ended up using the 110 second pre-execution delay as workaround.
