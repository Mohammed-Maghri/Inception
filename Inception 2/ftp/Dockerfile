FROM debian:11
RUN  apt-get update && apt-get install -y vsftpd
COPY vsftpd.conf /etc/vsftpd.conf
COPY ftp.sh /etc/ftp.sh
RUN  chmod +x /etc/ftp.sh
CMD  ["sh" , "/etc/ftp.sh"]