
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

# Nodejs Idea/Rider 调试设置
1. Idea/Rider 中下载 nodejs 插件
2. 新建 Configurations
    
    注意配置的路径
    ![](https://gitee.com/TheNO5/ArticleSources/raw/master/2021-4-14/1618411008721-nodejs%E8%B0%83%E8%AF%95%E9%85%8D%E7%BD%AE.png)

&emsp;

# *  部署 Visual Studio 2015
1. 安装 Visual Studio 2015 / 1步骤包中 vc_redist.x64.exe 猜测只与 node-protobuf 编译相关，如运行不报错，可不装

&emsp;

# 部署 mysql
1. 安装 mysql (mysql-installer-community-5.6.45.0)，如果是Install版安装，只安装Server Only
2. 从百度盘下载cz_tools里sql相关批处理脚本
3. 修改 iniDB.bat 中的 `PATH` 为 本机 mysql 安装路径/bin
4. 执行数据库还原，连同update记录一块还原, Server服务器需要执行 reset_Data_0001.sql 恢复zoneid等数据 (需要修改 reset_Data_0001.sql 文件中最后的值为 `VALUES(1, 0, 10000, 1, 0, 0, 0, 0);` 即指定 zoneid 为 1)
5. 检查数据库还原中的库名与各Server配置中的库名是否一致

&emsp;

# *  部署 Redis
1. 可以跳过
2. https://blog.csdn.net/kevin860/article/details/97849533

&emsp;

# 开服
1. 更改各 Server 中 game-server - config 下每个配置文件中的IP为127.0.0.1
2. 修改 Server/game-server/config/version.json 中 `"zoneId": 1` 
3. 启动 redis.exe
4. 只需要启动 `GlobalServer`、`Server` 两个服务器即可，不需要启动 `Billing`、`IdipServer`，另外因为配置中 chat 服指定的是 127.0.0.1，本机没有 chat 服，所以聊天不能用
5. 执行各 Server 根目录下->tools 中 的启动脚本（比如 startServer.bat） 


&emsp;


# Q&A

> 如果出现 `Row size too large (> 8126)` 的报错，
>
> **1. 在 mysql 配置文件 my.ini 中加入以下三句**
>
>   - sql_mode=NO_ENGINE_SUBSTITUTION,STRICT_TRANS_TABLES
>   - innodb_file_per_table=1
>   - innodb_file_format=Barracuda
>
> **2. 在创建表的语句后加入 `ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;` 所有的 Creat 都要加**
>
> 参照: https://blog.csdn.net/Jianshi_Lai/article/details/86615862
>
