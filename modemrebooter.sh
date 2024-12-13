#!/bin/bash

wget -q --spider http://google.com

logMsg="$(date) "
if [ $? -eq 0 ]; then
	logMsg+="Online"
else
    logMsg+="Offline"
	/bin/echo -e 'AT+CFUN=1,1 \r' > /dev/smd7
fi
echo "${logMsg}" > /var/log/modemrebooter.log