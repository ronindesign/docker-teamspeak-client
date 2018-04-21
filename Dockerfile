FROM alpine:edge

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk --no-cache add zip \
      ca-certificates  \
      openssl  \
      mono-dev@testing  \
      opus-dev \
    && mkdir -p /opt/TS3AudioBot \
    && cd /opt/TS3AudioBot \
    && wget -O TS3AudioBot.zip https://splamy.de/api/nightly/ts3ab/master/download \
    && unzip TS3AudioBot.zip
