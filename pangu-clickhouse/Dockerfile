ARG VERSION=latest
FROM clickhouse/clickhouse-server:${VERSION}

COPY ./docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/
COPY ./clickhouse-server/ /etc/clickhouse-server/
