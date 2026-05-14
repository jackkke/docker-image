ARG BASE_IMAGE_VERSION=2.1.8
ARG DEBIAN_CODENAME=trixie
FROM mcr.microsoft.com/devcontainers/base:${BASE_IMAGE_VERSION}-${DEBIAN_CODENAME}

USER root
ARG TARGET_JAVA_VERSION=8
ARG GRADLE_VERSION=7.6.6
ENV JAVA_HOME=/usr/lib/jvm/zulu${TARGET_JAVA_VERSION}
ENV GRADLE_HOME=/opt/gradle
ENV PATH="${JAVA_HOME}/bin:${GRADLE_HOME}/bin:${PATH}"
ENV LANG=en_US.UTF-8

RUN curl -s https://repos.azul.com/azul-repo.key | gpg --dearmor -o /usr/share/keyrings/azul.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list \
    && chmod 644 /usr/share/keyrings/azul.gpg \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y zulu${TARGET_JAVA_VERSION}-jdk \
    && ln -s ${JAVA_HOME} /docker-java-home \
    && curl -LO https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
    && unzip gradle-${GRADLE_VERSION}-bin.zip \
    && rm -rf gradle-${GRADLE_VERSION}-bin.zip \
    && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" \
    && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
