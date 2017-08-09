FROM ubuntu

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y --no-install-recommends apache2 libapache2-mod-jk

RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_balancer
RUN a2enmod proxy_wstunnel

ADD ./conf/apache2.conf /etc/apache2/apache2.conf

ADD ./conf/000-default.conf /etc/apache2/sites-enabled/000-default.conf

ADD ./conf/worker.properties /etc/libapache2-mod-jk/workers.properties

ADD ./conf/jk.conf /etc/apache2/mods-available/jk.conf

VOLUME ["/var/log/apache2"]
EXPOSE 80 443

CMD ["apachectl", "-k", "start", "-DFOREGROUND"]
