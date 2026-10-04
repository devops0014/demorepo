#!/bin/bash
cd /opt/
rm -f /opt/index.html*
rm -f /opt/sonarqube-*.zip
wget https://sonarsource.com
yum install unzip -y
unzip sonarqube-9.9.6.92038.zip
id -u sonar &>/dev/null || useradd sonar
chown sonar:sonar -R /opt/sonarqube-9.9.6.92038
chmod 755 -R /opt/sonarqube-9.9.6.92038
su - sonar -c "/opt/sonarqube-9.9.6.92038/bin/linux-x86-64/sonar.sh start"
