# docker-image

个人整理一些基础镜像

## 登录

```shell
docker login -u jackkke
dckr_
pat_
JHGmnyxmNTm5DkHMhnkYcx1Q2sI
<- 错的
```

## 构建 OpenJDK 并推送

```shell
docker build -t jackkke/openjdk:8-jdk-alpine -f openjdk/8/Dockerfile .
docker build -t jackkke/openjdk:11-jdk-alpine -f openjdk/11/Dockerfile .
docker build -t jackkke/openjdk:17-jdk-alpine -f openjdk/17/Dockerfile .
docker build -t jackkke/openjdk:21-jdk-alpine -f openjdk/21/Dockerfile .
docker push jackkke/openjdk:8-jdk-alpine
docker push jackkke/openjdk:11-jdk-alpine
docker push jackkke/openjdk:17-jdk-alpine
docker push jackkke/openjdk:21-jdk-alpine

docker build -t jackkke/openjdk:8-jre-alpine -f openjdk-jre/8/Dockerfile .
docker build -t jackkke/openjdk:11-jre-alpine -f openjdk-jre/11/Dockerfile .
docker build -t jackkke/openjdk:17-jre-alpine -f openjdk-jre/17/Dockerfile .
docker build -t jackkke/openjdk:21-jre-alpine -f openjdk-jre/21/Dockerfile .
docker push jackkke/openjdk:8-jre-alpine
docker push jackkke/openjdk:11-jre-alpine
docker push jackkke/openjdk:17-jre-alpine
docker push jackkke/openjdk:21-jre-alpine
```

## 构建 Iandsec

```shell
docker build -t jackkke/iandsec-base:9.4.20240523 -f iandsec-rockylinux/Dockerfile ./iandsec-rockylinux
docker build -t jackkke/iandsec-base:9.4.20240523-minimal -f iandsec-rockylinux/Dockerfile-minimal ./iandsec-rockylinux
docker push jackkke/iandsec-base:9.4.20240523
docker push jackkke/iandsec-base:9.4.20240523-minimal
```

## 构建 GM

```shell
docker build -t jackkke/graalvm-maven:21.0.4-oraclelinux7-slim -f iandsec-gm/Dockerfile-7 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21.0.4-oraclelinux8-slim -f iandsec-gm/Dockerfile-8 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21.0.4-oraclelinux9-slim -f iandsec-gm/Dockerfile-9 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21-oraclelinux7-slim -f iandsec-gm/Dockerfile-7 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21-oraclelinux8-slim -f iandsec-gm/Dockerfile-8 ./iandsec-gm
docker build -t jackkke/graalvm-maven:21-oraclelinux9-slim -f iandsec-gm/Dockerfile-9 ./iandsec-gm
docker push jackkke/graalvm-maven:21.0.4-oraclelinux7-slim
docker push jackkke/graalvm-maven:21.0.4-oraclelinux8-slim
docker push jackkke/graalvm-maven:21.0.4-oraclelinux9-slim
docker push jackkke/graalvm-maven:21-oraclelinux7-slim
docker push jackkke/graalvm-maven:21-oraclelinux8-slim
docker push jackkke/graalvm-maven:21-oraclelinux9-slim
```
