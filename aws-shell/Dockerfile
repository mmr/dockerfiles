FROM python:2.7-slim
MAINTAINER Marcio Ribeiro <binary@b1n.org>
RUN apt-get -y update && apt-get install -y groff
RUN pip install aws-shell
ENTRYPOINT ["aws-shell"]
