1. 从百度网盘下载 node_pb_build_8.9.1_5.5.1.zip 
2. 安装 node 1.9.1
3. 更改 npm 版本为5.5.1
  - node -v
  - npm -v 
  - npm -g install npm@5.5.1
4. 安装 gyp
  - npm install -g node-gyp
5. 拷贝 protobuf.lib、protobuf.node 到各相应目录
6. 安装 Visual Studio 2015 / 1步骤包中 vc_redist.x64.exe 猜测只与 node-protobuf 编译相关，如运行不报错，可不装
7. 安装 mysql，如果是Install版安装，只安装Server Only