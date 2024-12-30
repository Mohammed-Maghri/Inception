#!/bin/bash

mv /tmp/wp-config.php /var/www
php-fpm7.4 -F
cd /var/www && wp core install --url=maghri.42.fr --title="CBUM" --admin_user=maghri --admin_password=123 --admin_email=maghri@maghri42.fr --allow-root