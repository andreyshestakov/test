FROM ubuntu
MAINTAINER andrey.shestakov.pro@gmail.com

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        rsyslog \
    && apt-get clean

COPY 10-remote.conf /etc/rsyslog.d/10-remote.conf
COPY run.sh /run.sh

VOLUME /var/log/remote

EXPOSE 514

CMD ["/run.sh"]
