ARG VERSION
FROM mariadb:${VERSION}

ARG VERSION
ARG MARIADB_ROOT_PASSWORD_HASH
ARG MARIADB_PASSWORD_HASH

LABEL maintainer="jackkke" \
      mariadb-version="${VERSION}"

ENV MARIADB_ROOT_PASSWORD_HASH=${MARIADB_ROOT_PASSWORD_HASH} \
    MARIADB_DATABASE=tsoc \
    MARIADB_USER=tsoc \
    MARIADB_PASSWORD_HASH=${MARIADB_PASSWORD_HASH} \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

RUN cat <<EOF > /etc/mysql/conf.d/custom.cnf
[mysqld]
lower_case_table_names=1
character-set-server=utf8mb4
collation-server=utf8mb4_general_ci
[client-server]
port=3308
EOF

EXPOSE 3308
