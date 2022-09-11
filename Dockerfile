FROM ubuntu:18.04
RUN apt-get -y install httpd
RUN apt-get -y install unzip
RUN apt-get install -y git 
WORKDIR /var/www/html 
RUN git clone https://github.com/animesh0406/Dogtin.git
RUN mv Dogtin/* ./
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
