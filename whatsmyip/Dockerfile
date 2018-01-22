#Dockerfile

FROM alpine:3.7

MAINTAINER Philipp Klaus "philipp.l.klaus@web.de"

RUN apk add --update --no-cache \
    git \
    python3

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN addgroup -S swuser -g 501 \
 && adduser  -S -u 501 -g swuser -h /home/swuser -s /sbin/nologin swuser
RUN chown -R swuser:swuser /home/swuser

USER swuser
ENV HOME /home/swuser
WORKDIR /home/swuser/
RUN git clone https://github.com/pklaus/WhatsMyIP.git

EXPOSE 8080

#CMD ["--port 27017"]
ENTRYPOINT cd ./WhatsMyIP; ./whatsmyip.py --host :: --port 8080 --consider-xrealip
