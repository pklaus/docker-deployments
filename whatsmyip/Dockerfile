#Dockerfile

FROM pklaus/uptodatearch

MAINTAINER Philipp Klaus "philipp.l.klaus@web.de"

RUN pacman --noconfirm -Sy python git

RUN groupadd -r swuser -g 501 && \
useradd -u 501 -r -g swuser -d /home/swuser -s /sbin/nologin -c "Docker image user" swuser

#ADD . /home/swuser/
#COPY ./ /home/swuser/app
COPY ./*whatsmyip-server.sh /home/swuser/
RUN chown -R swuser:swuser /home/swuser

USER swuser
ENV HOME /home/swuser
WORKDIR /home/swuser/
RUN /home/swuser/setup-whatsmyip-server.sh

EXPOSE 8080

#CMD ["--port 27017"]
ENTRYPOINT ["/home/swuser/start-whatsmyip-server.sh"]

