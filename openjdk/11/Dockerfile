FROM alpine:3.19.0
ENV LANG=C.UTF-8
RUN { echo '#!/bin/sh'; echo 'set -e'; echo; echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-11-openjdk/jre/bin:/usr/lib/jvm/java-11-openjdk/bin
ENV JAVA_VERSION=11u21
ENV JAVA_ALPINE_VERSION=11.0.21_p9-r0
RUN set -x && apk add --no-cache openjdk11="$JAVA_ALPINE_VERSION" && [ "$JAVA_HOME" = "$(docker-java-home)" ]
LABEL maintainer="jackkke<hangao1204@hotmail.com>"
LABEL version="11-jdk-alpine"
LABEL description="OpenJDK 11u21 on Alpine Linux 3.19.0"
LABEL java_version="11u21"