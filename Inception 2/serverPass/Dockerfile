FROM   debian:11
RUN    apt-get update && apt-get -y install nginx
COPY   sh.sh /tmp
EXPOSE 8080
CMD    ["sh" , "/tmp/sh.sh"]