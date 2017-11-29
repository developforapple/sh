#!/bin/sh

name="com.mobilepower.terminal"
 
PROCESS=`busybox ps -ef|grep name|grep -v grep|grep -v PPID|awk '{ print $2}'`
for i in $PROCESS
do
  echo "Kill the ${name} process [ $i ]"
  busybox kill -9 $i
done
