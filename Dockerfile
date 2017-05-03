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
    nodejs \
    nodejs-npm \
    yarn \
    file \
    autoconf \
    automake && \
  rm -rf /var/cache/apk/*

ADD rootfs /

RUN yarn global add \
  gulp \
  grunt-cli \
  bower
