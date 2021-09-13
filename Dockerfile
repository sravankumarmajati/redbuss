FROM ubuntu:16.04
MAINTAINER sravan
RUN apt-get update && apt-get install default-jdk -y && apt-get install wget -y && wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.52/bin/apache-tomcat-9.0.52.tar.gz && tar -xvf apache-tomcat-9.0.52.tar.gz 
















