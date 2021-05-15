FROM ubuntu:20.04

WORKDIR /install

ADD . /install

RUN ./setup-deps.sh

# RUN ./setup-texlive-full.sh

# RUN ./setup-fonts.sh

# ENTRYPOINT ["/root/entrypoint.sh"]