FROM debian:jessie

RUN apt-get update && apt-get install -y \
	postgresql-client-common \
	postgresql-client-9.4

COPY run.sh /usr/bin/
WORKDIR "/data"
ENTRYPOINT ["run.sh"]
