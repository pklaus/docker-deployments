FROM alpine:3.7
ENV FHEM_VERSION 5.8

## Add FHEM. Download it to the working directory before building:
## wget https://fhem.de/fhem-${FHEM_VERSION}.tar.gz
## echo "879133025dbbb803d5a59a0deaef1441ba6bf11d67c9961bc353e2df5501746c fhem-5.8.tar.gz" | sha256sum -c -
ADD fhem-${FHEM_VERSION}.tar.gz /opt

RUN set -ex \
 ## Install required packages
 && apk add --no-cache --virtual .run-deps \
    bash \
    ca-certificates \
    perl \
    perl-dbd-pg \
    perl-dbi \
    perl-device-serialport \
    perl-digest-crc \
    perl-digest-md5 \
    perl-io-socket-ssl \
    perl-libwww \
    perl-json \
    perl-xml-simple \
 ## Move the folder to the right place:
 && mv /opt/fhem-${FHEM_VERSION} /opt/fhem \
 ## Create user & group: fhem:fhem
 && addgroup fhem && \
    adduser -D -G fhem -h /opt/fhem -u 1000 fhem \
 && chown -R fhem:fhem /opt/fhem \
 ## Modify the configuration file forceing fhem to keep in foreground:
 && echo 'attr global nofork 1\n' >> /opt/fhem/fhem.cfg

WORKDIR /opt/fhem
USER fhem

EXPOSE 8083 8084 8085 7072
VOLUME /opt/fhem/log
# Doesn't work for a file:
#VOLUME /opt/fhem/fhem.cfg
CMD ["/opt/fhem/fhem.pl", "fhem.cfg"]
