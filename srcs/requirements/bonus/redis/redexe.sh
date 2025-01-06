#!/bin/bash 

# cd /etc/redis && sed -i 's/bind 127.0.0.1 ::1/bind 0.0.0.0 ::1/' redis.conf
redis-server --protected-mode no