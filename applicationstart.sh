#/bin/bash -xe
cd /home/ec2-user
nohup java -jar accessing-data-mysql-complete-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &
