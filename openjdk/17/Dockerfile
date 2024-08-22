FROM alpine:3.20.2
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH=/usr/lib/jvm/java-17-openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN set -x && apk update && apk add --no-cache openjdk17
ENV JAVA_ALPINE_VERSION=17.0.12_p7-r0
LABEL maintainer="jackkke<hangao1204@hotmail.com>"
LABEL version="17-jdk-alpine"
LABEL description="OpenJDK 17.0.12 on Alpine Linux 3.20.2"