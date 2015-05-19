FROM python:2.7-slim
MAINTAINER Marcio Ribeiro <binary@b1n.org>
RUN apt-get -y update && apt-get -y install libpq-dev build-essential
RUN pip install pgcli
ENTRYPOINT ["pgcli"]
