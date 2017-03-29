FROM ubuntu
MAINTAINER andrey.shestakov.pro@gmail.com

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        iproute2 \
        nginx-core \
    && apt-get clean

COPY site_template /site_template
COPY run.sh /run.sh

VOLUME /var/www/html

EXPOSE 80

CMD ["/run.sh"]
