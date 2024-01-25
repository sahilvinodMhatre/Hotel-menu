FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&  apt-get install -y apache2
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

WORKDIR /var/www/html

COPY . /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]