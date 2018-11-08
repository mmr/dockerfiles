FROM alpine
MAINTAINER Marcio Ribeiro <binary@b1n.org>

RUN apk add cloc --no-cache

WORKDIR /data
VOLUME "/data"

ENTRYPOINT ["/usr/bin/cloc"]
