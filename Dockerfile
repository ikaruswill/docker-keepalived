FROM alpine:3.13

ARG VERSION=2

RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
        keepalived~${VERSION} \
        curl \
        ca-certificates \
    && update-ca-certificates \
    && rm -rf /var/cache/apk/* \
    && keepalived --version

CMD ["/usr/sbin/keepalived", "--dont-fork", "--dump-conf", "--vrrp", "--log-detail", "--log-console"]