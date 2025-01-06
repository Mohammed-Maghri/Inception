#!/bin/bash
echo "Entering !"
mkdir -p /var/run/vsftpd/empty
touch /var/run/vsftpd/empty/file
echo "File Generated"
adduser --quiet --disabled-password --gecos "" "maghri"
chown maghri:maghri /var/run/vsftpd/empty
chmod 755 /var/run/vsftpd/empty
echo   "maghri:325006" | chpasswd
touch /home/maghri/file

echo "write_enable=YES
pasv_enable=YES
chroot_local_user=YES
pasv_min_port=40000
pasv_max_port=40100
pam_service_name=ftp
allow_writeable_chroot=YES
" >> /etc/vsftpd.conf
vsftpd
