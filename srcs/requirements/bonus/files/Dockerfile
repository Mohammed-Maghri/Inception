FROM   debian:11
RUN    mkdir -p /media/index
COPY   sbr.sh /media/index/sbr.sh
COPY   index.html /media/index/index.html
RUN    apt-get update && apt-get install sudo
RUN    apt-get install -y php php-mysqli
RUN    sudo chmod +x -R /media/index
RUN    apt-get install -y php-fpm php-cli
RUN    mkdir /run/php
RUN    chmod +x /media/index/sbr.sh
EXPOSE 7000
CMD    ["sh", "/media/index/sbr.sh"]