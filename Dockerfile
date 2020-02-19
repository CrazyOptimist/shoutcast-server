#
# Dockerfile for shoutcast
#

FROM debian:jessie

MAINTAINER crazyoptimist <crazyoptimist@mail.com>

WORKDIR /opt/shoutcast

RUN set -xe \
    && apt-get update \
    && apt-get install -y curl \
    && curl http://download.nullsoft.com/shoutcast/tools/sc_serv2_linux_x64-latest.tar.gz | tar xz \
    && mkdir -p control logs \
    && apt-get purge --auto-remove -y curl \
    && rm -rf /var/lib/apt/lists/*

COPY sc_serv.conf .

EXPOSE 8000 8001

CMD ["./sc_serv", "sc_serv.conf"]