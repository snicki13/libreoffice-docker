FROM python:3.10.5-alpine3.16

MAINTAINER Dominik Kröll <dominik.kroell@mni.thm.de>

RUN apk update

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f
    
RUN apk add bash make libreoffice

RUN pip install stapler

ENTRYPOINT ["/bin/bash", "-c"]
