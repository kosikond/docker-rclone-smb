FROM alpine:latest

ARG S6_OVERLAY_VERSION=3.1.5.0

LABEL org.opencontainers.image.authors="1444670+kosikond@users.noreply.github.com"

ENV USERNAME samba
ENV PASSWORD password
ENV UID 1000
ENV GID 1000

RUN echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" | \
    tee -a /etc/apk/repositories && \
    apk add --no-cache samba-server samba-common-tools openssl wsdd rclone

ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz

ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-x86_64.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-x86_64.tar.xz

COPY /rootfs/ /

EXPOSE 137/udp 138/udp 139/tcp 445/tcp 3702/udp 5357/tcp

ENTRYPOINT ["/init"]
