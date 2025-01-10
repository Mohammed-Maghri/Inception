FROM   debian:11
RUN    apt-get update && apt-get install sudo && sudo apt-get install -y curl
RUN    apt-get install -y iputils-ping
RUN    sudo apt-get install -y php
RUN    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN    sudo apt install php-mysqli
RUN    mkdir -p /var/www/html
RUN    chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp 
RUN    sudo chown -R www-data:www-data /var/www/html
RUN    cd /var/www/html && sudo -u www-data wp core download --path=/var/www/html
RUN    apt-get install -y php-fpm php-cli 
RUN    apt-get install systemctl -y
COPY   www.conf /etc/php/7.4/fpm/pool.d
COPY   wp-config.php /tmp
RUN    mkdir /run/php
EXPOSE 9000
COPY   script.sh /tmp
RUN    chmod +x /tmp/script.sh
CMD    ["/tmp/script.sh"]
