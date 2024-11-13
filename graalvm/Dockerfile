ARG ORACLELINUX_VERSION=9
FROM oraclelinux:${ORACLELINUX_VERSION}-slim
LABEL maintainer="jackkke hangao1204@hotmail.com"
ARG ORACLELINUX_VERSION=9

RUN echo "" >> /etc/yum.repos.d/oracle-linux-ol${ORACLELINUX_VERSION}.repo  \
    && echo "[ol${ORACLELINUX_VERSION}_graalvm_community]" >> /etc/yum.repos.d/oracle-linux-ol${ORACLELINUX_VERSION}.repo  \
    && echo "name=Oracle GraalVM Community for Oracle Linux \$releasever (\$basearch)" >> /etc/yum.repos.d/oracle-linux-ol${ORACLELINUX_VERSION}.repo  \
    && echo "baseurl=https://yum\$ociregion.\$ocidomain/repo/OracleLinux/OL${ORACLELINUX_VERSION}/graalvm/community/\$basearch/" >> /etc/yum.repos.d/oracle-linux-ol${ORACLELINUX_VERSION}.repo  \
    && echo "gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle" >> /etc/yum.repos.d/oracle-linux-ol${ORACLELINUX_VERSION}.repo  \
    && echo "gpgcheck=1" >> /etc/yum.repos.d/oracle-linux-ol${ORACLELINUX_VERSION}.repo  \
    && echo "enabled=1" >> /etc/yum.repos.d/oracle-linux-ol${ORACLELINUX_VERSION}.repo

RUN if [ "$ORACLELINUX_VERSION" -eq 7 ];then ln -s /usr/bin/yum /usr/bin/microdnf;fi

RUN microdnf update -y  \
    && microdnf -y install gcc glibc-devel zlib-devel wget gzip graalvm-community-21-jdk  \
    && microdnf clean all