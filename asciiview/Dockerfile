FROM debian:jessie
RUN apt-get -y update && apt-get -y install expect aview netpbm lolcat
WORKDIR /data
COPY create_ascii_art.exp /usr/bin
COPY run.sh /usr/bin
ENTRYPOINT ["/usr/bin/run.sh"]
