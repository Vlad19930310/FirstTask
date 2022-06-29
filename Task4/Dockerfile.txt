#.................................................
# Docker file with apach2 nginx
#
# Zhaludkovich Uladzislau 29_06_2022
#................................................. 

FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install apache2
RUN apt-get -y install vim
RUN apt-get -y install curl
COPY ports.conf /etc/apache2/
RUN apt-get -y install nginx
COPY default /etc/nginx/sites-available/
ENV DEVOPS=Zhaludkovich
RUN echo "<h2>Zhaludkovich Apache</h2>" > /var/www/html/index.html
RUN echo "<h2>$DEVOPS</h2>" >> /var/www/html/index.html
RUN echo "<h2>Zhaludkovich ngnix</h2>" > /var/www/html/index1.html
CMD ["nginx","-g","daemon off;"]
EXPOSE 80
EXPOSE 81
