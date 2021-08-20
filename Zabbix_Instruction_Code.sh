# Stop Firewall 
systemctl stop firewalld
systemctl disable firewalld

# Disable SELinux
vi /etc/selinux/config   #-- Disable Selinux in line SELINUX = disable 

# Check status seLinux 
sestatus

# if status of Selinuc is enable, reboot your server to change.

## 2. Install Zabbix from Source
# Load Source
# Install and configure Zabbix server for your platform
# a. Install Zabbix repository
rpm -Uvh https://repo.zabbix.com/zabbix/5.0/rhel/8/x86_64/zabbix-release-5.0-1.el8.noarch.rpm
dnf clean all

# b. Install Zabbix server, frontend, agent
dnf install zabbix-server-mysql zabbix-web-mysql zabbix-apache-conf zabbix-agent -y


## 3. Install Database (MariaDB, MySQL,...). In this contrustion, i use MariaDB.
dnf install mariadb-server -y

# Start MariaDB server

systemctl start mariadb 
systemctl enable mariadb

# c. Create initial database
# Documentation
# Make sure you have database server up and running.
# Run the following on your database host.
mysql -u root -p

# Press Enter 
create database zabbix character set utf8 collate utf8_bin;
create user zabbix@localhost identified by 'password';
grant all privileges on zabbix.* to zabbix@localhost;
quit;

# Extract Zabbix Source. Poassword to extract is password database below
zcat /usr/share/doc/zabbix-server-mysql*/create.sql.gz | mysql -uzabbix -p zabbix

# You can check database with
mysql -u root -p
# blank password
use zabbix;
show tables;

# d. Configure the database for Zabbix server
# Edit file /etc/zabbix/zabbix_server.conf

vi /etc/zabbix/zabbix_server.conf

DBPassword=password

# e. Configure PHP for Zabbix frontend
# Edit file /etc/php-fpm.d/zabbix.conf, uncomment and set the right timezone for you.
vi /etc/php-fpm.d/zabbix.conf
# /Insert
php_ivalue[date.timezone] = Asia/Ho_Chi_Minh

# f. Start Zabbix server and agent processes
# Start Zabbix server and agent processes and make it start at system boot.

systemctl restart zabbix-server zabbix-agent httpd php-fpm
systemctl enable zabbix-server zabbix-agent httpd php-fpm

# Start Apache server
systemctl start httpd
systemctl enable httpd

# Check status Apache server

systemctl status httpd

# g. Configure Zabbix frontend
# Connect to your newly installed Zabbix frontend: http://server_ip_or_name/zabbix

# username default: Admin
# password default: zabbix

# Follow steps described in Zabbix documentation: Installing frontend
# Start using Zabbix
# Read in documentation: Quickstart guide
# https://www.zabbix.com/documentation/5.0/manual/quickstart/login

