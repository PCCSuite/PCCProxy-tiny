FROM alpine

RUN apk add --no-cache tinyproxy

COPY docker-entrypoint.sh /usr/local/bin

COPY tinyproxy.conf.base /etc/tinyproxy
COPY upstream.conf.default /etc/tinyproxy/upstream.conf

ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "tinyproxy", "-d"]
