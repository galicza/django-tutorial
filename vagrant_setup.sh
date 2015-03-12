#!/usr/bin/env bash
exvagrant 
echo 'Updating...'
sudo apt-get update

echo 'Installing Apache'
sudo apt-get install -y apache2

echo 'Installing mod_wsgi'
sudo apt-get install -y libapache2-mod-wsgi
#AddHandler cgi-script .cgi .pl .python-pip
#sudo service apache2 restart

echo 'Installing MySQL'
sudo debconf-set-selections <<< 'mysql-server \
 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server \
 mysql-server/root_password_again password root'

sudo apt-get install -y mysql-server
# During the installation process you will be prompted to enter a password for the MySQL root user.
sudo apt-get install -y mysql-client

echo 'Installing pip'
sudo apt-get install -y python-pip

echo 'Installing Django'
sudo pip install Django

echo 'Installing MySQL-python'
sudo apt-get install -y python-mysqldb

echo 'Setting env var for Django settings'
echo "export DJANGO_SETTINGS_MODULE=mysite.settings" >> ~/.profilevagran

echo "CREATE DATABASE IF NOT EXISTS mysite;" | mysql -u root -proot
echo '(.)(.) Database created'


