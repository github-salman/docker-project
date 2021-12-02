FROM centos:latest
MAINTAINER ssalmanali97@outlook.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/speed.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip speed.zip
RUN cp -rvf speed/* .
RUN rm -rf speed.zip speed
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
