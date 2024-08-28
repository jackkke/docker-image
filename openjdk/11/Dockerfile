FROM alpine:3.20.2
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-11-openjdk/jre/bin:/usr/lib/jvm/java-11-openjdk/bin
RUN set -x && apk update && apk add --no-cache openjdk11-jdk
ENV JAVA_ALPINE_VERSION=11.0.24_p8-r0
LABEL maintainer="jackkke<hangao1204@hotmail.com>"
LABEL version="11-jdk-alpine"
LABEL description="OpenJDK 11.0.24 on Alpine Linux 3.20.2"