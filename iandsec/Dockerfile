FROM alpine:3.19.1
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-11-openjdk/jre/bin:/usr/lib/jvm/java-11-openjdk/bin
RUN set -x && apk update && apk add --no-cache openjdk11 mysql mysql-client openrc
ENV JAVA_ALPINE_VERSION=11.0.22_p7-r0
ENV MySQL_ALPINE_VERSION=10.11.6-r0
LABEL maintainer="jackkke<hangao1204@hotmail.com>"
LABEL java_alpine_version="11-jdk-alpine"
LABEL mysql_alpine_version="10-MariaDB-alpine"
LABEL description="MySQL(MariaDB) 10.11.6 And OpenJDK 11.0.22 on Alpine Linux 3.19.1"