sudo apt update -y
sudo apt install vsftpd -y
systemctl status vsftpd.service
systemctl enable vsftpd.service
systemctl start vsftpd.serice
systemctl status vsftpd.service
sudo adduser ftpserver
sudo echo ftpserver >> /etc/vsftpd.userlist
cat /etc/vsftpd.userlist
mkdir -p /home/ftpserver/ftp
chmod -R 750 /home/ftpserver/ftp
sudo chown -R ftpserver:ftpserver /home/ftpserver/ftp
rm /etc/vsftpd.conf
cp vsftpd.conf /etc/
sudo systemctl restart vsftpd.service
sudo systemctl status vsftpd.service
sudo apt install ufw -y
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo ufw reload
cat successfully.txt

