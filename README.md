# docker-image

个人整理一些基础镜像

## 登录

```shell
docker login -u jackkke
dckr_
pat_
JHGmnyxmNTm5DkHMhnkYcx1Q2sI
<- 错的
# docker buildx create --use
# docker run --privileged --rm tonistiigi/binfmt --install all
```

## 构建 OpenJDK 并推送

```shell
docker build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:8-jdk-alpine -f openjdk/8/Dockerfile --push ./openjdk/8
docker build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:11-jdk-alpine -f openjdk/11/Dockerfile --push ./openjdk/11
docker build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:17-jdk-alpine -f openjdk/17/Dockerfile --push ./openjdk/17
docker build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:21-jdk-alpine -f openjdk/21/Dockerfile --push ./openjdk/21
docker build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:8-jre-alpine -f openjdk-jre/8/Dockerfile --push ./openjdk-jre/8
docker build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:11-jre-alpine -f openjdk-jre/11/Dockerfile --push ./openjdk-jre/11
docker build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:17-jre-alpine -f openjdk-jre/17/Dockerfile --push ./openjdk-jre/17
docker build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:21-jre-alpine -f openjdk-jre/21/Dockerfile --push ./openjdk-jre/21
```

## 构建 Iandsec

```shell
docker build --platform linux/arm64,linux/amd64 -t jackkke/iandsec-base:20240902 -f iandsec-rockylinux/Dockerfile --push ./iandsec-rockylinux
docker build --platform linux/arm64,linux/amd64 -t jackkke/iandsec-base:20240902-minimal -f iandsec-rockylinux/Dockerfile-minimal --push ./iandsec-rockylinux
```

## 构建 GM

```shell
docker build --platform linux/arm64 -t jackkke/graalvm-maven:21-oraclelinux7-slim -f iandsec-gm/Dockerfile-7-arm --push ./iandsec-gm
docker build --platform linux/amd64 -t jackkke/graalvm-maven:21-oraclelinux7-slim -f iandsec-gm/Dockerfile-7 --push ./iandsec-gm
docker build --platform linux/amd64 -t jackkke/graalvm-maven:21-oraclelinux8-slim -f iandsec-gm/Dockerfile-8 --push ./iandsec-gm
docker build --platform linux/amd64 -t jackkke/graalvm-maven:21-oraclelinux9-slim -f iandsec-gm/Dockerfile-9 --push ./iandsec-gm
docker build --platform linux/arm64 -t jackkke/graalvm-maven:21-oraclelinux7-slim -f iandsec-gm/Dockerfile-7-arm ./iandsec-gm
docker build --platform linux/arm64 -t jackkke/graalvm-maven:21-oraclelinux8-slim -f iandsec-gm/Dockerfile-8-arm --push ./iandsec-gm
docker build --platform linux/arm64 -t jackkke/graalvm-maven:21-oraclelinux9-slim -f iandsec-gm/Dockerfile-9-arm --push ./iandsec-gm
# docker build --platform linux/arm64 -t jackkke/graalvm-maven:21-oraclelinux7-slim -f iandsec-gm/Dockerfile-7-arm --push ./iandsec-gm
# docker build --platform linux/amd64 -t jackkke/graalvm-maven:21-oraclelinux7-slim -f iandsec-gm/Dockerfile-7 --push ./iandsec-gm
# docker manifest create jackkke/graalvm-maven:21-oraclelinux7-slim jackkke/graalvm-maven:21-oraclelinux7-slim-amd64 jackkke/graalvm-maven:21-oraclelinux7-slim-arm64
# docker manifest push jackkke/graalvm-maven:21-oraclelinux7-slim
```

## 构建 盘古MariaDB
docker build --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.11.9 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb

## 清理

```shell
docker system prune -a -f
```