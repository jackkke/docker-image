# docker-image
个人整理一些基础镜像
## 登录
```shell
docker login -u jackkke
dckr
pat
hahlkvtEGgTBHQ
2HzqyJ503hIw
<- 错的
```
## 构建 OpenJDK
### 构建大版本号镜像
```shell
docker build -t jackkke/openjdk:8-jdk-alpine -f openjdk/8/Dockerfile .
docker build -t jackkke/openjdk:11-jdk-alpine -f openjdk/11/Dockerfile .
docker build -t jackkke/openjdk:17-jdk-alpine -f openjdk/17/Dockerfile .
docker build -t jackkke/openjdk:21-jdk-alpine -f openjdk/21/Dockerfile .
```
### 推送大版本号镜像
```shell
docker push jackkke/openjdk:8-jdk-alpine
docker push jackkke/openjdk:11-jdk-alpine
docker push jackkke/openjdk:17-jdk-alpine
docker push jackkke/openjdk:21-jdk-alpine
```
### 构建小版本号镜像
```shell
docker build -t jackkke/openjdk:8.0.402-jdk-alpine -f openjdk/8/Dockerfile .
docker build -t jackkke/openjdk:11.0.23-jdk-alpine -f openjdk/11/Dockerfile .
docker build -t jackkke/openjdk:17.0.11-jdk-alpine -f openjdk/17/Dockerfile .
docker build -t jackkke/openjdk:21.0.3-jdk-alpine -f openjdk/21/Dockerfile .
```
### 推送小版本号镜像
```shell
docker push jackkke/openjdk:8.0.402-jdk-alpine
docker push jackkke/openjdk:11.0.23-jdk-alpine
docker push jackkke/openjdk:17.0.11-jdk-alpine
docker push jackkke/openjdk:21.0.3-jdk-alpine
```
## 构建 Iandsec
### 构建镜像
```shell
docker build -t jackkke/iandsec-base:9.4.20240523 -f iandsec-rockylinux/Dockerfile ./iandsec-rockylinux
docker build -t jackkke/iandsec-base:9.4.20240523-minimal -f iandsec-rockylinux/Dockerfile-minimal ./iandsec-rockylinux
```
### 推送镜像
```shell
docker push jackkke/iandsec-base:9.4.20240523
docker push jackkke/iandsec-base:9.4.20240523-minimal
```
## 构建 GM
### 构建镜像
```shell
docker build -t jackkke/graalvm-maven:21.0.3-oraclelinux7.9 -f iandsec-gm/Dockerfile-7 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21-oraclelinux7.9 -f iandsec-gm/Dockerfile-7 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21.0.3-oraclelinux8.9 -f iandsec-gm/Dockerfile-8 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21-oraclelinux8.9 -f iandsec-gm/Dockerfile-8 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21.0.3-oraclelinux9 -f iandsec-gm/Dockerfile-9 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21-oraclelinux9 -f iandsec-gm/Dockerfile-9 ./iandsec-gm
```
### 推送镜像
```shell
docker push jackkke/graalvm-maven:21.0.3-oraclelinux7.9
docker push jackkke/graalvm-maven:21-oraclelinux7.9
docker push jackkke/graalvm-maven:21.0.3-oraclelinux8.9
docker push jackkke/graalvm-maven:21-oraclelinux8.9
docker push jackkke/graalvm-maven:21.0.3-oraclelinux9
docker push jackkke/graalvm-maven:21-oraclelinux9
```