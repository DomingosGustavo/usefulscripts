#!/bin/bash

echo "starting the process...\n"

echo "setting adb port to $2\n"

eval "adb tcpip $2"

eval "adb connect $1:$2"

echo "congratz!!!!! you can remove the usb cable now and be happy"


