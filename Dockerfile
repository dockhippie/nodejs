FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  apk add \
    build-base \
    git \
    nodejs-dev \
    nodejs && \
  rm -rf /var/cache/apk/*

RUN npm install -g \
  gulp \
  grunt-cli \
  bower

ADD rootfs /

WORKDIR /app
CMD ["bash"]
