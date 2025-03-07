# docker-image

个人整理一些基础镜像

## 登录

```shell
docker login -u jackkke
dckr_
pat_
JHGmnyxmNTm5DkHMhnkYcx1Q2sI
<- 错的
docker buildx create --use
```

## 构建 OpenJDK 并推送

```shell
docker buildx build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:8.0.402-jdk-alpine -t jackkke/openjdk:8-jdk-alpine -f openjdk/8/Dockerfile --push ./openjdk/8
docker buildx build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:8.0.402-jre-alpine -t jackkke/openjdk:8-jre-alpine -f openjdk-jre/8/Dockerfile --push ./openjdk-jre/8
docker buildx build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:11.0.25-jdk-alpine -t jackkke/openjdk:11-jdk-alpine -f openjdk/11/Dockerfile --push ./openjdk/11
docker buildx build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:11.0.25-jre-alpine -t jackkke/openjdk:11-jre-alpine -f openjdk-jre/11/Dockerfile --push ./openjdk-jre/11
docker buildx build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:17.0.13-jdk-alpine -t jackkke/openjdk:17-jdk-alpine -f openjdk/17/Dockerfile --push ./openjdk/17
docker buildx build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:17.0.13-jre-alpine -t jackkke/openjdk:17-jre-alpine -f openjdk-jre/17/Dockerfile --push ./openjdk-jre/17
docker buildx build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:21.0.5-jdk-alpine -t jackkke/openjdk:21-jdk-alpine -f openjdk/21/Dockerfile --push ./openjdk/21
docker buildx build --platform linux/amd64,linux/arm64 -t jackkke/openjdk:21.0.5-jre-alpine -t jackkke/openjdk:21-jre-alpine -f openjdk-jre/21/Dockerfile --push ./openjdk-jre/21
```

## 构建 Iandsec

```shell
docker build --platform linux/arm64,linux/amd64 -t jackkke/iandsec-base:20240902 -f iandsec-rockylinux/Dockerfile --push ./iandsec-rockylinux
docker build --platform linux/arm64,linux/amd64 -t jackkke/iandsec-base:20240902-minimal -f iandsec-rockylinux/Dockerfile-minimal --push ./iandsec-rockylinux
```

## 构建 GM

```shell
docker buildx build --platform linux/amd64,linux/arm64/v8 -t jackkke/graalvm-maven:21-oraclelinux7-slim -f iandsec-gm/Dockerfile-7 --push ./iandsec-gm
docker buildx build --build-arg ORACLELINUX_VERSION=8 --platform linux/amd64,linux/arm64/v8 -t jackkke/graalvm-maven:21-oraclelinux8-slim -f iandsec-gm/Dockerfile-8 --push ./iandsec-gm
docker buildx build --build-arg ORACLELINUX_VERSION=9 --platform linux/amd64,linux/arm64/v8 -t jackkke/graalvm-maven:21-oraclelinux9-slim -f iandsec-gm/Dockerfile-8 --push ./iandsec-gm
```

## 构建 盘古MariaDB

```shell
docker buildx build --build-arg VERSION=10.5.26 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.5.26 -t jackkke/pangu-mariadb:10.5 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=10.6.19 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.6.19 -t jackkke/pangu-mariadb:10.6 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=10.11.9 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.11.9 -t jackkke/pangu-mariadb:10.11 -t jackkke/pangu-mariadb:10 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=11.5.2 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:11.5.2 -t jackkke/pangu-mariadb:11.5 -t jackkke/pangu-mariadb:11 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
```

## 构建 盘古 pnpm

```shell
docker buildx build --build-arg VERSION=10.5.26 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.5.26 -t jackkke/pangu-mariadb:10.5 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=10.6.19 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.6.19 -t jackkke/pangu-mariadb:10.6 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=10.11.9 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.11.9 -t jackkke/pangu-mariadb:10.11 -t jackkke/pangu-mariadb:10 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=11.5.2 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:11.5.2 -t jackkke/pangu-mariadb:11.5 -t jackkke/pangu-mariadb:11 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
```

## 构建 盘古 gradle

```shell
docker buildx build --build-arg VERSION=10.5.26 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.5.26 -t jackkke/pangu-mariadb:10.5 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=10.6.19 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.6.19 -t jackkke/pangu-mariadb:10.6 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=10.11.9 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:10.11.9 -t jackkke/pangu-mariadb:10.11 -t jackkke/pangu-mariadb:10 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
docker buildx build --build-arg VERSION=11.5.2 --platform linux/arm64,linux/amd64 -t jackkke/pangu-mariadb:11.5.2 -t jackkke/pangu-mariadb:11.5 -t jackkke/pangu-mariadb:11 -f pangu-mariadb/Dockerfile --push ./pangu-mariadb
```


## 构建 chat2db alpine

```shell
docker buildx build --build-arg VERSION=3.4.1 --platform linux/arm64,linux/amd64 -t jackkke/chat2db:3.4.1-alpine -t jackkke/chat2db -f chat2db/Dockerfile --push ./chat2db
```


## 清理

```shell
docker system prune -a -f
```