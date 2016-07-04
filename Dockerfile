FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/srv/app"]

WORKDIR /srv/app
CMD ["bash"]

RUN apk update && \
  apk add \
    build-base \
    git \
    nodejs-dev \
    nodejs && \
  rm -rf /var/cache/apk/*

ADD rootfs /

RUN npm install -g \
  gulp \
  grunt-cli \
  bower
