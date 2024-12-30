FROM debian:11
RUN  apt-get update && apt-get install sudo && sudo apt-get install -y curl
RUN  sudo apt-get install -y php
RUN  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN  chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp 
RUN  cd /var/www && sudo chown -R www-data:www-data /var/www && sudo -u www-data wp core download
RUN  apt-get install -y php-fpm php-cli 
RUN  apt-get install systemctl -y
COPY www.conf /etc/php/7.4/fpm/pool.d
COPY wp-config.php /var/www/wp-config.php
RUN  mkdir /run/php
EXPOSE 9000
CMD ["php-fpm7.4", "-F"]