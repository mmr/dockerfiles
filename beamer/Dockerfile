FROM debian:jessie
MAINTAINER Marcio Ribeiro <binary@b1n.org>

RUN apt-get update && apt-get install -y \
  latex-beamer pgf texlive-lang-portuguese make \
  --no-install-recommends

COPY Makefile /usr/bin/
COPY run.sh /usr/bin/
RUN chmod +x /usr/bin/run.sh

WORKDIR /data
VOLUME "/data"

ENTRYPOINT ["run.sh"]
