FROM ubuntu:20.04
# FROM texlive/texlive:latest

WORKDIR /install

COPY ./setup-deps.sh  /install

RUN ./setup-deps.sh


COPY ./setup-texlive-full.sh /install

RUN ./setup-texlive-full.sh


COPY ./setup-fonts.sh  /install

RUN ./setup-fonts.sh

# ENTRYPOINT ["/root/entrypoint.sh"]