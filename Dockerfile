FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN mkdir -p /docker/libexec
ADD libexec /docker/libexec
RUN ln -sf /docker/libexec/manage /usr/bin/manage

RUN apk-install \
  ca-certificates \
  build-base \
  nodejs-dev \
  nodejs

RUN npm install -g \
  gulp \
  grunt-cli

WORKDIR /docker
ENTRYPOINT ["manage"]
CMD ["bash"]
