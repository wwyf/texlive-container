FROM ubuntu:20.04

WORKDIR /install

ADD . /install

RUN ./setup.sh

# ENTRYPOINT ["/root/entrypoint.sh"]