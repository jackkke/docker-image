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

RUN microdnf update -y  \
    && microdnf -y install gcc glibc-devel zlib-devel wget gzip graalvm-community-21-jdk  \
    && wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz  \
    && tar -zxf apache-maven-3.9.9-bin.tar.gz -C /etc/alternatives  \
    && ln -s /etc/alternatives/apache-maven-3.9.9/bin/mvn /bin/mvn  \
    && rm -f apache-maven-3.9.9-bin.tar.gz  \
    && microdnf clean all