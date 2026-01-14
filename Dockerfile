# 使用 Nginx Alpine
FROM nginx:alpine

# 1. 將當前根目錄所有檔案 (含 index.html) 複製到 Nginx 預設路徑
COPY . /usr/share/nginx/html

# 2. 修正檔案權限，確保 Nginx 能讀取 (解決 403 Forbidden)
RUN chmod -R 755 /usr/share/nginx/html

# 3. 開放 Port 80
EXPOSE 80

# 4. 啟動 Nginx
CMD ["nginx", "-g", "daemon off;"]
