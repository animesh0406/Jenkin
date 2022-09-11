FROM redhat/ubi8
RUN yum -y install httpd
RUN yum -y install unzip
RUN yum install -y git 
WORKDIR /var/www/html 
RUN git clone https://github.com/animesh0406/Dogtin.git
RUN mv Dogtin/* ./
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
