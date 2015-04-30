FROM debian:jessie
RUN apt-get -y update && apt-get -y install cowsay lolcat
ENV TERM ansi
COPY run.sh /usr/bin/
ENTRYPOINT ["run.sh"]
