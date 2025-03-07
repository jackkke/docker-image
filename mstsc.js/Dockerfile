FROM rockylinux/rockylinux:9.5.20241118-minimal AS builder
WORKDIR /mstsc.js
RUN microdnf install -y git nodejs npm  \
    && git clone https://github.com/citronneur/mstsc.js.git /mstsc.js

RUN ls -alh && npm install

FROM node:22.13.0-alpine

WORKDIR /mstsc.js

COPY --from=builder /mstsc.js /mstsc.js

EXPOSE 9250

CMD [ "node", "server.js" ]
