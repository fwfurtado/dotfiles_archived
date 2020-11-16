#!/bin/sh 

killall -q polybar 

while -u $UID -x polybar >/dev/null; do sleep 1; done 

polybar fwf & 
