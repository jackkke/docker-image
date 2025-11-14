ARG VERSION=latest
FROM clickhouse/clickhouse-server:${VERSION}

COPY metadata/ /var/lib/clickhouse/metadata/
COPY ./clickhouse-server/ /etc/clickhouse-server/

EXPOSE 9004 9440