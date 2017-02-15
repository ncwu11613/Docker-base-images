# CentOS 7 + OPEN  JDK 8 + Tomcat 7   
FROM yang/centos7:1    
MAINTAINER yang <493122220@qq.com>       

ENV TOMCAT_MAJOR_VERSION 7    
ENV TOMCAT_MINOR_VERSION 7.0.75
ENV CATALINA_HOME /opt/tomcat 

WORKDIR /opt/    
RUN yum install -y  java-1.8.0-openjdk.x86_64 wget tar  && \
	wget -O /opt/tomcat7.tar.gz  http://www.us.apache.org/dist/tomcat/tomcat-7/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz && \    
    tar -xzf /opt/tomcat7.tar.gz && \    
    rm /opt/tomcat7.tar.gz && \    
    ln -s apache-tomcat-$TOMCAT_MINOR_VERSION tomcat    
  
ENV CATALINA_HOME /opt/tomcat    

VOLUME ["/opt/tomcat/webapps","/opt/tomcat/logs"]

EXPOSE 8080    
ENTRYPOINT ["/opt/tomcat/bin/catalina.sh", "run" ]
