FROM ubuntu

COPY . .

RUN setup.sh

# ENTRYPOINT ["/root/entrypoint.sh"]