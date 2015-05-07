FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk-install \
  build-base \
  nodejs-dev \
  nodejs

RUN npm install -g \
  gulp \
  grunt-cli

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
