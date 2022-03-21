# https://pkgs.alpinelinux.org/packages?name=obfs4proxy&arch=x86_64
FROM alpine:edge

RUN apk add --no-cache nginx

ENV LISTING_PORT="5090"

CMD ["nginx", "-g", "daemon off;"]

ARG REVISION="0.0.1"
LABEL org.opencontainers.image.title="LAMPA the best!" \
    org.opencontainers.image.source="https://github.com/iAHTOH/docker-lampa/" \
    org.opencontainers.image.revision="$REVISION"
