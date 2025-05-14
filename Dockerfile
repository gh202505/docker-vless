# 使用官方 Node.js 镜像作为基础
FROM node:alpine

# 创建工作目录
WORKDIR /app

# 安装 wget（Alpine Linux 使用 apk 包管理器）
RUN apk add --no-cache wget

# 下载 app.js 文件
RUN wget -N https://gh-proxy.0944.loocao.pp.ua/https://raw.githubusercontent.com/yonggekkk/vless-nodejs/main/app.js

# 设置环境变量
ENV UUID=4aa5e00a-7772-4d1c-9078-416c806f21e0
ENV PORT=5911
ENV DOMAIN=plonjuvfrodt.ap-northeast-1.clawcloudrun.com

# 暴露端口
EXPOSE 5911

# 运行应用
CMD ["node", "app.js"]