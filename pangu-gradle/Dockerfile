FROM azul/zulu-openjdk-alpine:8u452-jdk

WORKDIR /pangu-umbrella

ENV GRADLE_HOME=/opt/gradle

ARG GRADLE_VERSION=7.6.5

RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip  \
    && unzip gradle-${GRADLE_VERSION}-bin.zip  \
    && rm -rf gradle-${GRADLE_VERSION}-bin.zip  \
    && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"  \
    && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle  \
    && mkdir -p /root/.gradle/caches

VOLUME ["/pangu-umbrella", "/root/.gradle/caches"]

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]