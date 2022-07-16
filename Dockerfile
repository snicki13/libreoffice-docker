FROM alpine:latest

MAINTAINER Dominik Kröll <dominik.kroell@mni.thm.de>

RUN apk update
RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f
RUN apk add bash stapler make libreoffice

ENTRYPOINT ["/bin/bash", "-c"]
