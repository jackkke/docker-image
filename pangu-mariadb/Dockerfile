ARG VERSION=10.11.9
FROM mariadb:${VERSION}

LABEL maintainer="jackkke" \
    mariadb-version="${VERSION}"

ENV MARIADB_ROOT_PASSWORD=venustech.tsoc.db.ROOT  \
    MARIADB_DATABASE=tsoc  \
    MARIADB_USER=tsoc  \
    MARIADB_PASSWORD=fake.PWD.fool.4.U  \
    LC_ALL=C.UTF-8  \
    LANG=C.UTF-8
RUN echo '[mysqld]'                             > /etc/mysql/conf.d/custom.cnf  \
    && echo 'lower_case_table_names=1'         >> /etc/mysql/conf.d/custom.cnf  \
    && echo 'character-set-server=utf8'        >> /etc/mysql/conf.d/custom.cnf  \
    && echo 'collation-server=utf8_general_ci' >> /etc/mysql/conf.d/custom.cnf  \
    && echo '[client-server]'                  >> /etc/mysql/conf.d/custom.cnf  \
    && echo 'port=3308'                        >> /etc/mysql/conf.d/custom.cnf

EXPOSE 3308