FROM alpine:3.19.0
ENV LANG=C.UTF-8
RUN { echo '#!/bin/sh'; echo 'set -e'; echo; echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
ENV JAVA_VERSION=8u392
ENV JAVA_ALPINE_VERSION=8.392.08-r1
RUN set -x && apk add --no-cache openjdk8="$JAVA_ALPINE_VERSION" && [ "$JAVA_HOME" = "$(docker-java-home)" ]
LABEL maintainer="jackkke<hangao1204@hotmail.com>"
LABEL version="8-jdk-alpine"
LABEL description="OpenJDK 8u392 on Alpine Linux 3.19.0"
LABEL java_version="8u392"