FROM nextcloud:apache

RUN apt-get update && apt-get install -y \
    supervisor \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir /var/log/supervisord /var/run/supervisord

COPY supervisord.conf /etc/supervisor/supervisord.conf

RUN echo '*/10 * * * * php occ preview:pre-generate' >> /var/spool/cron/crontabs/www-data

#COPY my.config.php /var/www/html/config/my.config.php

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord"]