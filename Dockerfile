# 使用官方 Nginx 作为基础镜像
FROM nginx:alpine

# 清空默认 nginx 静态文件
RUN rm -rf /usr/share/nginx/html/*

# 将你的静态文件复制到 nginx 目录
COPY . /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 80

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]
