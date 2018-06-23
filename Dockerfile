# 拉取10.1.0版本的node镜像
FROM node:8.11.3

# 维护人
MAINTAINER ryn

# 创建工作目录
RUN mkdir -p /home/rap2-dolores
WORKDIR /home/rap2-dolores

# 将代码拷贝至工作目录
COPY . /home/rap2-dolores

# 全局安装http-server服务器
RUN npm install -g http-server

# 全局安装node-sass(一定要带--unsafe-perm，否则会报错)
RUN npm install --unsafe-perm -g node-sass

# 安装依赖
RUN npm install

# 打包
RUN npm run build