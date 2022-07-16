FROM ubuntu:22.04
MAINTAINER Dominik Kröll <dominik.kroell@mni.thm.de>

RUN apt-get update && apt-get -y install libreoffice

ENTRYPOINT ["/bin/bash", "-c"]
