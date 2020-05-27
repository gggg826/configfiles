#!/bin/bash

#echo 参数1 是  $1
tarDir=$1
#echo                  44444    $tarDir

#echo 参数1 是  $1
# 使用脚本查看libiPhone-lib.a包含的架构，
# lipo -info libiPhone-lib.a


echo -------------------------------------------
echo 拆分libiPhone-lib.a
lipo $tarDir/libiPhone-lib.a -thin armv7 -output /Users/tianyuzaixian/Desktop/URLUtility/URLUtility7/libiPhone-lib7.a
lipo $tarDir/libiPhone-lib.a -thin arm64 -output /Users/tianyuzaixian/Desktop/URLUtility/URLUtility64/libiPhone-lib64.a

echo -------------------------------------------
echo 替换libiPhone-lib.a里的URLUtility.o
# 将各自架构libiPhone-lib.a里的URLUtility.o替换为我们生成的。
# ar -d 是移除，ar -q是添加

ar -d /Users/tianyuzaixian/Desktop/URLUtility/URLUtility7/libiPhone-lib7.a URLUtility.o
ar -q /Users/tianyuzaixian/Desktop/URLUtility/URLUtility7/libiPhone-lib7.a /Users/tianyuzaixian/Desktop/URLUtility/armv7/URLUtility.o

ar -d /Users/tianyuzaixian/Desktop/URLUtility/URLUtility64/libiPhone-lib64.a URLUtility.o
ar -q /Users/tianyuzaixian/Desktop/URLUtility/URLUtility64/libiPhone-lib64.a /Users/tianyuzaixian/Desktop/URLUtility/arm64/URLUtility.o

echo -------------------------------------------
echo 合并libiPhone-lib.a
lipo -create /Users/tianyuzaixian/Desktop/URLUtility/URLUtility7/libiPhone-lib7.a /Users/tianyuzaixian/Desktop/URLUtility/URLUtility64/libiPhone-lib64.a -output $tarDir/libiPhone-lib.a

echo -------------------------------------------
echo ==============completed====================


echo -------------------------------------------
echo Check   libiPhone-lib.a
cd $tarDir
grep UIWebView * -R
cd ~

