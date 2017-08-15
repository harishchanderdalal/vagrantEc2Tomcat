#!/bin/bash
sudo apt-get update
sudo apt-get install -y language-pack-en
sudo apt-get install -y python-software-properties
sudo apt-add-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y tomcat8
sudo systemctl start tomcat8
sudo systemctl status tomcat8
curl ifconfig.me
