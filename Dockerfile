# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM alpine:latest

ARG S6_OVERLAY_VERSION=3.1.5.0
ARG TARGETPLATFORM

LABEL org.opencontainers.image.authors="1444670+kosikond@users.noreply.github.com"

ENV USERNAME samba
ENV PASSWORD password
ENV UID 1000
ENV GID 1000

RUN echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" | \
    tee -a /etc/apk/repositories && \
    apk update && apk add --no-cache curl samba-server samba-common-tools openssl wsdd rclone && \
    case "${TARGETPLATFORM}" in \
    "linux/amd64") S6_ARCH="x86_64" ;; \
    "linux/arm64") S6_ARCH="aarch64" ;; \
    *) echo "Unsupported platform ${TARGETPLATFORM}"; exit 1 ;; \
    esac && \
    curl -L -s "https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-${S6_ARCH}.tar.xz" -o /tmp/s6-overlay.tar.xz && \
    tar -C / -Jxpf /tmp/s6-overlay.tar.xz && rm -f /tmp/s6-overlay.tar.xz

ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz && rm -f /tmp/s6-overlay-noarch.tar.xz

COPY /rootfs/ /

EXPOSE 137/udp 138/udp 139/tcp 445/tcp 3702/udp 5357/tcp

ENTRYPOINT ["/init"]
