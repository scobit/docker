vim Dockerfile
FROM ubuntu:latest
ENV TZ=Asia/Almaty
#ENV TZ EUROPE/MOSCOW
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUn apt-get -y install apache2
RUN echo "hello from docker" > /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80

# run python example

vim app.py
import time
while True:
        print("Hello World")
        time.sleep(1)

vim Dockerfile
# указание образа и тэга
FROM python:3.6
# выполнение комнды shell в образе
RUN mkdir -p /usr/src/app
# обозначение текущей исполняемой директории
WORKDIR /usr/src/app
# копирование в образ данных с локальной машины
COPY . /usr/src/app
# выполнение через shell
CMD ["python", "app.py"]
# выполнение вне shell
#ENTRYPOINT ["python", "app.py"]
