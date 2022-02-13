vim Dockerfile
FROM ubuntu:latest
ENV TZ=Asia/Almaty
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUn apt-get -y install apache2
RUN echo "hello from docker" > /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80

