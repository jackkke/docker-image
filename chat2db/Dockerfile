ARG VERSION=5.3.8
FROM chat2db/chat2db:${VERSION} AS builder
FROM jackkke/openjdk:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/chat2db-community.jar /app/chat2db-community.jar
COPY --from=builder /app/lib/ /app/lib/
EXPOSE 10825
VOLUME [/root/.chat2db-community]
ENTRYPOINT ["java", "-Dloader.path=/app/lib", "-Dchat2db.gui=false", "-Dchat2db.runtime.mode=community", "-Dchat2db.network.status=OFFLINE", "-Dserver.address=0.0.0.0", "-Dserver.port=10825", "-Dspring.profiles.active=release", "-jar", "/app/chat2db-community.jar"]