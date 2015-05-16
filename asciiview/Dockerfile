FROM debian:jessie
MAINTAINER Marcio Ribeiro <binary@b1n.org>
RUN apt-get -y update && apt-get -y install expect aview netpbm lolcat
WORKDIR /data
ENV TERM ansi
COPY create_ascii_art.exp run.sh /usr/bin/
ENTRYPOINT ["run.sh"]
