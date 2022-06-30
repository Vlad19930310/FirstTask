# Task 4 Docker
##  Part1
1. Install docker and run Hello world container by ```installdockerengine.sh``` script or by individual commands
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/1.png" width="200" />

2. 1. Download httpd image from docker hub
2. 2. Run httpd image container in background mode usind ```docker run <image id> -d``` 
4. Change index.htm page inside of httpd container  using ```docker exec <container id> /bin/bash```
5. Exit and commit your changed image using ```docker commit <container id> <name your new image>```

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/2.png" width="200" />
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/3.png" width="200" />

6. Create Dockerfile with syntax where installing nginx, apache2 
7. Inside of container install vim and change port for apache2 or nginx (i have changed port.conf apache2 by 81 value)
8. Config default web page for nginx or apache (i have configured default nginx file)
9. Start two webservers verify that two servers is working
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/5.png" width="200" />

10. Commit your new image 
11. Write all of the previos step in ```dockerfile```
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/6.png" width="200" />

12. Verify that all works
13. Change ```dockerfile```: add ```ENV DEVOPS=Zhaludkovich```, add ```$DEVOPS``` to html page, install curl, vim
14. Build new image and verify html page by ```curl```  and verify variable ```env```
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/7.png" width="200" />

15. Change ```$DEVOPS``` variable ```vim ~/.bashrc``` and add variable in html page ```echo "<h2>$DEVOPS</h2>" /var/www/html/index.html```
16. After restarting  conteiner variable will be changing  to ```ENV``` like in ```dockerfile``` 
<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/8.png" width="200" />

17. Login dockerhub in terminal
18. Tag image MY EX: ```docker tag apache2_nginx81_80_devops1:latest vlad19930310/zhaludkovichdocker:apache_nginx```
19. Push image to dockerhub MY EX: ```docker push vlad19930310/zhaludkovichdocker:apache_nginx```
https://hub.docker.com/repository/docker/vlad19930310/zhaludkovichdocker

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/9.png" width="200" />

20. Create compouse.yml file and configure for run 3 images with Environment
21. ```docker-compose build``` to verify
22. ```docker-compose up``` run
23. Inspect ip conteiners  ```docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id```
24. Verify by curl content from containers

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/10.png" width="200" />

<img src="https://github.com/Vlad19930310/FirstTask/blob/master/Task4/11.png" width="200" />
