#!/bin/bash

sleep 3
mv /tmp/wp-config.php /var/www
cd /var/www && wp core install --url=localhost --title="CBUM" --admin_user=maghri --admin_password=123 --admin_email=maghri@maghri42.fr --allow-root
php-fpm7.4 -F