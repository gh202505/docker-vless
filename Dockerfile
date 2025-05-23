# 使用官方 Node.js 镜像作为基础
FROM node:alpine

# 创建工作目录
WORKDIR /app

# 安装 wget（Alpine Linux 使用 apk 包管理器）
RUN apk add --no-cache wget

# 下载 app.js 文件
RUN wget -N https://cdn.jsdelivr.net/gh/yonggekkk/vless-nodejs@main/app.js

# 设置环境变量
ENV UUID=UUID
ENV PORT=5911
ENV DOMAIN=域名

# 暴露端口
EXPOSE 5911

# 运行应用
CMD ["node", "app.js"]