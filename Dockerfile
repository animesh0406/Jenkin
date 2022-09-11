FROM ubuntu:18.04
RUN apt-get install apache2
RUN apt-get install -y git 
WORKDIR /var/www/html 
RUN git clone https://github.com/animesh0406/Dogtin.git
RUN mv Dogtin/* ./
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
