# 使用 Node.js 12 映像作為基礎
FROM node:15

# 設置工作目錄
WORKDIR /usr/src/app

# 複製 package.json 和 package-lock.json
COPY package.json ./

# 安裝依賴
RUN yarn install
RUN yarn global add forever@3.0.4

# 複製專案檔案
COPY . .

# 暴露端口
EXPOSE 3000

# 啟動命令
RUN forever server.js