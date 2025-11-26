FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean 
COPY https://github.com/Tejas886/ECR-ECS-Project.git /var/www/html/
RUN  service apache2 restart 
EXPOSE 90
CMD ["/usr/sbin/apachectl","-D", "FOREGROUND"]
