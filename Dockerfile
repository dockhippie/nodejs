FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

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

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/dockhippie/nodejs.git"
LABEL org.label-schema.name="Nodjs"
LABEL org.label-schema.vendor="Thomas Boerger"
LABEL org.label-schema.schema-version="1.0"
