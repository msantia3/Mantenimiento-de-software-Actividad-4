FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
COPY microservicios /var/www/html/
EXPOSE 80
ENTRYPOINT apache2ctl -D FOREGROUND