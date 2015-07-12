FROM centos:7

MAINTAINER Petr Kramar

RUN yum install -y unzip java-1.7.0-openjdk

ADD http://download.forge.ow2.org/spagobi/All-In-One-SpagoBI-5.0-01102014.zip /tmp/spagobi.zip

# extract
RUN unzip /tmp/spagobi.zip -d /opt
RUN chmod +x /opt/*/bin/*.sh

# clean up
RUN rm /tmp/spagobi.zip


EXPOSE 8080
CMD /opt/SpagoBI*/bin/catalina.sh run
