FROM   debian:11
RUN    mkdir /etc/adm
COPY   adminer-4.8.1.php /etc/adm
COPY   adm.sh /tmp
RUN    apt-get update && apt-get install sudo
RUN    cd /tmp && chmod +x /tmp/adm.sh
RUN    apt-get install -y php-fpm php-cli
COPY   www.conf /etc/php/7.4/fpm/pool.d
RUN    mkdir /run/php
EXPOSE 8000
CMD    ["sh", "/tmp/adm.sh"]