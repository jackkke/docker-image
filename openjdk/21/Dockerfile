FROM alpine:3.19.1
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk
ENV PATH=/usr/lib/jvm/java-21-openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN set -x && apk update && apk add --no-cache openjdk21
ENV JAVA_ALPINE_VERSION=21.0.3_p9-r0
LABEL maintainer="jackkke<hangao1204@hotmail.com>"
LABEL version="21-jdk-alpine"
LABEL description="OpenJDK 21.0.3 on Alpine Linux 3.19.1"