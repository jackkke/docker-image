ARG VERSION=7.6.6-zulu-8u492-jdk
FROM jackkke/gradle:${VERSION}

WORKDIR /pangu-umbrella

VOLUME ["/pangu-umbrella", "/root/.gradle"]

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
