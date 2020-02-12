FROM tomcat:7
MAINTAINER me <admin@pme.com>

ENV PG_VERSION 9.3.4

RUN set -ex \
	&& rm -rf /usr/local/tomcat/webapps/* \
	&& chmod a+x /usr/local/tomcat/bin/*.sh
COPY target/struts2-rest-showcase.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
