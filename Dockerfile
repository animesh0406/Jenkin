FROM redhat/ubi8
RUN yum -y install httpd
RUN yum -y install unzip
ADD https://github.com/animesh0406/Dogtin.git/ /var/www/html/
WORKDIR /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
