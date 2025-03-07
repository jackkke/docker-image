ARG VARIANT="alpine-3.20"
FROM mcr.microsoft.com/devcontainers/base:${VARIANT}

RUN apk update  \
    && apk add npm  \
    && npm install -g pnpm@8.15.9  \
    && pnpm config set registry http://192.168.12.88:10000