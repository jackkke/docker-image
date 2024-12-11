FROM azul/zulu-openjdk-alpine:8u432-jdk

WORKDIR /pangu-umbrella

ENV GRADLE_HOME=/opt/gradle

ARG GRADLE_VERSION=7.6.4

RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip  \
    && unzip gradle-${GRADLE_VERSION}-bin.zip  \
    && rm -rf gradle-${GRADLE_VERSION}-bin.zip  \
    && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"  \
    && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle

VOLUME ["/pangu-umbrella", "/root/.gradle"]

ENTRYPOINT ["sh", "-c", "gradle clean && exec $0 $@" ]

CMD ["gradle", ":pangu:pangu-webres:war"]