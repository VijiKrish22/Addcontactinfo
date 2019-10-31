# Pull base image - 2
From tomcat:8-jre8

# Maintainer
MAINTAINER "vijikrish <kvijimca@gmail.com">

RUN sed -i "s|8080|80|g" /usr/local/tomcat/conf/server.xml

#RUN rm -r /usr/local/tomcat/webapps/ROOT

# Copy to images tomcat path
ADD target/AddContactInfo.war /usr/local/tomcat/webapps/AddContactInfo.war

EXPOSE 80
