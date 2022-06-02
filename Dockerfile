FROM fedora:latest
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.79/bin/apache-tomcat-8.5.79.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.79.tar.gz
RUN mv apache-tomcat-8.5.79/* /opt/tomcat
EXPOSE 8080
COPY sistemaEvaluacion.war /opt/tomcat/webapps
CMD ["/opt/tomcat/bin/catalina.sh","run"]