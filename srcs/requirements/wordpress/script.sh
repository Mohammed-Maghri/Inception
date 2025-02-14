#!/bin/bash

sleep 5
mv /tmp/wp-config.php /var/www/html
cd /var/www/html

sed -i 's/CHNAME/'$CONF_DB_NAME'/' wp-config.php
sed -i 's/CHUSER/'$CONF_DB_USER'/' wp-config.php
sed -i 's/CHPASS/'$CONF_DB_PASSWORD'/' wp-config.php
sed -i 's/CHHOST/'$CONF_DB_HOST'/' wp-config.php

cd /var/www/html && wp core install --url=localhost --title=$SITE_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root
cd /var/www/html && wp user create ${WP_USER} ${WP_EMAIL} --role=author --user_pass=${WP_PASSWORD} --path=/var/www --allow-root

cd /var/www/html && sudo -u www-data wp plugin install redis-cache --activate
cd /var/www/html && sudo -u www-data wp redis enable

php-fpm7.4 -F