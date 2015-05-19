FROM python:2.7-slim
MAINTAINER Marcio Ribeiro <binary@b1n.org>
RUN apt-get -y update && apt-get -y install libpq-dev build-essential
RUN pip install pgcli
RUN apt-get -y purge \
    binutils perl-modules libc6-dev libc6 libssl-dev linux-libc-dev \
    libssl1.0.0 manpages-dev libssl-doc libisl10 openssl manpages \
    build-essential && apt-get -y autoremove
ENTRYPOINT ["pgcli"]
