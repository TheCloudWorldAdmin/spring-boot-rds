#!/bin/bash -xe
yum update -y
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
sudo yum install java-1.8.0-openjdk-devel.x86_64 -y
sudo yum install zip -y
sudo yum install git -y
git clone https://github.com/wilshan/spring-boot-rds.git
cd spring-boot-rds
mvn clean install
cd target
nohup java -jar accessing-data-mysql-complete-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &
