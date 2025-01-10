#!/bin/bash
echo    "Entering !"
echo    "File Generated"
mkdir   -p /var/run/vsftpd/empty
adduser --quiet --disabled-password --gecos "" "$VSFTPD_USER"
echo    "$VSFTPD_USER:$VSFTPD_PASSWD" | chpasswd
touch   /home/$VSFTPD_USER/file

vsftpd