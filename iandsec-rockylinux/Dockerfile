FROM rockylinux/rockylinux:9.4.20240523

LABEL maintainer="jackkke hangao1204@hotmail.com"

COPY ./SimSun.ttf /usr/share/fonts/SimSun.ttf

RUN dnf makecache  \
    && dnf -y upgrade  \
    && dnf -y install wget \
    && wget https://openresty.org/package/rhel/openresty2.repo  \
    && mv openresty2.repo /etc/yum.repos.d/openresty.repo  \
    && dnf -y install java-11-openjdk-headless mysql-server openresty glibc-langpack-zh  \
    && chown -R mysql:mysql /usr/libexec/mysqld  \
    && dnf -y remove wget  \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  \
    && dnf -y clean all

ENV LANG=zh_CN.UTF-8  \
    LC_ALL=zh_CN.UTF-8  \
    JAVA_HOME=/etc/alternatives/jre  \
    PATH=${PATH}:/etc/alternatives/jre/bin  \
    JAVA_MAJOR=11.0  \
    JAVA_VERSION=11.0.24.0.8  \
    MYSQL_MAJOR=8.0  \
    MYSQL_VERSION=8.0.36