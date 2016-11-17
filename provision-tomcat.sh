#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless

cd /usr/local
wget http://ftp.cuhk.edu.hk/pub/packages/apache.org/tomcat/tomcat-8/v8.5.8/bin/apache-tomcat-8.5.8.tar.gz
tar -xzvf apache-tomcat-8.5.8.tar.gz
ln -s apache-tomcat-8.5.8 tomcat

cp /vagrant/tomcat8 /etc/init.d/tomcat8
chmod 755 /etc/init.d/tomcat8
update-rc.d tomcat8 defaults
service tomcat8 start