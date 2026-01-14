# 使用 Nginx Alpine
FROM nginx:alpine

COPY my_web /usr/share/nginx/html

RUN chmod -R 755 /usr/share/nginx/html

# 開放連接埠
EXPOSE 80

# 啟動 Nginx
CMD ["nginx", "-g", "daemon off;"]
