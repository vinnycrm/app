# Docker file for tomcat
FROM tomcat:8.0.43-jre8

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME

ADD ./target/*.war $CATALINA_HOME/webapps/

EXPOSE 8080

RUN chmod +x $CATALINA_HOME/bin/catalina.sh
CMD ["catalina.sh", "run"]