# 使用 Nginx Alpine 輕量化映像檔
FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80

# 啟動 Nginx 伺服器
CMD ["nginx", "-g", "daemon off;"]
