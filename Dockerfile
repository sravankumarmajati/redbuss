FROM ubuntu:16.04
MAINTAINER sravan
RUN apt-get update && apt-get install default-jdk -y && apt-get install wget -y && cd /opt && wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.52/bin/apache-tomcat-9.0.52.tar.gz && tar -xvf apache-tomcat-9.0.52.tar.gz && mv apache-tomcat-9.0.52 tomcat
RUN sed -i 's/port="8080"/port="4287"/' /opt/tomcat/conf/server.xml
CMD ["catalina.sh", "run"]
















