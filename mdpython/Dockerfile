#Dockerfile

FROM alpine:3.7

MAINTAINER Philipp Klaus "philipp.l.klaus@web.de"

#VOLUME ["/proc/mdstat"]

RUN apk add --update --no-cache \
    git \
    python3 \
    py3-bottle

RUN addgroup -S swuser -g 501 \
 && adduser  -S -u 501 -g swuser -h /home/swuser -s /sbin/nologin swuser

RUN chown -R swuser:swuser /home/swuser

USER swuser
ENV HOME /home/swuser
WORKDIR /home/swuser/

RUN git clone https://github.com/pklaus/mdpython.git

EXPOSE 8080

ENTRYPOINT cd ./mdpython && python3 ./server.py

