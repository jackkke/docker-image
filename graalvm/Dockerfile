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

RUN if [ "$ORACLELINUX_VERSION" -eq 7 ]; then \
      ln -s /usr/bin/yum /usr/bin/microdnf; \
      yum-config-manager --enable ol7_optional_latest; \
      echo -e "\n[ol7_software_collections]\nname=Software Collection Library release 3.0 packages for Oracle Linux 7 (\$basearch)\nbaseurl=https://yum\$ociregion.\$ocidomain/repo/OracleLinux/OL7/SoftwareCollections/\$basearch/\ngpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle\ngpgcheck=1\nenabled=1" >> /etc/yum.repos.d/oracle-linux-ol7.repo; \
    else \
      sed -i "/^\[ol${ORACLELINUX_VERSION}_codeready_builder\]/,/^$/s/enabled=0/enabled=1/" /etc/yum.repos.d/oracle-linux-ol${ORACLELINUX_VERSION}.repo; \
    fi

RUN microdnf update -y && microdnf -y install gcc gzip graalvm-community-21-native-image && microdnf clean all