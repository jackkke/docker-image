ARG NODE_VERSION=lts-alpine
FROM node:${NODE_VERSION}

WORKDIR /pangu-roof-admin

ARG PNPM_VERSION=latest

RUN npm install -g pnpm@$PNPM_VERSION  \
    && pnpm config set registry http://192.168.12.88:10000/  \
    && pnpm config set store-dir /.pnpm-store

VOLUME ["/pangu-roof-admin", "/.pnpm-store"]

ENTRYPOINT ["sh", "-c", "cd ./main/spa && pnpm install && exec $0 $@" ]

CMD ["pnpm", "build:prod"]