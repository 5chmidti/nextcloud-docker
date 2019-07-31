FROM jsurf/rpi-mariadb

COPY myconfig.cnf /etc/mysql/conf.d/myconfig.cnf

RUN apt-get update && apt-get install -y \
    ca-certificates \
    mysqltuner \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O /tuning-primer.sh https://raw.githubusercontent.com/BMDan/tuning-primer.sh/master/tuning-primer.sh

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
