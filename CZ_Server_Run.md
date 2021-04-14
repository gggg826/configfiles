
&emsp;

# 部署Node
1. 从百度网盘下载 node_pb_build_8.9.1_5.5.1.zip 
2. 安装 node 8.9.1 (1步骤中解压或者 Server\tools 目录下有安装包)
3. 更改 npm 版本为5.5.1
    - node -v
    - npm -v 
    - npm -g install npm@5.5.1
4. 安装 gyp
    - npm install -g node-gyp
5. 拷贝 protobuf.lib、protobuf.node 到各相应目录

&emsp;

# *  部署 Visual Studio 2015
1. 安装 Visual Studio 2015 / 1步骤包中 vc_redist.x64.exe 猜测只与 node-protobuf 编译相关，如运行不报错，可不装

&emsp;

# 部署 mysql
1. 安装 mysql (mysql-installer-community-5.6.45.0)，如果是Install版安装，只安装Server Only
2. 从百度盘下载cz_tools里sql相关批处理脚本，执行数据库还原，连同update记录一块还原, Server服务器需要执行 reset_Data_0001.sql， 恢复zoneid等数据
3. 检查数据库还原中的库名与各Server配置中的库名是否一致

&emsp;

# 部署 Redis
1. https://blog.csdn.net/kevin860/article/details/97849533

&emsp;

# 开服
1. 更改各 Server 中 game-server - config 下每个配置文件中的IP为127.0.0.1
2. 启动 redis.exe