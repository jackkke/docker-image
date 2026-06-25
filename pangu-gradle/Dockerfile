ARG VERSION=7.6.6-zulu-8u492-jdk
FROM jackkke/gradle:${VERSION}

ENV ORG_GRADLE_CACHING=true \
    ORG_GRADLE_PARALLEL=true \
    ORG_GRADLE_DAEMON=false \
    ORG_GRADLE_VFS_WATCH=false

WORKDIR /pangu-umbrella

VOLUME ["/pangu-umbrella", "/root/.gradle"]

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
