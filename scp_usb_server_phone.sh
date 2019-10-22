#!/bin/bash -l
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

project_path=$(pwd)
mjcript_path=$project_path/tools/phone/itnl/libmd.dylib 
to_phone_path=/Library/MobileSubstrate/DynamicLibraries
phone_ip=172.20.10.2

echo "- - - - - - - - - - - - -"
echo " 正在复制到手机...."
echo "- - - - - - - - - - - - -"

scp -r $mjcript_path root@$phone_ip:$to_phone_path

echo "- - - - - - - - - - - - -"
echo " 复制到手机成功"
echo "- - - - - - - - - - - - -"
