ARG VERSION=7.6.6-zulu-8u492-jdk
FROM jackkke/gradle:${VERSION}

WORKDIR /pangu-umbrella

VOLUME ["/pangu-umbrella"]

COPY entrypoint.sh /entrypoint.sh

COPY init.gradle /root/.gradle/init.gradle

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
