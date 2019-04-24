FROM centos:latest
MAINTAINER menox
RUN yum -y install httpd git && git clone https://github.com/menlam/devopstwo.git /var/www/html/
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]