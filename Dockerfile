FROM ubuntu:20.04
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y
RUN apt-get install apache2 -y

RUN echo 'Docker Image on CloudRun of Ihor Ponomarov!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.4</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
