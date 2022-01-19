# 使用 as 来为第一个阶段命名
FROM node:16-alpine AS builder

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install

COPY . /app/
RUN npm run build

FROM nginx:1.21.4

COPY --from=builder /app/build/ /usr/share/nginx/html