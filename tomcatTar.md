# tomcat tar installation

```
sudo apt-get update
sudo apt-get install default-jdk
vim ~/.bashrc

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export CATALINA_HOME=/opt/tomcat

. ~/.bashrc
wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.48/bin/apache-tomcat-8.0.48.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-8.0.48.tar.gz -C /opt/tomcat --strip-components=1
sudo $CATALINA_HOME/bin/startup.sh
sudo $CATALINA_HOME/bin/shutdown.sh
```
