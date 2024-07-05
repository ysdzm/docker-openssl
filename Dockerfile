FROM alpine:latest

RUN apk update && apk add openssl

COPY scripts/ /scripts/
RUN chmod +x /scripts/*.sh

WORKDIR /scripts
