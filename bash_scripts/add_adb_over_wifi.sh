#!/bin/bash

echo "starting the process..."
echo "type your device ip:"
read ip
eval "adb tcpip 5556"

eval "adb connect $ip"

echo "congratz!!!!! you can remove the usb cable now and be happy"


