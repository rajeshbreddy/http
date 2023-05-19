FROM centos:latest
MAINTAINER Rajesh Bandar <rajeshbreddy2010@gmail.com>
RUN yum update -y
RUN yum install httpd -y
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
