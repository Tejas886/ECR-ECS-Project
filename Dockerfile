FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean 
RUN apt install git -y
COPY . /var/www/html/
RUN  service apache2 restart 
EXPOSE 90
CMD ["/usr/sbin/apachectl","-D", "FOREGROUND"]
