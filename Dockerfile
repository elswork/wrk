ARG BASEIMAGE=alpine:latest
FROM ${BASEIMAGE}

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL mantainer="Eloy Lopez <elswork@gmail.com>" \
    org.opencontainers.image.title="wrk" \
    org.opencontainers.image.description="Wrk is a HTTP benchmarking tool capable of generating significant load" \
    org.opencontainers.image.vendor="Deft Work" \
    org.opencontainers.image.url="https://deft.work/wrk" \
    org.opencontainers.image.source="https://github.com/elswork/wrk" \
    org.opencontainers.image.version=$VERSION \ 
    org.opencontainers.image.created=$BUILD_DATE \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.licenses=MIT

RUN apk add --no-cache wrk
WORKDIR /data
ENTRYPOINT ["wrk"]