#!/bin/bash

#列出svn目录下的项目
for dir in $(ls /home/svn/)
do
    [ -d /home/svn/$dir ] && echo $dir
done

#进入要设定账户密码的项目目录
read -p "请输入svn项目文件夹名: " dir_name
cd /home/svn/$dir_name/conf
echo `pwd`

#输入要设定的账户名和密码
read -p "请输入要添加的姓名缩写: " name
# read -p "请输入要添加密码: " password
password=`echo user$name |md5sum |cut -c1-8`

#在authz文件的develop行尾添加要设定的用户名
sed -i "/^develop/{s/$/,$name/}" ./authz

#在passwd文件的最后一行添加账号对应的密码，注意转义字符的应用
sed -i "\$a\\$name = $password" ./passwd

#打印出svn仓库地址和设定的账户名以及对应的密码
echo -e "\033[32m svn仓库: svn://192.168.1.39/$dir_name; 账户:$name; 密码: $password \033[0m"
