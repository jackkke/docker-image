FROM alpine:3.21.3
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-8-openjdk/jre/bin:/usr/lib/jvm/java-8-openjdk/bin
RUN set -x && apk update && apk add --no-cache openjdk8-jre
ENV JAVA_ALPINE_VERSION=8.442.06-r0
LABEL maintainer="jackkke<hangao1204@hotmail.com>"
LABEL version="8-jre-alpine"
LABEL description="OpenJDK 1.8.0_442 on Alpine Linux 3.21.3"