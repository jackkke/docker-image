ARG ALPINE_VERSION=latest
FROM alpine:${ALPINE_VERSION}
ARG ALPINE_VERSION MAJOR_VERSION FULL_VERSION SHORT_VERSION
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-${MAJOR_VERSION}-openjdk
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-${MAJOR_VERSION}-openjdk/jre/bin:/usr/lib/jvm/java-${MAJOR_VERSION}-openjdk/bin
RUN set -x && apk update && apk add --no-cache "openjdk${MAJOR_VERSION}-jdk"
ENV JAVA_ALPINE_VERSION=${FULL_VERSION}
LABEL maintainer="jackkke<hangao1204@hotmail.com>"
LABEL version="${MAJOR_VERSION}-jdk-alpine"
LABEL description="OpenJDK ${SHORT_VERSION} on Alpine Linux ${ALPINE_VERSION}"