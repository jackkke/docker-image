ARG VERSION=3.2.4
FROM chat2db/chat2db:${VERSION} AS builder
FROM jackkke/openjdk:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/chat2db-server-web-start.jar /app/chat2db-server-web-start.jar
EXPOSE 10824
ENTRYPOINT ["java","-Dloader.path=lib","-Dspring.profiles.active=release","-jar","chat2db-server-web-start.jar"]