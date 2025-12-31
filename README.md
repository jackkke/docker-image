# docker-image

个人整理一些基础镜像

## 登录

```shell
docker login -u jackkke
dckr_
pat_
JHGmnyxmNTm5DkHMhnkYcx1Q2sI
<- 错的
docker run --privileged --rm tonistiigi/binfmt --install all
docker buildx create --name multiarch --use --bootstrap
```

## 构建 OpenJDK 并推送

```shell
docker buildx build --build-arg ALPINE_VERSION=3.23.2 --build-arg MAJOR_VERSION=8 --build-arg FULL_VERSION=8.452.09-r0 --build-arg SHORT_VERSION=8.452.09 --platform linux/amd64,linux/arm64,linux/arm/v7 -t jackkke/openjdk:8.452.09-jdk-alpine -t jackkke/openjdk:8-jdk-alpine -f openjdk/Dockerfile --push ./openjdk
docker buildx build --build-arg ALPINE_VERSION=3.23.2 --build-arg MAJOR_VERSION=8 --build-arg FULL_VERSION=8.452.09-r0 --build-arg SHORT_VERSION=8.452.09 --platform linux/amd64,linux/arm64,linux/arm/v7 -t jackkke/openjdk:8.452.09-jre-alpine -t jackkke/openjdk:8-jre-alpine -f openjdk-jre/Dockerfile --push ./openjdk-jre
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
docker buildx build --build-arg NODE_VERSION=24.12.0-alpine --build-arg PNPM_VERSION=8.15.9 --platform linux/arm64,linux/amd64 -t jackkke/pangu-pnpm:8.15 -f pangu-pnpm/Dockerfile --push ./pangu-pnpm
```

## 构建 盘古 gradle

```shell
docker build --platform linux/amd64 -t jackkke/pangu-gradle:7.1 -f pangu-gradle/Dockerfile --push ./pangu-gradle
docker build --platform linux/amd64 -t jackkke/pangu-gradle:7.1-sp1 -f pangu-gradle/Dockerfile --push ./pangu-gradle
```


## 构建 chat2db alpine

```shell
docker buildx build --build-arg VERSION=3.4.1 --platform linux/arm64,linux/amd64 -t jackkke/chat2db:3.4.1-alpine -t jackkke/chat2db -f chat2db/Dockerfile --push ./chat2db
```

## 构建 盘古 clickhouse

```shell
docker buildx build --build-arg VERSION=22.3.2.2-alpine --platform linux/amd64 -t jackkke/pangu-clickhouse:22.3.2.2-alpine -f pangu-clickhouse/Dockerfile --push ./pangu-clickhouse
docker buildx build --build-arg VERSION=25.3.3.42-alpine --platform linux/arm64,linux/amd64 -t jackkke/pangu-clickhouse:25.3.3.42-alpine -f pangu-clickhouse/Dockerfile --push ./pangu-clickhouse
```

## 构建 盘古 elasticsearch

```shell
docker buildx build --platform linux/arm64,linux/amd64 -t jackkke/pangu-elasticsearch:7.17.21 -f pangu-elasticsearch/Dockerfile --push ./pangu-elasticsearch
```

## 构建 盘古 redis

```shell
docker buildx build --platform linux/arm64,linux/amd64 -t jackkke/pangu-redis:4.0.14-alpine -f pangu-redis/Dockerfile --push ./pangu-redis
```


## 清理

```shell
docker system prune -a -f
```