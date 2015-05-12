FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk add --update \
  build-base \
  nodejs-dev \
  nodejs

RUN npm install -g \
  gulp \
  grunt-cli && \
  rm -rf /var/cache/apk/*

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
