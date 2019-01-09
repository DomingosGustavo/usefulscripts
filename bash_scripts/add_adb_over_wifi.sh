#!/bin/bash

COMMAND=$(eval "adb devices")

if [ "$COMMAND" == "List of devices attached" ]
then
	echo "no connected devices"
else	
	echo "starting the process adb wirelless..."
	echo "type your device ip:"
	read IP	
	
	echo "type your port listen: (Enter for default 5555)"
	read PORT

	if [ -z "$PORT" ]
	then
		eval "adb tcpip 5555"
	else
		eval "adb tcpip $PORT"
	fi	
	
	EXIT=$(eval "adb connect $IP")

	echo "congratz!!!!! you can remove the usb cable now and be happy"
fi




