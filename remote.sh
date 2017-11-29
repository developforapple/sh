#!/bin/sh

name="com.mobilepower.terminal"
echo $name
PROCESS=`busybox ps -ef | grep name | grep -v grep | grep -v PPID | busybox awk '{ print $1}'`
for i in $PROCESS
do
  echo "Kill the ${name} process [ $i ]"
  busybox kill -9 $i
done
