FROM tomcat:7-jre7

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./webapps/wales.war /usr/local/tomcat/webapps/

EXPOSE 8009