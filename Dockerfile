FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  apk add \
    build-base \
    nodejs-dev \
    nodejs && \
  rm -rf /var/cache/apk/*

RUN npm install -g \
  gulp \
  grunt-cli

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
