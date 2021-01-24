#curl -s https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-community-server-8.0.23-1.el7.x86_64.rpm -o mysql-community-server.rpm
#rpm -ivh mysql.rpm
#yum -y install perl
#curl http://mirror.centos.org/centos/7/os/x86_64/Packages/libaio-0.3.109-13.el7.x86_64.rpm -o libaio.rpm
#rpm -ivh libaio.rpm


curl https://repo.mysql.com//mysql80-community-release-el7-3.noarch.rpm -o mysql.rpm

rpm -ivh mysql.rpm

yum update 
yum -y install mysql-server
chown mysql:mysql -R /var/lib/mysql
mysqld --initialize
cd /var/lib/mysql && find . -name '*.*'|xargs chown -R mysql:mysql
systemctl start mysqld



