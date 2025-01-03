FROM   debian:11
RUN    apt-get update && apt-get install -y redis
EXPOSE 6379
COPY   redexe.sh /tmp
RUN    cd /tmp && chmod +x /tmp/redexe.sh
CMD    ["sh", "/tmp/redexe.sh"]