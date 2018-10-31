FROM ubuntu:16.04
MAINTAINER JH Lee
LABEL purpose="Hands on Lab 2"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo Welcome to docker auto-build!! >> test.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]
