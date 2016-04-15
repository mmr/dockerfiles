FROM alpine:3.1
MAINTAINER Marcio Ribeiro <binary@b1n.org>
RUN apk update && apk add wget
RUN wget --no-check-certificate https://github.com/lafikl/pginsight/releases/download/v1.0.2/pginsight_linux_x86 -O /pginsight
COPY run.sh /
ENTRYPOINT ["run.sh"]
