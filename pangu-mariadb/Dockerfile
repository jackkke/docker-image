FROM mariadb:10.11.9

LABEL maintainer="jackkke" \
    mariadb-version="10.11.9"

ENV MYSQL_ROOT_PASSWORD=venustech.tsoc.db.ROOT  \
    MYSQL_DATABASE=tsoc  \
    MYSQL_USER=tsoc  \
    MYSQL_PASSWORD=fake.PWD.fool.4.U  \
    LC_ALL=zh_CN.UTF-8  \
    LANG=zh_CN.UTF-8
RUN echo '[mysqld]' > /etc/mysql/conf.d/custom.cnf \
    && echo 'lower_case_table_names=1' >> /etc/mysql/conf.d/custom.cnf \
    && echo 'character-set-server=utf8' >> /etc/mysql/conf.d/custom.cnf \
    && echo 'collation-server=utf8_general_ci' >> /etc/mysql/conf.d/custom.cnf