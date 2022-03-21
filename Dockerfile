# https://pkgs.alpinelinux.org/packages?name=obfs4proxy&arch=x86_64
FROM alpine:edge

ADD https://github.com/yumata/lampa/archive/master.zip /lampa.zip


RUN apk add --no-cache nginx unzip \
    && unzip lampa.zip \
    && rm lampa.zip \
    && mv lampa-* lampa 



CMD ["nginx", "-g", "daemon off;"]

EXPOSE 8083

ARG REVISION="0.0.1"
LABEL org.opencontainers.image.title="LAMPA the best!" \
    org.opencontainers.image.source="https://github.com/iAHTOH/docker-lampa/" \
    org.opencontainers.image.revision="$REVISION"
