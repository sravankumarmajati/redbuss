FROM ubuntu:16.04
USER root
MAINTAINER sravan
RUN apt-get update && apt-get install default-jdk -y && apt-get install wget -y && cd /opt && wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.52/bin/apache-tomcat-9.0.52.tar.gz && tar -xvf apache-tomcat-9.0.52.tar.gz && mv apache-tomcat-9.0.52 tomcat
RUN sed -i 's/port="8080"/port="4287"/' /opt/tomcat/conf/server.xml
COPY tomcat-users.xml /opt/tomcat/conf/
COPY context.xml /opt/tomcat/webapps/manager/META-INF/
CMD ["/opt/tomcat/bin/catalina.sh","run"]
EXPOSE 4287
COPY target/redbuss-1.0-SNAPSHOT.jar /opt/tomcat/webapps/















