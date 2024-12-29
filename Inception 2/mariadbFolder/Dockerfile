FROM debian:11

RUN  apt-get update && apt-get install -y sudo 
RUN  apt-get install -y mariadb-server
COPY sh.sh /var/run 
RUN  chmod +x /var/run/sh.sh 

CMD ["sleep", "infinity"]
#CMD ["/var/run/sh.sh"]

