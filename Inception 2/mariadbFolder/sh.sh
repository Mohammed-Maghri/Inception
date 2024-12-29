service mariadb start


mariadb -e "CREATE DATABASE $DATA_BASE_NAME" 
mariadb -e "CREATE USER '$DATA_BASE_USER'@'%' IDENTIFIED BY '$DATA_BASE_PASS'"   
mariadb -e "GRANT ALL PRIVILEGES ON $DATA_BASE_NAME.* TO '$DATA_BASE_USER'@'%'"
service mariadb stop

exec mariadb 