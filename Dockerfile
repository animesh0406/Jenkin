FROM roboxes/rhel8  
RUN yum install -y httpd
RUN yum install -y git 
WORKDIR /var/www/html 
RUN git clone https://github.com/animesh0406/Dogtin.git
RUN mv Dogtin/* ./
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
